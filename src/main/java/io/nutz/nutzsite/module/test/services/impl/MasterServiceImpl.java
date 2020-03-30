package io.nutz.nutzsite.module.test.services.impl;

import io.nutz.nutzsite.common.service.BaseServiceImpl;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import io.nutz.nutzsite.module.test.models.Master;
import io.nutz.nutzsite.module.test.services.MasterService;
/**
 * 主人 服务层实现
 * 
 * @author haiming
 * @date 2020-03-30
 */
@IocBean(args = {"refer:dao"})
public class MasterServiceImpl extends BaseServiceImpl<Master> implements MasterService{
	public MasterServiceImpl(Dao dao) {
		super(dao);
	}
}
