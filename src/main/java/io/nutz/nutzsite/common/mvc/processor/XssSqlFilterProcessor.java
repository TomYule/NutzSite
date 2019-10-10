package io.nutz.nutzsite.common.mvc.processor;

import io.nutz.nutzsite.common.base.Globals;
import io.nutz.nutzsite.common.base.Result;
import io.nutz.nutzsite.common.xss.XssHttpServletRequestWrapper;
import org.apache.commons.lang3.StringUtils;
import org.nutz.integration.shiro.NutShiro;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.lang.Lang;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.ActionContext;
import org.nutz.mvc.Mvcs;
import org.nutz.mvc.impl.processor.AbstractProcessor;
import org.nutz.mvc.view.ForwardView;

import javax.servlet.http.HttpServletRequest;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * SQL XSS拦截
 * @Author: Haimming
 * @Date: 2019-10-09 11:47
 * @Version 1.0
 */
public class XssSqlFilterProcessor extends AbstractProcessor {

    private static final Log log = Logs.get();

    protected String lerrorUri = "/error/403.html";

    /**
     * xss过滤开关
     */
    @Inject("java:$conf.get('xss.enabled')")
    public boolean enabled = true;

    /**
     * 排除链接
     */
    private final static String[] excludes = StringUtils.split(Globals.getConfig("xss.excludes"), ",");

    /**
     * 判断是否排除
     * @param request
     * @return
     */
    private boolean handleExcludeURL(HttpServletRequest request) {
        if (!enabled) {
            return true;
        }
        if (excludes == null || Lang.isEmpty(excludes)) {
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
    public void process(ActionContext ac) throws Throwable {
        if (checkParams(ac)) {
            if (NutShiro.isAjax(ac.getRequest())) {
                ac.getResponse().addHeader("loginStatus", "paramsDenied");
                NutShiro.rendAjaxResp(ac.getRequest(), ac.getResponse(), Result.error(Mvcs.getMessage(ac.getRequest(), "system.paramserror")));
            } else {
                new ForwardView(lerrorUri).render(ac.getRequest(), ac.getResponse(), Mvcs.getMessage(ac.getRequest(), "system.paramserror"));
            }
            return;
        }
        doNext(ac);
    }

    protected boolean checkParams(ActionContext ac) {
        HttpServletRequest req = ac.getRequest();
        // 获取所有的表单参数
        Iterator<String[]> values = req.getParameterMap().values().iterator();
        boolean isError = false;
        String regEx_sql = "select|update|and|or|delete|insert|trancate|char|chr|into|substr|ascii|declare|exec|count|master|drop|execute";
        //SQL过滤
        while (values.hasNext()) {
            String[] valueArray = (String[]) values.next();
            for (int i = 0; i < valueArray.length; i++) {
                String value = valueArray[i].toLowerCase();
                //分拆关键字
                String[] inj_stra = StringUtils.split(regEx_sql, "|");
                for (int j = 0; j < inj_stra.length; j++) {
                    // 判断如果路径参数值中含有关键字则返回true,并且结束循环
                    if ("and".equals(inj_stra[j]) || "or".equals(inj_stra[j]) || "into".equals(inj_stra[j])) {
                        if (value.contains(" " + inj_stra[j] + " ")) {
                            isError = true;
                            log.debugf("[%-4s]URI=%s %s", req.getMethod(), req.getRequestURI(), "SQL关键字过滤:" + value);
                            break;
                        }
                    } else {
                        if (value.contains(" " + inj_stra[j] + " ")
                                || value.contains(
                                inj_stra[j] + " ")) {
                            isError = true;
                            log.debugf("[%-4s]URI=%s %s", req.getMethod(), req.getRequestURI(), "SQL关键字过滤:" + value);
                            break;
                        }
                    }
                }
                if (isError) {
                    break;
                }
            }
            if (isError) {
                break;
            }
        }
        if (!isError) {
            // XSS漏洞过滤
            if(!handleExcludeURL(req)){
                XssHttpServletRequestWrapper xssRequest = new XssHttpServletRequestWrapper(req ,enabled);
                ac.setRequest(xssRequest);
            }
        }
        return isError;
    }
}