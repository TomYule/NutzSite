package io.nutz.nutzsite.common.wxpay.util;

import com.alibaba.fastjson.JSON;
import io.nutz.nutzsite.common.wxpay.WXPay;
import io.nutz.nutzsite.common.wxpay.config.MyConfig;

import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Map;

/**
 * @author by Haiming on 2019-01-02
 */
public class OrderUtil {

    /**
     * 创建订单
     */
    public static String createOrder(String orderId,String body ,double order_price) {

        try {
            MyConfig config = new MyConfig();
            WXPay wxpay = new WXPay(config);
            //交易类型
            String trade_type = "APP";
            //微信价格最小单位分 转换为整数
            DecimalFormat df = new DecimalFormat("#######.##");
            order_price = order_price * 100;
            order_price = Math.ceil(order_price);
            String price = df.format(order_price);

            Map<String, String> data = new HashMap<String, String>();
            data.put("body", "一言为定-" + body);
            data.put("out_trade_no", orderId);
            data.put("device_info", "");
            data.put("fee_type", "CNY");
            data.put("total_fee", price);
            data.put("spbill_create_ip", "123.12.12.123");
            data.put("notify_url", MyConfig.notify_url);
            data.put("trade_type", trade_type);
            // 此处指定为扫码支付
            data.put("product_id", "12");
            System.out.println(JSON.toJSON(data));
            Map<String, String> resp = wxpay.unifiedOrder(data);

            System.out.println(resp);
            return JSON.toJSONString(resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }



}
