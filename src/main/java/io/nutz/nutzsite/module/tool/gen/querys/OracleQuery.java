package io.nutz.nutzsite.module.tool.gen.querys;

import org.nutz.dao.sql.Sql;

/**
 * @author Haiming
 * @date 2020/8/11 8:33 PM
 */
public class OracleQuery extends AbstractDbQuery {
    @Override
    public Sql tableList(String tableName, String tableComment, String orderByColumn, String isAsc) {
        return null;
    }

    @Override
    public Sql tableByName(String tableName) {
        return null;
    }

    @Override
    public Sql tableColumnsByName(String tableName) {
        return null;
    }

    @Override
    public Sql getPrimaryKey(String tableName) {
        return null;
    }
}
