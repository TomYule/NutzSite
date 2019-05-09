package io.nutz.nutzsite.common.enums;

/**
 * @Author: Haimming
 * @Date: 2019-05-09 11:10
 * @Version 1.0
 */
public enum ImageType {
    /**
     * 七牛云
     */
    Qiniu("Qiniu"),
    /**
     * 编码
     */
    Base64("Base64"),
    /**
     * 本地
     */
    Local("Local");

    private final String type;

    ImageType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }
}
