package io.nutz.nutzsite.module.wx.bean;

import java.util.List;

/**
 * 永久素材返回数据
 * https://developers.weixin.qq.com/doc/offiaccount/Asset_Management/Get_materials_list.html
 * @Author: Haimming
 * @Date: 2019-06-11 11:53
 * @Version 1.0
 */
public class MaterialData {
    public int total_count;
    public int item_count;
    public List<Item> item;
}
