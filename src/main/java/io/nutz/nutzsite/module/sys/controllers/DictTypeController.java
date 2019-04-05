package io.nutz.nutzsite.module.sys.controllers;

import io.nutz.nutzsite.common.base.Result;
import io.nutz.nutzsite.module.sys.models.DictData;
import io.nutz.nutzsite.module.sys.models.DictType;
import io.nutz.nutzsite.module.sys.services.DictDataService;
import io.nutz.nutzsite.module.sys.services.DictTypeService;
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
import java.util.List;

/**
 *数据字典信息
 */
@IocBean
@At("/sys/dict")
public class DictTypeController {
    private static final Log log = Logs.get();
    @Inject
    private DictTypeService dictTypeService;
    @Inject
    private DictDataService dictDataService;

    @At("")
    @Ok("th:/sys/dict/type/type.html")
    public void index(HttpServletRequest req) {
        List<DictData> dictDataList =dictDataService.query(Cnd.where("dict_type","=","sys_normal_disable"));
        req.setAttribute("type",dictDataList);
    }

    @At
    @Ok("json")
    public Object list(@Param("pageNum")int pageNum,
                       @Param("pageSize")int pageSize,
                       @Param("dictName") String dictName,
                       @Param("dictType") String dictType,
                       HttpServletRequest req) {
        Cnd cnd = Cnd.NEW();
        if (!Strings.isBlank(dictName)){
            cnd.and("dict_name", "like", dictName);
        }
        if (!Strings.isBlank(dictType)){
            cnd.and("dict_type", "=", dictType);
        }
        return dictTypeService.tableList(pageNum,pageSize,cnd);
    }

    @At("/add")
    @Ok("th:/sys/dict/type/add.html")
    public void add(@Param("id") String id, HttpServletRequest req) {
    }

    @At
    @POST
    @Ok("json")
    public Object addDo(@Param("..") DictType dictType,HttpServletRequest req) {
        try {
            dictTypeService.insert(dictType);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/edit/?")
    @Ok("th:/sys/dict/type/edit.html")
    public void edit(String id, HttpServletRequest req) {
        DictType dictType = dictTypeService.fetch(id);
        req.setAttribute("dict",dictType);
    }

    @At
    @POST
    @Ok("json")
    public Object editDo(@Param("..") DictType dictType,HttpServletRequest req) {
        try {
            dictTypeService.update(dictType);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/remove")
    @Ok("json")
    public Object remove(@Param("ids")String[] ids, HttpServletRequest req) {
        try {
            dictTypeService.delete(ids);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }
}
