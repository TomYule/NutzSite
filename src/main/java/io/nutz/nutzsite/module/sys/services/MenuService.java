package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.base.Service;
import io.nutz.nutzsite.module.sys.models.Menu;
import io.nutz.nutzsite.module.sys.models.Role;
import io.nutz.nutzsite.module.sys.models.User;
import org.nutz.aop.interceptor.ioc.TransAop;
import org.nutz.dao.Cnd;
import org.nutz.dao.Dao;
import org.nutz.dao.Sqls;
import org.nutz.dao.entity.Entity;
import org.nutz.dao.sql.Sql;
import org.nutz.dao.sql.SqlCallback;
import org.nutz.ioc.aop.Aop;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

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
    @Inject
    private MenuService menuService;

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
        List<Menu> menuList = this.query(Cnd.NEW().orderBy("order_num","asc"));
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
        List<String> roleMenuList = new ArrayList<>();
        if(Strings.isNotBlank(roleId)){
            Role role = roleService.fetch(roleId);
            role = roleService.fetchLinks(role, "menus");
            if (role.getMenus() != null && role.getMenus().size() > 0) {
                role.getMenus().forEach(menu -> {
                    roleMenuList.add(menu.getId() + menu.getPerms());
                });
            }
        }
        List<Menu> menuList = this.query(Cnd.NEW().orderBy("order_num","asc"));
        if (Strings.isNotBlank(roleId)) {
            trees = getTrees(menuList, true, roleMenuList, true);
        } else {
            trees = getTrees(menuList, false, null, true);
        }
        return trees;
    }

    /**
     * 查询用户菜单
     *
     * @param userId 用户id
     * @return 菜单
     */
    public List<Menu> getMenuList(String userId) {
        String sqlstr = "select distinct m.id, m.parent_id, m.menu_name, m.url, m.perms , m.menu_type, m.icon, m.order_num, m.create_time " +
                "from sys_menu m " +
                "left join sys_role_menu rm on m.id = rm.menu_id " +
                "left join sys_user_role ur on rm.role_id = ur.role_id " +
                "left join sys_role ro on ur.role_id = ro.id " +
                "where ur.user_id = @userId and m.menu_type in ('M', 'C') and m.visible = '0' " +
                "order by m.order_num";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("userId", userId);
        sql.setCallback(Sqls.callback.entities());
        Entity<Menu> entity = dao().getEntity(Menu.class);
        sql.setEntity(entity);
        dao().execute(sql);
        return sql.getList(Menu.class);
    }

    /**
     * 查询用户权限
     *
     * @param userId
     * @return
     */
    public List<String> getPermsByUserId(String userId) {
        String sqlstr = " select distinct m.perms from sys_menu m " +
                " left join sys_role_menu rm on m.id = rm.menu_id " +
                " left join sys_user_role ur on rm.role_id = ur.role_id " +
                " where ur.user_id = @userId";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("userId", userId);
        sql.setCallback(Sqls.callback.strList());
        dao().execute(sql);
        return sql.getList(String.class);
    }


    public boolean checkMenuUnique(String id,String parentId,String menuName) {
        Cnd cnd =Cnd.NEW();
        if(Strings.isNotBlank(id)){
            cnd.and("id","!=",id);
        }
        if(Strings.isNotBlank(parentId)){
            cnd.and("parent_id","=",parentId);
        }
        if(Strings.isNotBlank(menuName)){
            cnd.and("menu_name", "=", menuName);
        }
        List<Menu> list = this.query(cnd);
        if (Lang.isEmpty(list)) {
            return true;
        }
        return false;
    }

    @Override
    public int delete(String name) {
        Menu menu =this.fetch(name);
        List<Menu> list = this.query(Cnd.NEW().and("parent_id","=",menu.getId()));
        if(Lang.isNotEmpty(list) && list.size()>0){
            List<String> ids =new ArrayList<>();
            list.forEach(m->{
                ids.add(m.getId());
            });
            this.dao().clear(Menu.class, Cnd.where("id", "in", ids));
        }
        return this.dao().delete(Menu.class, name);
    }
}
