package io.nutz.nutzsite.module.sys.controllers;

import io.nutz.nutzsite.module.sys.models.Role;
import io.nutz.nutzsite.module.sys.services.RoleService;
import io.nutz.nutzsite.module.sys.models.User;
import io.nutz.nutzsite.module.sys.services.UserService;
import io.nutz.nutzsite.common.base.Result;;
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

import javax.servlet.http.HttpServletRequest;
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
	public Object list(@Param("pageNum")int pageNum,
					   @Param("pageSize")int pageSize,
					   @Param("deptId") String deptId,
					   @Param("name") String name,
					   HttpServletRequest req) {
		Cnd cnd = Cnd.NEW();
		if (!Strings.isBlank(name)){
			//cnd.and("name", "like", "%" + name +"%");
		}
		if (!Strings.isBlank(deptId)){
			cnd.where().andInBySql("dept_id","SELECT id FROM sys_dept  WHERE FIND_IN_SET ('%s',ancestors)", deptId)
					.or("dept_id","=", deptId);
		}
		return userService.tableList(pageNum,pageSize,cnd);
	}

	/**
	 * 新增用户
	 */
	@At("/add")
	@Ok("th:/sys/user/add.html")
	public void add( HttpServletRequest req) {
		List<Role> roles = roleService.query(Cnd.where("status","=",false).and("del_flag","=",false));
		req.setAttribute("roles",roles);
	}

	/**
	 * 新增保存用户
	 */
//	@RequiresPermissions("sys:user:add")
	@At
	@POST
	@Ok("json")
	public Object addDo(@Param("..") User user,HttpServletRequest req) {
		try {
			userService.insert(user);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 修改用户
	 */
	@At("/edit/?")
	@Ok("th://sys/user/edit.html")
	@RequiresPermissions("sys:user:edit")
	public void edit(String id, HttpServletRequest req) {
		User user = userService.fetch(id);
		userService.fetchLinks(user,"dept|roles");
		List<Role> roles = roleService.query(Cnd.where("status","=",false).and("del_flag","=",false));
		roles.forEach(role -> {
			if(user.getRoles()!=null && user.getRoles().size()>0){
//				System.out.println(user.getRoles().contains(role));
				role.setFlag(user.getRoles().contains(role));
			}
		});
		req.setAttribute("user",user);
		req.setAttribute("roles",roles);
	}

	/**
	 * 修改保存用户
	 */
	@RequiresPermissions("sys:user:edit")
	@At
	@POST
	@Ok("json")
	public Object editDo(@Param("..") User user,HttpServletRequest req) {
		try {
			userService.update(user);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 删除用户
	 */
	@At("/remove")
	@Ok("json")
	public Object remove(@Param("ids")String[] ids, HttpServletRequest req) {
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
		req.setAttribute("user",user);
	}

	@At
	@POST
	@Ok("json")
	public Object resetPwd(@Param("..") User user,HttpServletRequest req) {
		try {
			userService.resetUserPwd(user);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}
}
