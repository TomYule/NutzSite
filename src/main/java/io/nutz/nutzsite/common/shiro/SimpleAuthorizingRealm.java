package io.nutz.nutzsite.common.shiro;

import io.nutz.nutzsite.module.sys.models.User;
import io.nutz.nutzsite.module.sys.services.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.cache.CacheManager;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;

import java.util.Set;

/**
 * @author haiming
 */
@IocBean(name="shiroRealm")
public class SimpleAuthorizingRealm extends AuthorizingRealm {
	@Inject
	private UserService userService;

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
		Set<String> roles =userService.getRoleCodeList(user.getId());
		// 功能列表
		Set<String> menus = userService.getPermsByUserId(user.getId());

		SimpleAuthorizationInfo auth = new SimpleAuthorizationInfo();
		auth.setRoles(roles);
		auth.setStringPermissions(menus);
		return auth;
	}

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
		if (user.isStatus()) {
			throw Lang.makeThrow(LockedAccountException.class, "Account [ %s ] is locked.", upToken.getUsername());
		}
		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user,
				user.getPassword().toCharArray(), ByteSource.Util.bytes(user.getSalt()), getName());
		info.setCredentialsSalt(ByteSource.Util.bytes(user.getSalt()));
//        info.
		return info;
	}

	public SimpleAuthorizingRealm() {
		this(null, null);
	}

	public SimpleAuthorizingRealm(CacheManager cacheManager, CredentialsMatcher matcher) {
		super(cacheManager, matcher);
		HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();
		hashedCredentialsMatcher.setHashAlgorithmName("SHA-256");
		hashedCredentialsMatcher.setHashIterations(1024);
		// 这一行决定hex还是base64
		hashedCredentialsMatcher.setStoredCredentialsHexEncoded(false);
		// 设置token类型是关键!!!
		setCredentialsMatcher(hashedCredentialsMatcher);
		setAuthenticationTokenClass(UsernamePasswordToken.class);
	}

	public SimpleAuthorizingRealm(CacheManager cacheManager) {
		this(cacheManager, null);
	}

	public SimpleAuthorizingRealm(CredentialsMatcher matcher) {
		this(null, matcher);
	}
	
}
