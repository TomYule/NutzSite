package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.base.Service;
import io.nutz.nutzsite.common.utils.ShiroUtils;
import io.nutz.nutzsite.module.sys.models.Dept;
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
public class DeptService extends Service<Dept> {

    public DeptService(Dao dao) {
        super(dao);
    }

    /**
     * 对象转部门树
     *
     * @param deptList     部门列表
     * @return
     */
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

    public Dept insertDept(Dept dept) throws Exception {
        Dept info = this.fetch(dept.getParentId());
        if(info.isStatus()){
            throw new Exception("dept.stop");
        }
        dept.setAncestors(info.getAncestors() + "," + dept.getParentId());
        return this.dao().insert(dept);
    }

    public int update(Dept dept) throws Exception {
        Dept info = this.fetch(dept.getParentId());
        if(info.isStatus()){
            throw new Exception("dept.stop");
        }
        dept.setAncestors(info.getAncestors() + "," + dept.getParentId());
        dept.setUpdateBy(ShiroUtils.getSysUserId());
        dept.setUpdateTime(new Date());
        return this.dao().update(dept);
    }

    public boolean checkDeptNameUnique(String id,String parentId,String menuName) {
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
