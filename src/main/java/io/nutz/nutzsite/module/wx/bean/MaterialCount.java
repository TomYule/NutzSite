package io.nutz.nutzsite.module.wx.bean;

/**
 * 获取素材总数
 * 图片（image）、视频（video）、语音 （voice）、图文（news）
 * https://developers.weixin.qq.com/doc/offiaccount/Asset_Management/Get_the_total_of_all_materials.html
 *
 * @Author: Haimming
 * @Date: 2019-06-11 11:01
 * @Version 1.0
 */
public class MaterialCount {

    /**
     * 语音总数量
     */
    public long voice_count;

    /**
     * 视频总数量
     */
    public long video_count;

    /**
     * 图片
     */
    public long image_count;

    /**
     * 图文总数量
     */
    public long news_count;
}
