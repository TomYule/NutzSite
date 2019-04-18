package io.nutz.nutzsite.module.monitor.controller;

import io.nutz.nutzsite.module.monitor.entity.Server;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;

import javax.servlet.http.HttpServletRequest;

/**
 * 服务器监控
 * @Author: Haimming
 * @Date: 2019-04-18 16:12
 * @Version 1.0
 */
@IocBean
@At("/monitor/server")
public class ServerController {

    @At("")
    @Ok("th:/monitor/server/server.html")
    @RequiresPermissions("monitor:server:view")
    public void index(HttpServletRequest req) {
        Server server = new Server();
        try {
            server.copyTo();
        } catch (Exception e) {
            e.printStackTrace();
        }
        req.setAttribute("server",server);
    }

}
