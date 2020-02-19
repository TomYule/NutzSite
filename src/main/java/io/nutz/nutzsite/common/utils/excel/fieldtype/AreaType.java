/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package io.nutz.nutzsite.common.utils.excel.fieldtype;

import io.nutz.nutzsite.module.sys.models.Area;
import io.nutz.nutzsite.module.sys.services.impl.AreaServiceImpl;
import org.apache.commons.lang3.StringUtils;
import org.nutz.ioc.Ioc;
import org.nutz.ioc.impl.NutIoc;
import org.nutz.ioc.loader.combo.ComboIocLoader;

/**
 * 区域查询
 */
public class AreaType {
	public static Ioc ioc;

	private static AreaServiceImpl areaService;

	static {
		try {
			ioc = new NutIoc(new ComboIocLoader("*anoo"));
			areaService = ioc.get(AreaServiceImpl.class);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}


	/**
	 * 获取对象值（导入）
	 */
	public static Object getValue(String val) {
		for (Area e : areaService.query()){
			if (StringUtils.trimToEmpty(val).equals(e.getName())){
				return e;
			}
		}
		return null;
	}

	/**
	 * 获取对象值（导出）
	 */
	public static String setValue(Object val) {
		if (val != null && ((Area)val).getName() != null){
			return ((Area)val).getName();
		}
		return "";
	}
}
