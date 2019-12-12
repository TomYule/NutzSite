package io.nutz.nutzsite.module.cms.front;

import io.nutz.nutzsite.module.cms.models.Article;
import io.nutz.nutzsite.module.cms.models.Category;
import io.nutz.nutzsite.module.cms.services.ArticleService;
import io.nutz.nutzsite.module.cms.services.CategoryService;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * @author zengcd
 * @Description
 * @Date 2019/6/6 15:32
 */
@IocBean
@At("/front")
public class FrontController {

    private static final Log log = Logs.get();

    @Inject
    private CategoryService categoryService;
    @Inject
    private ArticleService articleService;

    /**
     * 首页
     * @param req
     */
    @At("")
    @Ok("th:/cms/front/index.html")
    public void index(HttpServletRequest req) {
        req.setAttribute("nav_categories", categoryService.getCateById("1"));
    }

    /**
     * 栏目导航
     * @param id
     * @param req
     */
    @At("/category/?")
    @Ok("th:/cms/front/category.html")
    public void category(String id, HttpServletRequest req) {
        List<String> ids = new ArrayList<>();

        List<Category> list = categoryService.query(Cnd.where("parent_id", "=", id).asc("sort"));
        ids.add(id);
        list.stream().forEach(cate->{
            ids.add(cate.getId());
        });
        List<Article> articleList = articleService.query(Cnd.where("category_id", "in", ids));
        req.setAttribute("id", id);
        req.setAttribute("list", list);
        req.setAttribute("nav_categories",categoryService.getCateById("1"));
        req.setAttribute("articleList", articleList);
    }

    /**
     * 子栏目导航
     * @param id
     * @param pid
     * @param req
     */
    @At("/categoryById/?/?")
    @Ok("th:/cms/front/categoryById.html")
    public void categoryById(String id, String pid, HttpServletRequest req) {
        List<Category> list = categoryService.query(Cnd.where("id", "=", id).asc("sort"));
        List<String> ids = new ArrayList<>();
        list.forEach(category -> {
            ids.add(category.getId());
        });
        List<Article> articleList = articleService.query(Cnd.where("category_id", "in", ids));
        req.setAttribute("id", pid);
        req.setAttribute("list", list);
        req.setAttribute("nav_categories",categoryService.getCateById("1"));
        req.setAttribute("articleList", articleList);
    }

    /**
     * 内容展示
     * @param id
     * @param req
     */
    @At
    @Ok("th:/cms/front/content.html")
    public void articleById(@Param("id") String id, HttpServletRequest req) {
        Article article = articleService.fetch(id);
        article.setHits(article.getHits() + 1);
        if (article != null) {
            articleService.fetchLinks(article, "category|createUser");
            List<Category> list = categoryService.query(Cnd.where("id", "=", article.getCategoryId()).asc("sort"));
            req.setAttribute("id", article.getCategoryId());
            req.setAttribute("article", article);
            req.setAttribute("list", list);
        }
        req.setAttribute("nav_categories",categoryService.getCateById("1"));
        articleService.updateIgnoreNull(article);
    }

    @At
    @Ok("th:/cms/front/search.html")
    public void search(@Param("name") String name,HttpServletRequest req) {
        req.setAttribute("nav_categories", categoryService.getCateById("1"));
    }


}
