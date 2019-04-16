package io.nutz.nutzsite.module.sys.controllers;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import io.nutz.nutzsite.module.sys.models.Dict;
import io.nutz.nutzsite.module.sys.services.DictService;
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
 * 字典 信息操作处理
 * 
 * @author haiming
 * @date 2019-04-16
 */
@IocBean
@At("/sys/dict")
public class DictController {
	private static final Log log = Logs.get();

	@Inject
	private DictService dictService;
	
	@RequiresPermissions("sys:dict:view")
	@At("")
	@Ok("th:/sys/dict/dict.html")
	public void index(HttpServletRequest req) {

	}

	/**
	 * 查询字典列表
	 */
	@RequiresPermissions("sys:dict:list")
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
        cnd.and("del_flag","=",false);
		return dictService.tableList(pageNum,pageSize,cnd);
	}

	/**
	 * 新增字典
	 */
	@At("/add")
	@Ok("th:/sys/dict/add.html")
	public void add( HttpServletRequest req) {

	}

	/**
	 * 新增保存字典
	 */
	@RequiresPermissions("sys:dict:add")
	@At
	@POST
	@Ok("json")
	public Object addDo(@Param("..") Dict dict,HttpServletRequest req) {
		try {
			dictService.insert(dict);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 修改字典
	 */
	@At("/edit/?")
	@Ok("th://sys/dict/edit.html")
	public void edit(String id, HttpServletRequest req) {
		Dict dict = dictService.fetch(id);
		req.setAttribute("dict",dict);
	}

	/**
	 * 修改保存字典
	 */
	@RequiresPermissions("sys:dict:edit")
	@At
	@POST
	@Ok("json")
	public Object editDo(@Param("..") Dict dict,HttpServletRequest req) {
		try {
			dictService.update(dict);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 删除字典
	 */
	@At("/remove")
	@Ok("json")
	@RequiresPermissions("sys:dict:remove")
	public Object remove(@Param("ids")String[] ids, HttpServletRequest req) {
		try {
			dictService.vDelete(ids);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

}
