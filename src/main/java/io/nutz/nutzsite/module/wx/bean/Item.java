/**
  * Copyright 2019 bejson.com 
  */
package io.nutz.nutzsite.module.wx.bean;

import java.util.Date;

/**
 * 素材列表返回数据
 * https://developers.weixin.qq.com/doc/offiaccount/Asset_Management/Get_materials_list.html
 */
public class Item {

    public String media_id;
    public String content;
    public Date update_time;
    public String name;
    public String url;


}