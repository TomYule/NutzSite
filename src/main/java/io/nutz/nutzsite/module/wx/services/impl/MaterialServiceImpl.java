package io.nutz.nutzsite.module.wx.services.impl;

import com.alibaba.fastjson.JSON;
import io.nutz.nutzsite.common.service.BaseServiceImpl;
import io.nutz.nutzsite.common.utils.http.HttpUtils;
import io.nutz.nutzsite.module.wx.bean.MaterialCount;
import io.nutz.nutzsite.module.wx.bean.MaterialData;
import io.nutz.nutzsite.module.wx.bean.MaterialParam;
import io.nutz.nutzsite.module.wx.models.Material;
import io.nutz.nutzsite.module.wx.services.MaterialService;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

/**
 * 微信素材 服务层实现
 * 
 * @author haiming
 * @date 2019-06-11
 */
@IocBean(args = {"refer:dao"})
public class MaterialServiceImpl extends BaseServiceImpl<Material> implements MaterialService {
	public MaterialServiceImpl(Dao dao) {
		super(dao);
	}

	private static String material_count_url ="https://api.weixin.qq.com/cgi-bin/material/get_materialcount";

	private static String material_url = "https://api.weixin.qq.com/cgi-bin/material/batchget_material?access_token=";

	/**
	 * 获取素材
	 * @param token
	 * @param type
	 * @param count
	 * @return
	 */
	private static List<Material> getWxMaterial(String token,String type,long count){
		//计算页数
		double temp = Math.ceil(count / (double)20);
		int offset = (int) temp;

		List<Material> materialList =new ArrayList<>();

		for(int i=0; i <= offset; i++){
			String param = JSON.toJSONString(new MaterialParam(type,i,20));
			System.out.println(param);
			String res = HttpUtils.sendPostJson(material_url + token, param);
			System.out.println(res);
			if(Strings.isNotBlank(res) && !res.contains("errcode")){
				MaterialData  materialData = JSON.parseObject(res, MaterialData.class);
				if(Lang.isNotEmpty(materialData) && materialData.item.size()>0){
					materialData.item.forEach(material->{
						Material m =new Material();
						m.setType(type);
						m.setMediaId(material.media_id);
						m.setUpdateTime(material.update_time);
						if("news".equals(type)){
							m.setContent(material.content);
						}else {
							m.setName(material.name);
							m.setUrl(material.url);
						}
						materialList.add(m);
					});
				}
			}
		}
		return materialList;
	}


	/**
	 * 列表转map
	 * @param materials
	 * @return
	 */
	@Override
	public Map<String, Material> getIdMaterialMap(List<Material> materials) {
		if(Lang.isNotEmpty(materials)){
			Map<String, Material> entityMap= materials
					.stream()
					.collect(Collectors.toMap(
							Material::getMediaId,
							Function.identity(),
							(entity1, entity2) -> entity1)
					);
			return entityMap;
		}
		return null;
	}



	/**
	 * 获取素材总数
	 * @param token
	 * @return
	 */
	@Override
	public List<Material>  getWxMaterialList(String token){
		List<Material> materialList =new ArrayList<>();
		String res = HttpUtils.sendGet(material_count_url,"access_token="+token);
		System.out.println(res);
		if(Strings.isNotBlank(res) && !res.contains("errcode")){
			MaterialCount materialCount = JSON.parseObject(res,MaterialCount.class);
			if(materialCount.voice_count>0){
				List<Material> materials =getWxMaterial(token,"voice",materialCount.voice_count);
				if(Lang.isNotEmpty(materials) && materials.size()>0){
					materialList.addAll(materials);
				}
			}
			if(materialCount.video_count>0){
				List<Material> materials =getWxMaterial(token,"video",materialCount.video_count);
				if(Lang.isNotEmpty(materials) && materials.size()>0){
					materialList.addAll(materials);
				}
			}
			if(materialCount.image_count>0){
				List<Material> materials =getWxMaterial(token,"image",materialCount.image_count);
				if(Lang.isNotEmpty(materials) && materials.size()>0){
					materialList.addAll(materials);
				}
			}
			if(materialCount.news_count>0){
				List<Material> materials =getWxMaterial(token,"news",materialCount.news_count);
				if(Lang.isNotEmpty(materials) && materials.size()>0){
					materialList.addAll(materials);
				}
			}
		}
		return materialList;
	}

	@Override
	public void saveData(List<Material> materials, Map<String, Material> materialMap){
		materials.forEach(material -> {
			if(materialMap.get(material.getMediaId())==null){
				this.insert(material);
			}
		});
	}
}
