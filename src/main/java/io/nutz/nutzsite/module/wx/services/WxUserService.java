package io.nutz.nutzsite.module.wx.services;

import io.nutz.nutzsite.common.base.Service;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import io.nutz.nutzsite.module.wx.models.WxUser;

/**
 * 微信用户 服务层实现
 * 
 * @author haiming
 * @date 2019-05-13
 */
@IocBean(args = {"refer:dao"})
public class WxUserService extends Service<WxUser> {
	public WxUserService(Dao dao) {
		super(dao);
	}
}
