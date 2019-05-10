package io.nutz.nutzsite.common.weixin.bean;

/**
 * 微信生成带参数的二维码
 * 请求参数对象
 * https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1443433542
 */
public class QrParam {

    /**
     * action_name	二维码类型，
     * QR_SCENE为临时的整型参数值，
     * QR_STR_SCENE为临时的字符串参数值，
     * QR_LIMIT_SCENE为永久的整型参数值，
     * QR_LIMIT_STR_SCENE为永久的字符串参数值
     */
    private String action_name;

    /**
     * action_info	二维码详细信息
     */
    private Action_info action_info;

    public void setAction_name(String action_name) {
        this.action_name = action_name;
    }

    public String getAction_name() {
        return action_name;
    }

    public void setAction_info(Action_info action_info) {
        this.action_info = action_info;
    }

    public Action_info getAction_info() {
        return action_info;
    }

}