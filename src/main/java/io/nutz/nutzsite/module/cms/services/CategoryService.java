package io.nutz.nutzsite.module.cms.services;

import io.nutz.nutzsite.common.service.BaseService;
import io.nutz.nutzsite.module.cms.models.Category;
import java.util.List;
import java.util.Map;
/**
 * 栏目 服务层实现
 * 
 * @author haiming
 * @date 2019-05-06
 */
public interface CategoryService extends BaseService<Category> {

	public List<Category> getCateById(String id);

	/**
     * 对象转 栏目 树
     *
     * @param list 栏目列表
     * @return
     */
	public List<Map<String, Object>> getTrees(List<Category> list);

	/**
	 * 查询数据树
	 * @param parentId
	 * @param name
	 * @return
	 */
	public List<Map<String, Object>> selectTree(String parentId, String name);

	public int update(Category category);
}
