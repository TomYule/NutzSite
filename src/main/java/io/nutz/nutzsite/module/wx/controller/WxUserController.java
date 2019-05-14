package io.nutz.nutzsite.module.wx.controller;

import io.nutz.nutzsite.common.weixin.bean.User_info_list;
import io.nutz.nutzsite.common.weixin.util.UserUtils;
import io.nutz.nutzsite.module.sys.models.Config;
import io.nutz.nutzsite.module.sys.services.ConfigService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import io.nutz.nutzsite.module.wx.models.WxUser;
import io.nutz.nutzsite.module.wx.services.WxUserService;
import io.nutz.nutzsite.common.base.Result;;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.lang.Lang;
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
import java.util.Date;
/**
 * 微信用户 信息操作处理
 * 
 * @author haiming
 * @date 2019-05-13
 */
@IocBean
@At("/wx/wxUser")
public class WxUserController {
	private static final Log log = Logs.get();

	@Inject
	private WxUserService wxUserService;

	@Inject
	private ConfigService configService;
	
	@RequiresPermissions("wx:wxUser:view")
	@At("")
	@Ok("th:/wx/wxUser/wxUser.html")
	public void index(HttpServletRequest req) {

	}

	/**
	 * 查询微信用户列表
	 */
	@RequiresPermissions("wx:wxUser:list")
	@At
	@Ok("json")
	public Object list(@Param("pageNum")int pageNum,
					   @Param("pageSize")int pageSize,
					   @Param("name") String name,
					   @Param("beginTime") Date beginTime,
					   @Param("endTime") Date endTime,
					   @Param("orderByColumn") String orderByColumn,
					   @Param("isAsc") String isAsc,
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
		return wxUserService.tableList(pageNum,pageSize,cnd,orderByColumn,isAsc,null);
	}

	@At("/down")
	@Ok("json")
	@RequiresPermissions("wx:wxUser:sync")
	@Slog(tag="微信会员", after="同步会员信息")
	public Object down(HttpServletRequest req) {
		try {
			Config config =configService.fetch("token");
			if(Lang.isNotEmpty(config)){
				List<User_info_list>  userInfoLists = UserUtils.getUser(config.getConfigValue());
				if(Lang.isNotEmpty(userInfoLists)){
					userInfoLists.forEach( user->{
						int count =wxUserService.count(Cnd.NEW().and("openid","=",user.getOpenid()));
						if(count==0){
							wxUserService.insert(User_info_list.getUser(user));
						}
					});
				}
			}
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
	}

}
