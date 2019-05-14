package io.nutz.nutzsite.module.wx.models;

import io.nutz.nutzsite.common.base.BaseModel;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;
import java.util.Date;

/**
 * 微信用户表 wx_user
 *
 * @author haiming
 * @date 2019-05-13
 */
@Table("wx_user")
public class WxUser extends BaseModel implements Serializable {
    private static final long serialVersionUID = 1L;

    @Name
    @Column("id")
    @Comment("ID")
    @ColDefine(type = ColType.VARCHAR, width = 64)
    @Prev(els = {@EL("uuid()")})
    private String id;

    /**
     * openid
     */
    @Column("openid")
    @Comment("openid")
    private String openid;

    /**
     * unionid
     */
    @Column("unionid")
    @Comment("unionid")
    private String unionid;

    /**
     * 微信昵称
     */
    @Column("nickname")
    @Comment("微信昵称")
    private String nickname;

    /**
     * 是否关注
     */
    @Column("subscribe")
    @Comment("是否关注")
    private Integer subscribe;

    /**
     * 关注时间
     */
    @Column("subscribeAt")
    @Comment("关注时间")
    private Long subscribeAt;

    /**
     * 性别
     */
    @Column("sex")
    @Comment("性别")
    private Integer sex;

    /**
     * 国家
     */
    @Column("country")
    @Comment("国家")
    private String country;

    /**
     * 省份
     */
    @Column("province")
    @Comment("省份")
    private String province;

    /**
     * 城市
     */
    @Column("city")
    @Comment("城市")
    private String city;

    /**
     * 头像
     */
    @Column("headimgurl")
    @Comment("头像")
    private String headimgurl;


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
     * 备注
     */
    @Column("remark")
    @Comment("备注")
    private String remark;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOpenid() {
        return openid;
    }

    public void setOpenid(String openid) {
        this.openid = openid;
    }

    public String getUnionid() {
        return unionid;
    }

    public void setUnionid(String unionid) {
        this.unionid = unionid;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public Integer getSubscribe() {
        return subscribe;
    }

    public void setSubscribe(Integer subscribe) {
        this.subscribe = subscribe;
    }

    public Long getSubscribeAt() {
        return subscribeAt;
    }

    public void setSubscribeAt(Long subscribeAt) {
        this.subscribeAt = subscribeAt;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getHeadimgurl() {
        return headimgurl;
    }

    public void setHeadimgurl(String headimgurl) {
        this.headimgurl = headimgurl;
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

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("openid", getOpenid())
                .append("unionid", getUnionid())
                .append("nickname", getNickname())
                .append("subscribe", getSubscribe())
                .append("subscribeAt", getSubscribeAt())
                .append("sex", getSex())
                .append("country", getCountry())
                .append("province", getProvince())
                .append("city", getCity())
                .append("headimgurl", getHeadimgurl())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("remark", getRemark())
                .toString();
    }
}
