package io.nutz.nutzsite.common.aop;

import io.nutz.nutzsite.common.annotation.AccessToken;
import io.nutz.nutzsite.common.base.Result;
import io.nutz.nutzsite.common.utils.JWTUtil;
import org.nutz.aop.InterceptorChain;
import org.nutz.aop.MethodInterceptor;
import org.nutz.ioc.Ioc;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.json.JsonFormat;
import org.nutz.lang.Strings;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.Mvcs;

import java.lang.reflect.Method;

/**
 * @Author: Haimming
 * @Date: 2019-05-17 16:57
 * @Version 1.0
 */
@IocBean
public class AccessTokenAopInterceptor implements MethodInterceptor {
    private static final Log log = Logs.get();

    protected Ioc ioc;

    public AccessTokenAopInterceptor(Ioc ioc, AccessToken token, Method method) {
        this.ioc = ioc;
    }

    /**
     * 过滤器 验证登录
     * @param chain
     * @throws Throwable
     */
    @Override
    public void filter(InterceptorChain chain) throws Throwable {
        try {
            String token = Strings.sNull(Mvcs.getReq().getHeader("authorization"));
            if (JWTUtil.verifyToken(token)) {
                chain.doChain();
            }else {
                Mvcs.SKIP_COMMITTED =true;
                Mvcs.write(Mvcs.getResp(), Result.token(), JsonFormat.full());
            }
        } catch (Throwable e) {
            log.debug("aop.error", e);
            throw e;
        }
    }
}
