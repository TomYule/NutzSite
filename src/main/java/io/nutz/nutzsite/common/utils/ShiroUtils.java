package io.nutz.nutzsite.common.utils;


import io.nutz.nutzsite.module.sys.models.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.nutz.lang.Lang;

/**
 * shiro 工具类
 *
 * @author ruoyi
 */
public class ShiroUtils {
    public static Subject getSubject() {
        return SecurityUtils.getSubject();
    }

    public static Session getSession() {
        return SecurityUtils.getSubject().getSession();
    }

    public static void logout() {
        getSubject().logout();
    }

    public static User getSysUser() {
        User user = null;
        Object obj = getSubject().getPrincipal();
        if (Lang.isNotEmpty(obj)) {
            user = new User();
            BeanUtils.copyBeanProp(user, obj);
        }
        return user;
    }

    public static String getSysUserId() {
        User user = null;
        Object obj = getSubject().getPrincipal();
        if (Lang.isNotEmpty(obj)) {
            user = new User();
            BeanUtils.copyBeanProp(user, obj);
            return user.getId();
        }
        return "";
    }

    public static void setSysUser(User user) {
        Subject subject = getSubject();
        PrincipalCollection principalCollection = subject.getPrincipals();
        String realmName = principalCollection.getRealmNames().iterator().next();
        PrincipalCollection newPrincipalCollection = new SimplePrincipalCollection(user, realmName);
        // 重新加载Principal
        subject.runAs(newPrincipalCollection);
    }

    public static String getUserId() {
        return getSysUser().getId();
    }

    public static String getLoginName() {
        if(Lang.isNotEmpty(getSysUser())){
            return getSysUser().getLoginName();
        }
        return null;
    }

    public static String getIp() {
        return getSubject().getSession().getHost();
    }

    public static String getSessionId() {
        return String.valueOf(getSubject().getSession().getId());
    }

    /**
     * 判断是否登录
     * @return
     */
    public static boolean isAuthenticated(){
        Subject user = getSubject();
       if( Lang.isNotEmpty(user)){
           return user.isAuthenticated();
       }
        return false;

    }
}
