package io.nutz.nutzsite.module.monitor.services;

import io.nutz.nutzsite.common.service.BaseService;
import io.nutz.nutzsite.module.monitor.models.Logininfor;

import javax.servlet.http.HttpServletRequest;

/**
 * 系统访问记录 服务层实现
 * 
 * @author haiming
 * @date 2019-04-18
 */
public interface LogininforService extends BaseService<Logininfor> {
	/**
	 * 统计ip异常信息
	 * @param req
	 * @return
	 */
	public long countLoginRecord(HttpServletRequest req);

	/**
	 * 清除登录记录
	 */
	public void cleanLogininfor();
}
