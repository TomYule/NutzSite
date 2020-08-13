package io.nutz.nutzsite.module.sys.controllers;

import io.nutz.nutzsite.common.base.Result;
import io.nutz.nutzsite.common.exception.ErrorException;
import io.nutz.nutzsite.module.sys.models.Dept;
import io.nutz.nutzsite.module.sys.services.DeptService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
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
import java.util.List;
import java.util.Map;

/**
 * 部门控制类
 *
 * @author haiming
 */
@IocBean
@At("/sys/dept")
public class DeptController {
    private static final Log log = Logs.get();

    @Inject
    private DeptService deptService;

    @At("")
    @Ok("th:/sys/dept/dept.html")
    @RequiresPermissions("sys:dept:view")
    public void index(HttpServletRequest req) {

    }

    @At
    @Ok("json")
    public Object list(@Param("deptName") String deptName, HttpServletRequest req) {
        Cnd cnd = Cnd.NEW();
        if (Strings.isNotBlank(deptName)) {
            cnd.and("dept_name", "like", "%" + deptName + "%");
        }
        cnd.and("del_flag", "=", false);
        return deptService.query(cnd);
    }

    @At("/add/?")
    @Ok("th:/sys/dept/add.html")
    public void add(@Param("id") String id, HttpServletRequest req) {
        Dept data = null;
        if (Strings.isNotBlank(id)) {
            data = deptService.fetch(id);
        }
        if (data == null) {
            data = new Dept();
            data.setId("0");
            data.setDeptName("无");
        }
        req.setAttribute("dept", data);
    }

    @At
    @POST
    @Ok("json")
    @RequiresPermissions("sys:dept:add")
    @Slog(tag = "部门管理", after = " 新增部门id=${args[0].id}")
    public Object addDo(@Param("..") Dept data, @Param("parentId") String parentId, Errors es, HttpServletRequest req) {
        try {
            if(es.hasError()){
                return Result.error(es);
            }
            deptService.insertDept(data);
            return Result.success("system.success", data);
        } catch (Exception e) {
            return Result.error(e instanceof ErrorException ? e.getMessage() : "system.error");
        }
    }

    @At("/edit/?")
    @Ok("th:/sys/dept/edit.html")
    public void edit(String id, HttpServletRequest req) {
        Dept data = deptService.fetch(id);
        if (data != null) {
            Dept parentData = deptService.fetch(data.getParentId());
            if (parentData != null) {
                data.setParentName(parentData.getDeptName());
            }
            req.setAttribute("dept", data);
        }
    }

    @At
    @POST
    @Ok("json")
    @RequiresPermissions("sys:dept:edit")
    @Slog(tag = "部门管理", after = "修改部门")
    public Object editDo(@Param("..") Dept data, Errors es, HttpServletRequest req) {
        try {
            if(es.hasError()){
               return Result.error(es);
            }
            deptService.update(data);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error(e instanceof ErrorException ? e.getMessage() : "system.error");
        }
    }

    @At("/remove/?")
    @Ok("json")
    @RequiresPermissions("sys:dept:remove")
    @Slog(tag = "删除单位", after = "删除部门:${args[0]}")
    public Object remove(String id, HttpServletRequest req) {
        try {
            deptService.vDelete(id);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }


    /**
     * 选择菜单树
     */
    @At("/selectTree/?")
    @Ok("th:/sys/dept/tree.html")
    public void selectTree(String id, HttpServletRequest req) {
        req.setAttribute("dept", deptService.fetch(id));
    }

    @At
    @Ok("json")
    public List<Map<String, Object>> treeData(@Param("parentId") String parentId,
                                              @Param("deptName") String deptName) {
        List<Map<String, Object>> tree = deptService.selectTree(parentId, deptName);
        return tree;
    }

    @At
    @POST
    @Ok("json")
    public boolean checkDeptNameUnique(@Param("id") String id,
                                       @Param("parentId") String parentId,
                                       @Param("name") String menuName) {
        return deptService.checkDeptNameUnique(id, parentId, menuName);
    }

}
