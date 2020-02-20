package io.nutz.nutzsite.module.tool.gen.services;

import io.nutz.nutzsite.common.page.TableDataInfo;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Haiming
 */
public interface GenService {

    /**
     * 查询数据库表信息
     *
     * @param tableName
     * @param tableComment
     * @param pageNumber
     * @param pageSize
     * @return
     */
    public TableDataInfo selectTableList(String tableName, String tableComment,
                                         int pageNumber, int pageSize, String orderByColumn, String isAsc) ;

    /**
     * 生成代码
     *
     * @param tableName
     * @return
     */
    public byte[] generatorCode(String tableName, List<String> templates) ;

    /**
     * 代码预览
     * @param tableName
     * @param templates
     * @return
     */
    public Map<String, String> previewCode(String tableName,List<String> templates);
}
