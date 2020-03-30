package io.nutz.nutzsite.module.test.controller;

import io.nutz.nutzsite.module.test.models.Master;
import io.nutz.nutzsite.module.test.services.MasterService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import io.nutz.nutzsite.module.test.models.Pet;
import io.nutz.nutzsite.module.test.services.PetService;
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
 * 宠物 信息操作处理
 * 
 * @author haiming
 * @date 2020-03-30
 */
@IocBean
@At("/test/pet")
public class PetController {
	private static final Log log = Logs.get();

	@Inject
	private PetService petService;
	@Inject
	private MasterService masterService;

	@RequiresPermissions("test:pet:view")
	@At("")
	@Ok("th:/test/pet/pet.html")
	public void index(HttpServletRequest req) {

	}

	/**
	 * 查询宠物列表
	 */
	@RequiresPermissions("test:pet:list")
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
		return petService.tableList(pageNum,pageSize,cnd,orderByColumn,isAsc,"master");
	}

	/**
	 * 新增宠物
	 */
	@At("/add")
	@Ok("th:/test/pet/add.html")
	public void add( HttpServletRequest req) {
		List<Master> masters = masterService.query();
		req.setAttribute("masters",masters);
	}

	/**
	 * 新增保存宠物
	 */
	@At
	@POST
	@Ok("json")
	@RequiresPermissions("test:pet:add")
	@Slog(tag="宠物", after="新增保存宠物 id=${args[0].id}")
	public Object addDo(@Param("..") Pet pet,HttpServletRequest req) {
		try {
			petService.insert(pet);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 修改宠物
	 */
	@At("/edit/?")
	@Ok("th:/test/pet/edit.html")
	public void edit(String id, HttpServletRequest req) {
		Pet pet = petService.fetch(id);
		req.setAttribute("pet",pet);
	}

    /**
     * 详情宠物
     */
    @At("/detail/?")
    @Ok("th:/test/pet/detail.html")
    public void detail(String id, HttpServletRequest req) {
		Pet pet = petService.fetch(id);
        req.setAttribute("pet",pet);
    }

    /**
	 * 修改保存宠物
	 */
	@At
	@POST
	@Ok("json")
	@RequiresPermissions("test:pet:edit")
	@Slog(tag="宠物", after="修改保存宠物")
	public Object editDo(@Param("..") Pet pet,HttpServletRequest req) {
		try {
			if(Lang.isNotEmpty(pet)){
//				pet.setUpdateBy(ShiroUtils.getSysUserId());
//				pet.setUpdateTime(new Date());
				petService.update(pet);
			}
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 删除宠物
	 */
	@At("/remove")
	@Ok("json")
	@RequiresPermissions("test:pet:remove")
	@Slog(tag ="宠物", after= "删除宠物:${array2str(args[0])}")
	public Object remove(@Param("ids")String[] ids, HttpServletRequest req) {
		try {
			petService.delete(ids);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

}
