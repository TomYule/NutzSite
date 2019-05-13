/**
  * Copyright 2019 bejson.com 
  */
package io.nutz.nutzsite.common.weixin.bean;

/**
 *
 */
public class User_list {

    private String openid;
    private String lang;
    public void setOpenid(String openid) {
        this.openid = openid;
    }
    public String getOpenid() {
        return openid;
    }

    public void setLang(String lang) {
        this.lang = lang;
    }
    public String getLang() {
        return lang;
    }

}