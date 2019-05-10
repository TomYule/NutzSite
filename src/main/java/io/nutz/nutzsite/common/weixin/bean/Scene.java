package io.nutz.nutzsite.common.weixin.bean;

/**
 * 微信生成带参数的二维码
 * 请求参数对象
 * https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1443433542
 */
public class Scene {

    /**
     * scene_str	场景值ID（字符串形式的ID），字符串类型，长度限制为1到64
     */
    private String scene_str;

    public void setScene_str(String scene_str) {
        this.scene_str = scene_str;
    }

    public String getScene_str() {
        return scene_str;
    }

    public Scene(String scene_str) {
        this.scene_str = scene_str;
    }
}