package io.nutz.nutzsite.module.sys.models;

import io.nutz.nutzsite.common.base.BaseModel;
import org.nutz.dao.entity.annotation.*;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import org.nutz.lang.random.R;
import org.nutz.plugins.validation.annotation.Validations;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author Hamming_Yu on 2018/12/29.
 */
@Table("sys_menu")
public class Menu extends BaseModel implements Serializable {
    private static final long serialVersionUID = 1L;

    @Column
    @Name
    @Comment("ID")
    @ColDefine(type = ColType.VARCHAR, width = 64)
    @Prev(els = {@EL("uuid()")})
    private String id;

    @Column("menu_name")
    @Comment("菜单名称")
    @ColDefine(type = ColType.VARCHAR, width = 100)
    @Validations(required=true,errorMsg = "菜单名称不能为空")
    private String menuName;

    @Column("parent_id")
    @Comment("父菜单ID")
    @ColDefine(type = ColType.VARCHAR, width = 64)
    private String parentId;

    /**
     * 父菜单名称
     */
    private String parentName;

    @Column("order_num")
    @Comment("显示顺序")
    @Validations(required=true,errorMsg = "排序不能为空")
    private long orderNum;

    @Column("url")
    @Comment("菜单URL")
    private String url;

    @Column("menu_type")
    @Comment("类型:0目录,1菜单,2按钮")
    @Validations(required=true,errorMsg = "菜单类型不能为空")
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

    public long getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(long orderNum) {
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

    @Override
    public String getCreateBy() {
        return createBy;
    }

    @Override
    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    @Override
    public Date getCreateTime() {
        return createTime;
    }

    @Override
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String getUpdateBy() {
        return updateBy;
    }

    @Override
    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    @Override
    public Date getUpdateTime() {
        return updateTime;
    }

    @Override
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }


    public static List<Menu>  getMenuList(List<Menu> list,String pid){
        List<Menu> allMenu =new ArrayList<>();
        list.forEach(menu -> {
            menu.setId(R.UU32().toLowerCase());
            menu.setParentId(pid);
            allMenu.add(menu);
            if(Lang.isNotEmpty(menu.getChildren()) && menu.getChildren().size()>0){
                List<Menu> tmp = getMenuList(menu.getChildren(),menu.getId());
                allMenu.addAll(tmp);
            }
        });
        return allMenu;
    }

    /**
     * 子方法
     **/
    public static List<Menu> getChild(String id, List<Menu> allMenu) {
        // 子菜单
        List<Menu> childList = new ArrayList<>();
        for (Menu menu : allMenu) {
            // 遍历所有节点，将父菜单id与传过来的id比较
            if (Strings.isNotBlank(menu.getParentId())) {
                if (menu.getParentId().equals(id)) {
                    childList.add(menu);
                }
            }
        }
        // 把子菜单的子菜单再循环一遍
        for (Menu menu : childList) {
            menu.setChildren(getChild(menu.getId(), allMenu));
        } // 递归退出条件
        if (childList.size() == 0) {
            return null;
        }
        return childList;
    }
}
