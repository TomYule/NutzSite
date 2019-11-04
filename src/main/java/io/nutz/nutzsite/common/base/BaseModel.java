package io.nutz.nutzsite.common.base;

import io.nutz.nutzsite.module.sys.models.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.nutz.dao.entity.annotation.*;
import org.nutz.lang.random.R;
import java.io.Serializable;
import java.util.Date;

/**
 * @author Hamming_Yu on 2018/12/29.
 */
public abstract class BaseModel implements Serializable {
    private static final long serialVersionUID = 1L;

    @Column("create_by")
    @Comment("创建者")
    @Prev(els = @EL("$me.uid()"))
    @ColDefine(type = ColType.VARCHAR, width = 32)
    protected String createBy;

    @Column("create_time")
    @Prev(els = {@EL("$me.now()")})
    protected Date createTime;

    @Column("update_by")
    @Comment("更新者")
    @Prev(els = @EL("$me.uid()"))
    @ColDefine(type = ColType.VARCHAR, width = 32)
    protected String updateBy;

    @Prev(els=@EL("$me.now()"))
    @Column("update_time")
    protected Date updateTime;

    public String uuid() {
        return R.UU32().toLowerCase();
    }

    public String uid() {
        try {
            Subject subject = SecurityUtils.getSubject();
            User user = (User) subject.getPrincipal();
            return user == null ? "" : user.getId();
        } catch (Exception e) {
            return "";
        }
    }

    public Date now() {
        return new Date();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

}
