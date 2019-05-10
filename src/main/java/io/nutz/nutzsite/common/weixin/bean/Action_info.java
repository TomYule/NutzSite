package io.nutz.nutzsite.common.weixin.bean;

/**
 * 微信生成带参数的二维码
 * 请求参数对象
 * https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1443433542
 */
public class Action_info {

    private Scene scene;

    public void setScene(Scene scene) {
        this.scene = scene;
    }

    public Scene getScene() {
        return scene;
    }

    public Action_info(Scene scene) {
        this.scene = scene;
    }
}