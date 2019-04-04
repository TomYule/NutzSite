package io.nutz.nutzsite.module.sys.models;

import io.nutz.nutzsite.common.base.Model;
import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Hamming_Yu on 2018/12/29.
 */
@Table("sys_menu")
public class Menu extends Model implements Serializable {
    private static final long serialVersionUID = 1L;

    @Column
    @Name
    @Comment("ID")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    @Prev(els = {@EL("uuid()")})
    private String id;

    @Column("menu_name")
    @Comment("菜单名称")
    @ColDefine(type = ColType.VARCHAR, width = 100)
    private String menuName;

    @Column("parent_id")
    @Comment("父菜单ID")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    private String parentId;

    /**
     * 父菜单名称
     */
    private String parentName;

    @Column("order_num")
    @Comment("显示顺序")
    private String orderNum;

    @Column("url")
    @Comment("菜单URL")
    private String url;

    @Column("menu_type")
    @Comment("类型:0目录,1菜单,2按钮")
    private String menuType;

    @Column("visible")
    @Comment("菜单状态:0显示,1隐藏")
    private boolean visible;

    @Column("perms")
    @Comment("权限字符串")
    private String perms;

    @Column
    @Comment("菜单图标")
    private String icon;

    @Column
    @Comment("备注")
    private String remark;

    /** 子菜单 */
    private List<Menu> children = new ArrayList<Menu>();

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getParentName() {
        return parentName;
    }

    public void setParentName(String parentName) {
        this.parentName = parentName;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getMenuType() {
        return menuType;
    }

    public void setMenuType(String menuType) {
        this.menuType = menuType;
    }

    public boolean isVisible() {
        return visible;
    }

    public void setVisible(boolean visible) {
        this.visible = visible;
    }

    public String getPerms() {
        return perms;
    }

    public void setPerms(String perms) {
        this.perms = perms;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public List<Menu> getChildren() {
        return children;
    }

    public void setChildren(List<Menu> children) {
        this.children = children;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
