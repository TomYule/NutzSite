package io.nutz.nutzsite.module.monitor.models;

import io.nutz.nutzsite.common.base.BaseModel;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;
import java.util.Date;

/**
 * 系统访问记录表 sys_logininfor
 *
 * @author haiming
 * @date 2019-04-18
 */
@Table("sys_logininfor")
public class Logininfor implements Serializable {
    private static final long serialVersionUID = 1L;

    @Name
    @Column("id")
    @Comment("访问ID ")
    @ColDefine(type = ColType.VARCHAR, width = 64)
    @Prev(els = {@EL("uuid()")})
    private String id;

    /**
     * 登录账号
     */
    @Column("login_name")
    @Comment("登录账号 ")
    private String loginName;

    /**
     * 登录IP地址
     */
    @Column("ipaddr")
    @Comment("登录IP地址 ")
    private String ipaddr;

    /**
     * 登录地点
     */
    @Column("login_location")
    @Comment("登录地点 ")
    private String loginLocation;

    /**
     * 浏览器类型
     */
    @Column("browser")
    @Comment("浏览器类型 ")
    private String browser;

    /**
     * 操作系统
     */
    @Column("os")
    @Comment("操作系统 ")
    private String os;

    /**
     * 登录状态（0成功 1失败）
     */
    @Column("status")
    @Comment("登录状态（0成功 1失败） ")
    private boolean status;

    /**
     * 提示消息
     */
    @Column("msg")
    @Comment("提示消息 ")
    private String msg;

    /**
     * 访问时间
     */
    @Column("login_time")
    @Comment("访问时间 ")
    private Date loginTime;


    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setIpaddr(String ipaddr) {
        this.ipaddr = ipaddr;
    }

    public String getIpaddr() {
        return ipaddr;
    }

    public void setLoginLocation(String loginLocation) {
        this.loginLocation = loginLocation;
    }

    public String getLoginLocation() {
        return loginLocation;
    }

    public void setBrowser(String browser) {
        this.browser = browser;
    }

    public String getBrowser() {
        return browser;
    }

    public void setOs(String os) {
        this.os = os;
    }

    public String getOs() {
        return os;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getMsg() {
        return msg;
    }

    public void setLoginTime(Date loginTime) {
        this.loginTime = loginTime;
    }

    public Date getLoginTime() {
        return loginTime;
    }


    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("loginName", getLoginName())
                .append("ipaddr", getIpaddr())
                .append("loginLocation", getLoginLocation())
                .append("browser", getBrowser())
                .append("os", getOs())
                .append("status", isStatus())
                .append("msg", getMsg())
                .append("loginTime", getLoginTime())
                .toString();
    }
}
