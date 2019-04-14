package io.nutz.nutzsite.common.shiro.filter;

import io.nutz.nutzsite.common.shiro.CaptchaToken;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.util.WebUtils;
import org.nutz.mvc.ActionContext;
import org.nutz.mvc.ActionFilter;
import org.nutz.mvc.View;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

/**
 * 过滤器 获取有用户名 密码 验证码
 */
public class AuthenticationFilter extends FormAuthenticationFilter implements ActionFilter {
	private String captchaParam = "captcha";

	public String getCaptchaParam() {
		return captchaParam;
	}

	protected String getCaptcha(ServletRequest request) {
		return WebUtils.getCleanParam(request, getCaptchaParam());
	}

	/**
	 * 获取用户名 密码 验证码 记住我  host
	 * @param request
	 * @return
	 */
	protected AuthenticationToken createToken(HttpServletRequest request) {
		String username = getUsername(request);
		String password = getPassword(request);
		String captcha = getCaptcha(request);
		boolean rememberMe = isRememberMe(request);
		String host = getHost(request);
		return new CaptchaToken(username, password, rememberMe, host, captcha);
	}

	@Override
	public View match(ActionContext actionContext) {
		HttpServletRequest request = actionContext.getRequest();
		AuthenticationToken authenticationToken = createToken(request);
		request.setAttribute("loginToken", authenticationToken);
		return null;
	}
}
