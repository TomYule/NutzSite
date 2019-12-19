package io.nutz.nutzsite.module.wx.controller;

import io.nutz.nutzsite.common.weixin.util.MenuUtils;
import io.nutz.nutzsite.module.sys.models.Config;
import io.nutz.nutzsite.module.sys.services.ConfigService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import io.nutz.nutzsite.module.wx.models.WxMenu;
import io.nutz.nutzsite.module.wx.services.WxMenuService;
import io.nutz.nutzsite.common.base.Result;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.POST;
import org.nutz.mvc.annotation.Param;
import org.nutz.plugins.slog.annotation.Slog;
import io.nutz.nutzsite.common.utils.ShiroUtils;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;
import java.util.Date;
/**
 * 微信菜单 信息操作处理
 * 
 * @author haiming
 * @date 2019-05-10
 */
@IocBean
@At("/wx/menu")
public class WxMenuController {
	private static final Log log = Logs.get();

	@Inject
	private WxMenuService wxMenuService;
	@Inject
	private ConfigService configService;
	
	@RequiresPermissions("wx:menu:view")
	@At("")
	@Ok("th:/wx/menu/menu.html")
	public void index(HttpServletRequest req) {

	}

	/**
	 * 查询微信菜单列表
	 */
	@At
	@Ok("json")
	@RequiresPermissions("wx:menu:list")
	public Object list(@Param("name") String name,
					   @Param("beginTime") Date beginTime,
					   @Param("endTime") Date endTime,
					   HttpServletRequest req) {
		Cnd cnd = Cnd.NEW();
		if (!Strings.isBlank(name)){
			//cnd.and("name", "like", "%" + name +"%");
		}
		if(Lang.isNotEmpty(beginTime)){
			cnd.and("create_time",">=", beginTime);
		}
		if(Lang.isNotEmpty(endTime)){
			cnd.and("create_time","<=", endTime);
		}
		return wxMenuService.query(cnd);
	}

	/**
	 * 新增微信菜单
	 */
	@At({"/add/?","/add"})
	@Ok("th:/wx/menu/add.html")
	public void add(@Param("id") String id, HttpServletRequest req) {
		List<WxMenu> list =this.wxMenuService.query(Cnd.NEW().and("parent_id","=","0"));
		req.setAttribute("menuList", list);
		int menuSize =0;
		if(Lang.isNotEmpty(list)){
			menuSize =list.size();
		}
		req.setAttribute("menuSize", menuSize);
	}

	/**
	 * 新增保存微信菜单
	 */

	@At
	@POST
	@Ok("json")
	@RequiresPermissions("wx:menu:add")
	@Slog(tag="微信菜单", after="新增保存微信菜单 id=${args[0].id}")
	public Object addDo(@Param("..") WxMenu wxMenu, HttpServletRequest req) {
		try {
			wxMenuService.insert(wxMenu);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 修改微信菜单
	 */
	@At("/edit/?")
	@Ok("th://wx/menu/edit.html")
	public void edit(String id, HttpServletRequest req) {
		WxMenu wxMenu = wxMenuService.fetch(id);
		req.setAttribute("menu", wxMenu);
		List<WxMenu> list =this.wxMenuService.query(Cnd.NEW().and("parent_id","=","0"));
		req.setAttribute("menuList", list);
		int menuSize =0;
		if(Lang.isNotEmpty(list)){
			menuSize =list.size();
		}
		req.setAttribute("menuSize", menuSize);
	}

	/**
	 * 修改保存微信菜单
	 */

	@At
	@POST
	@Ok("json")
	@RequiresPermissions("wx:menu:edit")
	@Slog(tag="微信菜单", after="修改保存微信菜单")
	public Object editDo(@Param("..") WxMenu wxMenu, HttpServletRequest req) {
		try {
			if(Lang.isNotEmpty(wxMenu)){
				wxMenu.setUpdateBy(ShiroUtils.getSysUserId());
				wxMenu.setUpdateTime(new Date());
				wxMenuService.update(wxMenu);
			}
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 删除微信菜单
	 */
	@At("/remove/?")
	@Ok("json")
	@RequiresPermissions("wx:menu:remove")
	@Slog(tag ="微信菜单", after= "删除微信菜单:${args[0]}")
	public Object remove(String id, HttpServletRequest req) {
		try {
			wxMenuService.delete(id);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

	/**
	 * 选择菜单树
	 */
	@At("/selectTree/?")
	@Ok("th:/wx/menu/tree.html")
	public void selectTree(String id, HttpServletRequest req) {
        WxMenu wxMenu = null;
        if(Strings.isNotBlank(id)) {
            wxMenu = wxMenuService.fetch(id);
        }
        if (wxMenu ==null)  {
            wxMenu =new WxMenu();
            wxMenu.setId("");
            wxMenu.setParentId("0");
            wxMenu.setName("无");
        }
        req.setAttribute("menu", wxMenu);
	}

	/**
	* 获取树数据
	* @param parentId
	* @param name
	* @return
	*/
	@At
	@Ok("json")
	public List<Map<String, Object>> treeData( @Param("parentId") String parentId,
											   @Param("name") String name) {
		List<Map<String, Object>> tree = wxMenuService.selectTree(parentId,name);
		return tree;
	}

	/**
	 * 同步菜单
	 * @param req
	 * @return
	 */
	@At
	@Ok("json")
	public Object pushMenu(HttpServletRequest req) {
		List<WxMenu> list = wxMenuService.query();
		Config config =configService.fetch("token");
		if(config!=null){
			MenuUtils.menuCreate(list, config.getConfigValue());
		}

		return Result.success("system.success");
	}
}
