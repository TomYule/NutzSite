package io.nutz.nutzsite.module.cms.models;

import io.nutz.nutzsite.common.base.BaseModel;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;
import java.util.Date;

/**
 * 站点表 cms_site
 *
 * @author haiming
 * @date 2019-12-13
 */
@Table("cms_site")
public class Site extends BaseModel implements Serializable {
    private static final long serialVersionUID = 1L;

    @Name
    @Column("id")
    @Comment("编号")
    @ColDefine(type = ColType.VARCHAR, width = 64)
    @Prev(els = {@EL("uuid()")})
    private String id;

    /**
     * 站点名称
     */
    @Column("name")
    @Comment("站点名称")
    private String name;

    /**
     * 站点标题
     */
    @Column("title")
    @Comment("站点标题")
    private String title;

    /**
     * 站点Logo
     */
    @Column("logo")
    @Comment("站点Logo")
    private String logo;

    /**
     * 站点域名
     */
    @Column("domain")
    @Comment("站点域名")
    private String domain;

    /**
     * 描述
     */
    @Column("description")
    @Comment("描述")
    private String description;

    /**
     * 关键字
     */
    @Column("keywords")
    @Comment("关键字")
    private String keywords;

    /**
     * 主题
     */
    @Column("theme")
    @Comment("主题")
    private String theme;

    /**
     * 版权信息
     */
    @Column("copyright")
    @Comment("版权信息")
    private String copyright;

    /**
     * 自定义站点首页视图
     */
    @Column("custom_index_view")
    @Comment("自定义站点首页视图")
    private String customIndexView;

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
    private boolean delFlag;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
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

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public String getCopyright() {
        return copyright;
    }

    public void setCopyright(String copyright) {
        this.copyright = copyright;
    }

    public String getCustomIndexView() {
        return customIndexView;
    }

    public void setCustomIndexView(String customIndexView) {
        this.customIndexView = customIndexView;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public boolean isDelFlag() {
        return delFlag;
    }

    public void setDelFlag(boolean delFlag) {
        this.delFlag = delFlag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("name", getName())
                .append("title", getTitle())
                .append("logo", getLogo())
                .append("domain", getDomain())
                .append("description", getDescription())
                .append("keywords", getKeywords())
                .append("theme", getTheme())
                .append("copyright", getCopyright())
                .append("customIndexView", getCustomIndexView())
                .append("createBy", getCreateBy())
                .append("createDate", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateDate", getUpdateTime())
                .append("remarks", getRemarks())
                .append("delFlag", isDelFlag())
                .toString();
    }
}
