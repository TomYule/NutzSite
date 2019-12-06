package io.nutz.nutzsite;

import com.alibaba.fastjson.JSON;
import io.nutz.nutzsite.common.base.Globals;
import io.nutz.nutzsite.common.manager.AsyncManager;
import io.nutz.nutzsite.common.mvc.MyActionChainMaker;
import io.nutz.nutzsite.common.utils.ShiroUtils;
import io.nutz.nutzsite.common.utils.TreeUtils;
import io.nutz.nutzsite.module.sys.models.*;
import io.nutz.nutzsite.module.sys.services.*;
import org.nutz.boot.NbApp;
import org.nutz.conf.NutConf;
import org.nutz.dao.Cnd;
import org.nutz.dao.Dao;
import org.nutz.dao.util.Daos;
import org.nutz.el.opt.RunMethod;
import org.nutz.el.opt.custom.CustomMake;
import org.nutz.integration.quartz.QuartzJob;
import org.nutz.integration.quartz.QuartzManager;
import org.nutz.ioc.Ioc;
import org.nutz.ioc.impl.PropertiesProxy;
import org.nutz.ioc.loader.annotation.*;
import org.nutz.lang.Encoding;
import org.nutz.lang.Mirror;
import org.nutz.lang.util.NutMap;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.*;
import org.quartz.Scheduler;

import javax.management.MBeanServer;
import javax.management.ObjectName;
import javax.servlet.http.HttpServletRequest;
import java.lang.management.ManagementFactory;
import java.nio.charset.Charset;
import java.sql.Driver;
import java.sql.DriverManager;
import java.util.Enumeration;
import java.util.List;

/**
 * @author haiming
 */
@IocBean(create = "init", depose = "depose")
@IocBy(args="*slog")
@Localization(value = "locales/", defaultLocalizationKey = "zh-CN")
@ChainBy(type= MyActionChainMaker.class, args={})
public class MainLauncher {
    private static final Log log = Logs.get();

    @Inject("refer:$ioc")
    private Ioc ioc;

    @Inject
    protected Dao dao;

    @Inject
    protected PropertiesProxy conf;

    @Inject
    private UserService userService;
    @Inject
    private MenuService menuService;
    @Inject
    private ImageService imageService;
    @Inject
    DeptService deptService;

    /**
     * 启动方法
     * @param args
     */
    public static void main(String[] args) {
        new NbApp().setArgs(args).setPrintProcDoc(true).run();
        NutConf.USE_FASTCLASS = true;
    }


    @At({"/", "/index"})
    @Ok("re")
    public String index(HttpServletRequest req) {
        User user = ShiroUtils.getSysUser();
        if (!ShiroUtils.isAuthenticated()) {
            return "th:/login.html";
        }
        user =userService.fetchLinks(user,"dept|image");
        req.setAttribute("user", user);
        List<Menu> menuList = menuService.getMenuList(user.getId());
        req.setAttribute("menus", TreeUtils.getChildPerms(menuList, "0"));
        return "th:/index.html";
    }

    /**
     * 系统介绍
     *
     * @return
     */
    @At({"/sys/main"})
    @Ok("th:/main.html")
    public NutMap main() {
        return NutMap.NEW().setv("version", Globals.getConfig("version"));
    }

    /**
     * NB自身初始化完成后会调用这个方法
     */
    public void init() {
        // 环境检查
        if (!Charset.defaultCharset().name().equalsIgnoreCase(Encoding.UTF8)) {
            log.warn("This project must run in UTF-8, pls add -Dfile.encoding=UTF-8 to JAVA_OPTS");
        }
        // 初始化系统变量
        Globals.getInstance();
        initSysTask(ioc);
        /**
         * 自定义EL表达式
         * 文档
         * http://nutzam.com/core/el/overview.html
         */
        CustomMake.me().register("array2str", new RunMethod(){
            @Override
            public Object run(List<Object> fetchParam) {
                String tmp = JSON.toJSONString(fetchParam);
                return tmp;
            }
            @Override
            public String fetchSelf() {
                return "array2str";
            }
        });
        // 创建数据库
        Daos.createTablesInPackage(dao, "io.nutz.nutzsite", false);
    }

    /**
     * 清空定时任务 否则会存在僵尸java进程
     */
    public void depose() {
        log.info("depose AsyncManager Task");
        AsyncManager.me().shutdown();

        log.info("depose Sys Task");
        QuartzManager quartzManager = ioc.get(QuartzManager.class);
        quartzManager.clear();
        // 解决quartz有时候无法停止的问题
        try {
            ioc.get(Scheduler.class).shutdown(true);
        } catch (Exception e) {

        }
        // 非mysql数据库,或多webapp共享mysql驱动的话,以下语句删掉
        try {
            Mirror.me(Class.forName("com.mysql.jdbc.AbandonedConnectionCleanupThread")).invoke(null, "shutdown");
        } catch (Throwable e) {

        }
        // 解决com.alibaba.druid.proxy.DruidDriver和com.mysql.jdbc.Driver在reload时报warning的问题
        // 多webapp共享mysql驱动的话,以下语句删掉
        Enumeration<Driver> en = DriverManager.getDrivers();
        while (en.hasMoreElements()) {
            try {
                Driver driver = en.nextElement();
                String className = driver.getClass().getName();
                log.debug("deregisterDriver: " + className);
                DriverManager.deregisterDriver(driver);
            }
            catch (Exception e) {
            }
        }
        try {
            MBeanServer mbeanServer = ManagementFactory.getPlatformMBeanServer();
            ObjectName objectName = new ObjectName("com.alibaba.druid:type=MockDriver");
            if (mbeanServer.isRegistered(objectName)) {
                mbeanServer.unregisterMBean(objectName);
            }
            objectName = new ObjectName("com.alibaba.druid:type=DruidDriver");
            if (mbeanServer.isRegistered(objectName)) {
                mbeanServer.unregisterMBean(objectName);
            }
        } catch (Exception ex) {

        }
    }

    /**
     * 初始化 定时任务
     * @param ioc
     */
    private void initSysTask(Ioc ioc) {
        QuartzManager quartzManager = ioc.get(QuartzManager.class);
        TaskService taskService = ioc.get(TaskService.class);
        quartzManager.clear();
        List<Task> taskList = taskService.query( Cnd.where("status", "=", true));
        for (Task sysTask : taskList) {
            try {
                QuartzJob qj = new QuartzJob();
                qj.setJobName(sysTask.getId());
                qj.setJobGroup(sysTask.getId());
                qj.setClassName(sysTask.getJobClass());
                qj.setCron(sysTask.getCron());
                qj.setComment(sysTask.getNote());
                qj.setDataMap(sysTask.getData());
                quartzManager.add(qj);
            } catch (Exception e) {
                log.error(e.getMessage());
            }
        }
    }
}
