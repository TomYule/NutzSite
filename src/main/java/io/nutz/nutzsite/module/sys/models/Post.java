package io.nutz.nutzsite.module.sys.models;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import io.nutz.nutzsite.common.base.BaseModel;
import org.nutz.dao.entity.annotation.*;
import org.nutz.plugins.validation.annotation.Validations;

import java.io.Serializable;
import java.util.Date;

/**
 * 岗位表 sys_post
 *
 * @author haiming
 * @date 2019-04-10
 */
@Table("sys_post")
public class Post extends BaseModel implements Serializable {
    private static final long serialVersionUID = 1L;

    @Name
    @Column("id")
    @Comment("岗位ID ")
    @ColDefine(type = ColType.VARCHAR, width = 64)
    @Prev(els = {@EL("uuid()")})
    private String id;

    /**
     * 岗位编码
     */
    @Column("post_code")
    @Comment("岗位编码")
    @Validations(required = true, errorMsg = "岗位编码不能为空")
    private String postCode;
    /**
     * 岗位名称
     */
    @Column("post_name")
    @Comment("岗位名称")
    @Validations(required = true, errorMsg = "岗位名称不能为空")
    private String postName;
    /**
     * 显示顺序
     */
    @Column("post_sort")
    @Comment("显示顺序")
    @Validations(required = true, errorMsg = "显示顺序不能为空")
    private Integer postSort;
    /**
     * 状态（0正常 1停用）
     */
    @Column("status")
    @Comment("状态（0正常 1停用） ")
    private String status;
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

    /**
     * 备注
     */
    @Column("remark")
    @Comment("备注 ")
    private String remark;

    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostName(String postName) {
        this.postName = postName;
    }

    public String getPostName() {
        return postName;
    }

    public void setPostSort(Integer postSort) {
        this.postSort = postSort;
    }

    public Integer getPostSort() {
        return postSort;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    @Override
    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    @Override
    public String getCreateBy() {
        return createBy;
    }

    @Override
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public Date getCreateTime() {
        return createTime;
    }

    @Override
    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    @Override
    public String getUpdateBy() {
        return updateBy;
    }

    @Override
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public Date getUpdateTime() {
        return updateTime;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getRemark() {
        return remark;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("postCode", getPostCode())
                .append("postName", getPostName())
                .append("postSort", getPostSort())
                .append("status", getStatus())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("remark", getRemark())
                .toString();
    }
}
