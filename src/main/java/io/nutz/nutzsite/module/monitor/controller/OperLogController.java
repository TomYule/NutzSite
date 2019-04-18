package io.nutz.nutzsite.module.monitor.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import io.nutz.nutzsite.module.monitor.models.OperLog;
import io.nutz.nutzsite.module.monitor.services.OperLogService;
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
 * 操作日志记录 信息操作处理
 * 
 * @author haiming
 * @date 2019-04-18
 */
@IocBean
@At("/monitor/operLog")
public class OperLogController {
	private static final Log log = Logs.get();

	@Inject
	private OperLogService operLogService;
	
	@RequiresPermissions("monitor:operLog:view")
	@At("")
	@Ok("th:/monitor/operLog/operLog.html")
	public void index(HttpServletRequest req) {

	}

	/**
	 * 查询操作日志记录列表
	 */
	@RequiresPermissions("monitor:operLog:list")
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
		return operLogService.tableList(pageNum,pageSize,cnd);
	}

	/**
	 * 新增操作日志记录
	 */
	@At("/add")
	@Ok("th:/monitor/operLog/add.html")
	public void add( HttpServletRequest req) {

	}

	/**
	 * 新增保存操作日志记录
	 */
	@RequiresPermissions("monitor:operLog:add")
	@At
	@POST
	@Ok("json")
	public Object addDo(@Param("..") OperLog operLog,HttpServletRequest req) {
		try {
			operLogService.insert(operLog);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 修改操作日志记录
	 */
	@At("/edit/?")
	@Ok("th://monitor/operLog/edit.html")
	public void edit(String id, HttpServletRequest req) {
		OperLog operLog = operLogService.fetch(id);
		req.setAttribute("operLog",operLog);
	}

	/**
	 * 修改保存操作日志记录
	 */
	@RequiresPermissions("monitor:operLog:edit")
	@At
	@POST
	@Ok("json")
	public Object editDo(@Param("..") OperLog operLog,HttpServletRequest req) {
		try {
			operLogService.update(operLog);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 删除操作日志记录
	 */
	@At("/remove")
	@Ok("json")
	@RequiresPermissions("monitor:operLog:remove")
	public Object remove(@Param("ids")String[] ids, HttpServletRequest req) {
		try {
			operLogService.delete(ids);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

}
