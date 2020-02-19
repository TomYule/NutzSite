package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.service.BaseService;
import io.nutz.nutzsite.module.sys.models.Config;

/**
 * @Author: Haimming
 * @Date: 2019-10-21 09:28
 * @Version 1.0
 */
public interface ConfigService extends BaseService<Config> {

    @Override
    public void delete(String[] ids);
}
