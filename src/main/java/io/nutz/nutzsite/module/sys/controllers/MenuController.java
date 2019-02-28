package io.nutz.nutzsite.module.sys.controllers;

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
    public NutMap index(HttpServletRequest req) {
        return NutMap.NEW().setv("name", "NB").setv("age", 18);
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
        } else {
            menu = new Menu();
            menu.setId("");
            menu.setMenuName("主目录");
        }
        req.setAttribute("menu", menu);
    }
}
