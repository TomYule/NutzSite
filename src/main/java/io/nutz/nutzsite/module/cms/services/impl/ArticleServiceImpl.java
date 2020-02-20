package io.nutz.nutzsite.module.cms.services.impl;

import io.nutz.nutzsite.common.service.BaseServiceImpl;
import io.nutz.nutzsite.common.utils.ShiroUtils;
import io.nutz.nutzsite.module.cms.models.Article;
import io.nutz.nutzsite.module.cms.services.ArticleService;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

import java.util.Date;

/**
 * 文章 服务层实现
 * 
 * @author haiming
 * @date 2019-06-11
 */
@IocBean(args = {"refer:dao"})
public class ArticleServiceImpl extends BaseServiceImpl<Article> implements ArticleService {
	public ArticleServiceImpl(Dao dao) {
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
