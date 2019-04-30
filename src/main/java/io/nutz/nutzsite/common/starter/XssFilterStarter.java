package io.nutz.nutzsite.common.starter;

import io.nutz.nutzsite.common.xss.XssHttpServletRequestWrapper;
import org.nutz.boot.starter.WebFilterFace;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.log.Log;
import org.nutz.log.Logs;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 防止XSS攻击的过滤器
 * @author haiming
 */
@IocBean
public class XssFilterStarter implements WebFilterFace,Filter {
    private static final Log log = Logs.get();
    /**
     * 排除链接
     */
    public List<String> excludes = new ArrayList<>();

    /**
     * xss过滤开关
     */
    @Inject("java:$conf.get('xss.enabled')")
    public boolean enabled = false;

    @Inject("java:$conf.get('xss.excludes')")
    public String tempExcludes;

    @Override
    public String getName() {
        return "xssFilterStarter";
    }

    @Override
    public String getPathSpec() {
        return "/*";
    }

    @Override
    public EnumSet<DispatcherType> getDispatches() {
        return EnumSet.of( DispatcherType.FORWARD,
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
        return 5;
    }

    @Override
    public void setServletContext(ServletContext sc) {

    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        if (Strings.isNotBlank(tempExcludes)) {
            String[] url = tempExcludes.split(",");
            for (int i = 0; url != null && i < url.length; i++) {
                excludes.add(url[i]);
            }
        }
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException,ServletException {
//        if(log.isDebugEnabled()){
//            log.debug("xss filter is open");
//        }
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        if(handleExcludeURL(req, resp)){
            filterChain.doFilter(request, response);
            return;
        }
        XssHttpServletRequestWrapper xssRequest = new XssHttpServletRequestWrapper((HttpServletRequest) request,enabled);
        filterChain.doFilter(xssRequest, response);
    }

    private boolean handleExcludeURL(HttpServletRequest request, HttpServletResponse response) {
        if (!enabled) {
            return true;
        }
        if (excludes == null || excludes.isEmpty()) {
            return false;
        }
        String url = request.getServletPath();
        for (String pattern : excludes) {
            Pattern p = Pattern.compile("^" + pattern);
            Matcher m = p.matcher(url);
            if (m.find()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void destroy() {

    }
}