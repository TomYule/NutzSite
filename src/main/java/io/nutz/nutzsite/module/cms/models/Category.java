package io.nutz.nutzsite.module.cms.models;

import io.nutz.nutzsite.common.base.BaseModel;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;
import java.util.Date;


/**
 * 栏目表 cms_category
 *
 * @author haiming
 * @date 2019-05-06
 */
@Table("cms_category")
public class Category extends BaseModel implements Serializable {
    private static final long serialVersionUID = 1L;

    @Name
    @Column("id")
    @Comment("编号 ")
    @ColDefine(type = ColType.VARCHAR, width = 64)
    @Prev(els = {@EL("uuid()")})
    private String id;

    /**
     * 父级编号
     */
    @Column("parent_id")
    @Comment("父级编号 ")
    private String parentId;

    /**
     * 所有父级编号
     */
    @Column("parent_ids")
    @Comment("所有父级编号 ")
    private String parentIds;

    /**
     * 站点编号
     */
    @Column("site_id")
    @Comment("站点编号 ")
    private String siteId;

    /**
     * 归属机构
     */
    @Column("office_id")
    @Comment("归属机构 ")
    private String officeId;

    /**
     * 栏目模块
     */
    @Column("module")
    @Comment("栏目模块 ")
    private String module;

    /**
     * 栏目名称
     */
    @Column("name")
    @Comment("栏目名称 ")
    private String name;

    /**
     * 栏目图片
     */
    @Column("image")
    @Comment("栏目图片 ")
    private String image;

    /**
     * 链接
     */
    @Column("href")
    @Comment("链接 ")
    private String href;

    /**
     * 目标
     */
    @Column("target")
    @Comment("目标 ")
    private String target;

    /**
     * 描述
     */
    @Column("description")
    @Comment("描述 ")
    private String description;

    /**
     * 关键字
     */
    @Column("keywords")
    @Comment("关键字 ")
    private String keywords;

    /**
     * 排序（升序）
     */
    @Column("sort")
    @Comment("排序（升序） ")
    private Integer sort;

    /**
     * 是否在导航中显示
     */
    @Column("in_menu")
    @Comment("是否在导航中显示 ")
    private boolean inMenu;

    /**
     * 是否在分类页中显示列表
     */
    @Column("in_list")
    @Comment("是否在分类页中显示列表 ")
    private boolean inList;

    /**
     * 展现方式
     */
    @Column("show_modes")
    @Comment("展现方式 ")
    private String showModes;

    /**
     * 是否允许评论
     */
    @Column("allow_comment")
    @Comment("是否允许评论 ")
    private boolean allowComment;

    /**
     * 是否需要审核
     */
    @Column("is_audit")
    @Comment("是否需要审核 ")
    private boolean isAudit;

    /**
     * 自定义列表视图
     */
    @Column("custom_list_view")
    @Comment("自定义列表视图 ")
    private String customListView;

    /**
     * 自定义内容视图
     */
    @Column("custom_content_view")
    @Comment("自定义内容视图 ")
    private String customContentView;

    /**
     * 视图配置
     */
    @Column("view_config")
    @Comment("视图配置 ")
    private String viewConfig;

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
    private String delFlag;

    /**
     * 创建者
     */
    @Column("create_by")
    @Comment("创建者")
    private String createBy;

    /**
     * 更新者
     */
    @Column("update_by")
    @Comment("更新者")
    private String updateBy;

    /**
     * 创建时间
     */
    @Column("create_time")
    @Comment("创建时间")
    private Date createTime;

    /**
     * 更新时间
     */
    @Column("update_time")
    @Comment("更新时间")
    private Date updateTime;

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

    public String getParentIds() {
        return parentIds;
    }

    public void setParentIds(String parentIds) {
        this.parentIds = parentIds;
    }

    public String getSiteId() {
        return siteId;
    }

    public void setSiteId(String siteId) {
        this.siteId = siteId;
    }

    public String getOfficeId() {
        return officeId;
    }

    public void setOfficeId(String officeId) {
        this.officeId = officeId;
    }

    public String getModule() {
        return module;
    }

    public void setModule(String module) {
        this.module = module;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public boolean isInMenu() {
        return inMenu;
    }

    public void setInMenu(boolean inMenu) {
        this.inMenu = inMenu;
    }

    public boolean isInList() {
        return inList;
    }

    public void setInList(boolean inList) {
        this.inList = inList;
    }

    public String getShowModes() {
        return showModes;
    }

    public void setShowModes(String showModes) {
        this.showModes = showModes;
    }

    public boolean isAllowComment() {
        return allowComment;
    }

    public void setAllowComment(boolean allowComment) {
        this.allowComment = allowComment;
    }

    public boolean isAudit() {
        return isAudit;
    }

    public void setAudit(boolean audit) {
        isAudit = audit;
    }

    public String getCustomListView() {
        return customListView;
    }

    public void setCustomListView(String customListView) {
        this.customListView = customListView;
    }

    public String getCustomContentView() {
        return customContentView;
    }

    public void setCustomContentView(String customContentView) {
        this.customContentView = customContentView;
    }

    public String getViewConfig() {
        return viewConfig;
    }

    public void setViewConfig(String viewConfig) {
        this.viewConfig = viewConfig;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
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
    public String getUpdateBy() {
        return updateBy;
    }

    @Override
    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
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
    public Date getUpdateTime() {
        return updateTime;
    }

    @Override
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getParentName() {
        return parentName;
    }

    public void setParentName(String parentName) {
        this.parentName = parentName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("parentId", getParentId())
                .append("parentIds", getParentIds())
                .append("siteId", getSiteId())
                .append("officeId", getOfficeId())
                .append("module", getModule())
                .append("name", getName())
                .append("image", getImage())
                .append("href", getHref())
                .append("target", getTarget())
                .append("description", getDescription())
                .append("keywords", getKeywords())
                .append("sort", getSort())
                .append("inMenu", isInMenu())
                .append("inList", isInList())
                .append("showModes", getShowModes())
                .append("allowComment", isAllowComment())
                .append("isAudit", isAudit())
                .append("customListView", getCustomListView())
                .append("customContentView", getCustomContentView())
                .append("viewConfig", getViewConfig())
                .append("createBy", getCreateBy())
                .append("updateBy", getUpdateBy())
                .append("remarks", getRemarks())
                .append("delFlag", getDelFlag())
                .toString();
    }
}
