package io.nutz.nutzsite.module.wx.services.impl;

import io.nutz.nutzsite.common.service.BaseServiceImpl;
import io.nutz.nutzsite.module.wx.models.WxUser;
import io.nutz.nutzsite.module.wx.services.WxUserService;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

/**
 * 微信用户 服务层实现
 * 
 * @author haiming
 * @date 2019-05-13
 */
@IocBean(args = {"refer:dao"})
public class WxUserServiceImpl extends BaseServiceImpl<WxUser> implements WxUserService {
	public WxUserServiceImpl(Dao dao) {
		super(dao);
	}
}
