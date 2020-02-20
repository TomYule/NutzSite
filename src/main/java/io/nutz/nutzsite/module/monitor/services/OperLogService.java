package io.nutz.nutzsite.module.monitor.services;

import io.nutz.nutzsite.common.page.TableDataInfo;
import io.nutz.nutzsite.common.service.BaseService;
import org.nutz.dao.Cnd;
import org.nutz.plugins.slog.bean.SlogBean;
import java.util.List;

/**
 * 操作日志记录 服务层实现
 * 
 * @author haiming
 * @date 2019-04-18
 */
public interface OperLogService {
	/**
	 * 分页查询数据封装
	 * @param pageNumber
	 * @param pageSize
	 * @param cnd
	 * @return
	 */
	public TableDataInfo tableList(int pageNumber, int pageSize, Cnd cnd,String orderByColumn,String isAsc);

	public List<SlogBean> query();

	public SlogBean fetch(String name);

	public SlogBean insert(SlogBean t);

	public void delete(String[] ids);

	public void cleanInfor();
}
