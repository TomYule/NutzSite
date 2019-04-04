package io.nutz.nutzsite.module.sys.controllers;

import io.nutz.nutzsite.common.base.Result;
import io.nutz.nutzsite.module.sys.models.Menu;
import io.nutz.nutzsite.module.sys.services.MenuService;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.lang.util.NutMap;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * @author Hamming_Yu on 2019/1/1.
 */
@IocBean
@At("/sys/menu")
public class MenuController {
    private static final Log log = Logs.get();

    @Inject
    MenuService menuService;

    @At("")
    @Ok("th:/sys/menu/menu.html")
    public void index(HttpServletRequest req) {

    }

    @At
    @Ok("json")
    public Object list(@Param("pid") String pid, HttpServletRequest req) {
        return menuService.query();
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
    public boolean checkMenuNameUnique(Menu menu)
    {
//        return menuService.checkMenuNameUnique(menu);
        return true;
    }

    @At
    @POST
    @Ok("json")
    public Object addDo(@Param("..") Menu menu, @Param("parentId") String parentId, HttpServletRequest req) {
        try {
//            int num = menuService.count(Cnd.where("permission", "=", menu.getPermission().trim()));
//            if (num > 0) {
//                return Result.error("sys.role.code");
//            }
//            if ("data".equals(menu.getType())) {
//                menu.setIsShow(false);
//            } else menu.setIsShow(true);
            menuService.save(menu,parentId);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/edit/?")
    @Ok("th:/sys/menu/edit.html")
    public void edit(String id, HttpServletRequest req) {
        Menu menu = menuService.fetch(id);
        if (menu != null) {
            req.setAttribute("menu",menu);
            Menu parentMenu= menuService.fetch(menu.getParentId());
            if(parentMenu!=null){
                req.setAttribute("parentId", menu.getParentId());
                req.setAttribute("parentName", parentMenu.getMenuName());
            }

        }
    }

    @At
    @POST
    @Ok("json")
    public Object editDo(@Param("..") Menu menu, @Param("parentId") String parentId, HttpServletRequest req) {
        try {
            menuService.update(menu);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/remove/?")
    @Ok("json")
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
        req.setAttribute("menu",menuService.fetch(id));
    }

}
