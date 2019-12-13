package io.nutz.nutzsite.module.cms.services;

import io.nutz.nutzsite.common.base.Service;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import io.nutz.nutzsite.module.cms.models.Site;

/**
 * 站点 服务层实现
 * 
 * @author haiming
 * @date 2019-12-13
 */
@IocBean(args = {"refer:dao"})
public class SiteService extends Service<Site> {
	public SiteService(Dao dao) {
		super(dao);
	}
}
