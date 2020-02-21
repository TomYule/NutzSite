package io.nutz.nutzsite.module.cms.services.impl;

import io.nutz.nutzsite.common.service.BaseServiceImpl;
import io.nutz.nutzsite.module.cms.models.Site;
import io.nutz.nutzsite.module.cms.services.SiteService;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

/**
 * 站点 服务层实现
 * 
 * @author haiming
 * @date 2019-12-13
 */
@IocBean(args = {"refer:dao"})
public class SiteServiceImpl extends BaseServiceImpl<Site> implements SiteService {
	public SiteServiceImpl(Dao dao) {
		super(dao);
	}
}
