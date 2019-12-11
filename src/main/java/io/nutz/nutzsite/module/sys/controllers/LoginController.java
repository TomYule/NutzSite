package io.nutz.nutzsite.module.sys.controllers;

import io.nutz.nutzsite.common.base.Globals;
import io.nutz.nutzsite.common.base.Result;
import io.nutz.nutzsite.common.manager.AsyncManager;
import io.nutz.nutzsite.common.manager.factory.AsyncFactory;
import io.nutz.nutzsite.common.utils.RSAUtils;
import io.nutz.nutzsite.common.utils.ShiroUtils;
import io.nutz.nutzsite.common.utils.Toolkit;
import io.nutz.nutzsite.module.sys.models.User;
import io.nutz.nutzsite.module.sys.services.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ThreadContext;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import org.nutz.mvc.annotation.*;

import javax.crypto.BadPaddingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author haiming
 */
@At("/login")
@IocBean
public class LoginController {

    @Inject
    private UserService userService;
    @Inject
    private AsyncFactory asyncFactory;

    @GET
    @At({"","/loginPage"})
    @Ok("re")
    public String loginPage(  HttpServletRequest req) {
        if (ShiroUtils.isAuthenticated()) {
            return ">>:/index";
        }
        return "th:/login.html";
    }


    @Ok("json")
    @Fail("http:500")
    @POST
    @At("/login")
    public Result login(@Param("username")String username,
                        @Param("password")String password,
                        @Param("rememberMe")boolean rememberMe,
                        @Param("validateCode")String validateCode,
                        HttpServletRequest req,
                        HttpSession session) {
        if(Boolean.valueOf(Globals.getConfig("login.captcha"))){
            // session是否有效
            if (session == null) {
                return Result.error("当前回话已过期,请刷新后重试");
            }
            // 比对验证码
            String _captcha = (String) session.getAttribute(Toolkit.captcha_attr);
            if (Strings.isBlank(_captcha) || !Toolkit.checkCaptcha(_captcha,validateCode)) {
                return Result.error("验证码错误");
            }
        }
        try {
            Subject subject = SecurityUtils.getSubject();
            ThreadContext.bind(subject);
            //RSA解密
            password = RSAUtils.decrypt(password, Globals.getPrivateKey());

            subject.login(new UsernamePasswordToken(username,password,rememberMe));
            User user = (User) subject.getPrincipal();
            AsyncManager.me().execute(asyncFactory.recordLogininfor(user.getLoginName(), true,req,"登录成功"));
            userService.recordLoginInfo(user);
            return Result.success("login.success");
        } catch (LockedAccountException e) {
            AsyncManager.me().execute(asyncFactory.recordLogininfor(username, false,req,"账号锁定"));
            return Result.error(3, "login.error.locked");
        } catch (UnknownAccountException e) {
            AsyncManager.me().execute(asyncFactory.recordLogininfor(username, false,req,"用户不存在"));
            return Result.error(4, "login.error.user");
        } catch (AuthenticationException e) {
            AsyncManager.me().execute(asyncFactory.recordLogininfor(username, false,req,"密码错误"));
            return Result.error(5, "login.error.user");
        } catch (BadPaddingException e) {
            AsyncManager.me().execute(asyncFactory.recordLogininfor(username, false,req,"密码错误"));
            return Result.error(5, "login.error.user");
        } catch (Exception e) {
            e.printStackTrace();
            AsyncManager.me().execute(asyncFactory.recordLogininfor(username, false,req,"登录系统异常"));
            return Result.error(6, "login.error.system");
        }
    }

    @At
    @Ok("re")
    public String logout() {
        Subject subject = SecurityUtils.getSubject();
        while(Lang.isNotEmpty(subject) &&  subject.isAuthenticated()) {
            subject.logout();
        }
        return ">>:/login";
    }

    @At
    @Ok("http:403")
    public void unauth() {

    }

}
