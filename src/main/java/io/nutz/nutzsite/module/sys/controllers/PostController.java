package io.nutz.nutzsite.module.sys.controllers;

import io.nutz.nutzsite.common.exception.ErrorException;
import io.nutz.nutzsite.common.utils.ShiroUtils;
import io.nutz.nutzsite.module.sys.services.PostService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import io.nutz.nutzsite.module.sys.models.Post;
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
import org.nutz.plugins.validation.Errors;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * 岗位 信息操作处理
 * 
 * @author haiming
 * @date 2019-04-10
 */
@IocBean
@At("/sys/post")
public class PostController {
	private static final Log log = Logs.get();

	@Inject
	private PostService postService;
	
	@RequiresPermissions("sys:post:view")
	@At("")
	@Ok("th:/sys/post/post.html")
	public void index(HttpServletRequest req) {

	}

	/**
	 * 查询岗位列表
	 */
	@RequiresPermissions("sys:post:list")
	@At
	@Ok("json")
	public Object list(@Param("pageNum")Integer pageNum,
					   @Param("pageSize")Integer pageSize,
					   @Param("name") String name,
					   HttpServletRequest req) {
		Cnd cnd = Cnd.NEW();
		if (!Strings.isBlank(name)){
			//cnd.and("name", "like", "%" + name +"%");
		}
		return postService.tableList(pageNum,pageSize,cnd);
	}

	/**
	 * 新增岗位
	 */
	@At("/add")
	@Ok("th:/sys/post/add.html")
	public void add( HttpServletRequest req) {

	}

	/**
	 * 新增保存岗位
	 */
	@RequiresPermissions("sys:post:add")
	@At
	@POST
	@Ok("json")
	@Slog(tag="岗位", after="新增保存岗位id=${args[0].id}")
	public Object addDo(@Param("..") Post post, Errors es, HttpServletRequest req) {
		try {
			if(es.hasError()){
				 return Result.error(es);
			}
			postService.insert(post);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error(e instanceof ErrorException ? e.getMessage() : "system.error");
		}
	}

	/**
	 * 修改岗位
	 */
	@At("/edit/?")
	@Ok("th://sys/post/edit.html")
	public void edit(String id, HttpServletRequest req) {
		Post post = postService.fetch(id);
		req.setAttribute("post",post);
	}

	/**
	 * 修改保存岗位
	 */
	@RequiresPermissions("sys:post:edit")
	@At
	@POST
	@Ok("json")
	@Slog(tag="岗位", after="修改保存岗位")
	public Object editDo(@Param("..") Post post, Errors es, HttpServletRequest req) {
		try {
			if(es.hasError()){
				 return Result.error(es);
			}
			if(Lang.isNotEmpty(post)){
				post.setUpdateBy(ShiroUtils.getSysUserId());
				post.setUpdateTime(new Date());
				postService.update(post);
			}
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error(e instanceof ErrorException ? e.getMessage() : "system.error");
		}
	}

	/**
	 * 删除岗位
	 */
	@At("/remove")
	@Ok("json")
	@RequiresPermissions("sys:post:remove")
	@Slog(tag ="岗位", after= "删除岗位:${array2str(args[0])}")
	public Object remove(@Param("ids")String[] ids, HttpServletRequest req) {
		try {
			postService.delete(ids);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

}
