package io.nutz.nutzsite.module.open.api;

import io.nutz.nutzsite.module.test.models.Pet;
import io.nutz.nutzsite.module.test.services.PetService;
import io.nutz.nutzsite.common.base.Result;
import io.nutz.nutzsite.common.exception.ErrorException;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.lang.Lang;
import org.nutz.log.Log;
import org.nutz.lang.Lang;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.POST;
import org.nutz.mvc.annotation.Param;
import org.nutz.plugins.validation.Errors;

import io.nutz.nutzsite.common.utils.JWTUtil;
import io.nutz.nutzsite.common.annotation.AccessToken;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Date;

/**
 * 宠物 信息操作处理
 *
 * @author haiming
 * @date 2020-03-30
 */
@IocBean
@At("/api/api/pet")
public class ApiPetController {
    private static final Log log = Logs.get();

    @Inject
    private PetService petService;

    /**
     * 查询宠物列表
     */
    @At
    @Ok("json")
    @AccessToken
    public Object list(@Param("pageNum") int pageNum,
                       @Param("pageSize") int pageSize,
                       @Param("name") String name,
                       @Param("beginTime") Date beginTime,
                       @Param("endTime") Date endTime,
                       @Param("orderByColumn") String orderByColumn,
                       @Param("isAsc") String isAsc,
                       HttpServletRequest req) {
        String uid = JWTUtil.getId();
        Cnd cnd = Cnd.NEW();
        if (!Strings.isBlank(name)) {
            //cnd.and("name", "like", "%" + name +"%");
        }
        if (Lang.isNotEmpty(beginTime)) {
            cnd.and("create_time" , ">=" , beginTime);
        }
        if (Lang.isNotEmpty(endTime)) {
            cnd.and("create_time" , "<=" , endTime);
        }
        List<Pet> list = petService.query(cnd, pageNum, pageSize);
        return Result.success("system.success" , list);
    }

    /**
     * 查询一条记录
     */
    @At
    @Ok("json")
    @AccessToken
    public Object get(@Param("id") String id) {
        try {
            return Result.success("system.success" , petService.fetch(id));
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    /**
     * 新增保存宠物
     */
    @At
    @POST
    @Ok("json")
    @AccessToken
    public Object addDo(@Param("..") Pet pet, Errors es, HttpServletRequest req) {
        try {
            if (es.hasError()) {
                return Result.error(es);
            }
            petService.insert(pet);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error(e instanceof ErrorException ? e.getMessage() : "system.error");
        }
    }


    /**
     * 修改保存宠物
     */
    @At
    @POST
    @Ok("json")
    @AccessToken
    public Object editDo(@Param("..") Pet pet, Errors es, HttpServletRequest req) {
        try {
            if (es.hasError()) {
                return Result.error(es);
            }
            if (Lang.isNotEmpty(pet)) {
//				pet.setUpdateBy(JWTUtil.getId());
//				pet.setUpdateTime(new Date());
                petService.update(pet);
            }
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error(e instanceof ErrorException ? e.getMessage() : "system.error");
        }
    }

    /**
     * 删除宠物
     */
    @At("/remove")
    @Ok("json")
    @AccessToken
    public Object remove(@Param("ids") String[] ids, HttpServletRequest req) {
        try {
            petService.delete(ids);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

}
