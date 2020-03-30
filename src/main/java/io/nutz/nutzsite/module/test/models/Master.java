package io.nutz.nutzsite.module.test.models;

import io.nutz.nutzsite.common.base.BaseBean;
import io.nutz.nutzsite.common.base.BaseModel;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;
import java.util.List;

/**
 * 主人表 test_master
 *
 * @author haiming
 * @date 2020-03-30
 */
@Table("test_master")
public class Master extends BaseBean implements Serializable {
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

    @Many(field = "masterId")
    private List<Pet> pets;

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

    public List<Pet> getPets() {
        return pets;
    }

    public void setPets(List<Pet> pets) {
        this.pets = pets;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id" , getId())
                .append("name" , getName())
                .toString();
    }
}
