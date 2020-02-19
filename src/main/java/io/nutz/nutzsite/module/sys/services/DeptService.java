package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.service.BaseService;
import io.nutz.nutzsite.module.sys.models.Dept;

import java.util.List;
import java.util.Map;

/**
 * @Author: Haimming
 * @Date: 2019-10-17 15:48
 * @Version 1.0
 */
public interface DeptService extends BaseService<Dept> {
    /**
     * 对象转部门树
     *
     * @param deptList     部门列表
     * @return
     */
    public List<Map<String, Object>> getTrees(List<Dept> deptList);

    /**
     * 查询数据树
     * @param parentId
     * @param name
     * @return
     */
    public List<Map<String, Object>> selectTree(String parentId, String name);

    public Dept insertDept(Dept dept) throws Exception;

    public int update(Dept dept) throws Exception;

    public boolean checkDeptNameUnique(String id, String parentId, String menuName);

}
