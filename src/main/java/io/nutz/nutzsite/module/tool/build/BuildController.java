package io.nutz.nutzsite.module.tool.build;

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
    public void index(HttpServletRequest req) {

    }
}
