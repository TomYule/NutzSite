package io.nutz.nutzsite.common.shiro;

import io.nutz.nutzsite.common.exception.EmptyCaptchaException;
import io.nutz.nutzsite.common.exception.IncorrectCaptchaException;
import io.nutz.nutzsite.module.sys.models.User;
import io.nutz.nutzsite.module.sys.services.UserService;
import org.apache.commons.lang3.math.NumberUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.cache.CacheManager;

import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.nutz.dao.Cnd;
import org.apache.shiro.realm.AuthorizingRealm;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;

import java.util.Set;

/**
 * 自定义Realm 处理登录 权限
 */
@IocBean(name = "shiroRealm")
public class UserRealm extends AuthorizingRealm {
    @Inject
    private UserService userService;

    /**
     * 授权
     * @param principals
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        // null usernames are invalid
        if (principals == null) {
            throw new AuthorizationException("PrincipalCollection method argument cannot be null.");
        }
        User user = (User) principals.getPrimaryPrincipal();
        if (user == null) {
            return null;
        }
        // 角色列表
        Set<String> roles =userService.getRoleCodeList(user);
        // 功能列表
        Set<String> menus = userService.getPermsByUserId(user.getId());

        SimpleAuthorizationInfo auth = new SimpleAuthorizationInfo();
		auth.setRoles(roles);
		auth.setStringPermissions(menus);
        return auth;
    }

    /**
     * 登录验证
     * @param token
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        UsernamePasswordToken upToken = (UsernamePasswordToken) token;
        if (Lang.isEmpty(upToken) || Strings.isEmpty(upToken.getUsername())) {
            throw Lang.makeThrow(AuthenticationException.class, "Account name is empty");
        }
        User user = userService.fetch(Cnd.where("login_name","=",upToken.getUsername()));
        if (Lang.isEmpty(user)) {
            throw Lang.makeThrow(UnknownAccountException.class, "Account [ %s ] not found", upToken.getUsername());
        }
//        int errCount = NumberUtils.toInt(Strings.sNull(SecurityUtils.getSubject().getSession(true).getAttribute("errCount")));
//        if (errCount > 2) {
//            //输错三次显示验证码窗口
//            if (Strings.isBlank(captcha)) {
//                throw Lang.makeThrow(EmptyCaptchaException.class, "Captcha is empty");
//            }
//            String captchaTmp = Strings.sBlank(SecurityUtils.getSubject().getSession(true).getAttribute("captcha"));
//            if (!authcToken.getCaptcha().equalsIgnoreCase(captchaTmp)) {
//                throw Lang.makeThrow(IncorrectCaptchaException.class, "Captcha is error");
//            }
//        }
        if (user.isStatus()) {
            throw Lang.makeThrow(LockedAccountException.class, "Account [ %s ] is locked.", upToken.getUsername());
        }
        //设置验证码次数为零
//        SecurityUtils.getSubject().getSession(true).setAttribute("errCount", 0);
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user,
                user.getPassword().toCharArray(),ByteSource.Util.bytes(user.getSalt()), getName());
        info.setCredentialsSalt(ByteSource.Util.bytes(user.getSalt()));
//        info.
        return info;
    }

    public UserRealm() {
        this(null, null);
    }

    public UserRealm(CacheManager cacheManager, CredentialsMatcher matcher) {
        super(cacheManager, matcher);
        setName("userRealm");
        HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();
        hashedCredentialsMatcher.setHashAlgorithmName("SHA-256");
        hashedCredentialsMatcher.setHashIterations(1024);
        // 这一行决定hex还是base64
        hashedCredentialsMatcher.setStoredCredentialsHexEncoded(false);
        // 设置token类型是关键!!!
        setAuthenticationTokenClass(UsernamePasswordToken.class);
        setCredentialsMatcher(hashedCredentialsMatcher);

    }

    public UserRealm(CacheManager cacheManager) {
        this(cacheManager, null);
    }

    public UserRealm(CredentialsMatcher matcher) {
        this(null, matcher);
    }

    /**
     * 清理缓存权限
     */
    public void clearCachedAuthorizationInfo()
    {
        this.clearCachedAuthorizationInfo(SecurityUtils.getSubject().getPrincipals());
    }
}
