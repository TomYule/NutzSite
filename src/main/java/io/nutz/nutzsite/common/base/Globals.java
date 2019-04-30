package io.nutz.nutzsite.common.base;

import io.nutz.nutzsite.module.sys.models.Config;
import io.nutz.nutzsite.module.sys.services.ConfigService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Haiming
 */
public class Globals {

    /**
     * UTF-8 字符集
     */
    public static final String UTF8 = "UTF-8";
    /**
     * 系统自定义参数
     */
    public static Map<String, String> MyConfig;

    public static void init(ConfigService configService) {
        if (Globals.MyConfig == null) {
            Globals.MyConfig = new HashMap<>();
        } else {
            Globals.MyConfig.clear();
        }
        List<Config> configList = configService.query();
        for (Config sysConfig : configList) {
            Globals.MyConfig.put(sysConfig.getConfigKey(), sysConfig.getConfigValue());
        }
    }
}
