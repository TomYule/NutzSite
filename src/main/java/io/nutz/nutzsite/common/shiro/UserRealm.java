package io.nutz.nutzsite.common.shiro;

import io.nutz.nutzsite.module.sys.models.User;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAccount;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.cache.CacheManager;
import org.apache.shiro.subject.PrincipalCollection;
import org.nutz.integration.shiro.AbstractSimpleAuthorizingRealm;
import org.nutz.integration.shiro.SimpleShiroToken;
import org.nutz.ioc.loader.annotation.IocBean;

import java.util.HashSet;
import java.util.Set;

/**
 * 自定义Realm 处理登录 权限
 */
@IocBean(name = "shiroRealm", fields = "dao")
public class UserRealm extends AbstractSimpleAuthorizingRealm {

    /**
     * 授权
     * @param principals
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        // 角色列表
        Set<String> roles = new HashSet<String>();
        // 功能列表
        Set<String> menus = new HashSet<String>();

        // null usernames are invalid
        if (principals == null) {
            throw new AuthorizationException("PrincipalCollection method argument cannot be null.");
        }
        String userId = String.valueOf(principals.getPrimaryPrincipal());
        User user = dao().fetch(User.class, userId);
        if (user == null) {
            return null;
        }
        SimpleAuthorizationInfo auth = new SimpleAuthorizationInfo();
//		auth.addRole(user.getName());
		auth.addStringPermission("user:list");
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
        SimpleShiroToken upToken = (SimpleShiroToken) token;

        User user = dao().fetch(User.class, (String) upToken.getPrincipal());
        if (user == null) {
            return null;
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
