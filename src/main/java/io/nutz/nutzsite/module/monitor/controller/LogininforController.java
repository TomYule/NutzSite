package io.nutz.nutzsite.module.monitor.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import io.nutz.nutzsite.module.monitor.models.Logininfor;
import io.nutz.nutzsite.module.monitor.services.LogininforService;
import io.nutz.nutzsite.common.base.Result;;
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
 * 系统访问记录 信息操作处理
 * 
 * @author haiming
 * @date 2019-04-18
 */
@IocBean
@At("/monitor/logininfor")
public class LogininforController {
	private static final Log log = Logs.get();

	@Inject
	private LogininforService logininforService;
	
	@RequiresPermissions("monitor:logininfor:view")
	@At("")
	@Ok("th:/monitor/logininfor/logininfor.html")
	public void index(HttpServletRequest req) {

	}

	/**
	 * 查询系统访问记录列表
	 */
	@RequiresPermissions("monitor:logininfor:list")
	@At
	@Ok("json")
	public Object list(@Param("pageNum")int pageNum,
					   @Param("pageSize")int pageSize,
					   @Param("name") String name,
					   HttpServletRequest req) {
		Cnd cnd = Cnd.NEW();
		if (!Strings.isBlank(name)){
			//cnd.and("name", "like", "%" + name +"%");
		}
		return logininforService.tableList(pageNum,pageSize,cnd);
	}

	/**
	 * 新增系统访问记录
	 */
	@At("/add")
	@Ok("th:/monitor/logininfor/add.html")
	public void add( HttpServletRequest req) {

	}

	/**
	 * 新增保存系统访问记录
	 */
	@RequiresPermissions("monitor:logininfor:add")
	@At
	@POST
	@Ok("json")
	public Object addDo(@Param("..") Logininfor logininfor,HttpServletRequest req) {
		try {
			logininforService.insert(logininfor);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 修改系统访问记录
	 */
	@At("/edit/?")
	@Ok("th://monitor/logininfor/edit.html")
	public void edit(String id, HttpServletRequest req) {
		Logininfor logininfor = logininforService.fetch(id);
		req.setAttribute("logininfor",logininfor);
	}

	/**
	 * 修改保存系统访问记录
	 */
	@RequiresPermissions("monitor:logininfor:edit")
	@At
	@POST
	@Ok("json")
	public Object editDo(@Param("..") Logininfor logininfor,HttpServletRequest req) {
		try {
			logininforService.update(logininfor);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 删除系统访问记录
	 */
	@At("/remove")
	@Ok("json")
	@RequiresPermissions("monitor:logininfor:remove")
	public Object remove(@Param("ids")String[] ids, HttpServletRequest req) {
		try {
			logininforService.delete(ids);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	@At("/clean")
	@Ok("json")
	@RequiresPermissions("monitor:logininfor:remove")
	public Object clean()
	{
		logininforService.cleanLogininfor();
		return Result.success("system.success");
	}

}
