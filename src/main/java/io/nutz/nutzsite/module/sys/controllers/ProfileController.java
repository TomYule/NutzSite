package io.nutz.nutzsite.module.sys.controllers;

import io.nutz.nutzsite.common.base.Result;
import io.nutz.nutzsite.common.utils.ShiroUtils;
import io.nutz.nutzsite.module.sys.models.User;
import io.nutz.nutzsite.module.sys.services.UserService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.POST;
import org.nutz.mvc.annotation.Param;

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
        user = userService.fetchLinks(user, "dept");
        req.setAttribute("user", user);
        req.setAttribute("roleGroup", userService.getUserRoleGroup(user.getId()));
    }

    @At("/edit")
    @Ok("th:/sys/user/profile/edit.html")
    public void edit(HttpServletRequest req) {
        User user = ShiroUtils.getSysUser();
        user = userService.fetchLinks(user, "dept");
        req.setAttribute("user", user);
    }

    @At
    @POST
    @Ok("json")
    public Object update(@Param("..") User user, HttpServletRequest req) {
        try {
            User userTmp = ShiroUtils.getSysUser();
            if (userTmp.getId().equals(user.getId())) {
                userService.updateIgnoreNull(user);
                ShiroUtils.setSysUser(userService.fetch(user.getId()));
            }
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/resetPwd")
    @Ok("th:/sys/user/profile/resetPwd.html")
    public void resetPwd(HttpServletRequest req) {
        User user = userService.fetch(ShiroUtils.getUserId());
        req.setAttribute("user", user);
    }

    @At
    @Ok("json")
    public boolean checkPassword(@Param("oldPassword") String password) {
        User user = ShiroUtils.getSysUser();
        String old = new Sha256Hash(password, user.getSalt(), 1024).toBase64();
        if (old.equals(user.getPassword())) {
            return true;
        }
        return false;
    }

    @At
    @POST
    @Ok("json")
    public Result resetPwdDo(@Param("oldPassword") String oldPassword,
                           @Param("newPassword") String newPassword) {
        User user = ShiroUtils.getSysUser();
        String old = new Sha256Hash(oldPassword, user.getSalt(), 1024).toBase64();
        if (Strings.isNotBlank(newPassword) && old.equals(user.getPassword())) {
            user.setPassword(newPassword);
            if (userService.resetUserPwd(user) > 0) {
                ShiroUtils.setSysUser(userService.fetch(user.getId()));
                return Result.success("system.success");
            }
            return Result.error("system.error");
        } else {
            return Result.error("profile.resetpwd");
        }
    }

    @At("/headPortrait")
    @Ok("th:/sys/user/profile/headPortrait.html")
    public void headPortrait(HttpServletRequest req) {
        User user = userService.fetch(ShiroUtils.getUserId());
        req.setAttribute("user", user);
    }

}
