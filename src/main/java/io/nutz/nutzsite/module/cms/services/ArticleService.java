package io.nutz.nutzsite.module.cms.services;

import io.nutz.nutzsite.common.base.Service;
import io.nutz.nutzsite.common.utils.ShiroUtils;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import io.nutz.nutzsite.module.cms.models.Article;

import java.util.Date;

/**
 * 文章 服务层实现
 * 
 * @author haiming
 * @date 2019-06-11
 */
@IocBean(args = {"refer:dao"})
public class ArticleService extends Service<Article> {
	public ArticleService(Dao dao) {
		super(dao);
	}

	@Override
	public Article insert(Article article) {
		article.setCreateBy(ShiroUtils.getSysUserId());
		article.setCreateTime(new Date());
		article.setUpdateBy(ShiroUtils.getSysUserId());
		article.setUpdateTime(new Date());
		return super.insert(article);
	}
}
