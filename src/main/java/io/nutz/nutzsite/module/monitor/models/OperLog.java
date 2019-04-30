package io.nutz.nutzsite.module.monitor.models;

import io.nutz.nutzsite.common.base.BaseModel;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;
import java.util.Date;

/**
 * 操作日志记录表 sys_oper_log
 *
 * @author haiming
 * @date 2019-04-18
 */
@Table("sys_oper_log")
public class OperLog implements Serializable {
    private static final long serialVersionUID = 1L;

    @Name
    @Column("id")
    @Comment("日志主键 ")
    @ColDefine(type = ColType.VARCHAR, width = 64)
    @Prev(els = {@EL("uuid()")})
    private String id;

    /**
     * 模块标题
     */
    @Column("title")
    @Comment("模块标题 ")
    private String title;

    /**
     * 业务类型（0其它 1新增 2修改 3删除）
     */
    @Column("business_type")
    @Comment("业务类型（0其它 1新增 2修改 3删除） ")
    private Integer businessType;

    /**
     * 方法名称
     */
    @Column("method")
    @Comment("方法名称 ")
    private String method;

    /**
     * 操作类别（0其它 1后台用户 2手机端用户）
     */
    @Column("operator_type")
    @Comment("操作类别（0其它 1后台用户 2手机端用户） ")
    private Integer operatorType;

    /**
     * 操作人员
     */
    @Column("oper_name")
    @Comment("操作人员 ")
    private String operName;

    /**
     * 部门名称
     */
    @Column("dept_name")
    @Comment("部门名称 ")
    private String deptName;

    /**
     * 请求URL
     */
    @Column("oper_url")
    @Comment("请求URL ")
    private String operUrl;

    /**
     * 主机地址
     */
    @Column("oper_ip")
    @Comment("主机地址 ")
    private String operIp;

    /**
     * 操作地点
     */
    @Column("oper_location")
    @Comment("操作地点 ")
    private String operLocation;

    /**
     * 请求参数
     */
    @Column("oper_param")
    @Comment("请求参数 ")
    private String operParam;

    /**
     * 操作状态（0正常 1异常）
     */
    @Column("status")
    @Comment("操作状态（0正常 1异常） ")
    private Integer status;

    /**
     * 错误消息
     */
    @Column("error_msg")
    @Comment("错误消息 ")
    private String errorMsg;

    /**
     * 操作时间
     */
    @Column("oper_time")
    @Comment("操作时间 ")
    private Date operTime;


    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setBusinessType(Integer businessType) {
        this.businessType = businessType;
    }

    public Integer getBusinessType() {
        return businessType;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public String getMethod() {
        return method;
    }

    public void setOperatorType(Integer operatorType) {
        this.operatorType = operatorType;
    }

    public Integer getOperatorType() {
        return operatorType;
    }

    public void setOperName(String operName) {
        this.operName = operName;
    }

    public String getOperName() {
        return operName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setOperUrl(String operUrl) {
        this.operUrl = operUrl;
    }

    public String getOperUrl() {
        return operUrl;
    }

    public void setOperIp(String operIp) {
        this.operIp = operIp;
    }

    public String getOperIp() {
        return operIp;
    }

    public void setOperLocation(String operLocation) {
        this.operLocation = operLocation;
    }

    public String getOperLocation() {
        return operLocation;
    }

    public void setOperParam(String operParam) {
        this.operParam = operParam;
    }

    public String getOperParam() {
        return operParam;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getStatus() {
        return status;
    }

    public void setErrorMsg(String errorMsg) {
        this.errorMsg = errorMsg;
    }

    public String getErrorMsg() {
        return errorMsg;
    }

    public void setOperTime(Date operTime) {
        this.operTime = operTime;
    }

    public Date getOperTime() {
        return operTime;
    }


    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("title", getTitle())
                .append("businessType", getBusinessType())
                .append("method", getMethod())
                .append("operatorType", getOperatorType())
                .append("operName", getOperName())
                .append("deptName", getDeptName())
                .append("operUrl", getOperUrl())
                .append("operIp", getOperIp())
                .append("operLocation", getOperLocation())
                .append("operParam", getOperParam())
                .append("status", getStatus())
                .append("errorMsg", getErrorMsg())
                .append("operTime", getOperTime())
                .toString();
    }
}
