package io.nutz.nutzsite.module.sys.controllers;

import io.nutz.nutzsite.common.enums.ImageType;
import io.nutz.nutzsite.common.base.Result;
import io.nutz.nutzsite.common.utils.ShiroUtils;
import io.nutz.nutzsite.module.sys.models.User;
import io.nutz.nutzsite.module.sys.services.ImageService;
import io.nutz.nutzsite.module.sys.services.UserService;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import org.nutz.mvc.annotation.*;
import org.nutz.mvc.upload.TempFile;
import org.nutz.mvc.upload.UploadAdaptor;
import org.nutz.plugins.slog.annotation.Slog;

import javax.servlet.http.HttpServletRequest;


/**
 * 个人信息
 * @Author: Haimming
 * @Date: 2019-04-19 17:39
 * @Version 1.0
 */
@IocBean
@At("/sys/user/profile")
public class ProfileController {
    @Inject
    private UserService userService;
    @Inject
    private ImageService imageService;

    @At("")
    @Ok("th:/sys/user/profile/profile.html")
    public void index(HttpServletRequest req) {
        User user = ShiroUtils.getSysUser();
        user = userService.fetchLinks(user, "dept|image");
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
    @Slog(tag="个人信息", after="修改保存个人信息")
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
    @Slog(tag="个人信息", after="重置密码")
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
        user = userService.fetchLinks(user, "image");
        req.setAttribute("user", user);
        if(Lang.isNotEmpty(user.getImage())){
            req.setAttribute("image", user.getImage().getBase64());
        }
    }

    @At
    @POST
    @Ok("json")
    @Slog(tag="个人信息", after="修改头像")
    @AdaptBy(type = UploadAdaptor.class)
    public Object updateAvatar(@Param("avatarfile") TempFile avatarfile){
        User user = userService.fetch(ShiroUtils.getUserId());
        String id = imageService.save(avatarfile, ImageType.Base64 ,ShiroUtils.getUserId(),user.getAvatar());
        user.setAvatar(id);
        userService.updateIgnoreNull(user);
        ShiroUtils.setSysUser(userService.fetch(user.getId()));
        return Result.success("system.success");
    }

    @At
    @Ok("json")
    public String getAvatar(){
        User user = userService.fetch(ShiroUtils.getUserId());
        user = userService.fetchLinks(user, "image");
        if(Lang.isNotEmpty(user.getImage())){
            switch (ImageType.valueOf(user.getImage().getPhotoType())){
                case Base64:
                    return user.getImage().getBase64();
                case Qiniu:
                    return user.getImage().getUrl();
                default:
                    return user.getImage().getLocalPath();
            }
        }
       return "/assets/img/profile.jpg";
    }



}
