package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.base.Service;
import org.nutz.dao.Cnd;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import io.nutz.nutzsite.module.sys.models.Config;
import org.nutz.lang.Lang;

import java.util.Arrays;

/**
 * 系统参数 服务层实现
 * 
 * @author haiming
 * @date 2019-04-17
 */
@IocBean(args = {"refer:dao"})
public class ConfigService extends Service<Config> {
	public ConfigService(Dao dao) {
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
