package io.nutz.nutzsite.module.sys.controllers;

import io.nutz.nutzsite.common.base.Result;
import io.nutz.nutzsite.common.exception.ErrorException;
import io.nutz.nutzsite.common.utils.ShiroUtils;
import io.nutz.nutzsite.module.sys.models.Menu;
import io.nutz.nutzsite.module.sys.services.MenuService;
import io.nutz.nutzsite.module.sys.services.UserService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.*;
import org.nutz.plugins.slog.annotation.Slog;
import org.nutz.plugins.validation.Errors;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @author Hamming_Yu on 2019/1/1.
 */
@IocBean
@At("/sys/menu")
public class MenuController {
    private static final Log log = Logs.get();

    @Inject
    private MenuService menuService;
    @Inject
    private UserService userService;

    @At("")
    @Ok("th:/sys/menu/menu.html")
    @RequiresPermissions("sys:menu:view")
    public void index(HttpServletRequest req) {

    }

    @At
    @Ok("json")
    public Object list(@Param("menuName") String menuName, HttpServletRequest req) {
        Cnd cnd = Cnd.NEW();
        if (Strings.isNotBlank(menuName)) {
            cnd.and("menu_name", "like", "%" + menuName + "%");
        }
        cnd.orderBy("order_num","asc");
        return menuService.query(cnd);
    }

    @At("/add/?")
    @Ok("th:/sys/menu/add.html")
    public void add(@Param("id") String id, HttpServletRequest req) {
        Menu menu = null;
        if (!Strings.isBlank(id)) {
            menu = menuService.fetch(id);
        }
        if (menu == null) {
            menu = new Menu();
            menu.setId("0");
            menu.setMenuName("主目录");
        }
        req.setAttribute("menu", menu);
    }

    @At
    @POST
    @Ok("json")
    public boolean checkMenuUnique(@Param("id") String id,
                                   @Param("parentId") String parentId,
                                   @Param("menuName") String menuName) {
        return menuService.checkMenuUnique(id,parentId,menuName);
    }

    @At
    @POST
    @Ok("json")
    @RequiresPermissions("sys:menu:add")
    @Slog(tag="菜单", after="新增保存菜单id=${args[0].id}")
    public Object addDo(@Param("..") Menu menu, @Param("parentId") String parentId, Errors es, HttpServletRequest req) {
        try {
            if(es.hasError()){
                 return Result.error(es);
            }
            menuService.save(menu, parentId);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error(e instanceof ErrorException ? e.getMessage() : "system.error");
        }
    }

    @At("/edit/?")
    @Ok("th:/sys/menu/edit.html")
    public void edit(String id, HttpServletRequest req) {
        Menu menu = menuService.fetch(id);
        if (menu != null) {
            req.setAttribute("menu", menu);
            Menu parentMenu = menuService.fetch(menu.getParentId());
            if (parentMenu != null) {
                menu.setParentName(parentMenu.getMenuName());
            } else {
                req.setAttribute("parentId", "0");
            }
        }
    }

    @At
    @POST
    @Ok("json")
    @RequiresPermissions("sys:menu:edit")
    @Slog(tag="菜单", after="修改保存菜单")
    public Object editDo(@Param("..") Menu menu, @Param("parentId") String parentId, Errors es, HttpServletRequest req) {
        try {
            if(es.hasError()){
                 return Result.error(es);
            }
            if (menu != null && Strings.isEmpty(menu.getParentId())) {
                menu.setParentId("0");
            }
            if(Lang.isNotEmpty(menu)){
                menu.setUpdateBy(ShiroUtils.getSysUserId());
                menu.setUpdateTime(new Date());
                menuService.update(menu);
            }
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error(e instanceof ErrorException ? e.getMessage() : "system.error");
        }
    }

    @At("/remove/?")
    @Ok("json")
    @RequiresPermissions("sys:menu:remove")
    @Slog(tag ="菜单", after= "删除菜单:${args[0]}")
    public Object remove(String id, HttpServletRequest req) {
        try {
            menuService.delete(id);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    /**
     * 选择菜单树
     */
    @At("/selectTree/?")
    @Ok("th:/sys/menu/tree.html")
    public void selectTree(String id, HttpServletRequest req) {
        Menu menu = null;
        if (!Strings.isBlank(id)) {
            menu = menuService.fetch(id);
        }
        if (menu == null) {
            menu = new Menu();
            menu.setId("0");
            menu.setMenuName("主目录");
        }
        req.setAttribute("menu", menu);
    }

    /**
     * 加载所有菜单列表树
     */
    @At
    @Ok("json")
    public List<Map<String, Object>> menuTreeData() {
        List<Map<String, Object>> tree = menuService.menuTreeData();
        return tree;
    }

    /**
     * 加载角色菜单列表树
     *
     * @param roleId
     * @return
     */
    @At
    @Ok("json")
    public List<Map<String, Object>> roleMenuTreeData(@Param("id")String roleId) {

        List<Map<String, Object>> tree = menuService.roleMenuTreeData(roleId);
        return tree;
    }

}
