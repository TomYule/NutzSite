package io.nutz.nutzsite.module.tool.gen.querys;
import org.nutz.dao.sql.Sql;

/**
 * IDbQuery
 * @author kricss
 */
public interface IDbQuery {
    /**
     *  查询数据库表信息
     * @param tableName 表名称
     * @param tableComment 表注释
     * @param orderByColumn 排序字段
     * @param isAsc 排序方式
     * @return
     */
    public Sql tableList(String tableName, String tableComment, String orderByColumn, String isAsc);

    /**
     * 查询表信息
     * @param tableName 表名称
     * @return
     */
    public Sql tableByName(String tableName);


    /**
     * 表字段查询
     * @param tableName 表名称
     * @return
     */
    public Sql tableColumnsByName(String tableName);

    /**
     * 主键查询
     * @param tableName
     * @return
     */
    public Sql getPrimaryKey(String tableName);

}
