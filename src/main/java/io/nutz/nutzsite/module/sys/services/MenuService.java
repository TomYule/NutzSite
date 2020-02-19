package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.service.BaseService;
import io.nutz.nutzsite.module.sys.models.Menu;

import java.util.List;
import java.util.Map;

/**
 * @Author: Haimming
 * @Date: 2019-10-17 14:44
 * @Version 1.0
 */
public interface MenuService extends BaseService<Menu> {
    public void save(Menu menu, String pid);

    public String transMenuName(Menu menu, List<String> roleMenuList, boolean permsFlag);

    /**
     * 对象转菜单树
     *
     * @param menuList     菜单列表
     * @param isCheck      是否需要选中
     * @param roleMenuList 角色已存在菜单列表
     * @param permsFlag    是否需要显示权限标识
     * @return
     */
    public List<Map<String, Object>> getTrees(List<Menu> menuList, boolean isCheck, List<String> roleMenuList, boolean permsFlag);

    /**
     * 查询所有菜单
     *
     * @return 菜单列表
     */
    public List<Map<String, Object>> menuTreeData();

    /**
     * 根据角色ID查询菜单
     *
     * @param roleId 角色对象
     * @return 菜单列表
     */
    public List<Map<String, Object>> roleMenuTreeData(String roleId);
    /**
     * 查询用户菜单
     *
     * @param userId 用户id
     * @return 菜单
     */
    public List<Menu> getMenuList(String userId);

    /**
     * 查询用户权限
     *
     * @param userId
     * @return
     */
    public List<String> getPermsByUserId(String userId);

    public boolean checkMenuUnique(String id, String parentId, String menuName);

    @Override
    public int delete(String name);
}
