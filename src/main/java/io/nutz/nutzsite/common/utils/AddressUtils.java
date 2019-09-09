package io.nutz.nutzsite.common.utils;

import com.alibaba.fastjson.JSONObject;
import org.nutz.http.Http;
import org.nutz.http.HttpException;
import org.nutz.http.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 获取地址类
 */
public class AddressUtils {
    private static final Logger log = LoggerFactory.getLogger(AddressUtils.class);

    public static final String IP_URL = "http://ip.taobao.com/service/getIpInfo.php";

    public static String getRealAddressByIP(String ip) {
        String address = "XX XX";
        // 内网不查询
        if (IpUtils.internalIp(ip)) {
            return "内网IP";
        }
        try {
            Response rspStr = Http.get(IP_URL + "?ip=" + ip, 5 * 1000);
            if (!rspStr.isOK()) {
                log.error("获取地理位置异常 {}", ip);
                return address;
            }
            JSONObject obj = JSONObject.parseObject(rspStr.getContent());
            JSONObject data = obj.getObject("data", JSONObject.class);
            String region = data.getString("region");
            String city = data.getString("city");
            address = region + " " + city;
        } catch (Exception e) {
            log.error("IP查询失败:" + ip + e.getMessage());
        }
        return address;
    }
}
