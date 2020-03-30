package io.nutz.nutzsite.module.test.services.impl;

import io.nutz.nutzsite.common.service.BaseServiceImpl;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import io.nutz.nutzsite.module.test.models.Pet;
import io.nutz.nutzsite.module.test.services.PetService;
/**
 * 宠物 服务层实现
 * 
 * @author haiming
 * @date 2020-03-30
 */
@IocBean(args = {"refer:dao"})
public class PetServiceImpl extends BaseServiceImpl<Pet> implements PetService{
	public PetServiceImpl(Dao dao) {
		super(dao);
	}
}
