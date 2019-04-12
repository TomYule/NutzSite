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


    public int update(Role data) {
        if (data != null && data.getMenuIds() != null) {
            List<String> ids =new ArrayList<>();
            if(data.getMenuIds()!=null && data.getMenuIds().length==1){
                ids = Arrays.asList(data.getMenuIds()[0].split(","));
            }
            Role tmpData = this.fetch(data.getId());
            this.fetchLinks(tmpData, "menus");
            dao().clearLinks(tmpData, "menus");
            Criteria cri = Cnd.cri();
            cri.where().andInStrList("id", ids);
            List<Menu> menuList = menuService.query(cri);
            data.setMenus(menuList);

        }
        int count = dao().update(data);
        dao().insertRelation(data, "menus");
        return dao().update(data);
    }

}
