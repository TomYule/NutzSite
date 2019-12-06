package io.nutz.nutzsite.module.sys.models;

import io.nutz.nutzsite.common.base.BaseModel;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import org.nutz.dao.entity.annotation.*;
import org.nutz.plugins.validation.annotation.Validations;

import java.io.Serializable;
import java.util.Date;

/**
 * 定时任务表 sys_task
 *
 * @author haiming
 * @date 2019-04-23
 */
@Table("sys_task")
public class Task extends BaseModel implements Serializable {
    private static final long serialVersionUID = 1L;

    @Name
    @Column("id")
    @Comment(" ")
    @ColDefine(type = ColType.VARCHAR, width = 64)
    @Prev(els = {@EL("uuid()")})
    private String id;

    /**
     * 任务名
     */
    @Column("name")
    @Comment("任务名 ")
    @Validations(required=true,errorMsg = "任务名不能为空")
    private String name;

    /**
     * 执行类
     */
    @Column("jobClass")
    @Comment("执行类 ")
    @Validations(required=true,errorMsg = "执行类不能为空")
    private String jobClass;

    /**
     * 任务说明
     */
    @Column("note")
    @Comment("任务说明")
    private String note;

    /**
     * 定时规则
     */
    @Column("cron")
    @Comment("定时规则")
    @Validations(required=true,errorMsg = "定时规则不能为空")
    private String cron;

    /**
     * 执行参数
     */
    @Column("data")
    @Comment("执行参数")
    private String data;

    /**
     * 执行时间
     */
    @Column("exeAt")
    @Comment("执行时间 ")
    private Integer exeAt;

    /**
     * 执行结果
     */
    @Column("exeResult")
    @Comment("执行结果")
    private String exeResult;

    /**
     * 状态（0正常 1暂停）
     */
    @Column("status")
    @Comment("状态（1正常 0暂停） ")
    private boolean status;

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
     * 备注信息
     */
    @Column("remark")
    @Comment("备注信息 ")
    private String remark;


    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setJobClass(String jobClass) {
        this.jobClass = jobClass;
    }

    public String getJobClass() {
        return jobClass;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getNote() {
        return note;
    }

    public void setCron(String cron) {
        this.cron = cron;
    }

    public String getCron() {
        return cron;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getData() {
        return data;
    }

    public void setExeAt(Integer exeAt) {
        this.exeAt = exeAt;
    }

    public Integer getExeAt() {
        return exeAt;
    }

    public void setExeResult(String exeResult) {
        this.exeResult = exeResult;
    }

    public String getExeResult() {
        return exeResult;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
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
                .append("name", getName())
                .append("jobClass", getJobClass())
                .append("note", getNote())
                .append("cron", getCron())
                .append("data", getData())
                .append("exeAt", getExeAt())
                .append("exeResult", getExeResult())
                .append("status", isStatus())
                .append("createBy", getCreateBy())
                .append("createTime", getCreateTime())
                .append("updateBy", getUpdateBy())
                .append("updateTime", getUpdateTime())
                .append("remark", getRemark())
                .toString();
    }
}
