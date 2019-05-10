package io.nutz.nutzsite.common.weixin.util;

import com.alibaba.fastjson.JSON;
import io.nutz.nutzsite.common.utils.http.HttpUtils;
import io.nutz.nutzsite.common.weixin.bean.Action_info;
import io.nutz.nutzsite.common.weixin.bean.QrParam;
import io.nutz.nutzsite.common.weixin.bean.Scene;
import io.nutz.nutzsite.common.weixin.bean.Ticket;
import org.nutz.lang.Strings;

/**
 * 生成带参数的二维码
 * https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1443433542
 * @author by Haiming on 2019-03-05
 */
public class RrCodeUtils {

    /**
     * 请求地址
     */
    private static String URL ="https://api.weixin.qq.com/cgi-bin/qrcode/create?access_token=";

    private static String ticket_url ="https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=";


    /**
     * QR_LIMIT_STR_SCENE为永久的字符串参数值
     */
    public static String QR_LIMIT_STR_SCENE ="QR_LIMIT_STR_SCENE";

    /**
     * 永久二维码请求
     * @param sceneStr
     * @param token
     * @return
     */
    public static String createQrCode(String sceneStr,String token){
        QrParam qrParam =new QrParam();
        qrParam.setAction_name(QR_LIMIT_STR_SCENE);
        qrParam.setAction_info(new Action_info(new Scene(sceneStr)));
        if(Strings.isNotBlank(token)){
            String param =  JSON.toJSONString(qrParam);
            String res = HttpUtils.sendPostJson(URL+ token,param);
//            System.out.println(res);
            if(Strings.isNotBlank(res)){
                Ticket ticket = JSON.parseObject(res, Ticket.class);
                if(ticket!=null && 0==ticket.getErrcode()){
                    return ticket_url + ticket.getTicket();
                }
            }
        }
        return null;
    }
}
