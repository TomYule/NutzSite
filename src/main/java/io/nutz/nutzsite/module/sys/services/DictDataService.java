package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.base.Service;
import io.nutz.nutzsite.module.sys.models.DictData;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

@IocBean(args = {"refer:dao"})
public class DictDataService extends Service<DictData> {

    public DictDataService(Dao dao) {
        super(dao);
    }

}
