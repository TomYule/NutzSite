package io.nutz.nutzsite.module.monitor.services;

import io.nutz.nutzsite.common.service.BaseService;
import io.nutz.nutzsite.module.monitor.models.Logininfor;

/**
 * 系统访问记录 服务层实现
 * 
 * @author haiming
 * @date 2019-04-18
 */
public interface LogininforService extends BaseService<Logininfor> {

	public void cleanLogininfor();
}
