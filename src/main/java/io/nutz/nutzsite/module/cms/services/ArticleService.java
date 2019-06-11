package io.nutz.nutzsite.module.cms.services;

import io.nutz.nutzsite.common.base.Service;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import io.nutz.nutzsite.module.cms.models.Article;

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
}
