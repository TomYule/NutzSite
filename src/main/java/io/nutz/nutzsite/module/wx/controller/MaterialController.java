package io.nutz.nutzsite.module.wx.controller;

import io.nutz.nutzsite.module.sys.models.Config;
import io.nutz.nutzsite.module.sys.services.ConfigService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import io.nutz.nutzsite.module.wx.models.Material;
import io.nutz.nutzsite.module.wx.services.MaterialService;
import io.nutz.nutzsite.common.base.Result;;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.lang.Lang;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.*;
import org.nutz.plugins.slog.annotation.Slog;
import io.nutz.nutzsite.common.utils.ShiroUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Date;
import java.util.Map;


/**
 * 微信素材 信息操作处理
 * 
 * @author haiming
 * @date 2019-06-11
 */
@IocBean
@At("/wx/material")
public class MaterialController {
	private static final Log log = Logs.get();

	@Inject
	private MaterialService materialService;
	@Inject
	private ConfigService configService;
	
	@RequiresPermissions("wx:material:view")
	@At("")
	@Ok("th:/wx/material/material.html")
	public void index(HttpServletRequest req) {

	}

	/**
	 * 查询微信素材列表
	 */
	@RequiresPermissions("wx:material:list")
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
		return materialService.tableList(pageNum,pageSize,cnd,orderByColumn,isAsc,null);
	}

	/**
	 * 新增微信素材
	 */
	@At("/add")
	@Ok("th:/wx/material/add.html")
	public void add( HttpServletRequest req) {

	}

	/**
	 * 新增保存微信素材
	 */
	@At
	@POST
	@Ok("json")
	@RequiresPermissions("wx:material:add")
	@Slog(tag="微信素材", after="新增保存微信素材 id=${args[0].id}")
	public Object addDo(@Param("..") Material material,HttpServletRequest req) {
		try {
			materialService.insert(material);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 修改微信素材
	 */
	@At("/edit/?")
	@Ok("th://wx/material/edit.html")
	public void edit(String id, HttpServletRequest req) {
		Material material = materialService.fetch(id);
		req.setAttribute("material",material);
	}

	/**
	 * 修改保存微信素材
	 */
	@At
	@POST
	@Ok("json")
	@RequiresPermissions("wx:material:edit")
	@Slog(tag="微信素材", after="修改保存微信素材")
	public Object editDo(@Param("..") Material material,HttpServletRequest req) {
		try {
			if(Lang.isNotEmpty(material)){
				material.setUpdateBy(ShiroUtils.getSysUserId());
				material.setUpdateTime(new Date());
				materialService.update(material);
			}
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 删除微信素材
	 */
	@At("/remove")
	@Ok("json")
	@RequiresPermissions("wx:material:remove")
	@Slog(tag ="微信素材", after= "删除微信素材:${array2str(args[0])}")
	public Object remove(@Param("ids")String[] ids, HttpServletRequest req) {
		try {
			materialService.delete(ids);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	@GET
	@At("/getMaterial")
	@Ok("json")
	public Object getWxMaterial(){
		try {
			Config config =configService.fetch("token");
			if(config!=null){
				List<Material> materialList = materialService.getWxMaterialList(config.getConfigValue());
				if(materialList.size()>0){
					Map<String, Material> materialMap =new HashMap<>();
					List<Material> materials =materialService.query();
					if(Lang.isNotEmpty(materials) && materials.size() > 0){
						materialMap = materialService.getIdMaterialMap(materials);
					}
					materialService.saveData(materialList,materialMap);
				}
			}
			return Result.success("system.success");
		} catch (Exception e) {
			throw e;
		}
	}


}
