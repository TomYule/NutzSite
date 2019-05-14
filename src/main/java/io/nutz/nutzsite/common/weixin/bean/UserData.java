
package io.nutz.nutzsite.common.weixin.bean;

import java.util.List;

/**
 * 微信同步用户信息
 * 返回用户详情列表
 * https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1421140839
 */
public class UserData {

    private List<User_info_list> user_info_list;

    public void setUser_info_list(List<User_info_list> user_info_list) {
        this.user_info_list = user_info_list;
    }

    public List<User_info_list> getUser_info_list() {
        return user_info_list;
    }

}