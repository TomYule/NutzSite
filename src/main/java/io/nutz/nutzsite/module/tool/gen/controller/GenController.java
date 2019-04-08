package io.nutz.nutzsite.module.tool.gen.controller;

import io.nutz.nutzsite.module.tool.gen.services.GenService;
import org.apache.commons.io.IOUtils;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
    public Object list(@Param("pageNum") int pageNum,
                       @Param("pageSize") int pageSize,
                       @Param("tableName") String tableName,
                       @Param("tableComment") String tableComment,
                       HttpServletRequest req) {

        return genService.selectTableList(tableName, tableComment, pageNum, pageSize);
    }

    @At("/genCode/?")
    @Ok("raw")
    public void genCode(String tableName, HttpServletResponse response) throws IOException {
        byte[] data = genService.generatorCode(tableName);
        response.reset();
        response.setHeader("Content-Disposition", "attachment; filename=\"ruoyi.zip\"");
        response.addHeader("Content-Length", "" + data.length);
        response.setContentType("application/octet-stream; charset=UTF-8");

        IOUtils.write(data, response.getOutputStream());
    }

}
