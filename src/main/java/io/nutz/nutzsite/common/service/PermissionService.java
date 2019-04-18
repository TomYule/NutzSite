package io.nutz.nutzsite.common.service;

import org.apache.shiro.SecurityUtils;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;

/**
 * @Author: Haimming
 * @Date: 2019-04-18 09:05
 * @Version 1.0
 */
@IocBean()
@At("permission")
public class PermissionService {
    @At("")
    public String hasPermi(String permission) {
        return isPermittedOperator(permission) ? "" : "hidden";
    }

    private boolean isPermittedOperator(String permission) {
        return SecurityUtils.getSubject().isPermitted(permission);
    }
}
