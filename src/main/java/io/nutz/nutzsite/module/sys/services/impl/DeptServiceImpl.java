package io.nutz.nutzsite.module.sys.services.impl;


import io.nutz.nutzsite.common.exception.ErrorException;
import io.nutz.nutzsite.common.service.BaseServiceImpl;
import io.nutz.nutzsite.common.utils.ShiroUtils;
import io.nutz.nutzsite.module.sys.models.Dept;
import io.nutz.nutzsite.module.sys.services.DeptService;
import org.nutz.dao.Cnd;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;

import java.util.*;

/**
 * 部门service
 * @author haiming
 */
@IocBean(args = {"refer:dao"})
public class DeptServiceImpl extends BaseServiceImpl<Dept> implements DeptService {

    public DeptServiceImpl(Dao dao) {
        super(dao);
    }

    /**
     * 对象转部门树
     *
     * @param deptList     部门列表
     * @return
     */
    @Override
    public List<Map<String, Object>> getTrees(List<Dept> deptList) {

        List<Map<String, Object>> trees = new ArrayList<Map<String, Object>>();
        for (Dept dept : deptList) {
            if (!dept.isStatus()) {
                Map<String, Object> dataMap = new HashMap<String, Object>();
                dataMap.put("id", dept.getId());
                dataMap.put("pId", dept.getParentId());
                dataMap.put("name", dept.getDeptName());
                dataMap.put("title", dept.getDeptName());
                dataMap.put("checked", false);
//                if (isCheck) {
//                    deptMap.put("checked", roleDeptList.contains(dept.getId() + dept.getDeptName()));
//                } else {
//                    deptMap.put("checked", false);
//                }
                trees.add(dataMap);
            }
        }
        return trees;
    }

    /**
     * 查询数据树
     * @param parentId
     * @param name
     * @return
     */
    @Override
    public List<Map<String, Object>> selectTree(String parentId, String name) {
        Cnd cnd = Cnd.NEW();
        if (Strings.isNotBlank(name)) {
            cnd.and("dept_name", "like", "%" + name + "%");
        }
        if (Strings.isNotBlank(parentId)) {
            cnd.and("parent_id", "=", parentId);
        }
        cnd.and("status", "=", false).and("del_flag", "=", false);
        List<Dept> deptList = this.query(cnd);
        List<Map<String, Object>> trees = new ArrayList<Map<String, Object>>();
        trees = getTrees(deptList);
        return trees;
    }

    @Override
    public Dept insertDept(Dept dept){
        Dept info = this.fetch(dept.getParentId());
        if(info.isStatus()){
            throw new ErrorException("dept.stop");
        }
        dept.setAncestors(info.getAncestors() + "," + dept.getParentId());
        return this.dao().insert(dept);
    }

    @Override
    public int update(Dept dept){
        Dept info = this.fetch(dept.getParentId());
        String acestors = "";
        if(Lang.isNotEmpty(info)){
            if(info.isStatus()){
                throw new ErrorException("dept.stop");
            }
            acestors = info.getAncestors();
        }
        dept.setAncestors(Strings.isEmpty(acestors) ? dept.getParentId() : acestors + "," + dept.getParentId());
        dept.setUpdateBy(ShiroUtils.getSysUserId());
        dept.setUpdateTime(new Date());
        return this.dao().update(dept);
    }

    @Override
    public boolean checkDeptNameUnique(String id, String parentId, String menuName) {
        Cnd cnd =Cnd.NEW();
        if(Strings.isNotBlank(id)){
            cnd.and("id","!=",id);
        }
        if(Strings.isNotBlank(parentId)){
            cnd.and("parent_id","=",parentId);
        }
        if(Strings.isNotBlank(menuName)){
            cnd.and("dept_name", "=", menuName);
        }
        List<Dept> list = this.query(cnd);
        if (Lang.isEmpty(list)) {
            return true;
        }
        return false;
    }

}
