package io.nutz.nutzsite.module.test.models;

import io.nutz.nutzsite.common.base.BaseBean;
import io.nutz.nutzsite.common.base.BaseModel;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;

/**
 * 宠物表 test_pet
 *
 * @author haiming
 * @date 2020-03-30
 */
@Table("test_pet")
public class Pet extends BaseBean implements Serializable {
    private static final long serialVersionUID = 1L;

    @Name
    @Column("id")
    @Comment("")
    @ColDefine(type = ColType.VARCHAR, width = 64)
    @Prev(els = {@EL("uuid()")})
    private String id;

    /**  */
    @Column("name")
    @Comment("")
    private String name;

    /**  */
    @Column("master_id")
    @Comment("")
    private String masterId;

    @One(field = "masterId")
    public Master master;

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

    public void setMasterId(String masterId) {
        this.masterId = masterId;
    }

    public String getMasterId() {
        return masterId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id" , getId())
                .append("name" , getName())
                .append("masterId" , getMasterId())
                .toString();
    }
}
