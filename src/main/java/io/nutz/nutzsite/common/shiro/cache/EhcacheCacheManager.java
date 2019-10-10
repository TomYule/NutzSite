package io.nutz.nutzsite.common.shiro.cache;

import net.sf.ehcache.CacheManager;
import org.nutz.ioc.loader.annotation.IocBean;

/**
 *
 * @Author: Haimming
 * @Date: 2019-10-09 16:23
 * @Version 1.0
 */
@IocBean(name = "ehcacheCacheManager")
public class EhcacheCacheManager {

    private CacheManager cacheManager;

    public EhcacheCacheManager() {
        CacheManager cacheManager = CacheManager.getInstance();
        if (cacheManager != null) {
            this.cacheManager =  cacheManager;
        }
        this.cacheManager = CacheManager.newInstance();
    }

}
