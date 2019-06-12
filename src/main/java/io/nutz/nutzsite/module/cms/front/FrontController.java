package io.nutz.nutzsite.module.cms.front;

import com.github.benmanes.caffeine.cache.Cache;
import com.github.benmanes.caffeine.cache.Caffeine;
import io.nutz.nutzsite.module.cms.models.Article;
import io.nutz.nutzsite.module.cms.models.Category;
import io.nutz.nutzsite.module.cms.services.ArticleService;
import io.nutz.nutzsite.module.cms.services.CategoryService;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

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

    Cache<String, Object> manualCache = Caffeine.newBuilder()
            .expireAfterWrite(10, TimeUnit.MINUTES)
            .maximumSize(10_000)
            .build();

    /**
     * 获取不到则初始化缓存
     *
     * @param key
     * @return
     */
    private Object getCache(String key) {
        // 根据key查询一个缓存，如果没有返回NULL
        Object graph = manualCache.getIfPresent(key);
        if (Lang.isEmpty(graph)) {
            // 根据Key查询一个缓存，如果没有调用createExpensiveGraph方法，并将返回值保存到缓存。
            // 如果该方法返回Null则manualCache.get返回null，如果该方法抛出异常则manualCache.get抛出异常
            graph = manualCache.get(key, k -> createExpensiveGraph(k));
            // 将一个值放入缓存，如果以前有值就覆盖以前的值
            manualCache.put(key, graph);
        }
        return graph;
    }

    /**
     * 查询
     *
     * @param key
     * @return
     */
    private List<Category> createExpensiveGraph(String key) {
        return categoryService.query(Cnd.NEW().and("parent_id", "=", key).asc("sort"));
    }

    /**
     * 首页
     * @param req
     */
    @At("")
    @Ok("th:/cms/front/index.html")
    public void index(HttpServletRequest req) {
        req.setAttribute("nav_categories", getCache("1"));
    }

    /**
     * 栏目导航
     * @param id
     * @param req
     */
    @At("/category/?")
    @Ok("th:/cms/front/category.html")
    public void category(String id, HttpServletRequest req) {
        List<Category> list = (List<Category>) getCache(id);
        List<String> ids = new ArrayList<>();
        list.forEach(category -> {
            ids.add(category.getId());
        });
        List<Article> articleList = articleService.query(Cnd.NEW().and("category_id", "in", ids));
        req.setAttribute("id", id);
        req.setAttribute("list", list);
        req.setAttribute("nav_categories", getCache("1"));
        req.setAttribute("articleList", articleList);
    }

    /**
     * 子栏目导航
     * @param id
     * @param pid
     * @param req
     */
    @At("/categoryById/?/?")
    @Ok("th:/cms/front/category.html")
    public void categoryById(String id, String pid, HttpServletRequest req) {
        List<Category> list = categoryService.query(Cnd.NEW().and("id", "=", id).asc("sort"));
        List<String> ids = new ArrayList<>();
        list.forEach(category -> {
            ids.add(category.getId());
        });
        List<Article> articleList = articleService.query(Cnd.NEW().and("category_id", "in", ids));
        req.setAttribute("id", pid);
        req.setAttribute("list", list);
        req.setAttribute("nav_categories", getCache("1"));
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
            List<Category> list = categoryService.query(Cnd.NEW().and("id", "=", article.getCategoryId()).asc("sort"));
            req.setAttribute("id", article.getCategoryId());
            req.setAttribute("article", article);
            req.setAttribute("list", list);
        }
        req.setAttribute("nav_categories", getCache("1"));
        articleService.updateIgnoreNull(article);
    }

}
