package io.nutz.nutzsite.module.sys.services.impl;


import io.nutz.nutzsite.common.service.BaseServiceImpl;
import io.nutz.nutzsite.module.sys.models.Config;
import io.nutz.nutzsite.module.sys.services.ConfigService;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Lang;

import java.util.Arrays;

/**
 * 系统参数 服务层实现
 * 
 * @author haiming
 * @date 2019-04-17
 */
@IocBean(args = {"refer:dao"})
public class ConfigServiceImpl extends BaseServiceImpl<Config> implements ConfigService {
	public ConfigServiceImpl(Dao dao) {
		super(dao);
	}

	@Override
	public void delete(String[] ids) {
		if(Lang.isNotEmpty(ids)){
			Arrays.stream(ids).forEach(id->{
				this.dao().delete(this.getEntityClass(), id);
			});
		}
	}

}
