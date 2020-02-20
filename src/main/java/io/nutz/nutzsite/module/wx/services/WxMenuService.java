package io.nutz.nutzsite.module.wx.services;

import io.nutz.nutzsite.common.service.BaseService;
import io.nutz.nutzsite.module.wx.models.WxMenu;

import java.util.List;
import java.util.Map;
/**
 * 微信菜单 服务层实现
 * 
 * @author haiming
 * @date 2019-05-10
 */
public interface WxMenuService extends BaseService<WxMenu> {

	/**
     * 对象转 微信菜单 树
     *
     * @param list 微信菜单列表
     * @return
     */
	public List<Map<String, Object>> getTrees(List<WxMenu> list);

	/**
	 * 查询数据树
	 * @param parentId
	 * @param name
	 * @return
	 */
	public List<Map<String, Object>> selectTree(String parentId, String name);

}
