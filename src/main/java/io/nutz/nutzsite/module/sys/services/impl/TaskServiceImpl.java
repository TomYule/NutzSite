package io.nutz.nutzsite.module.sys.services.impl;


import io.nutz.nutzsite.common.service.BaseServiceImpl;
import io.nutz.nutzsite.module.sys.models.Task;
import io.nutz.nutzsite.module.sys.services.TaskService;
import org.nutz.dao.Dao;
import org.nutz.integration.quartz.QuartzJob;
import org.nutz.integration.quartz.QuartzManager;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.quartz.JobKey;

/**
 * 定时任务 服务层实现
 *
 * @author haiming
 * @date 2019-04-23
 */
@IocBean(args = {"refer:dao"})
public class TaskServiceImpl extends BaseServiceImpl<Task> implements TaskService {
    private static final Log log = Logs.get();

    public TaskServiceImpl(Dao dao) {
        super(dao);
    }

    @Inject
    private QuartzManager quartzManager;


    /**
     * 添加定时任务执行
     * @param sysTask
     */
    @Override
    public void addQuartz(Task sysTask){
        try {
            boolean isExist = quartzManager.exist(new JobKey(sysTask.getId(), sysTask.getId()));
            if (isExist) {
                QuartzJob qj = new QuartzJob();
                qj.setJobName(sysTask.getId());
                qj.setJobGroup(sysTask.getId());
                quartzManager.delete(qj);
            }
            if ((sysTask.isStatus())) {
                QuartzJob qj = new QuartzJob();
                qj.setJobName(sysTask.getId());
                qj.setJobGroup(sysTask.getId());
                qj.setClassName(sysTask.getJobClass());
                qj.setCron(sysTask.getCron());
                qj.setComment(sysTask.getNote());
                qj.setDataMap(sysTask.getData());
                quartzManager.add(qj);
            }
        } catch (Exception e) {
            log.error(e.getMessage());
        }
    }
}
