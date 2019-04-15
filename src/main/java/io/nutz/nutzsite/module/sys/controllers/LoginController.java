package io.nutz.nutzsite.module.sys.controllers;

import io.nutz.nutzsite.common.base.Result;
import io.nutz.nutzsite.common.exception.EmptyCaptchaException;
import io.nutz.nutzsite.common.exception.IncorrectCaptchaException;
import io.nutz.nutzsite.common.shiro.filter.AuthenticationFilter;
import io.nutz.nutzsite.module.sys.models.User;
import io.nutz.nutzsite.module.sys.services.UserService;
import org.apache.commons.lang3.math.NumberUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ThreadContext;
import org.nutz.dao.Chain;
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


    @GET
    @At({"","/login"})
    @Ok("th:/login.html")
    public void loginPage() {

    }


    @Ok("json")
    @Fail("http:500")
    @POST
    @At("/login")
    @Filters(@By(type = AuthenticationFilter.class))
    public Result login(@Attr("loginToken") AuthenticationToken token, HttpServletRequest req, HttpSession session) {
        int errCount = 0;
        try {
            //输错三次显示验证码窗口
            errCount = NumberUtils.toInt(Strings.sNull(SecurityUtils.getSubject().getSession(true).getAttribute("errCount")));
            Subject subject = SecurityUtils.getSubject();
            ThreadContext.bind(subject);
            subject.login(token);
            User user = (User) subject.getPrincipal();
//            int count = user.getLoginCount() == null ? 0 : user.getLoginCount();
//            userService.update(Chain.make("loginIp", user.getLoginIp()));
            return Result.success("login.success");
        } catch (IncorrectCaptchaException e) {
            //自定义的验证码错误异常
            return Result.error(1, "login.error.captcha");
        } catch (EmptyCaptchaException e) {
            //验证码为空
            return Result.error(2, "login.error.captcha");
        } catch (LockedAccountException e) {
            return Result.error(3, "login.error.locked");
        } catch (UnknownAccountException e) {
            errCount++;
            SecurityUtils.getSubject().getSession(true).setAttribute("errCount", errCount);
            return Result.error(4, "login.error.user");
        } catch (AuthenticationException e) {
            errCount++;
            SecurityUtils.getSubject().getSession(true).setAttribute("errCount", errCount);
            return Result.error(5, "login.error.user");
        } catch (Exception e) {
            errCount++;
            SecurityUtils.getSubject().getSession(true).setAttribute("errCount", errCount);
            return Result.error(6, "login.error.system");
        }
    }

    @At
    @Ok("th:/login.html")
    public void logout() {
        Subject subject = SecurityUtils.getSubject();
        if (subject.isAuthenticated()) {
            subject.logout();
        }
    }

}
