package io.nutz.nutzsite.module.monitor.services.impl;

import io.nutz.nutzsite.common.service.BaseServiceImpl;
import io.nutz.nutzsite.module.monitor.models.UserOnline;
import io.nutz.nutzsite.module.monitor.services.UserOnlineService;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

/**
 * 在线用户记录 服务层实现
 * 
 * @author haiming
 * @date 2019-04-18
 */
@IocBean(args = {"refer:dao"})
public class UserOnlineServiceImpl extends BaseServiceImpl<UserOnline> implements UserOnlineService {
	public UserOnlineServiceImpl(Dao dao) {
		super(dao);
	}
}
