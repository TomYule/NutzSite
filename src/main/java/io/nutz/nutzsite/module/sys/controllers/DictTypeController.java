package io.nutz.nutzsite.module.sys.controllers;

import io.nutz.nutzsite.module.sys.models.DictData;
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
            cnd.and("dict_name", "=", dictName);
        }
        if (!Strings.isBlank(dictType)){
            cnd.and("dict_type", "=", dictType);
        }
        return dictTypeService.tableList(pageNum,pageSize,cnd);
    }
}
