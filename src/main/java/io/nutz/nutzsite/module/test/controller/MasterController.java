package io.nutz.nutzsite.module.test.controller;

import io.nutz.nutzsite.module.test.services.PetService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import io.nutz.nutzsite.module.test.models.Master;
import io.nutz.nutzsite.module.test.services.MasterService;
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
 * 主人 信息操作处理
 * 
 * @author haiming
 * @date 2020-03-30
 */
@IocBean
@At("/test/master")
public class MasterController {
	private static final Log log = Logs.get();

	@Inject
	private MasterService masterService;
	@Inject
	private PetService petService;

	@RequiresPermissions("test:master:view")
	@At("")
	@Ok("th:/test/master/master.html")
	public void index(HttpServletRequest req) {

	}

	/**
	 * 查询主人列表
	 */
	@RequiresPermissions("test:master:list")
	@At
	@Ok("json")
	public Object list(@Param("pageNum")int pageNum,
					   @Param("pageSize")int pageSize,
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
		return masterService.tableList(pageNum,pageSize,cnd,orderByColumn,isAsc,null);
	}

	/**
	 * 新增主人
	 */
	@At("/add")
	@Ok("th:/test/master/add.html")
	public void add( HttpServletRequest req) {

	}

	/**
	 * 新增保存主人
	 */
	@At
	@POST
	@Ok("json")
	@RequiresPermissions("test:master:add")
	@Slog(tag="主人", after="新增保存主人 id=${args[0].id}")
	public Object addDo(@Param("..") Master master,HttpServletRequest req) {
		try {
			masterService.insert(master);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 修改主人
	 */
	@At("/edit/?")
	@Ok("th:/test/master/edit.html")
	public void edit(String id, HttpServletRequest req) {
		Master master = masterService.fetch(id);
		req.setAttribute("master",master);
	}

    /**
     * 详情主人
     */
    @At("/detail/?")
    @Ok("th:/test/master/detail.html")
    public void detail(String id, HttpServletRequest req) {
		Master master = masterService.fetch(id);
		masterService.fetchLinks(master,"pets");
        req.setAttribute("master",master);
    }

    /**
	 * 修改保存主人
	 */
	@At
	@POST
	@Ok("json")
	@RequiresPermissions("test:master:edit")
	@Slog(tag="主人", after="修改保存主人")
	public Object editDo(@Param("..") Master master,HttpServletRequest req) {
		try {
			if(Lang.isNotEmpty(master)){
//				master.setUpdateBy(ShiroUtils.getSysUserId());
//				master.setUpdateTime(new Date());
				masterService.update(master);
			}
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 删除主人
	 */
	@At("/remove")
	@Ok("json")
	@RequiresPermissions("test:master:remove")
	@Slog(tag ="主人", after= "删除主人:${array2str(args[0])}")
	public Object remove(@Param("ids")String[] ids, HttpServletRequest req) {
		try {
			masterService.delete(ids);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

}
