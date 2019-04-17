package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.base.Service;
import io.nutz.nutzsite.module.sys.models.Menu;
import io.nutz.nutzsite.module.sys.models.Role;
import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.nutz.dao.Cnd;
import org.nutz.dao.Dao;
import org.nutz.dao.sql.Criteria;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import io.nutz.nutzsite.module.sys.models.User;
import org.nutz.lang.Strings;

import java.util.*;
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

    @Inject
    private RoleService roleService;
    @Inject
    private MenuService menuService;

    @Override
    public User insert(User user) {
        user.setPasswordSalt(user.getPassword());
        return dao().insert(user);
    }

    public int resetUserPwd(User user) {
        user = this.fetch(user.getId());
        user.setPasswordSalt(user.getPassword());
        return dao().update(user);
    }

    public int update(User data) {
        List<String> ids = new ArrayList<>();
        if (data != null && data.getRoleIds() != null) {
            if (Strings.isNotBlank(data.getRoleIds())) {
                ids = Arrays.asList(data.getRoleIds().split(","));
            }
            //清除已有关系
            User tmpData = this.fetch(data.getId());
            this.fetchLinks(tmpData, "roles");
            dao().clearLinks(tmpData, "roles");
        }
        if (ids != null && ids.size() > 0) {
            Criteria cri = Cnd.cri();
            cri.where().andInStrList("id", ids);
            List<Role> roleList = roleService.query(cri);
            data.setRoles(roleList);
        }
        //忽略空字段
        int count = dao().updateIgnoreNull(data);
        dao().insertRelation(data, "roles");
        return count;
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
            if (!role.isStatus() && !role.isDelFlag()) {
                permsSet.add(role.getRoleKey());
            }
        }
        return permsSet;
    }

    /**
     * 获取用户权限
     *
     * @param userId
     * @return
     */
    public Set<String> getPermsByUserId(String userId) {
        Set<String> permsSet = new HashSet<>();
        List<String> menuList = menuService.getPermsByUserId(userId);
        menuList.forEach(menu -> {
            if (Strings.isNotBlank(menu)) {
                permsSet.add(menu);
            }

        });
        return permsSet;
    }


}
