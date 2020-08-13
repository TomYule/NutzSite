package io.nutz.nutzsite.module.sys.controllers;

import io.nutz.nutzsite.common.exception.ErrorException;
import io.nutz.nutzsite.common.utils.ShiroUtils;
import io.nutz.nutzsite.module.sys.models.Dept;
import io.nutz.nutzsite.module.sys.models.Role;
import io.nutz.nutzsite.module.sys.services.DeptService;
import io.nutz.nutzsite.module.sys.services.RoleService;
import io.nutz.nutzsite.module.sys.models.User;
import io.nutz.nutzsite.module.sys.services.UserService;
import io.nutz.nutzsite.common.base.Result;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.POST;
import org.nutz.mvc.annotation.Param;
import org.nutz.plugins.slog.annotation.Slog;
import org.nutz.plugins.validation.Errors;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * 用户 信息操作处理
 *
 * @author haiming
 * @date 2019-04-12
 */
@IocBean
@At("/sys/user")
public class UserController {
    private static final Log log = Logs.get();

    @Inject
    private UserService userService;

    @Inject
    private RoleService roleService;
    @Inject
    private DeptService deptService;

    @RequiresPermissions("sys:user:view")
    @At("")
    @Ok("th:/sys/user/user.html")
    public void index(HttpServletRequest req) {

    }

    /**
     * 查询用户列表
     */
    @At
    @Ok("json")
    public Object list(@Param("pageNum")Integer pageNum,
                       @Param("pageSize")Integer pageSize,
                       @Param("deptId") String deptId,
                       @Param("loginName") String loginName,
                       @Param("phonenumber") String phonenumber,
                       @Param("beginTime") Date beginTime,
                       @Param("endTime") Date endTime,
                       @Param("orderByColumn") String orderByColumn,
                       @Param("isAsc") String isAsc,
                       HttpServletRequest req) {
        Cnd cnd = Cnd.NEW();
        if (!Strings.isBlank(loginName)) {
            cnd.and("user_name", "like", "%" + loginName + "%");
        }
        if (!Strings.isBlank(phonenumber)) {
            cnd.and("phonenumber", "=", phonenumber);
        }
        if (Lang.isNotEmpty(beginTime)) {
            cnd.and("create_time", ">=", beginTime);
        }
        if (Lang.isNotEmpty(endTime)) {
            cnd.and("create_time", "<=", endTime);
        }
        if (!Strings.isBlank(deptId)) {
            List<Dept> dept = deptService.query(Cnd.NEW().and("ancestors","LIKE","%"+deptId+"%"));
            List<String> deptIds = new ArrayList<>();
            for(Dept d:dept){
                deptIds.add(d.getId());
            }
            deptIds.add(deptId);
            cnd.and("dept_id", "in", deptIds);
        }
        return userService.tableList(pageNum, pageSize, cnd, orderByColumn, isAsc, "dept");
    }

    /**
     * 新增用户
     */
    @At("/add")
    @Ok("th:/sys/user/add.html")
    public void add(HttpServletRequest req) {
        List<Role> roles = roleService.query(Cnd.where("status", "=", false).and("del_flag", "=", false));
        req.setAttribute("roles", roles);
    }

    /**
     * 新增保存用户
     */
    @RequiresPermissions("sys:user:add")
    @At
    @POST
    @Ok("json")
    @Slog(tag = "用户管理", after = "新增保存用户管理id=${args[0].id}")
    public Object addDo(@Param("..") User user, Errors es, HttpServletRequest req) {
        try {
            if (es.hasError()) {
                 return Result.error(es);
            }
            userService.insert(user);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error(e instanceof ErrorException ? e.getMessage() : "system.error");
        }
    }

    /**
     * 修改用户
     */
    @At("/edit/?")
    @Ok("th://sys/user/edit.html")
    public void edit(String id, HttpServletRequest req) {
        User user = userService.fetch(id);
        userService.fetchLinks(user, "dept|roles");
        List<Role> roles = roleService.query(Cnd.where("status", "=", false).and("del_flag", "=", false));
        roles.forEach(role -> {
            if (user.getRoles() != null && user.getRoles().size() > 0) {
//				System.out.println(user.getRoles().contains(role));
                role.setFlag(user.getRoles().contains(role));
            }
        });
        req.setAttribute("user", user);
        req.setAttribute("roles", roles);
    }

    /**
     * 修改保存用户
     */
    @RequiresPermissions("sys:user:edit")
    @At
    @POST
    @Ok("json")
    @Slog(tag = "用户管理", after = "修改保存用户管理")
    public Object editDo(@Param("..") User user, Errors es, HttpServletRequest req) {
        try {
//            if (es.hasError()) {
//                 return Result.error(es);
//            }
            if (Lang.isNotEmpty(user)) {
                user.setUpdateBy(ShiroUtils.getSysUserId());
                user.setUpdateTime(new Date());
                userService.update(user);
            }
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error(e instanceof ErrorException ? e.getMessage() : "system.error");
        }
    }

    /**
     * 删除用户
     */
    @At("/remove")
    @Ok("json")
    @RequiresPermissions("sys:user:remove")
    @Slog(tag = "用户管理", after = "删除用户:${array2str(args[0])}")
    public Object remove(@Param("ids") String[] ids, HttpServletRequest req) {
        try {
            userService.delete(ids);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/resetPwd/?")
    @Ok("th:/sys/user/resetPwd.html")
    public void resetPwd(String id, HttpServletRequest req) {
        User user = userService.fetch(id);
        req.setAttribute("user", user);
    }

    @At
    @POST
    @Ok("json")
    @RequiresPermissions("sys:user:resetPwd")
    @Slog(tag = "用户管理", after = "重置密码")
    public Object resetPwd(@Param("..") User user, HttpServletRequest req) {
        try {
            userService.resetUserPwd(user);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At
    @POST
    @Ok("json")
    public Object checkLoginNameUnique(@Param("id") String id, @Param("name") String name, HttpServletRequest req) {
        return userService.checkLoginNameUnique(name);
    }

}
