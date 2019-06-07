package io.nutz.nutzsite.module.tool.swagger;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;

import javax.servlet.http.HttpServletRequest;

/**
 * swagger 接口
 * @author Haiming
 */
@IocBean
@At("/tool/swagger")
public class SwaggerController {

    @At("")
    @Ok("forward:/swagger")
    @RequiresPermissions("tool:swagger:view")
    public void index(HttpServletRequest req) {

    }
}
