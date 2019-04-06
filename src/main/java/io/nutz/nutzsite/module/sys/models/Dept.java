package io.nutz.nutzsite.module.sys.models;

import io.nutz.nutzsite.common.base.Model;
import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;

@Table("sys_dept")
public class Dept extends Model implements Serializable {
    private static final long serialVersionUID = 1L;

    @Column
    @Name
    @Comment("ID")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    @Prev(els = {@EL("uuid()")})
    private String id;

    /**
     * 父部门ID
     */
    @Column("parent_id")
    @Comment("父部门ID")
    private String parentId;

    /**
     * 祖级列表
     */
    @Column("ancestors")
    @Comment("祖级列表")
    private String ancestors;

    /**
     * 部门名称
     */
    @Column("dept_name")
    @Comment("部门名称")
    private String deptName;

    /**
     * 显示顺序
     */
    @Column("order_num")
    @Comment("显示顺序")
    private int orderNum;

    /**
     * 负责人
     */
    @Column("leader")
    @Comment("负责人")
    private String leader;

    /**
     * 联系电话
     */
    @Column("phone")
    @Comment("联系电话")
    private String phone;
    /**
     * 邮箱
     */
    @Column("email")
    @Comment("邮箱")
    private String email;

    /**
     * 状态（0正常 1停用）
     */
    @Column("status")
    @Comment("状态（0正常 1停用） ")
    private boolean status;

    @Column("del_flag")
    @Comment("删除标记")
    @Prev(els = @EL("$me.flag()"))
    @ColDefine(type = ColType.BOOLEAN)
    private boolean delFlag;

    /**
     * 父部门名称
     */
    private String parentName;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getAncestors() {
        return ancestors;
    }

    public void setAncestors(String ancestors) {
        this.ancestors = ancestors;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public int getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(int orderNum) {
        this.orderNum = orderNum;
    }

    public String getLeader() {
        return leader;
    }

    public void setLeader(String leader) {
        this.leader = leader;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public String getParentName() {
        return parentName;
    }

    public void setParentName(String parentName) {
        this.parentName = parentName;
    }
}
