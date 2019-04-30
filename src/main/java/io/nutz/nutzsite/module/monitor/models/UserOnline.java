package io.nutz.nutzsite.module.monitor.models;

import io.nutz.nutzsite.common.base.BaseModel;
import io.nutz.nutzsite.common.bean.OnlineSession;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;
import java.util.Date;

/**
 * 在线用户记录表 sys_user_online
 *
 * @author haiming
 * @date 2019-04-18
 */
@Table("sys_user_online")
public class UserOnline implements Serializable {
    private static final long serialVersionUID = 1L;

    @Name
    @Column("sessionId")
    @Comment("用户会话id ")
    @ColDefine(type = ColType.VARCHAR, width = 64)
    @Prev(els = {@EL("uuid()")})
    private String sessionId;

    /**
     * 登录账号
     */
    @Column("login_name")
    @Comment("登录账号 ")
    private String loginName;

    /**
     * 部门名称
     */
    @Column("dept_name")
    @Comment("部门名称 ")
    private String deptName;

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
     * 在线状态on_line在线off_line离线
     */
    @Column("status")
    @Comment("在线状态on_line在线off_line离线 ")
    private String status;

    /**
     * session创建时间
     */
    @Column("start_timestamp")
    @Comment("session创建时间 ")
    private Date startTimestamp;

    /**
     * session最后访问时间
     */
    @Column("last_access_time")
    @Comment("session最后访问时间 ")
    private Date lastAccessTime;

    /**
     * 超时时间，单位为分钟
     */
    @Column("expire_time")
    @Comment("超时时间，单位为分钟 ")
    private Long expireTime;

    /** 备份的当前用户会话 */
    private OnlineSession session;


    public void setSessionId(String sessionId) {
        this.sessionId = sessionId;
    }

    public String getSessionId() {
        return sessionId;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getDeptName() {
        return deptName;
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

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public void setStartTimestamp(Date startTimestamp) {
        this.startTimestamp = startTimestamp;
    }

    public Date getStartTimestamp() {
        return startTimestamp;
    }

    public void setLastAccessTime(Date lastAccessTime) {
        this.lastAccessTime = lastAccessTime;
    }

    public Date getLastAccessTime() {
        return lastAccessTime;
    }

    public Long getExpireTime() {
        return expireTime;
    }

    public void setExpireTime(Long expireTime) {
        this.expireTime = expireTime;
    }

    public OnlineSession getSession() {
        return session;
    }

    public void setSession(OnlineSession session) {
        this.session = session;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("sessionId", getSessionId())
                .append("loginName", getLoginName())
                .append("deptName", getDeptName())
                .append("ipaddr", getIpaddr())
                .append("loginLocation", getLoginLocation())
                .append("browser", getBrowser())
                .append("os", getOs())
                .append("status", getStatus())
                .append("startTimestamp", getStartTimestamp())
                .append("lastAccessTime", getLastAccessTime())
                .append("expireTime", getExpireTime())
                .toString();
    }
}
