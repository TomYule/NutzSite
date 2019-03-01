package io.nutz.nutzsite;

import org.nutz.boot.NbApp;
import org.nutz.dao.Dao;
import org.nutz.ioc.impl.PropertiesProxy;
import org.nutz.ioc.loader.annotation.*;
import org.nutz.lang.util.NutMap;
import org.nutz.mvc.annotation.*;

@IocBean(create="init", depose="depose")
public class MainLauncher {
    
    @Inject
    protected PropertiesProxy conf;

    @Inject
    private Dao dao;

    @At({"/", "/index"})
    @Ok("th:/index.html")
    public NutMap index() {
        return NutMap.NEW().setv("name", "NB").setv("age", 18);
    }

    /**
     * 系统介绍
     * @return
     */
    @At({"/sys/main"})
    @Ok("th:/main.html")
    public NutMap main()
    {
        return NutMap.NEW().setv("version", "1.0");
    }

    public void init() {
        // NB自身初始化完成后会调用这个方法
//        Daos.createTablesInPackage(dao, "io.nutz.nutzsite.module", false);
    }
    public void depose() {}

    public static void main(String[] args) throws Exception {
        new NbApp().setArgs(args).setPrintProcDoc(true).run();
    }

}
