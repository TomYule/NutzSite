package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.base.Service;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import io.nutz.nutzsite.module.sys.models.Dict;

/**
 * 字典 服务层实现
 * 
 * @author haiming
 * @date 2019-04-16
 */
@IocBean(args = {"refer:dao"})
public class DictService extends Service<Dict> {
	public DictService(Dao dao) {
		super(dao);
	}
}
