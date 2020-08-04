package io.nutz.nutzsite.module.tool.gen.querys;

import org.nutz.dao.Sqls;
import org.nutz.dao.sql.Sql;
import org.nutz.lang.Strings;

/**
 * @author Haiming
 * @date 2020/8/4 2:26 PM
 */
public class DB2Query extends AbstractDbQuery {
    @Override
    public Sql tableList(String tableName, String tableComment, String orderByColumn, String isAsc) {
        String sqlstr = "select TABNAME as table_name, CREATE_TIME as create_time, ALTER_TIME as update_time  FROM SYSCAT.TABLES " +
                "where OWNER <> 'SYSIBM'";
        if (Strings.isNotBlank(tableName)) {
            tableName = tableName.toUpperCase();
            sqlstr += "and TABNAME like @TABNAME";
        }
        if (Strings.isNotBlank(tableComment)) {
            sqlstr += "and REMARKS like @REMARKS";
        }
        if(Strings.isNotBlank(orderByColumn)) {
            if(Strings.isBlank(isAsc)){
                isAsc = "asc";
            }
            sqlstr += " order by " + orderByColumn + " " + isAsc;
        }
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("TABNAME", "%" + tableName + "%");
        sql.params().set("REMARKS", "%" + tableComment + "%");
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }

    @Override
    public Sql tableByName(String tableName) {
        String sqlstr = "select TABNAME as table_name, REMARKS as table_comment FROM SYSCAT.TABLES " +
                "WHERE TABNAME = @tableName";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("tableName", tableName);
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }

    @Override
    public Sql tableColumnsByName(String tableName) {
        String sqlstr = "select COLNAME as column_name, TYPENAME as data_type, REMARKS as column_comment " +
                "FROM syscat.columns " +
                "WHERE TABNAME = @tableName ORDER BY COLNO";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("tableName", tableName);
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }

    @Override
    public Sql getPrimaryKey(String tableName) {
        String sqlstr = "SELECT colname as column_name FROM syscat.keycoluse " +
                "WHERE TABNAME = @tableName";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("tableName", tableName);
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }
}
