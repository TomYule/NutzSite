package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.base.Service;
import io.nutz.nutzsite.module.sys.models.Menu;
import io.nutz.nutzsite.module.sys.models.Role;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import io.nutz.nutzsite.module.sys.models.User;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * 用户 服务层实现
 *
 * @author haiming
 * @date 2019-04-12
 */
@IocBean(args = {"refer:dao"})
public class UserService extends Service<User> {
    public UserService(Dao dao) {
        super(dao);
    }

    /**
     * 获取角色列表
     *
     * @param user
     * @return
     */
    public Set<String> getRoleCodeList(User user) {
        this.fetchLinks(user, "roles");
        Set<String> permsSet = new HashSet<>();
        for (Role role : user.getRoles()) {
            if (role.isStatus() && !role.isDelFlag()) {
                permsSet.add(role.getRoleKey());
            }
        }
        return permsSet;
    }

    /**
     * 获取用户权限
     * @param user
     * @return
     */
    public Set<String> getMenuPermsList(User user) {
        this.fetchLinks(user, "roles|menus");
        Set<String> permsSet = new HashSet<>();
        List<Menu> menuList = new ArrayList<>();
        for (Role role : user.getRoles()) {
            if (role.getMenus() != null && role.getMenus().size() > 0) {
                menuList.addAll(role.getMenus());
            }
        }
        menuList.stream().distinct()
                .forEach(menu -> {
                    permsSet.add(menu.getPerms());
                });
        return permsSet;
    }

}
