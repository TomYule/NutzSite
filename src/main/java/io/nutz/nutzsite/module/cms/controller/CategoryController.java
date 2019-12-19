package io.nutz.nutzsite.module.cms.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import io.nutz.nutzsite.module.cms.models.Category;
import io.nutz.nutzsite.module.cms.services.CategoryService;
import io.nutz.nutzsite.common.base.Result;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
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
import java.util.Map;
import java.util.Date;
/**
 * 栏目 信息操作处理
 * 
 * @author haiming
 * @date 2019-05-06
 */
@IocBean
@At("/cms/category")
public class CategoryController {
	private static final Log log = Logs.get();

	@Inject
	private CategoryService categoryService;
	
	@RequiresPermissions("cms:category:view")
	@At("")
	@Ok("th:/cms/category/category.html")
	public void index(HttpServletRequest req) {

	}

	/**
	 * 查询栏目列表
	 */
	@At
	@Ok("json")
	@RequiresPermissions("cms:category:list")
	public Object list(@Param("name") String name,
					   @Param("beginTime") Date beginTime,
					   @Param("endTime") Date endTime,
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
		cnd.asc("sort");
		return categoryService.query(cnd);
	}

	/**
	 * 新增栏目
	 */
	@At({"/add/?","/add"})
	@Ok("th:/cms/category/add.html")
	public void add(@Param("id") String id, HttpServletRequest req) {
		Category category = null;
		if(Strings.isNotBlank(id)) {
			category = categoryService.fetch(id);
		}
		if(Lang.isNotEmpty(category)) {
			category.setParentName(category.getName());
		}else{
			category=new Category();
			category.setParentId("0");
			category.setName("无");
		}
		req.setAttribute("category",category);
	}

	/**
	 * 新增保存栏目
	 */

	@At
	@POST
	@Ok("json")
	@RequiresPermissions("cms:category:add")
	@Slog(tag="栏目", after="新增保存栏目 id=${args[0].id}")
	public Object addDo(@Param("..") Category category,HttpServletRequest req) {
		try {
			categoryService.insert(category);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 修改栏目
	 */
	@At("/edit/?")
	@Ok("th://cms/category/edit.html")
	public void edit(String id, HttpServletRequest req) {
		Category category = categoryService.fetch(id);
		if(category!=null){
			Category parentData = categoryService.fetch(category.getParentId());
			if (parentData != null) {
				category.setParentName( parentData.getName());
			}
		}
		req.setAttribute("category",category);
	}

    /**
     * 修改保存栏目
     * @param category
     * @param req
     * @return
     */
	@At
	@POST
	@Ok("json")
	@RequiresPermissions("cms:category:edit")
	@Slog(tag="栏目", after="修改保存栏目")
	public Object editDo(@Param("..") Category category,HttpServletRequest req) {
		try {
			if(Lang.isNotEmpty(category)){
				category.setUpdateBy(ShiroUtils.getSysUserId());
				category.setUpdateTime(new Date());
				categoryService.update(category);
			}
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 删除栏目
	 */
	@At("/remove/?")
	@Ok("json")
	@RequiresPermissions("cms:category:remove")
	@Slog(tag ="栏目", after= "删除栏目:${args[0]}")
	public Object remove(String id, HttpServletRequest req) {
		try {
			categoryService.delete(id);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 选择菜单树
	 */
	@At("/selectTree/?")
	@Ok("th:/cms/category/tree.html")
	public void selectTree(String id, HttpServletRequest req) {
		Category category = null;
		if(Strings.isNotBlank(id)) {
			category = categoryService.fetch(id);
		}
		if (category ==null)  {
			category=new Category();
			category.setId("");
			category.setParentId("0");
			category.setName("无");
		}
		req.setAttribute("category",category);
	}

	/**
	* 获取树数据
	* @param parentId
	* @param name
	* @return
	*/
	@At
	@Ok("json")
	public List<Map<String, Object>> treeData( @Param("parentId") String parentId,
											   @Param("name") String name) {
		List<Map<String, Object>> tree = categoryService.selectTree(parentId,name);
		return tree;
	}
}
