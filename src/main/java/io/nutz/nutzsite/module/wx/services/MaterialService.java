package io.nutz.nutzsite.module.wx.services;

import io.nutz.nutzsite.common.service.BaseService;
import io.nutz.nutzsite.module.wx.models.Material;
import java.util.List;
import java.util.Map;

/**
 * 微信素材 服务层实现
 * 
 * @author haiming
 * @date 2019-06-11
 */
public interface MaterialService extends BaseService<Material> {

	/**
	 * 列表转map
	 * @param materials
	 * @return
	 */
	public Map<String, Material> getIdMaterialMap(List<Material> materials);

	/**
	 * 获取素材总数
	 * @param token
	 * @return
	 */
	public List<Material>  getWxMaterialList(String token);


	public void saveData(List<Material> materials,Map<String, Material> materialMap);
}
