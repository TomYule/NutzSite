package io.nutz.nutzsite.module.sys.controllers;

import io.nutz.nutzsite.common.base.Result;
import io.nutz.nutzsite.common.manager.AsyncManager;
import io.nutz.nutzsite.common.manager.factory.AsyncFactory;
import io.nutz.nutzsite.module.sys.models.User;
import io.nutz.nutzsite.module.sys.services.UserService;
import org.apache.commons.lang3.math.NumberUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ThreadContext;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.mvc.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@At("/login")
@IocBean
public class LoginController {

    @Inject
    private UserService userService;
    @Inject
    private AsyncFactory asyncFactory;


    @GET
    @At("")
    @Ok("th:/login.html")
    public void loginPage() {

    }


    @Ok("json")
    @Fail("http:500")
    @POST
    @At("/login")
    public Result login(@Param("username")String username,
                        @Param("password")String password,
                        @Param("rememberMe")boolean rememberMe,
                        HttpServletRequest req, HttpSession session) {
        int errCount = 0;
        try {
            //输错三次显示验证码窗口
            errCount = NumberUtils.toInt(Strings.sNull(SecurityUtils.getSubject().getSession(true).getAttribute("errCount")));
            Subject subject = SecurityUtils.getSubject();
            ThreadContext.bind(subject);
            subject.login(new UsernamePasswordToken(username,password,rememberMe));
            User user = (User) subject.getPrincipal();
            AsyncManager.me().execute(asyncFactory.recordLogininfor(user.getLoginName(), true,"user.login.success"));
            userService.recordLoginInfo(user);
            return Result.success("login.success");
        } catch (LockedAccountException e) {
            return Result.error(3, "login.error.locked");
        } catch (UnknownAccountException e) {
            e.printStackTrace();
            return Result.error(4, "login.error.user");
        } catch (AuthenticationException e) {
            e.printStackTrace();
            return Result.error(5, "login.error.user");
        } catch (Exception e) {
            e.printStackTrace();
            return Result.error(6, "login.error.system");
        }
    }

    @At
    @Ok(">>:/login")
    public void logout() {
        Subject subject = SecurityUtils.getSubject();
        if (subject.isAuthenticated()) {
            subject.logout();
        }
    }

    @At
    @Ok("th:/error/unauth.html")
    public void unauth() {

    }

}
