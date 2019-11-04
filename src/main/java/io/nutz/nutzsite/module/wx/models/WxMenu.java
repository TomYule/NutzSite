package io.nutz.nutzsite.module.wx.models;
import io.nutz.nutzsite.common.base.BaseModel;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import org.nutz.dao.entity.annotation.*;
import java.io.Serializable;
import java.util.Date;
    
/**
 * 微信菜单表 wx_menu
 * 
 * @author haiming
 * @date 2019-05-10
 */
@Table("wx_menu")
public class WxMenu extends BaseModel implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Name
	@Column("id")
	@Comment("")
	@ColDefine(type = ColType.VARCHAR, width = 64)
	@Prev(els = {@EL("uuid()")})
	private String id;

	/** 父节点 */
	@Column("parent_id")
	@Comment("父节点")
	private String parentId;

	/** 祖节点 */
	@Column("ancestors")
	@Comment("祖节点")
	private String ancestors;

	/** 菜单标题 */
	@Column("name")
	@Comment("菜单标题")
	private String name;

	/** 菜单KEY值 */
	@Column("menu_key")
	@Comment("菜单KEY值")
	private String menuKey;

	/** 菜单的响应动作类型，view表示网页类型，click表示点击类型，miniprogram表示小程序类型 */
	@Column("menu_type")
	@Comment("菜单的响应动作类型，view表示网页类型，click表示点击类型，miniprogram表示小程序类型")
	private String menuType;

	/** 网页 链接，用户点击菜单可打开链接，不超过1024字节。 type为miniprogram时，不支持小程序的老版本客户端将打开本url。 */
	@Column("url")
	@Comment("网页 链接，用户点击菜单可打开链接，不超过1024字节。 type为miniprogram时，不支持小程序的老版本客户端将打开本url。")
	private String url;

	/** 调用新增永久素材接口返回的合法media_id */
	@Column("media_id")
	@Comment("调用新增永久素材接口返回的合法media_id")
	private String mediaId;

	/** 小程序的appid（仅认证公众号可配置） */
	@Column("appid")
	@Comment("小程序的appid（仅认证公众号可配置）")
	private String appid;

	/** 小程序的页面路径 */
	@Column("pagepath")
	@Comment("小程序的页面路径")
	private String pagepath;

	/** 创建者 */
	@Column("create_by")
	@Comment("创建者")
	private String createBy;

	/** 创建时间 */
	@Column("create_time")
	@Comment("创建时间")
	private Date createTime;

	/** 更新者 */
	@Column("update_by")
	@Comment("更新者")
	private String updateBy;

	/** 更新时间 */
	@Column("update_time")
	@Comment("更新时间")
	private Date updateTime;

	/** 备注 */
	@Column("remark")
	@Comment("备注")
	private String remark;

	/** 排序 */
	@Column("sort_order")
	@Comment("排序")
	private Integer sortOrder;

		private String parentName;
	public void setId(String id) 
	{
		this.id = id;
	}

	public String getId() 
	{
		return id;
	}

	public void setParentId(String parentId) 
	{
		this.parentId = parentId;
	}

	public String getParentId() 
	{
		return parentId;
	}

	public void setAncestors(String ancestors) 
	{
		this.ancestors = ancestors;
	}

	public String getAncestors() 
	{
		return ancestors;
	}

	public void setName(String name) 
	{
		this.name = name;
	}

	public String getName() 
	{
		return name;
	}

	public void setMenuKey(String menuKey) 
	{
		this.menuKey = menuKey;
	}

	public String getMenuKey() 
	{
		return menuKey;
	}

	public void setMenuType(String menuType) 
	{
		this.menuType = menuType;
	}

	public String getMenuType() 
	{
		return menuType;
	}

	public void setUrl(String url) 
	{
		this.url = url;
	}

	public String getUrl() 
	{
		return url;
	}

	public void setMediaId(String mediaId) 
	{
		this.mediaId = mediaId;
	}

	public String getMediaId() 
	{
		return mediaId;
	}

	public void setAppid(String appid) 
	{
		this.appid = appid;
	}

	public String getAppid() 
	{
		return appid;
	}

	public void setPagepath(String pagepath) 
	{
		this.pagepath = pagepath;
	}

	public String getPagepath() 
	{
		return pagepath;
	}

	@Override
    public void setCreateBy(String createBy)
	{
		this.createBy = createBy;
	}

	@Override
    public String getCreateBy()
	{
		return createBy;
	}

	@Override
    public void setCreateTime(Date createTime)
	{
		this.createTime = createTime;
	}

	@Override
    public Date getCreateTime()
	{
		return createTime;
	}

	@Override
    public void setUpdateBy(String updateBy)
	{
		this.updateBy = updateBy;
	}

	@Override
    public String getUpdateBy()
	{
		return updateBy;
	}

	@Override
    public void setUpdateTime(Date updateTime)
	{
		this.updateTime = updateTime;
	}

	@Override
    public Date getUpdateTime()
	{
		return updateTime;
	}

	public void setRemark(String remark) 
	{
		this.remark = remark;
	}

	public String getRemark() 
	{
		return remark;
	}

	public void setSortOrder(Integer sortOrder) 
	{
		this.sortOrder = sortOrder;
	}

	public Integer getSortOrder() 
	{
		return sortOrder;
	}

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("parentId", getParentId())
            .append("ancestors", getAncestors())
            .append("name", getName())
            .append("menuKey", getMenuKey())
            .append("menuType", getMenuType())
            .append("url", getUrl())
            .append("mediaId", getMediaId())
            .append("appid", getAppid())
            .append("pagepath", getPagepath())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .append("sortOrder", getSortOrder())
            .toString();
    }
}
