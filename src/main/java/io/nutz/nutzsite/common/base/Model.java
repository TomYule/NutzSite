package io.nutz.nutzsite.common.base;

import org.nutz.dao.entity.annotation.*;
import org.nutz.lang.Strings;
import org.nutz.lang.random.R;
import org.nutz.mvc.Mvcs;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.util.Date;

/**
 * @author Hamming_Yu on 2018/12/29.
 */
public abstract class Model implements Serializable {
    private static final long serialVersionUID = 1L;

    @Prev(els=@EL("$me.createTime()"))
    @Column("create_time")
    protected Date createTime;

    @Prev(els=@EL("$me.now()"))
    @Column("update_time")
    protected Date updateTime;

    @Column
    @Comment("创建者")
    @Prev(els = @EL("$me.createBy()"))
    @ColDefine(type = ColType.VARCHAR, width = 32)
    private String createBy;

    @Column
    @Comment("更新者")
    @Prev(els = @EL("$me.updateBy()"))
    @ColDefine(type = ColType.VARCHAR, width = 32)
    private String updateBy;

    @Column
    @Comment("删除标记")
    @Prev(els = @EL("$me.flag()"))
    @ColDefine(type = ColType.BOOLEAN)
    private Boolean delFlag;

    public String uuid() {
        return R.UU32().toLowerCase();
    }

    public Date createTime() {
        if(getCreateTime()!=null){
            return getCreateTime();
        }
        return new Date();
    }
    public Date now() {
        return new Date();
    }

    public String createBy() {
        String uid = getCreateBy();
        if (Strings.isNotBlank(uid)) {
            return uid;
        }
        try {
            HttpServletRequest request = Mvcs.getReq();
            if (request != null) {
                return Strings.sNull(request.getSession(true).getAttribute("platform_uid"));
            }
        } catch (Exception e) {
        }
        return "";
    }



    public String updateBy() {
        try {
            HttpServletRequest request = Mvcs.getReq();
            if (request != null) {
                return Strings.sNull(request.getSession(true).getAttribute("platform_uid"));
            }
        } catch (Exception e) {
        }
        return "";
    }


    /**
     * 初始化删除
     * @return
     */
    public Boolean flag() {
        return false;
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

    public Boolean getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(Boolean delFlag) {
        this.delFlag = delFlag;
    }
}
