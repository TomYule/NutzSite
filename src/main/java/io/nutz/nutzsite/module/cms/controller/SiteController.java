package io.nutz.nutzsite.module.cms.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import io.nutz.nutzsite.module.cms.models.Site;
import io.nutz.nutzsite.module.cms.services.SiteService;
import io.nutz.nutzsite.common.base.Result;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.lang.Lang;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.POST;
import org.nutz.mvc.annotation.Param;
import org.nutz.plugins.slog.annotation.Slog;
import io.nutz.nutzsite.common.utils.ShiroUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Date;
/**
 * 站点 信息操作处理
 * 
 * @author haiming
 * @date 2019-12-13
 */
@IocBean
@At("/cms/site")
public class SiteController {
	private static final Log log = Logs.get();

	@Inject
	private SiteService siteService;
	
	@RequiresPermissions("cms:site:view")
	@At("")
	@Ok("th:/cms/site/site.html")
	public void index(HttpServletRequest req) {

	}

	/**
	 * 查询站点列表
	 */
	@RequiresPermissions("cms:site:list")
	@At
	@Ok("json")
	public Object list(@Param("pageNum")Integer pageNum,
					   @Param("pageSize")Integer pageSize,
					   @Param("name") String name,
					   @Param("beginTime") Date beginTime,
					   @Param("endTime") Date endTime,
					   @Param("orderByColumn") String orderByColumn,
					   @Param("isAsc") String isAsc,
					   HttpServletRequest req) {
		Cnd cnd = Cnd.NEW();
		if (!Strings.isBlank(name)){
			//cnd.and("name", "like", "%" + name +"%");
		}
		if(Lang.isNotEmpty(beginTime)){
			cnd.and("create_time",">=", beginTime);
		}
		if(Lang.isNotEmpty(endTime)){
			cnd.and("create_time","<=", endTime);
		}
		return siteService.tableList(pageNum,pageSize,cnd,orderByColumn,isAsc,null);
	}

	/**
	 * 新增站点
	 */
	@At("/add")
	@Ok("th:/cms/site/add.html")
	public void add( HttpServletRequest req) {

	}

	/**
	 * 新增保存站点
	 */
	@At
	@POST
	@Ok("json")
	@RequiresPermissions("cms:site:add")
	@Slog(tag="站点", after="新增保存站点 id=${args[0].id}")
	public Object addDo(@Param("..") Site site,HttpServletRequest req) {
		try {
			siteService.insert(site);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 修改站点
	 */
	@At("/edit/?")
	@Ok("th://cms/site/edit.html")
	public void edit(String id, HttpServletRequest req) {
		Site site = siteService.fetch(id);
		req.setAttribute("site",site);
	}

	/**
	 * 修改保存站点
	 */
	@At
	@POST
	@Ok("json")
	@RequiresPermissions("cms:site:edit")
	@Slog(tag="站点", after="修改保存站点")
	public Object editDo(@Param("..") Site site,HttpServletRequest req) {
		try {
			if(Lang.isNotEmpty(site)){
				site.setUpdateBy(ShiroUtils.getSysUserId());
				site.setUpdateTime(new Date());
				siteService.update(site);
			}
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 删除站点
	 */
	@At("/remove")
	@Ok("json")
	@RequiresPermissions("cms:site:remove")
	@Slog(tag ="站点", after= "删除站点:${array2str(args[0])}")
	public Object remove(@Param("ids")String[] ids, HttpServletRequest req) {
		try {
			siteService.delete(ids);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

}
