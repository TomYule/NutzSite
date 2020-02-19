package io.nutz.nutzsite.module.sys.services.impl;


import io.nutz.nutzsite.common.service.BaseServiceImpl;
import io.nutz.nutzsite.module.sys.models.Post;
import io.nutz.nutzsite.module.sys.services.PostService;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

/**
 * 岗位 服务层实现
 * 
 * @author haiming
 * @date 2019-04-10
 */
@IocBean(args = {"refer:dao"})
public class PostServiceImpl extends BaseServiceImpl<Post> implements PostService {
	public PostServiceImpl(Dao dao) {
		super(dao);
	}
}
