package io.nutz.nutzsite.common.shiro;

import io.nutz.nutzsite.module.sys.models.User;
import io.nutz.nutzsite.module.sys.services.RoleService;
import io.nutz.nutzsite.module.sys.services.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.cache.CacheManager;
import org.apache.shiro.subject.PrincipalCollection;
import org.nutz.integration.shiro.AbstractSimpleAuthorizingRealm;
import org.nutz.integration.shiro.SimpleShiroToken;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;

import java.util.HashSet;
import java.util.Set;

/**
 * 自定义Realm 处理登录 权限
 */
@IocBean(name = "shiroRealm", fields = "dao")
public class UserRealm extends AbstractSimpleAuthorizingRealm {

    @Inject
    private UserService userService;
    @Inject
    RoleService roleService;

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
        String userId = String.valueOf(principals.getPrimaryPrincipal());
        User user = dao().fetch(User.class, userId);
        if (user == null) {
            return null;
        }
        // 角色列表
        Set<String> roles =userService.getRoleCodeList(user);
        // 功能列表
        Set<String> menus = userService.getMenuPermsList(user);

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
        String loginname = upToken.getUsername();
//        String captcha = upToken.getCredentials();
        String password = String.valueOf(upToken.getPassword());
        if (Strings.isBlank(loginname)) {
            throw Lang.makeThrow(AuthenticationException.class, "Account name is empty");
        }
        User user = dao().fetch(User.class, (String) upToken.getPrincipal());
        if (Lang.isEmpty(user)) {
            throw Lang.makeThrow(UnknownAccountException.class, "Account [ %s ] not found", loginname);
        }
        return new SimpleAccount(user.getId(), user.getPassword(), getName());
    }

    public UserRealm() {
        this(null, null);
    }

    public UserRealm(CacheManager cacheManager, CredentialsMatcher matcher) {
        super(cacheManager, matcher);
        setAuthenticationTokenClass(SimpleShiroToken.class);
    }

    public UserRealm(CacheManager cacheManager) {
        this(cacheManager, null);
    }

    public UserRealm(CredentialsMatcher matcher) {
        this(null, matcher);
    }

}
