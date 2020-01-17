package io.nutz.nutzsite.module.monitor.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import io.nutz.nutzsite.module.monitor.models.UserOnline;
import io.nutz.nutzsite.module.monitor.services.UserOnlineService;
import io.nutz.nutzsite.common.base.Result;
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

/**
 * 在线用户记录 信息操作处理
 * 
 * @author haiming
 * @date 2019-04-18
 */
@IocBean
@At("/monitor/online")
public class UserOnlineController {
	private static final Log log = Logs.get();

	@Inject
	private UserOnlineService userOnlineService;
	
	@RequiresPermissions("monitor:online:view")
	@At("")
	@Ok("th:/monitor/online/online.html")
	public void index(HttpServletRequest req) {

	}

	/**
	 * 查询在线用户记录列表
	 */
	@RequiresPermissions("monitor:online:list")
	@At
	@Ok("json")
	public Object list(@Param("pageNum")Integer pageNum,
					   @Param("pageSize")Integer pageSize,
					   @Param("name") String ipaddr,
					   @Param("loginName") String loginName,
					   @Param("orderByColumn") String orderByColumn,
					   @Param("isAsc") String isAsc,
					   HttpServletRequest req) {
		Cnd cnd = Cnd.NEW();
		if (!Strings.isBlank(ipaddr)){
			cnd.and("ipaddr", "=", ipaddr);
		}
		if (!Strings.isBlank(loginName)){
			cnd.and("login_name", "=", loginName);
		}
		return userOnlineService.tableList(pageNum,pageSize,cnd,orderByColumn,isAsc,null);
	}

	/**
	 * 新增在线用户记录
	 */
	@At("/add")
	@Ok("th:/monitor/userOnline/add.html")
	public void add( HttpServletRequest req) {

	}

	/**
	 * 新增保存在线用户记录
	 */
	@RequiresPermissions("monitor:online:add")
	@At
	@POST
	@Ok("json")
	public Object addDo(@Param("..") UserOnline userOnline,HttpServletRequest req) {
		try {
			userOnlineService.insert(userOnline);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 修改在线用户记录
	 */
	@At("/edit/?")
	@Ok("th://monitor/userOnline/edit.html")
	public void edit(String id, HttpServletRequest req) {
		UserOnline userOnline = userOnlineService.fetch(id);
		req.setAttribute("userOnline",userOnline);
	}

	/**
	 * 修改保存在线用户记录
	 */
	@RequiresPermissions("monitor:online:edit")
	@At
	@POST
	@Ok("json")
	public Object editDo(@Param("..") UserOnline userOnline,HttpServletRequest req) {
		try {
			userOnlineService.update(userOnline);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 删除在线用户记录
	 */
	@At("/remove")
	@Ok("json")
	@RequiresPermissions("monitor:online:remove")
	public Object remove(@Param("ids")String[] ids, HttpServletRequest req) {
		try {
			userOnlineService.delete(ids);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

}
