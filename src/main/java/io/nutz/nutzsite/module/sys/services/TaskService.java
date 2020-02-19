package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.service.BaseService;
import io.nutz.nutzsite.module.sys.models.Task;

/**
 * @Author: Haimming
 * @Date: 2019-10-21 10:23
 * @Version 1.0
 */
public interface TaskService extends BaseService<Task> {
    /**
     * 添加定时任务执行
     * @param sysTask
     */
    public void addQuartz(Task sysTask);
}
