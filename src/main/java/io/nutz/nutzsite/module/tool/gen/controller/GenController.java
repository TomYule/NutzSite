package io.nutz.nutzsite.module.tool.gen.controller;

import io.nutz.nutzsite.common.utils.GenUtils;
import io.nutz.nutzsite.module.tool.gen.services.GenService;
import org.apache.commons.io.IOUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 代码生成
 * @author haiming
 */
@IocBean
@At("/tool/gen")
public class GenController {
    @Inject
    GenService genService;

    @At("")
    @Ok("th:/tool/gen/gen.html")
    @RequiresPermissions("tool:gen:view")
    public void index(HttpServletRequest req) {

    }

    @At
    @Ok("json")
    @RequiresPermissions("tool:gen:list")
    public Object list(@Param("pageNum") int pageNum,
                       @Param("pageSize") int pageSize,
                       @Param("tableName") String tableName,
                       @Param("tableComment") String tableComment,
                       @Param("orderByColumn") String orderByColumn,
                       @Param("isAsc") String isAsc,
                       HttpServletRequest req) {

        return genService.selectTableList(tableName, tableComment, pageNum, pageSize,orderByColumn,isAsc);
    }

    @At("/genCode/?")
    @Ok("raw")
    @RequiresPermissions("tool:gen:code")
    public void genCode(String tableName, HttpServletResponse response) throws IOException {
        byte[] data = genService.generatorCode(tableName, GenUtils.getListTemplates());
        response.reset();
        response.setHeader("Content-Disposition", "attachment; filename=\"" + tableName + ".zip\"");
        response.addHeader("Content-Length", "" + data.length);
        response.setContentType("application/octet-stream; charset=UTF-8");

        IOUtils.write(data, response.getOutputStream());
    }

    @At("/genTreeCode/?")
    @Ok("raw")
    @RequiresPermissions("tool:gen:code")
    public void genTreeCode(String tableName, HttpServletResponse response) throws IOException {
        byte[] data = genService.generatorCode(tableName,GenUtils.getTreeTemplates());
        response.reset();
        response.setHeader("Content-Disposition", "attachment;filename=\"" + tableName + ".zip\"");
        response.addHeader("Content-Length", "" + data.length);
        response.setContentType("application/octet-stream; charset=UTF-8");

        IOUtils.write(data, response.getOutputStream());
    }
}
