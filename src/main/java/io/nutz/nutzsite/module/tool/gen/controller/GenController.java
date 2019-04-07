package io.nutz.nutzsite.module.tool.gen.controller;

import io.nutz.nutzsite.module.tool.gen.services.GenService;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import javax.servlet.http.HttpServletRequest;

@IocBean
@At("/tool/gen")
public class GenController {
    @Inject
    GenService genService;

    @At("")
    @Ok("th:/tool/gen/gen.html")
    public void index(HttpServletRequest req) {

    }


    @At
    @Ok("json")
    public Object list(@Param("pageNum")int pageNum,
                       @Param("pageSize")int pageSize,
                       @Param("tableName") String tableName,
                       @Param("tableComment") String tableComment,
                       HttpServletRequest req) {
//        List<TableInfo> tableInfoList = genService.selectTableList(tableName,tableComment,pageNum,pageSize);
//        return new TableDataInfo(tableInfoList,1000 );
        return genService.selectTableList(tableName,tableComment,pageNum,pageSize);
    }
}
