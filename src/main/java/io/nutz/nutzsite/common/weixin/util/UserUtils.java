package io.nutz.nutzsite.common.weixin.util;

import com.alibaba.fastjson.JSON;
import io.nutz.nutzsite.common.utils.http.HttpUtils;
import io.nutz.nutzsite.common.weixin.bean.OpenId;
import io.nutz.nutzsite.common.weixin.bean.User_list;
import org.nutz.lang.Lang;
import org.nutz.lang.util.NutMap;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: Haimming
 * @Date: 2019-05-13 17:22
 * @Version 1.0
 */
public class UserUtils {

    private static String openIdUrl = "https://api.weixin.qq.com/cgi-bin/user/get?access_token=";

    private static String userInfoUrl ="https://api.weixin.qq.com/cgi-bin/user/info/batchget?access_token=";

    public static void getUser(String token){
        String data = HttpUtils.sendGet(openIdUrl,"access_token="+token);
        OpenId openId =JSON.parseObject(data,OpenId.class);
        if(Lang.isNotEmpty(openId)){
            List<User_list> userLists =new ArrayList<>();
            openId.getData().getOpenid().forEach(oid->{
                User_list user =new User_list();
                user.setOpenid(oid);
                userLists.add(user);
            });
            String re = HttpUtils.sendPostJson(userInfoUrl + token, JSON.toJSONString(NutMap.NEW().addv("user_list",userLists)));
            System.out.println(re);
        }

    }


}
