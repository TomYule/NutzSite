package io.nutz.nutzsite.module.wx.models;

import io.nutz.nutzsite.common.base.BaseModel;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;
import java.util.Date;

/**
 * 微信素材表 wx_material
 *
 * @author haiming
 * @date 2019-06-11
 */
@Table("wx_material")
public class Material extends BaseModel implements Serializable {
    private static final long serialVersionUID = 1L;

    @Name
    @Column("id")
    @Comment("id")
    @ColDefine(type = ColType.VARCHAR, width = 64)
    @Prev(els = {@EL("uuid()")})
    private String id;

    /**
     * mediaId
     */
    @Column("media_id")
    @Comment("mediaId")
    private String mediaId;

    /**
     * 素材的类型，图片（image）、视频（video）、语音 （voice）、图文（news）
     */
    @Column("type")
    @Comment("素材的类型，图片（image）、视频（video）、语音 （voice）、图文（news）")
    private String type;

    /**
     * 图文消息的标题
     */
    @Column("title")
    @Comment("图文消息的标题")
    private String title;

    /**
     * 图文消息的具体内容，支持HTML标签，必须少于2万字符，小于1M，且此处会去除JS
     */
    @Column("content")
    @Comment("图文消息的具体内容，支持HTML标签，必须少于2万字符，小于1M，且此处会去除JS")
    private String content;

    /**
     * 文件名称
     */
    @Column("name")
    @Comment("文件名称")
    private String name;

    /**
     * 图文页的URL，或者，当获取的列表是图片素材列表时，该字段是图片的URL
     */
    @Column("url")
    @Comment("图文页的URL，或者，当获取的列表是图片素材列表时，该字段是图片的URL")
    private String url;

    /**
     * 创建者
     */
    @Column("create_by")
    @Comment("创建者")
    private String createBy;

    /**
     *
     */
    @Column("create_time")
    @Comment("")
    private Date createTime;

    /**
     * 更新者
     */
    @Column("update_by")
    @Comment("更新者")
    private String updateBy;

    /**
     * 这篇图文消息素材的最后更新时间
     */
    @Column("update_time")
    @Comment("这篇图文消息素材的最后更新时间")
    private Date updateTime;


    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setMediaId(String mediaId) {
        this.mediaId = mediaId;
    }

    public String getMediaId() {
        return mediaId;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getContent() {
        return content;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUrl() {
        return url;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }


    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("mediaId", getMediaId())
                .append("type", getType())
                .append("title", getTitle())
                .append("content", getContent())
                .append("name", getName())
                .append("url", getUrl())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .toString();
    }
}
