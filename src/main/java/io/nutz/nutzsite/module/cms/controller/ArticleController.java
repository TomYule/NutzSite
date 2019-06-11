package io.nutz.nutzsite.module.cms.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import io.nutz.nutzsite.module.cms.models.Article;
import io.nutz.nutzsite.module.cms.services.ArticleService;
import io.nutz.nutzsite.common.base.Result;;
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
 * 文章 信息操作处理
 *
 * @author haiming
 * @date 2019-06-11
 */
@IocBean
@At("/cms/article")
public class ArticleController {
    private static final Log log = Logs.get();

    @Inject
    private ArticleService articleService;

    @RequiresPermissions("cms:article:view")
    @At("")
    @Ok("th:/cms/article/article.html")
    public void index(HttpServletRequest req) {

    }

    /**
     * 查询文章列表
     */
    @RequiresPermissions("cms:article:list")
    @At
    @Ok("json")
    public Object list(@Param("pageNum") int pageNum,
                       @Param("pageSize") int pageSize,
                       @Param("name") String name,
                       @Param("categoryId") String categoryId,
                       @Param("beginTime") Date beginTime,
                       @Param("endTime") Date endTime,
                       @Param("orderByColumn") String orderByColumn,
                       @Param("isAsc") String isAsc,
                       HttpServletRequest req) {
        Cnd cnd = Cnd.NEW();
        if (!Strings.isBlank(name)) {
            //cnd.and("name", "like", "%" + name +"%");
        }
        if (!Strings.isBlank(categoryId)){
            //cnd.and("category_id", "=", categoryId);
            cnd.where().andInBySql("category_id","SELECT id FROM cms_category  WHERE FIND_IN_SET ('%s',parent_ids)", categoryId)
                    .or("category_id","=", categoryId);
        }
        if (Lang.isNotEmpty(beginTime)) {
            cnd.and("create_time", ">=", beginTime);
        }
        if (Lang.isNotEmpty(endTime)) {
            cnd.and("create_time", "<=", endTime);
        }
        return articleService.tableList(pageNum, pageSize, cnd, orderByColumn, isAsc, "category");
    }

    /**
     * 新增文章
     */
    @At("/add")
    @Ok("th:/cms/article/add.html")
    public void add(HttpServletRequest req) {

    }

    /**
     * 新增保存文章
     */
    @At
    @POST
    @Ok("json")
    @RequiresPermissions("cms:article:add")
    @Slog(tag = "文章", after = "新增保存文章 id=${args[0].id}")
    public Object addDo(@Param("..") Article article, HttpServletRequest req) {
        try {
            articleService.insert(article);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    /**
     * 修改文章
     */
    @At("/edit/?")
    @Ok("th://cms/article/edit.html")
    public void edit(String id, HttpServletRequest req) {
        Article article = articleService.fetch(id);
        req.setAttribute("article", article);
    }

    /**
     * 修改保存文章
     */
    @At
    @POST
    @Ok("json")
    @RequiresPermissions("cms:article:edit")
    @Slog(tag = "文章", after = "修改保存文章")
    public Object editDo(@Param("..") Article article, HttpServletRequest req) {
        try {
            if (Lang.isNotEmpty(article)) {
                article.setUpdateBy(ShiroUtils.getSysUserId());
                article.setUpdateTime(new Date());
                articleService.update(article);
            }
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    /**
     * 删除文章
     */
    @At("/remove")
    @Ok("json")
    @RequiresPermissions("cms:article:remove")
    @Slog(tag = "文章", after = "删除文章:${array2str(args[0])}")
    public Object remove(@Param("ids") String[] ids, HttpServletRequest req) {
        try {
            articleService.delete(ids);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

}
