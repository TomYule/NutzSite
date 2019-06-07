package io.nutz.nutzsite.module.tool.build;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;

import javax.servlet.http.HttpServletRequest;

/**
 * 表单构建
 * @author haiming
 */
@IocBean
@At("/tool/build")
public class BuildController {

    @At("")
    @Ok("th:/tool/build/build.html")
    @RequiresPermissions("tool:build:view")
    public void index(HttpServletRequest req) {

    }
}
