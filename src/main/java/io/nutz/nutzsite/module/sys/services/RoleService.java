package io.nutz.nutzsite.module.sys.services;

import io.nutz.nutzsite.common.service.BaseService;
import io.nutz.nutzsite.module.sys.models.Role;

/**
 * @Author: Haimming
 * @Date: 2019-10-17 16:00
 * @Version 1.0
 */
public interface RoleService extends BaseService<Role> {
    /**
     * 新增角色
     *
     * @param data
     * @return
     */
    @Override
    public Role insert(Role data);

    /**
     * 更新角色
     *
     * @param data
     * @return
     */
    public int update(Role data);

    @Override
    public void delete(String[] ids);
    /**
     * 校验角色名称是否唯一
     * @param roleName
     * @return
     */
    public boolean checkRoleNameUnique(String id, String roleName, String roleKey);

}
