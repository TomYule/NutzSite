package io.nutz.nutzsite.module.sys.controllers;

import io.nutz.nutzsite.common.utils.ShiroUtils;
import io.nutz.nutzsite.module.sys.models.User;
import io.nutz.nutzsite.module.sys.services.UserService;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;

import javax.servlet.http.HttpServletRequest;

/**
 * @Author: Haimming
 * @Date: 2019-04-19 17:39
 * @Version 1.0
 */
@IocBean
@At("/sys/user/profile")
public class ProfileController {
    @Inject
    private UserService userService;

    @At("")
    @Ok("th:/sys/user/profile/profile.html")
    public void index(HttpServletRequest req) {
        User user = ShiroUtils.getSysUser();
        user =userService.fetchLinks(user,"dept");
        req.setAttribute("user", user);
        req.setAttribute("roleGroup", userService.getUserRoleGroup(user.getId()));
    }

    @At("/edit")
    @Ok("th:/sys/user/profile/edit.html")
    public void edit(HttpServletRequest req) {
        User user = ShiroUtils.getSysUser();
        user =userService.fetchLinks(user,"dept");
        req.setAttribute("user",user);
    }

    @At("/resetPwd")
    @Ok("th:/sys/user/profile/resetPwd.html")
    public void resetPwd(HttpServletRequest req) {
        User user = ShiroUtils.getSysUser();
        req.setAttribute("user",user);
    }

    @At("/headPortrait")
    @Ok("th:/sys/user/profile/headPortrait.html")
    public void headPortrait(){

    }

}
