package io.nutz.nutzsite.module.sys.models;

import io.nutz.nutzsite.common.base.Model;
import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;

@Table("sys_dict_type")
public class DictType extends Model implements Serializable {
    private static final long serialVersionUID = 1L;

    @Column
    @Name
    @Comment("ID")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    @Prev(els = {@EL("uuid()")})
    private String id;
    /**
     * 字典名称
     */
    @Column("dict_name")
    @Comment("字典类型 ")
    private String dictName;

    /**
     * 字典类型
     */
    @Column("dict_type")
    @Comment("字典类型 ")
    private String dictType;

    /**
     * 状态（0正常 1停用）
     */
    @Column("status")
    @Comment("状态（0正常 1停用） ")
    private boolean status;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDictName() {
        return dictName;
    }

    public void setDictName(String dictName) {
        this.dictName = dictName;
    }

    public String getDictType() {
        return dictType;
    }

    public void setDictType(String dictType) {
        this.dictType = dictType;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
