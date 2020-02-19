package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.service.BaseService;
import io.nutz.nutzsite.module.sys.models.Area;

import java.util.List;
import java.util.Map;

/**
 * @Author: Haimming
 * @Date: 2019-10-18 16:04
 * @Version 1.0
 */
public interface AreaService extends BaseService<Area> {

    /**
     * 对象转 区域 树
     *
     * @param list 区域列表
     * @return
     */
    public List<Map<String, Object>> getTrees(List<Area> list);

    /**
     * 查询数据树
     * @param parentId
     * @param name
     * @return
     */
    public List<Map<String, Object>> selectTree(String parentId, String name);

}
