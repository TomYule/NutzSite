package io.nutz.nutzsite.common.starter;

import io.nutz.nutzsite.common.bean.OnlineSession;
import io.nutz.nutzsite.common.constant.ShiroConstants;
import io.nutz.nutzsite.common.shiro.session.OnlineSessionDAO;
import io.nutz.nutzsite.common.utils.ShiroUtils;
import io.nutz.nutzsite.module.sys.models.User;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.AccessControlFilter;
import org.apache.shiro.web.util.WebUtils;
import org.nutz.boot.starter.WebFilterFace;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

/**
 * 自定义访问控制
 */
@IocBean
public class OnlineSessionFilter extends AccessControlFilter implements WebFilterFace {
    @Inject("java:$conf.get('shiro.url.login')")
    private String loginUrl;
    @Inject
    private OnlineSessionDAO onlineSessionDAO;

    @Override
    public String getName() {
        return "onlineSessionFilter";
    }

    @Override
    public String getPathSpec() {
        return "/*";
    }

    /**
     * 需要支持哪些请求方式
     *
     * @return 请求方式列表
     */
    @Override
    public EnumSet<DispatcherType> getDispatches() {
        return EnumSet.of(DispatcherType.FORWARD,
                DispatcherType.INCLUDE,
                DispatcherType.REQUEST,
                DispatcherType.ASYNC,
                DispatcherType.ERROR);
    }

    @Override
    public Filter getFilter() {
        return this;
    }

    @Override
    public Map<String, String> getInitParameters() {
        return new HashMap<String, String>();
    }

    @Override
    public int getOrder() {
        return 1000;
    }

    /**
     * 表示是否允许访问；mappedValue就是[urls]配置中拦截器参数部分，如果允许访问返回true，否则false；
     */
    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue)
            throws Exception {
        Subject subject = getSubject(request, response);
        if (subject == null || subject.getSession() == null) {
            return true;
        }
        try {
            Collection<Session> sessions =  onlineSessionDAO.getActiveSessions();
            Session session = onlineSessionDAO.readSession(subject.getSession().getId());
            if (session != null && session instanceof OnlineSession) {
                OnlineSession onlineSession = (OnlineSession) session;
                request.setAttribute(ShiroConstants.ONLINE_SESSION, onlineSession);
                // 把user对象设置进去
                boolean isGuest = Strings.isEmpty(onlineSession.getUserId());
                if (isGuest) {
                    User user = ShiroUtils.getSysUser();
                    if (user != null) {
                        onlineSession.setUserId(user.getId());
                        onlineSession.setLoginName(user.getLoginName());
                        onlineSession.setDeptName(user.getDept().getDeptName());
                        onlineSession.markAttributeChanged();
                    }
                }
                if (onlineSession.getStatus() == OnlineSession.OnlineStatus.off_line) {
                    return false;
                }
            }
        } catch (Exception e) {
//            e.printStackTrace();
        } finally {
            return true;
        }

    }

    /**
     * 表示当访问拒绝时是否已经处理了；如果返回true表示需要继续处理；如果返回false表示该拦截器实例已经处理了，将直接返回即可。
     */
    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
        Subject subject = getSubject(request, response);
        if (subject != null) {
            subject.logout();
        }
        saveRequestAndRedirectToLogin(request, response);
        return false;
    }

    // 跳转到登录页
    @Override
    protected void redirectToLogin(ServletRequest request, ServletResponse response) throws IOException {
        WebUtils.issueRedirect(request, response, loginUrl);
    }

}
