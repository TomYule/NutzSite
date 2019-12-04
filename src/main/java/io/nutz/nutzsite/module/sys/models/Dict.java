package io.nutz.nutzsite.module.sys.models;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import io.nutz.nutzsite.common.base.BaseModel;
import org.nutz.dao.entity.annotation.*;
import org.nutz.plugins.validation.annotation.Validations;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 字典表 sys_dict
 *
 * @author haiming
 * @date 2019-04-16
 */
@Table("sys_dict")
public class Dict extends BaseModel implements Serializable {
    private static final long serialVersionUID = 1L;

    @Name
    @Column("id")
    @Comment("编号 ")
    @ColDefine(type = ColType.VARCHAR, width = 64)
    @Prev(els = {@EL("uuid()")})
    private String id;

    /**
     * 数据值
     */
    @Column("value")
    @Comment("数据值 ")
    @Validations(required=true,errorMsg = "数据值不能为空")
    private String value;

    /**
     * 标签名
     */
    @Column("label")
    @Comment("标签名 ")
    @Validations(required=true,errorMsg = "标签名不能为空")
    private String label;

    /**
     * 类型
     */
    @Column("type")
    @Comment("类型 ")
    private String type;
    /**
     * 描述
     */
    @Column("description")
    @Comment("描述 ")
    private String description;
    /**
     * 排序（升序）
     */
    @Column("sort")
    @Comment("排序（升序） ")
    private BigDecimal sort;
    /**
     * 父级编号
     */
    @Column("parent_id")
    @Comment("父级编号 ")
    private String parentId;

    /**
     * 备注信息
     */
    @Column("remarks")
    @Comment("备注信息 ")
    private String remarks;
    /**
     * 删除标记
     */
    @Column("del_flag")
    @Comment("删除标记 ")
    private boolean delFlag;

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


    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    public void setSort(BigDecimal sort) {
        this.sort = sort;
    }

    public BigDecimal getSort() {
        return sort;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getParentId() {
        return parentId;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getRemarks() {
        return remarks;
    }

    public boolean isDelFlag() {
        return delFlag;
    }

    public void setDelFlag(boolean delFlag) {
        this.delFlag = delFlag;
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

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("value", getValue())
                .append("label", getLabel())
                .append("type", getType())
                .append("description", getDescription())
                .append("sort", getSort())
                .append("parentId", getParentId())
                .append("createBy", getCreateBy())
                .append("remarks", getRemarks())
                .toString();
    }
}
