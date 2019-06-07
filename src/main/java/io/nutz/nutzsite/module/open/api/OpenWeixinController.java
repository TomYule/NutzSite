package io.nutz.nutzsite.module.open.api;

import io.nutz.nutzsite.common.wxpay.util.WXPayUtil;
import io.nutz.nutzsite.common.wxpay.util.WebChatUtil;
import io.swagger.annotations.Api;
import org.dom4j.DocumentException;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.POST;
import org.nutz.mvc.annotation.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

/**
 * 微信小程序 操作处理
 *
 * @author yuhaiming
 * @date 2018-12-05
 */
@Api("微信小程序")
@IocBean
@At("/open/weixin")
public class OpenWeixinController {
    /**
     * 日志对象
     */
    protected Logger log = LoggerFactory.getLogger(getClass());

    /**
     * 开发者接入验证 确认请求来自微信服务器
     *
     * @param signature 微信加密签名
     * @param timestamp 时间戳
     * @param nonce     随机数
     * @param echostr   成为开发者验证
     * @param request
     * @param response
     * @throws IOException
     */
    @At({"","get"})
    public void get( @Param("signature") String signature,
                     @Param("timestamp") String timestamp,
                     @Param("nonce") String nonce,
                     @Param( "echostr") String echostr,
                    HttpServletRequest request,
                    HttpServletResponse response) throws IOException {
        //消息来源可靠性验证
        //确认此次GET请求来自微信服务器，原样返回echostr参数内容，则接入生效，成为开发者成功，否则接入失败
        PrintWriter out = response.getWriter();
        if (WebChatUtil.checkSignature(signature, timestamp, nonce)) {
            System.out.println("=======请求校验成功======" + echostr);
            out.print(echostr);
        }
        out.close();
        out = null;
    }

    /**
     * 带参数的二维码 事件处理
     * @param body XML信息
     * @param request
     * @param response
     */
    @At
    @POST
    public void post(@Param("body") String body, HttpServletRequest request, HttpServletResponse response) {
        //设置回复内容编码方式为UTF-8，防止乱码

        System.out.println("================================微信URL回调测试=========================");
        System.out.println(body);
        response.setCharacterEncoding("utf-8");
        //从工具类中获取XML解析之后的map
        try (PrintWriter out = response.getWriter() ) {
            Map<String, String> map = WXPayUtil.xmlToMap(body);
            //获取发送方账号
            String fromUserName = map.get("FromUserName");
            //接收方账号(开发者微信号)
            String toUserName = map.get("ToUserName");
            //消息类型
            String msgType = map.get("MsgType");
            //文本内容
            String content = map.get("Content");
            String event = map.get("Event");
            String eventKey =map.get("EventKey");

            log.info("发送方账号:" + fromUserName + ",接收方账号(开发者微信号):" + toUserName + ",消息类型:" + msgType + ",文本内容:" + content);
            //回复消息
            if ("event".equals(msgType)) {
                //根据开发文档要求构造XML字符串，本文为了让流程更加清晰，直接拼接
                //这里在开发的时候可以优化，将回复的文本内容构造成一个java类
                //然后使用XStream(com.thoughtworks.xstream.XStream)将java类转换成XML字符串，后面将会使用这个方法。
                //而且由于参数中没有任何特殊字符，为简单起见，没有添加<![CDATA[xxxxx]]>
                if("CLICK".equals(event)){
                    String replyMsg = "<xml>" +
                            "<ToUserName>" + fromUserName + "</ToUserName>" +
                            "<FromUserName>" + toUserName + "</FromUserName>" +
                            "<CreateTime>" + System.currentTimeMillis() / 1000 + "</CreateTime>" +
                            "<MsgType><![CDATA[text]]></MsgType><Content><![CDATA["+ eventKey +"]]></Content>" +
                            "</xml>";
                    //响应消息
                    log.info("响应消息：" + replyMsg);
                    //我们这里将用户发送的消息原样返回
                    out.print(replyMsg);
                    log.info("==============响应成功==================");
                }
            }
        } catch (IOException e) {
            log.error("获取输入流失败", e);
        } catch (DocumentException e) {
            log.error("读取XML失败", e);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
