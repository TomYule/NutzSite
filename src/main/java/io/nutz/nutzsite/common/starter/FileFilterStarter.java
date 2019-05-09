package io.nutz.nutzsite.common.starter;

import org.nutz.boot.starter.WebFilterFace;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.mvc.Mvcs;

import javax.servlet.*;
import java.io.*;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;


/**
 * 文件读取过滤器
 * @Author: Haimming
 * @Date: 2019-05-08 14:31
 * @Version 1.0
 */
//@IocBean
public class FileFilterStarter implements WebFilterFace, Filter {

    @Override
    public String getName() {
        return "fileFilterStarter";
    }
    @Override
    public String getPathSpec() {
        return "/profile/*";
    }
    /**
     * 需要支持哪些请求方式
     *
     * @return 请求方式列表
     */
    @Override
    public EnumSet<DispatcherType> getDispatches() {
        return EnumSet.of( DispatcherType.FORWARD,
                DispatcherType.INCLUDE,
                DispatcherType.REQUEST,
                DispatcherType.ASYNC,
                DispatcherType.ERROR);
    }

    @Override
    public Filter getFilter() {
        return this;
    }

    @Override
    public Map<String, String> getInitParameters() {
        return new HashMap<String, String>();
    }

    @Override
    public int getOrder() {
        return 0;
    }

    @Override
    public void setServletContext(ServletContext sc) {

    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) {
        String url = Mvcs.getReq().getPathInfo();
        // path是指欲下载的文件的路径。
        String path =url.substring(url.indexOf("/profile"));
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
            response.reset();
            // 设置response的Header
            Mvcs.getResp().addHeader("Content-Disposition", "attachment;filename=" + new String(filename.getBytes()));
            Mvcs.getResp().addHeader("Content-Length", "" + file.length());
            OutputStream toClient = new BufferedOutputStream(response.getOutputStream());
            response.setContentType("application/octet-stream");
            toClient.write(buffer);
            toClient.flush();
            toClient.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void destroy() {

    }
}
