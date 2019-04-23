package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.base.Service;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import io.nutz.nutzsite.module.sys.models.Task;

/**
 * 定时任务 服务层实现
 *
 * @author haiming
 * @date 2019-04-23
 */
@IocBean(args = {"refer:dao"})
public class TaskService extends Service<Task> {
    public TaskService(Dao dao) {
        super(dao);
    }
}
