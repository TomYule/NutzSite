package io.nutz.nutzsite.module.sys.models;

import io.nutz.nutzsite.common.base.Model;
import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;

@Table("sys_dict_data")
public class DictData extends Model implements Serializable {
    private static final long serialVersionUID = 1L;

    @Column
    @Name
    @Comment("ID")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    @Prev(els = {@EL("uuid()")})
    private String id;

    /** 字典排序 */
    @Column("dict_sort")
    @Comment("字典排序")
    private Long dictSort;

    /** 字典标签 */
    @Column("dict_label")
    @Comment("字典标签")
    private String dictLabel;

    /** 字典键值 */
    @Column("dict_value")
    @Comment("字典键值")
    private String dictValue;

    /** 字典类型 */
    @Column("dict_type")
    @Comment("字典类型")
    private String dictType;

    /** 字典样式 */
    @Column("css_class")
    @Comment("字典样式 ")
    private String cssClass;

    /** 表格字典样式 */
    @Column("list_class")
    @Comment("表格字典样式")
    private String listClass;

    /** 是否默认（Y是 N否） */
    @Column("is_default")
    @Comment("是否默认（Y是 N否）")
    private String isDefault;

    /**
     * 状态（0正常 1停用）
     */
    @Column("status")
    @Comment("状态（0正常 1停用）")
    private boolean status;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Long getDictSort() {
        return dictSort;
    }

    public void setDictSort(Long dictSort) {
        this.dictSort = dictSort;
    }

    public String getDictLabel() {
        return dictLabel;
    }

    public void setDictLabel(String dictLabel) {
        this.dictLabel = dictLabel;
    }

    public String getDictValue() {
        return dictValue;
    }

    public void setDictValue(String dictValue) {
        this.dictValue = dictValue;
    }

    public String getDictType() {
        return dictType;
    }

    public void setDictType(String dictType) {
        this.dictType = dictType;
    }

    public String getCssClass() {
        return cssClass;
    }

    public void setCssClass(String cssClass) {
        this.cssClass = cssClass;
    }

    public String getListClass() {
        return listClass;
    }

    public void setListClass(String listClass) {
        this.listClass = listClass;
    }

    public String getIsDefault() {
        return isDefault;
    }

    public void setIsDefault(String isDefault) {
        this.isDefault = isDefault;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
