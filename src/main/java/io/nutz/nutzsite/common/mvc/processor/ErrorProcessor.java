package io.nutz.nutzsite.common.mvc.processor;

import io.nutz.nutzsite.common.base.Result;
import io.nutz.nutzsite.common.exception.AppException;
import org.nutz.integration.shiro.NutShiro;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.ActionContext;
import org.nutz.mvc.ActionInfo;
import org.nutz.mvc.Mvcs;
import org.nutz.mvc.NutConfig;
import org.nutz.mvc.impl.processor.ViewProcessor;
import org.nutz.mvc.view.HttpStatusView;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

/**
 * 重写 Error信息处理类
 * @Author: Haimming
 * @Date: 2019-08-09 16:27
 * @Version 1.0
 */
public class ErrorProcessor extends ViewProcessor {

    private static final Log log = Logs.get();

    public static boolean isAjax(ServletRequest req) {
        String value = ((HttpServletRequest)req).getHeader("X-Requested-With");
        return value != null && "XMLHttpRequest".equalsIgnoreCase(value.trim());
    }
    @Override
    public void init(NutConfig config, ActionInfo ai) throws Throwable {
        view = evalView(config, ai, ai.getFailView());
    }

    @Override
    public void process(ActionContext ac) throws Throwable {
        if (log.isWarnEnabled()) {
            String uri = Mvcs.getRequestPath(ac.getRequest());
            log.warn(String.format("Error@%s :", uri), ac.getError());
        }

        //非AJAX 处理
        if (isAjax(ac.getRequest())) {
            if (ac.getError() instanceof AppException) {
                NutShiro.rendAjaxResp(ac.getRequest(), ac.getResponse(), Result.error(ac.getError().getMessage()));
            }else {
                NutShiro.rendAjaxResp(ac.getRequest(), ac.getResponse(), Result.error("系统异常"));
            }
        }else {
            new HttpStatusView(500).render(
                    ac.getRequest(),
                    ac.getResponse(),
                    Mvcs.getMessage(ac.getRequest(),
                            "system.paramserror")
            );
        }

        super.process(ac);
    }
}