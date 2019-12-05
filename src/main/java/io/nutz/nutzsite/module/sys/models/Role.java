package io.nutz.nutzsite.module.sys.models;

import io.nutz.nutzsite.common.base.BaseModel;
import org.nutz.dao.entity.annotation.*;
import org.nutz.plugins.validation.annotation.Validations;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 角色表
 *
 * @author haiming
 */
@Table("sys_role")
public class Role extends BaseModel implements Serializable {
    private static final long serialVersionUID = 1L;

    @Column
    @Name
    @Comment("ID")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    @Prev(els = {@EL("uuid()")})
    private String id;

    /**
     * 角色名称
     */
    @Column("role_name")
    @Comment("角色名称 ")
    @Validations(required = true, errorMsg = "角色名称不能为空")
    private String roleName;

    /**
     * 角色权限
     */
    @Column("role_key")
    @Comment("角色权限")
    @Validations(required = true, errorMsg = "角色权限不能为空")
    private String roleKey;

    /**
     * 角色排序
     */
    @Column("role_sort")
    @Comment("角色排序")
    @Validations(required = true, errorMsg = "角色排序不能为空")
    private String roleSort;

    /**
     * 数据范围（1：所有数据权限；2：自定义数据权限）
     */
    @Column("data_scope")
    @Comment("数据范围 ")
    private String dataScope;

    /**
     * 角色状态（0正常 1停用）
     */
    @Column("status")
    @Comment("角色状态（0正常 1停用） ")
    private boolean status;

    /**
     * 删除标志（0代表存在 1代表删除）
     */
    @Column("del_flag")
    @Comment("删除标记")
    @ColDefine(type = ColType.BOOLEAN)
    private boolean delFlag;

    /**
     * 用户是否存在此角色标识 默认不存在
     */
    private boolean flag = false;

    @Column
    @Comment("备注")
    private String remark;

    /**
     * 菜单组
     */
    private String menuIds;

    /**
     * 部门组（数据权限）
     */
    private String[] deptIds;

    @ManyMany(from = "role_id", relation = "sys_role_menu", to = "menu_id")
    protected List<Menu> menus;

    /**
     * 创建者
     */
    @Column("create_by")
    @Comment("创建者 ")
    @Prev(els = @EL("$me.uid()"))
    private String createBy;

    /**
     * 创建时间
     */
    @Column("create_time")
    @Comment("创建时间 ")
    @Prev(els = {@EL("$me.now()")})
    private Date createTime;

    /**
     * 更新者
     */
    @Column("update_by")
    @Comment("更新者 ")
    @Prev(els = @EL("$me.uid()"))
    private String updateBy;

    /**
     * 更新时间
     */
    @Column("update_time")
    @Comment("更新时间 ")
    @Prev(els = {@EL("$me.now()")})
    private Date updateTime;

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof Role) {
            Role role = (Role) obj;
//            System.out.println("equal"+ role.id);
            return (id.equals(role.id));
        }
        return super.equals(obj);
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getRoleKey() {
        return roleKey;
    }

    public void setRoleKey(String roleKey) {
        this.roleKey = roleKey;
    }

    public String getRoleSort() {
        return roleSort;
    }

    public void setRoleSort(String roleSort) {
        this.roleSort = roleSort;
    }

    public String getDataScope() {
        return dataScope;
    }

    public void setDataScope(String dataScope) {
        this.dataScope = dataScope;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public boolean isDelFlag() {
        return delFlag;
    }

    public void setDelFlag(boolean delFlag) {
        this.delFlag = delFlag;
    }

    public boolean isFlag() {
        return flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getMenuIds() {
        return menuIds;
    }

    public void setMenuIds(String menuIds) {
        this.menuIds = menuIds;
    }

    public String[] getDeptIds() {
        return deptIds;
    }

    public void setDeptIds(String[] deptIds) {
        this.deptIds = deptIds;
    }

    public List<Menu> getMenus() {
        return menus;
    }

    public void setMenus(List<Menu> menus) {
        this.menus = menus;
    }

    @Override
    public String getCreateBy() {
        return createBy;
    }

    @Override
    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    @Override
    public Date getCreateTime() {
        return createTime;
    }

    @Override
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String getUpdateBy() {
        return updateBy;
    }

    @Override
    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    @Override
    public Date getUpdateTime() {
        return updateTime;
    }

    @Override
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
