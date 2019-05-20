package io.nutz.nutzsite.common.aop;

import io.nutz.nutzsite.common.annotation.AccessToken;
import org.nutz.aop.MethodInterceptor;
import org.nutz.ioc.Ioc;
import org.nutz.ioc.aop.SimpleAopMaker;
import org.nutz.ioc.loader.annotation.IocBean;

import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.List;

/**
 * @Author: Haimming
 * @Date: 2019-05-17 16:53
 * @Version 1.0
 */
@IocBean(name="$aop_access_token")
public class AccessTokenAopConfigration extends SimpleAopMaker<AccessToken> {

    @Override
    public List<? extends MethodInterceptor> makeIt(AccessToken accessToken, Method method, Ioc ioc) {
        return Arrays.asList(new AccessTokenAopInterceptor(ioc, accessToken, method));
    }

}
