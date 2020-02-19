package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.service.BaseService;
import io.nutz.nutzsite.module.sys.models.User;

import java.util.Set;

/**
 * @Author: Haimming
 * @Date: 2019-10-21 10:25
 * @Version 1.0
 */
public interface UserService  extends BaseService<User> {
    /**
     * 新增
     *
     * @param user
     * @return
     */
    @Override
    public User insert(User user);
    /**
     * 更新
     *
     * @param data
     * @return
     */
    public int update(User data);
    /**
     * 更新角色
     *
     * @param data
     */
    public void updataRelation(User data);

    /**
     * 重置密码
     *
     * @param user
     * @return
     */
    public int resetUserPwd(User user);

    /**
     * 获取角色列表
     *
     * @param userId
     * @return
     */
    public Set<String> getRoleCodeList(String userId);

    /**
     * 获取用户权限
     *
     * @param userId
     * @return
     */
    public Set<String> getPermsByUserId(String userId);

    /**
     * 记录登录信息
     */
    public void recordLoginInfo(User user);


    /**
     * 查询用户所属角色组
     *
     * @param userId
     * @return
     */
    public String getUserRoleGroup(String userId);

    public boolean checkLoginNameUnique(String name);

}
