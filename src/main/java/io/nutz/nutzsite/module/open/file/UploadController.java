package io.nutz.nutzsite.module.open.file;

import io.nutz.nutzsite.common.base.Globals;
import io.nutz.nutzsite.common.base.Result;
import io.nutz.nutzsite.common.utils.ObjectUtils;
import io.nutz.nutzsite.common.utils.UpLoadUtil;
import io.nutz.nutzsite.module.sys.services.ImageService;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.util.NutMap;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.*;
import org.nutz.mvc.impl.AdaptorErrorContext;
import org.nutz.mvc.upload.TempFile;
import org.nutz.mvc.upload.UploadAdaptor;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLDecoder;
import java.net.URLEncoder;

/**
 * @Author: Haimming
 * @Date: 2019-05-08 13:42
 * @Version 1.0
 */
@IocBean
@At("/open/file")
public class UploadController {
    private static final Log log = Logs.get();
    @Inject
    private ImageService imageService;

    @At("/get/?")
    @Ok("raw")
    public void get(String id,HttpServletRequest req, HttpServletResponse resp) {
        String path = imageService.get(id);
        File file = new File(path);
        // 取得文件名。
        String filename = file.getName();
        // 取得文件的后缀名。
        String ext = filename.substring(filename.lastIndexOf(".") + 1).toUpperCase();
        // 以流的形式下载文件。
        try (InputStream fis  = new BufferedInputStream(new FileInputStream(path))){
            byte[] buffer = new byte[fis.available()];
            fis.read(buffer);
            fis.close();
            // 清空response
            resp.reset();
            // 设置response的Header
            resp.addHeader("Content-Disposition", "attachment;filename=" + new String(filename.getBytes()));
            resp.addHeader("Content-Length", "" + file.length());
            OutputStream toClient = new BufferedOutputStream(resp.getOutputStream());
            resp.setContentType("application/octet-stream");
            toClient.write(buffer);
            toClient.flush();
            toClient.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @At
    @Ok("json")
    @POST
    @AdaptBy(type = UploadAdaptor.class)
    public Object upload(@Param("Filedata") TempFile tf, HttpServletRequest req, AdaptorErrorContext err) {
        try {
            if (err != null && err.getAdaptorErr() != null) {
                return NutMap.NEW().addv("code", 1).addv("msg", "文件不合法");
            } else if (tf == null) {
                return Result.error("空文件");
            } else {
                String url = UpLoadUtil.upLoadFileSysConfigPath(tf,"tmp");
                String u = req.getServletContext().getContextPath();
                return Result.success("上传成功",  u + url );
            }
        } catch (Exception e) {
            e.printStackTrace();
            return Result.error("系统错误");
        } catch (Throwable e) {
            return Result.error("图片格式错误");
        }
    }

    @At("/userfiles/?")
    @GET
    @POST
    @Ok("raw")
    public void fileOutputStream(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String filepath = req.getRequestURI();
        int index = filepath.indexOf(Globals.USERFILES_BASE_URL);
        if(index >= 0) {
            filepath = filepath.substring(index + Globals.USERFILES_BASE_URL.length());
        }
        try {
            filepath = URLDecoder.decode(filepath, Globals.UTF8);
        } catch (UnsupportedEncodingException e1) {
            log.error(String.format("解释文件路径失败，URL地址为%s", filepath), e1);
        }
        File file = new File(Globals.getUserfilesBaseDir() + Globals.USERFILES_BASE_URL + filepath);
        try {
            ObjectUtils.copy(new FileInputStream(file), resp.getOutputStream());
            resp.setHeader("Content-Type", "application/octet-stream");
            return;
        } catch (FileNotFoundException e) {
            req.setAttribute("exception", new FileNotFoundException("请求的文件不存在"));
            req.getRequestDispatcher("/WEB-INF/views/error/404.jsp").forward(req, resp);
        }
    }
}
