package io.nutz.nutzsite.common.wxpay.config;


import io.nutz.nutzsite.common.wxpay.IWXPayDomain;
import io.nutz.nutzsite.common.wxpay.WXPayConstants;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

/**
 *微信支付配置
 * @author by Haiming on 2019-01-02
 */
public class MyConfig extends WXPayConfig {

    public static String notify_url = "http://tonyyule.ngrok.wendal.cn/open/pay/wxpay";

    private byte[] certData;

    public MyConfig() throws Exception {
        String certPath = "/mnt/cert/apiclient_cert.p12";
        File file = new File(certPath);
        InputStream certStream = new FileInputStream(file);
        this.certData = new byte[(int) file.length()];
        certStream.read(this.certData);
        certStream.close();
    }

    /**
     * #微信公众号或者小程序等的appid
     * @return
     */
    @Override
    public String getAppID() {
        return "";
    }

    /**
     *  #微信支付商户号
     * @return
     */
    @Override
    public String getMchID() {
        return "";
    }

    /**
     * #微信支付商户密钥
     * @return
     */
    @Override
    public String getKey() {
        return "";
    }

    @Override
    public InputStream getCertStream() {
        ByteArrayInputStream certBis = new ByteArrayInputStream(this.certData);
        return certBis;
    }

    @Override
    public IWXPayDomain getWXPayDomain() {
        IWXPayDomain iwxPayDomain = new IWXPayDomain() {
            @Override
            public void report(String domain, long elapsedTimeMillis, Exception ex) {

            }
            @Override
            public DomainInfo getDomain(WXPayConfig config) {
                return new IWXPayDomain.DomainInfo(WXPayConstants.DOMAIN_API, true);
            }
        };
        return iwxPayDomain;
    }


}
