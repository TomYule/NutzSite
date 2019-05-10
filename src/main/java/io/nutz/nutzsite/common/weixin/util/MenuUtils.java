package io.nutz.nutzsite.common.weixin.util;

import com.alibaba.fastjson.JSON;
import io.nutz.nutzsite.common.utils.http.HttpUtils;
import io.nutz.nutzsite.common.weixin.bean.Button;
import io.nutz.nutzsite.module.wx.models.WxMenu;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author by Haiming on 2019-03-07
 */
public class MenuUtils {

    public static String menuCreateURl = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=";

    public static Button getButton(WxMenu m){
        Button button = new Button();
        button.setName(m.getName());
        if ("click".equals(m.getMenuType())) {
            button.setType(m.getMenuType());
            button.setKey(m.getMenuKey());
        } else if ("miniprogram".equals(m.getMenuType())) {
            button.setType(m.getMenuType());
            button.setUrl(m.getUrl());
            button.setAppid(m.getAppid());
            button.setPagepath(m.getPagepath());
        } else {
            button.setType("view");
            button.setKey(m.getMenuType());
            button.setUrl(m.getUrl());
        }
        return button;
    }

    /**
     * 设置微信菜单
     * @param list
     * @param token
     */
    public static void menuCreate(List<WxMenu> list,String token) {
        Map<String, List<Button>> listMap = new HashMap<>();
        List<Button> m1 = new ArrayList<>();
        list.forEach(m -> {
            List<Button> childMenu = new ArrayList<>();
            if (!"0".equals(m.getParentId())) {
                if (listMap.get(m.getParentId()) != null) {
                    childMenu = listMap.get(m.getParentId());
                }
                childMenu.add(getButton(m));
                listMap.put(m.getParentId(), childMenu);
            }
        });
        list.forEach(m -> {
            if ("0".equals(m.getParentId())) {
                Button button = getButton(m);
                button.setSub_button(listMap.get(m.getId()));
                m1.add(button);
            }
        });

        if (m1!=null && m1.size()>0) {
            Map<String, Object> map =new HashMap<>();
            map.put("button",m1);
            String param = JSON.toJSONString(map);
            System.out.println(param);
            String res = HttpUtils.sendPostJson(menuCreateURl + token, param);
            System.out.println(res);
        }
    }
}
