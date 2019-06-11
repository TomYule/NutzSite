package io.nutz.nutzsite.module.wx.bean;

/**
 * 获取素材参数
 * https://developers.weixin.qq.com/doc/offiaccount/Asset_Management/Get_materials_list.html
 * @Author: Haimming
 * @Date: 2019-06-11 11:19
 * @Version 1.0
 */
public class MaterialParam {

    /**
     * 素材的类型，图片（image）、视频（video）、语音 （voice）、图文（news）
     */
    public String type;

    /**
     * 从全部素材的该偏移位置开始返回，0表示从第一个素材 返回
     */
    public long offset;

    /**
     *返回素材的数量，取值在1到20之间
     */
    public long count;

    public MaterialParam(String type, long offset, long count) {
        this.type = type;
        this.offset = offset;
        this.count = count;
    }
}
