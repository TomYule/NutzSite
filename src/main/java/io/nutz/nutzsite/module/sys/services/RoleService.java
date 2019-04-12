package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.base.Service;
import io.nutz.nutzsite.module.sys.models.Menu;
import io.nutz.nutzsite.module.sys.models.Role;
import org.nutz.dao.Cnd;
import org.nutz.dao.Condition;
import org.nutz.dao.Dao;
import org.nutz.dao.sql.Criteria;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@IocBean(args = {"refer:dao"})
public class RoleService extends Service<Role> {

    public RoleService(Dao dao) {
        super(dao);
    }

    @Inject
    MenuService menuService;


    /**
     * 新增角色
     * @param data
     * @return
     */
    @Override
    public Role insert(Role data) {
        List<String> ids = new ArrayList<>();
        if (data != null && data.getMenuIds() != null) {
            if (Strings.isNotBlank(data.getMenuIds())) {
                ids = Arrays.asList(data.getMenuIds().split(","));
            }
        }
        if(ids!=null && ids.size()>0){
            Criteria cri = Cnd.cri();
            cri.where().andInStrList("id" , ids);
            List<Menu> menuList = menuService.query(cri);
            data.setMenus(menuList);
        }
        dao().insert(data);
        dao().insertRelation(data, "menus");
        return data;
    }

    /**
     * 更新角色
     *
     * @param data
     * @return
     */
    public int update(Role data) {
        List<String> ids = new ArrayList<>();
        if (data != null && data.getMenuIds() != null) {
            if (Strings.isNotBlank(data.getMenuIds())) {
                ids = Arrays.asList(data.getMenuIds().split(","));
            }
            //清除已有关系
            Role tmpData = this.fetch(data.getId());
            this.fetchLinks(tmpData, "menus");
            dao().clearLinks(tmpData, "menus");
        }
        if(ids!=null && ids.size()>0){
            Criteria cri = Cnd.cri();
            cri.where().andInStrList("id" , ids);
            List<Menu> menuList = menuService.query(cri);
            data.setMenus(menuList);
        }
        int count = dao().update(data);
        dao().insertRelation(data, "menus");
        return count;
    }

}
