package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.base.Service;
import io.nutz.nutzsite.module.sys.models.DictType;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

@IocBean(args = {"refer:dao"})
public class DictTypeService  extends Service<DictType> {
    public DictTypeService(Dao dao) {
        super(dao);
    }
}
