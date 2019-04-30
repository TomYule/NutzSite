package io.nutz.nutzsite.common.aliyun.util;

import com.alibaba.fastjson.JSON;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.http.ProtocolType;
import com.aliyuncs.push.model.v20160801.*;
import com.aliyuncs.utils.ParameterHelper;
import io.nutz.nutzsite.common.aliyun.push.BaseConfig;

import java.util.*;


/**
 * @author by Haiming on 2018-12-27
 */
public class PushUtil {


    /**
     * 推送消息给iOS
     *
     * @param deviceIds
     * @param titale
     * @param body
     * @throws Exception
     */
    public static void pushMessageToIOS(String deviceIds, String titale, String body) throws Exception {
        PushMessageToiOSRequest iOSRequest = new PushMessageToiOSRequest();
        //安全性比较高的内容建议使用HTTPS
        iOSRequest.setProtocol(ProtocolType.HTTPS);
        //内容较大的请求，使用POST请求
        iOSRequest.setMethod(MethodType.POST);
        iOSRequest.setAppKey(BaseConfig.iosAppKey);
        iOSRequest.setTarget("DEVICE");
        iOSRequest.setTargetValue(deviceIds);
        iOSRequest.setTitle(titale);
        iOSRequest.setBody(body);
        PushMessageToiOSResponse pushMessageToiOSResponse = BaseConfig.client.getAcsResponse(iOSRequest);
        System.out.printf("RequestId: %s, MessageId: %s\n",
                pushMessageToiOSResponse.getRequestId(), pushMessageToiOSResponse.getMessageId());
    }


    /**
     * 推送通知给iOS
     *
     * @param deviceIds
     * @param titale
     * @param body
     * @param parameters
     * @throws Exception
     */
    public static void pushNoticeToIOS(String deviceIds, String titale, String body, Object parameters) throws Exception {
        PushNoticeToiOSRequest iOSRequest = new PushNoticeToiOSRequest();
        //安全性比较高的内容建议使用HTTPS
        iOSRequest.setProtocol(ProtocolType.HTTPS);
        //内容较大的请求，使用POST请求
        iOSRequest.setMethod(MethodType.POST);
        iOSRequest.setAppKey(BaseConfig.iosAppKey);
        // iOS的通知是通过APNS中心来发送的，需要填写对应的环境信息. DEV :表示开发环境, PRODUCT: 表示生产环境
        iOSRequest.setApnsEnv("DEV");
        iOSRequest.setTarget("DEVICE");
        iOSRequest.setTargetValue(deviceIds);
        iOSRequest.setTitle(titale);
        iOSRequest.setBody(body);
        iOSRequest.setExtParameters(JSON.toJSONString(parameters));
        PushNoticeToiOSResponse pushNoticeToiOSResponse = BaseConfig.client.getAcsResponse(iOSRequest);
        System.out.printf("RequestId: %s, MessageId: %s\n",
                pushNoticeToiOSResponse.getRequestId(), pushNoticeToiOSResponse.getMessageId());
    }


    /**
     * 推送消息给android
     *
     * @param deviceIds
     * @param titale
     * @param body
     * @throws Exception
     */
    public static void pushMessageToAndroid(String deviceIds, String titale, String body) throws Exception {

        PushMessageToAndroidRequest androidRequest = new PushMessageToAndroidRequest();
        /**
         * 安全性比较高的内容建议使用HTTPS
         */
        androidRequest.setProtocol(ProtocolType.HTTPS);
        /**
         * 内容较大的请求，使用POST请求
         */
        androidRequest.setMethod(MethodType.POST);
        androidRequest.setAppKey(BaseConfig.androidAppKey);
        /**
         * 推送目标: DEVICE:按设备推送 ALIAS : 按别名推送 ACCOUNT:按帐号推送  TAG:按标签推送; ALL: 广播推送
         */
        androidRequest.setTarget("DEVICE");
        /**
         * 根据Target来设定，如Target=DEVICE, 则对应的值为 设备id1,设备id2. 多个值使用逗号分隔.(帐号与设备有一次最多100个的限制)
         */
        androidRequest.setTargetValue(deviceIds);
        androidRequest.setTitle(titale);
        androidRequest.setBody(body);
        PushMessageToAndroidResponse pushMessageToAndroidResponse = BaseConfig.client.getAcsResponse(androidRequest);
        System.out.printf("RequestId: %s, MessageId: %s\n",
                pushMessageToAndroidResponse.getRequestId(), pushMessageToAndroidResponse.getMessageId());

    }

    /**
     * 推送通知给android
     *
     * @param deviceIds
     * @param titale
     * @param body
     * @param parameters json数据
     * @throws Exception
     */
    public static void pushNoticeToAndroid(String deviceIds, String titale, String body, Object parameters) throws Exception {
        PushRequest pushRequest = new PushRequest();
        //安全性比较高的内容建议使用HTTPS
        pushRequest.setProtocol(ProtocolType.HTTPS);
        //内容较大的请求，使用POST请求
        pushRequest.setMethod(MethodType.POST);
        // 推送目标
        pushRequest.setAppKey(BaseConfig.androidAppKey);
        pushRequest.setTarget("DEVICE");
        //推送目标: DEVICE:按设备推送 ALIAS : 按别名推送 ACCOUNT:按帐号推送  TAG:按标签推送; ALL: 广播推送
        pushRequest.setTargetValue(deviceIds);
        //根据Target来设定，如Target=DEVICE, 则对应的值为 设备id1,设备id2. 多个值使用逗号分隔.(帐号与设备有一次最多100个的限制)
        pushRequest.setAndroidExtParameters(JSON.toJSONString(parameters));
        pushRequest.setPushType("NOTICE");
        // 消息类型 MESSAGE NOTICE
        pushRequest.setDeviceType("ANDROID");
        // 设备类型 ANDROID iOS ALL.

        // 推送配置
        pushRequest.setTitle(titale); // 消息的标题
        pushRequest.setBody(body); // 消息的内容
        pushRequest.setAndroidNotificationChannel("1");
        // 推送配置: Android
        pushRequest.setAndroidNotifyType("NONE");
        //通知的提醒方式 "VIBRATE" : 震动 "SOUND" : 声音 "BOTH" : 声音和震动 NONE : 静音

        pushRequest.setAndroidRemind(true);

        String expireTime = ParameterHelper.getISO8601Time(new Date(System.currentTimeMillis() + 72 * 3600 * 1000));
        // 12小时后消息失效, 不会再发送
        pushRequest.setExpireTime(expireTime);
        pushRequest.setStoreOffline(true);
        // 离线消息是否保存,若保存, 在推送时候，用户即使不在线，下一次上线则会收到

        PushResponse pushResponse = BaseConfig.client.getAcsResponse(pushRequest);
        System.out.printf("RequestId: %s, MessageID: %s\n",
                pushResponse.getRequestId(), pushResponse.getMessageId());
    }
}
