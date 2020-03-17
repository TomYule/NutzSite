package org.nutz.boot.starter.caffeine;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Lang;
import org.nutz.mvc.Mvcs;

/**
 * caffeine 更新缓存方法 实现
 * @Author: Haimming
 * @Date: 2019-08-08 09:40
 * @Version 1.0
 */
@IocBean
public class MvcUpdateStrategy implements UpdateStrategy {

    /**
     * 凡是request中携带update=true，都强制更新缓存
     * @param key
     * @return
     */
    @Override
    public boolean shouldUpdate(String key) {
        return Lang.parseBoolean(Mvcs.getReq().getParameter("update"));
    }
}
