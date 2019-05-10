package io.nutz.nutzsite.common.quartz.job;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import io.nutz.nutzsite.common.utils.http.HttpUtils;
import io.nutz.nutzsite.common.weixin.config.MpConfig;
import io.nutz.nutzsite.module.sys.models.Config;
import io.nutz.nutzsite.module.sys.services.ConfigService;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

/**
 * @Author: Haimming
 * @Date: 2019-05-10 14:43
 * @Version 1.0
 */
@IocBean
public class WeixinToken implements Job {

    private static final Log log = Logs.get();
    @Inject
    private ConfigService configService;

    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        log.info("WeixinToken Job 定时任务启动了");
        //封装请求数据
        String params = "grant_type=client_credential&appid="+ MpConfig.appID +"&secret="+ MpConfig.appSecret;
        //发送GET请求
        String data = HttpUtils.sendGet("https://api.weixin.qq.com/cgi-bin/token", params);
        // 解析相应内容（转换成json对象）
        JSONObject jsonObject = JSON.parseObject(data);
//        拿到accesstoken
        String accesstoken = (String) jsonObject.get("access_token");
//        System.out.println(accesstoken);
        Config config =configService.fetch("token");
        if(config==null){
            config =new Config();
            config.setConfigKey("token");
            config.setConfigValue(accesstoken);
            configService.insert(config);
        }else {
            config.setConfigValue(accesstoken);
            configService.update(config);
        }

    }
}
