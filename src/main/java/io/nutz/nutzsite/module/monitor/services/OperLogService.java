package io.nutz.nutzsite.module.monitor.services;

import io.nutz.nutzsite.common.base.Service;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import io.nutz.nutzsite.module.monitor.models.OperLog;

/**
 * 操作日志记录 服务层实现
 * 
 * @author haiming
 * @date 2019-04-18
 */
@IocBean(args = {"refer:dao"})
public class OperLogService extends Service<OperLog> {
	public OperLogService(Dao dao) {
		super(dao);
	}
}
