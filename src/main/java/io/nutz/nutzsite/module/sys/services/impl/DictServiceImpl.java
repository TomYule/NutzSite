package io.nutz.nutzsite.module.sys.services.impl;


import io.nutz.nutzsite.common.service.BaseServiceImpl;
import io.nutz.nutzsite.module.sys.models.Dict;
import io.nutz.nutzsite.module.sys.services.DictService;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

/**
 * 字典 服务层实现
 * 
 * @author haiming
 * @date 2019-04-16
 */
@IocBean(args = {"refer:dao"})
public class DictServiceImpl extends BaseServiceImpl<Dict> implements DictService {
	public DictServiceImpl(Dao dao) {
		super(dao);
	}
}
