package io.nutz.nutzsite.module.sys.controllers;

import io.nutz.nutzsite.common.base.Result;
import io.nutz.nutzsite.module.sys.models.Role;
import io.nutz.nutzsite.module.sys.services.RoleService;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.POST;
import org.nutz.mvc.annotation.Param;

import javax.servlet.http.HttpServletRequest;

@IocBean
@At("/sys/role")
public class RoleController {
    private static final Log log = Logs.get();

    @Inject
    RoleService roleService;

    @At("")
    @Ok("th:/sys/role/role.html")
    public void index(HttpServletRequest req) {

    }

    @At
    @Ok("json")
    public Object list(@Param("pageNum")int pageNum,
                       @Param("pageSize")int pageSize,
                       @Param("dictName") String dictName,
                       @Param("dictType") String dictType,
                       HttpServletRequest req) {
        Cnd cnd = Cnd.NEW();
/*        if (!Strings.isBlank(dictName)){
            cnd.and("dict_name", "like", "%" + dictName +"%");
        }
        if (!Strings.isBlank(dictType)){
            cnd.and("dict_type", "=", dictType);
        }*/
        return roleService.tableList(pageNum,pageSize,cnd);
    }

    @At("/add")
    @Ok("th:/sys/role/add.html")
    public void add(@Param("id") String id, HttpServletRequest req) {

    }

    @At("/edit/?")
    @Ok("th:/sys/role/edit.html")
    public void edit(String id, HttpServletRequest req) {
        Role data = roleService.fetch(id);
        req.setAttribute("role",data);
    }

    @At
    @POST
    @Ok("json")
    public Object addDo(@Param("..") Role data,HttpServletRequest req) {
        try {
            roleService.insert(data);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At
    @POST
    @Ok("json")
    public Object editDo(@Param("..") Role data,HttpServletRequest req) {
        try {
            roleService.update(data);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/remove")
    @Ok("json")
    public Object remove(@Param("ids")String[] ids, HttpServletRequest req) {
        try {
            roleService.delete(ids);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }
}
