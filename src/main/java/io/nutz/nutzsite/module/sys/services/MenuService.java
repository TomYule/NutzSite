package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.base.Service;
import io.nutz.nutzsite.module.sys.models.Menu;
import io.nutz.nutzsite.module.sys.models.Role;
import org.nutz.aop.interceptor.ioc.TransAop;
import org.nutz.dao.Dao;
import org.nutz.ioc.aop.Aop;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Hamming_Yu on 2019/1/1.
 */
@IocBean(args = {"refer:dao"})
public class MenuService extends Service<Menu> {
    public MenuService(Dao dao) {
        super(dao);
    }

    @Inject
    RoleService roleService;

    /**
     * 新增菜单
     *
     * @param menu
     * @param pid
     */
    @Aop(TransAop.READ_COMMITTED)
    public void save(Menu menu, String pid) {
        dao().insert(menu);
    }

    public String transMenuName(Menu menu, List<String> roleMenuList, boolean permsFlag) {
        StringBuffer sb = new StringBuffer();
        sb.append(menu.getMenuName());
        if (permsFlag) {
            sb.append("<font color=\"#888\">&nbsp;&nbsp;&nbsp;" + menu.getPerms() + "</font>");
        }
        return sb.toString();
    }

    /**
     * 对象转菜单树
     *
     * @param menuList     菜单列表
     * @param isCheck      是否需要选中
     * @param roleMenuList 角色已存在菜单列表
     * @param permsFlag    是否需要显示权限标识
     * @return
     */
    public List<Map<String, Object>> getTrees(List<Menu> menuList, boolean isCheck, List<String> roleMenuList,
                                              boolean permsFlag) {
        List<Map<String, Object>> trees = new ArrayList<Map<String, Object>>();
        for (Menu menu : menuList) {
            Map<String, Object> deptMap = new HashMap<String, Object>();
            deptMap.put("id", menu.getId());
            deptMap.put("pId", menu.getParentId());
            deptMap.put("name", transMenuName(menu, roleMenuList, permsFlag));
            deptMap.put("title", menu.getMenuName());
            if (isCheck) {
                deptMap.put("checked", roleMenuList.contains(menu.getId() + menu.getPerms()));
            } else {
                deptMap.put("checked", false);
            }
            trees.add(deptMap);
        }
        return trees;
    }

    /**
     * 查询所有菜单
     *
     * @return 菜单列表
     */
    public List<Map<String, Object>> menuTreeData() {
        List<Map<String, Object>> trees = new ArrayList<Map<String, Object>>();
        List<Menu> menuList = this.query();
        trees = getTrees(menuList, false, null, false);
        return trees;
    }

    /**
     * 根据角色ID查询菜单
     *
     * @param roleId 角色对象
     * @return 菜单列表
     */
    public List<Map<String, Object>> roleMenuTreeData(String roleId) {
        List<Map<String, Object>> trees = new ArrayList<Map<String, Object>>();
        Role role = roleService.fetch(roleId);
        role = roleService.fetchLinks(role,"menus");
        List<String> roleMenuList =new ArrayList<>();
        if(role.getMenus()!=null && role.getMenus().size()>0){
            role.getMenus().forEach(menu -> {
                roleMenuList.add(menu.getId()+ menu.getPerms());
            });
        }

        List<Menu> menuList = this.query();
        if (Strings.isNotBlank(roleId)) {
            trees = getTrees(menuList, true, roleMenuList, true);
        } else {
            trees = getTrees(menuList, false, null, true);
        }
        return trees;
    }

}
