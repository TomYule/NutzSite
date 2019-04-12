package io.nutz.nutzsite.module.sys.controllers;

import io.nutz.nutzsite.module.sys.models.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.apache.shiro.subject.Subject;
import org.nutz.dao.Dao;
import org.nutz.integration.shiro.SimpleShiroToken;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.*;
import javax.servlet.http.HttpSession;

@At("/login")
@IocBean
public class LoginController {

    @Inject
    Dao dao;

    @GET
    @At("")
    @Ok("th:/login.html")
    public void loginPage() {

    }


    @Ok("json")
    @Fail("http:500")
    @POST
    @At("/login")
    public boolean login(@Param("username")String username, @Param("password")String password, HttpSession session) {
        User user = dao.fetch(User.class, username);
        if (user == null) {
            return false;
        }
        Sha256Hash hash = new Sha256Hash(password, user.getSalt());
        if (!hash.toHex().equals(user.getPassword())) {
            return false;
        }
        Subject subject = SecurityUtils.getSubject();
        subject.login(new SimpleShiroToken(user.getId()));
        return true;
    }

    @Ok("th:/index.html")
    @At
    public void logout() {
        Subject subject = SecurityUtils.getSubject();
        if (subject.isAuthenticated()) {
            subject.logout();
        }
    }

}
