package io.nutz.nutzsite.module.monitor.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import io.nutz.nutzsite.module.monitor.services.OperLogService;
import io.nutz.nutzsite.common.base.Result;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;
import org.nutz.plugins.slog.annotation.Slog;
import org.nutz.plugins.slog.bean.SlogBean;

import javax.servlet.http.HttpServletRequest;

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
	public Object list(@Param("pageNum")Integer pageNum,
					   @Param("pageSize")Integer pageSize,
					   @Param("title") String name,
					   @Param("operName") String uid,
					   @Param("orderByColumn") String orderByColumn,
					   @Param("isAsc") String isAsc,
					   HttpServletRequest req) {
		Cnd cnd = Cnd.NEW();
		if (!Strings.isBlank(name)){
			cnd.and("tg", "like", "%" + name +"%");
		}
		if (!Strings.isBlank(uid)){
			cnd.and("u_name", "=", uid);
		}
		return operLogService.tableList(pageNum,pageSize,cnd,orderByColumn,isAsc);
	}

	/**
	 * 新增操作日志记录
	 */
	@At("/add")
	@Ok("th:/monitor/operLog/add.html")
	public void add( HttpServletRequest req) {

	}


	/**
	 * 作日志记录详情
	 */
	@At("/detail/?")
	@Ok("th://monitor/operLog/detail.html")
	public void detail(String id, HttpServletRequest req) {
		SlogBean operLog = operLogService.fetch(id);
		req.setAttribute("operLog",operLog);
	}


	/**
	 * 删除操作日志记录
	 */
	@At("/remove")
	@Ok("json")
	@RequiresPermissions("monitor:operLog:remove")
	@Slog(tag ="作日志记录", after= "删除作日志记录:${array2str(args[0])}")
	public Object remove(@Param("ids")String[] ids, HttpServletRequest req) {
		try {
			operLogService.delete(ids);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	@At("/clean")
	@Ok("json")
	@Slog(tag="作日志记录", after="清除作日志记录")
	@RequiresPermissions("monitor:logininfor:remove")
	public Object clean()
	{
		operLogService.cleanInfor();
		return Result.success("system.success");
	}
}
