package io.nutz.nutzsite.module.cms.models;

import io.nutz.nutzsite.common.base.BaseModel;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;
import java.util.Date;

/**
 * 文章表 cms_article
 *
 * @author haiming
 * @date 2019-06-11
 */
@Table("cms_article")
public class Article extends BaseModel implements Serializable {
    private static final long serialVersionUID = 1L;

    @Name
    @Column("id")
    @Comment("编号")
    @ColDefine(type = ColType.VARCHAR, width = 64)
    @Prev(els = {@EL("uuid()")})
    private String id;

    /**
     * 栏目编号
     */
    @Column("category_id")
    @Comment("栏目编号")
    private String categoryId;

    @One(field = "categoryId")
    private Category category;

    /**
     * 标题
     */
    @Column("title")
    @Comment("标题")
    private String title;

    /**
     * 文章链接
     */
    @Column("link")
    @Comment("文章链接")
    private String link;

    /**
     * 标题颜色
     */
    @Column("color")
    @Comment("标题颜色")
    private String color;

    /**
     * 文章图片
     */
    @Column("image")
    @Comment("文章图片")
    private String image;

    /**
     * 关键字
     */
    @Column("keywords")
    @Comment("关键字")
    private String keywords;

    /**
     * 描述、摘要
     */
    @Column("description")
    @Comment("描述、摘要")
    private String description;

    /**
     * 文章内容
     */
    @Column("content")
    @Comment("文章内容")
    private String content;

    /**
     * 文章来源
     */
    @Column("copyfrom")
    @Comment("文章来源")
    private String copyfrom;

    /**
     * 是否允许评论
     */
    @Column("allow_comment")
    @Comment("是否允许评论")
    private String allowComment;

    /**
     * 权重，越大越靠前
     */
    @Column("weight")
    @Comment("权重，越大越靠前")
    private Integer weight;

    /**
     * 权重期限
     */
    @Column("weight_date")
    @Comment("权重期限")
    private Date weightDate;

    /**
     * 点击数
     */
    @Column("hits")
    @Comment("点击数")
    private Integer hits;

    /**
     * 推荐位，多选
     */
    @Column("posid")
    @Comment("推荐位，多选")
    private String posid;

    /**
     * 自定义内容视图
     */
    @Column("custom_content_view")
    @Comment("自定义内容视图")
    private String customContentView;

    /**
     * 视图配置
     */
    @Column("view_config")
    @Comment("视图配置")
    private String viewConfig;

    /**
     * 创建者
     */
    @Column("create_by")
    @Comment("创建者")
    private String createBy;

    /**
     * 创建时间
     */
    @Column("create_time")
    @Comment("创建时间")
    private Date createTime;

    /**
     * 更新者
     */
    @Column("update_by")
    @Comment("更新者")
    private String updateBy;

    /**
     * 更新时间
     */
    @Column("update_time")
    @Comment("更新时间")
    private Date updateTime;

    /**
     * 备注信息
     */
    @Column("remarks")
    @Comment("备注信息")
    private String remarks;

    /**
     * 删除标记
     */
    @Column("del_flag")
    @Comment("删除标记")
    private String delFlag;

    /**
     * 相关文章
     */
    @Column("relation")
    @Comment("相关文章")
    private String relation;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCopyfrom() {
        return copyfrom;
    }

    public void setCopyfrom(String copyfrom) {
        this.copyfrom = copyfrom;
    }

    public String getAllowComment() {
        return allowComment;
    }

    public void setAllowComment(String allowComment) {
        this.allowComment = allowComment;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public Date getWeightDate() {
        return weightDate;
    }

    public void setWeightDate(Date weightDate) {
        this.weightDate = weightDate;
    }

    public Integer getHits() {
        return hits;
    }

    public void setHits(Integer hits) {
        this.hits = hits;
    }

    public String getPosid() {
        return posid;
    }

    public void setPosid(String posid) {
        this.posid = posid;
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

    public String getRelation() {
        return relation;
    }

    public void setRelation(String relation) {
        this.relation = relation;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("categoryId", getCategoryId())
                .append("title", getTitle())
                .append("link", getLink())
                .append("color", getColor())
                .append("image", getImage())
                .append("keywords", getKeywords())
                .append("description", getDescription())
                .append("content", getContent())
                .append("copyfrom", getCopyfrom())
                .append("allowComment", getAllowComment())
                .append("weight", getWeight())
                .append("weightDate", getWeightDate())
                .append("hits", getHits())
                .append("posid", getPosid())
                .append("customContentView", getCustomContentView())
                .append("viewConfig", getViewConfig())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("remarks", getRemarks())
                .append("delFlag", getDelFlag())
                .append("relation", getRelation())
                .toString();
    }
}
