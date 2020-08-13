package io.nutz.nutzsite.module.sys.services.impl;

import io.nutz.nutzsite.common.service.BaseServiceImpl;
import io.nutz.nutzsite.common.utils.ShiroUtils;
import io.nutz.nutzsite.module.sys.models.Role;
import io.nutz.nutzsite.module.sys.models.User;
import io.nutz.nutzsite.module.sys.services.UserService;
import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.nutz.aop.interceptor.ioc.TransAop;
import org.nutz.dao.Cnd;
import org.nutz.dao.Dao;
import org.nutz.dao.sql.Criteria;
import org.nutz.ioc.aop.Aop;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import org.nutz.trans.Atom;
import org.nutz.trans.Trans;

import java.util.*;

/**
 * 用户 服务层实现
 *
 * @author haiming
 * @date 2019-04-12
 */
@IocBean(args = {"refer:dao"})
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {
    public UserServiceImpl(Dao dao) {
        super(dao);
    }

    @Inject
    private RoleServiceImpl roleService;
    @Inject
    private MenuServiceImpl menuService;


    /**
     * 新增
     *
     * @param user
     * @return
     */
    @Override
    @Aop(TransAop.READ_COMMITTED)
    public User insert(User user) {
        RandomNumberGenerator rng = new SecureRandomNumberGenerator();
        //密码设置
        String salt = rng.nextBytes().toBase64();
        user.setSalt(salt);
        String hashedPasswordBase64 = new Sha256Hash(user.getPassword(), salt, 1024).toBase64();
        user.setPassword(hashedPasswordBase64);
        dao().insert(user);
        updataRelation(user);
        return user;
    }

    /**
     * 更新
     *
     * @param data
     * @return
     */
    @Override
    @Aop(TransAop.READ_COMMITTED)
    public int update(User data) {
        //忽略空字段
        int count = dao().updateIgnoreNull(data);
        this.updataRelation(data);
        return count;
    }

    /**
     * 更新角色
     *
     * @param data
     */
    @Override
    public void updataRelation(User data) {
        List<String> ids = new ArrayList<>();
        if (data != null && Strings.isNotBlank(data.getRoleIds())) {
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
        //更新关系
        dao().insertRelation(data, "roles");
    }


    /**
     * 重置密码
     *
     * @param user
     * @return
     */
    @Override
    public int resetUserPwd(User user) {
        RandomNumberGenerator rng = new SecureRandomNumberGenerator();
        String salt = rng.nextBytes().toBase64();
        user.setSalt(salt);
        String hashedPasswordBase64 = new Sha256Hash(user.getPassword(), salt, 1024).toBase64();
        user.setPassword(hashedPasswordBase64);
        user.setUpdateTime(new Date());
        return dao().updateIgnoreNull(user);
    }

    /**
     * 获取角色列表
     *
     * @param userId
     * @return
     */
    @Override
    public Set<String> getRoleCodeList(String userId) {
        User user =this.fetch(userId);
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
    @Override
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

    /**
     * 记录登录信息
     */
    @Override
    public void recordLoginInfo(User user) {
        user.setLoginIp(ShiroUtils.getIp());
        user.setLoginDate(new Date());
        dao().updateIgnoreNull(user);
    }

    /**
     * 查询用户所属角色组
     *
     * @param userId
     * @return
     */
    @Override
    public String getUserRoleGroup(String userId) {
        User user = this.fetch(userId);
        user = this.fetchLinks(user, "roles");
        StringBuffer idsStr = new StringBuffer();
        for (Role role : user.getRoles()) {
            idsStr.append(role.getRoleName()).append(",");
        }
        if (Strings.isNotBlank(idsStr.toString())) {
            return idsStr.substring(0, idsStr.length() - 1);
        }
        return idsStr.toString();
    }

    @Override
    public boolean checkLoginNameUnique(String name) {
        List<User> list = this.query(Cnd.where("login_name", "=", name));
        if (Lang.isEmpty(list)) {
            return true;
        }
        return false;
    }

}
