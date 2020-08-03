package io.nutz.nutzsite.module.sys.controllers;

import com.alibaba.fastjson.JSON;
import io.nutz.nutzsite.common.bean.Amap;
import io.nutz.nutzsite.common.bean.Districts;
import io.nutz.nutzsite.common.config.GenConfig;
import io.nutz.nutzsite.common.exception.ErrorException;
import io.nutz.nutzsite.common.utils.ShiroUtils;
import io.nutz.nutzsite.module.sys.models.Area;
import io.nutz.nutzsite.module.sys.services.AreaService;
import io.nutz.nutzsite.common.base.Result;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import org.nutz.lang.random.R;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.POST;
import org.nutz.mvc.annotation.Param;
import org.nutz.plugins.slog.annotation.Slog;
import org.nutz.plugins.validation.Errors;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * 区域 信息操作处理
 *
 * @author haiming
 * @date 2019-04-11
 */
@IocBean
@At("/sys/area")
public class AreaController {
    private static final Log log = Logs.get();

    public static List<Area> areaList = new ArrayList<>();

    @Inject
    private AreaService areaService;

    @RequiresPermissions("sys:area:view")
    @At("")
    @Ok("th:/sys/area/area.html")
    public void index(HttpServletRequest req) {

    }

    /**
     * 查询区域列表
     */
    @RequiresPermissions("sys:area:list")
    @At
    @Ok("json")
    public Object list(@Param("name") String name, HttpServletRequest req) {
        Cnd cnd = Cnd.NEW();
//        if (!Strings.isBlank(name)) {
//            cnd.and("name", "like", "%" + name +"%");
//        }
        cnd.asc("adcode");
        return areaService.query(cnd);
    }

    /**
     * 新增区域
     */
    @At({"/add","/add/*"})
    @Ok("th:/sys/area/add.html")
    public void add(@Param("id") String id, HttpServletRequest req) {
        Area area = null;
        if (Strings.isNotBlank(id)) {
            area = areaService.fetch(id);
        }
        if (area ==null) {
            area =new Area();
            area.setParentId("0");
            area.setName("无");
        }
        req.setAttribute("area", area);
    }

    /**
     * 新增保存区域
     */
    @RequiresPermissions("sys:area:add")
    @At
    @POST
    @Ok("json")
    @Slog(tag="区域", after="新增保存区域id=${args[0].id}")
    public Object addDo(@Param("..") Area area, Errors es, HttpServletRequest req) {
        try {
            if(es.hasError()){
                return Result.error(es);
            }
            areaService.insert(area);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error(e instanceof ErrorException ? e.getMessage() : "system.error");
        }
    }

    /**
     * 修改区域
     */
    @At("/edit/?")
    @Ok("th://sys/area/edit.html")
    public void edit(String id, HttpServletRequest req) {
        Area area = areaService.fetch(id);
        if (area != null) {
            Area parentData = areaService.fetch(area.getParentId());
            if (parentData != null) {
                area.setParentName(parentData.getName());
            }
        }
        req.setAttribute("area", area);
    }

    /**
     * 修改保存区域
     */
    @RequiresPermissions("sys:area:edit")
    @At
    @POST
    @Ok("json")
    @Slog(tag="区域", after="修改保存区域")
    public Object editDo(@Param("..") Area area, Errors es, HttpServletRequest req) {
        try {
            if(es.hasError()){
                return Result.error(es);
            }
            if(Lang.isNotEmpty(area)){
                area.setUpdateBy(ShiroUtils.getSysUserId());
                area.setUpdateTime(new Date());
                areaService.update(area);
            }
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error(e instanceof ErrorException ? e.getMessage() : "system.error");
        }
    }

    /**
     * 删除区域
     */
    @At("/remove/?")
    @Ok("json")
    @RequiresPermissions("sys:area:remove")
    @Slog(tag ="区域", after= "删除区域:${args[0]}")
    public Object remove(String id, HttpServletRequest req) {
        try {
            areaService.delete(id);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    /**
     * 选择菜单树
     */
    @At("/selectTree/?")
    @Ok("th:/sys/area/tree.html")
    public void selectTree(String id, HttpServletRequest req) {
        Area area = null;
        if (Strings.isNotBlank(id)) {
            area = areaService.fetch(id);
        }
        if (area ==null) {
            area =new Area();
            area.setParentId("0");
            area.setName("无");
        }
        req.setAttribute("area", area);
    }

    /**
     * 获取树数据
     *
     * @param parentId
     * @param name
     * @return
     */
    @At
    @Ok("json")
    public List<Map<String, Object>> treeData(@Param("parentId") String parentId,
                                              @Param("name") String name) {
        List<Map<String, Object>> tree = areaService.selectTree(parentId, name);
        return tree;
    }

    /**
     * 初始化行政区域的数据
     * @return
     */
    @At
    @Ok("json")
    public String initData(){
        if(0==areaService.count()){
            String areaJson = GenConfig.getFileData("data/area.json");
            List<Area> areaList = JSON.parseArray(areaJson,Area.class);
            for(Area a:areaList){
                areaService.fastInsert(a);
            }
        }
        return "successs";
    }
}
