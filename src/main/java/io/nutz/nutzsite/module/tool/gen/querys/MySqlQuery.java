package io.nutz.nutzsite.module.tool.gen.querys;

import org.nutz.dao.Sqls;
import org.nutz.dao.sql.Sql;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;


/**
 * @author Haiming
 * @date 2020/8/4 10:34 AM
 */
public class MySqlQuery extends AbstractDbQuery {


    @Override
    public Sql tableList(String tableName, String tableComment, String orderByColumn, String isAsc) {
        String sqlstr = "select table_name, table_comment, create_time, update_time from information_schema.tables " +
                "where table_schema = (select database()) ";
        if (Strings.isNotBlank(tableName)) {
            sqlstr += "and table_name like @tableName";
        }
        if (Strings.isNotBlank(tableComment)) {
            sqlstr += "and table_comment like @tableComment";
        }
        if(Lang.isNotEmpty(orderByColumn)) {
            if(Strings.isBlank(isAsc)){
                isAsc = "asc";
            }
            sqlstr += " order by " + orderByColumn + " " + isAsc;
        }
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("tableName", "%" + tableName + "%");
        sql.params().set("tableComment", "%" + tableComment + "%");
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }

    @Override
    public Sql tableByName(String tableName) {
        String sqlstr = "select table_name, table_comment, create_time, update_time from information_schema.tables " +
                "where table_schema = (select database()) and table_name = @tableName";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("tableName", tableName);
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }

    @Override
    public Sql tableColumnsByName(String tableName) {
        String sqlstr = "select column_name, data_type, column_comment from information_schema.columns " +
                "where table_name = @tableName and table_schema = (select database()) order by ordinal_position";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("tableName", tableName);
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }

    @Override
    public Sql getPrimaryKey(String tableName) {
        String sqlstr ="SELECT column_name FROM INFORMATION_SCHEMA.`KEY_COLUMN_USAGE`" +
                " WHERE  table_name = @tableName  AND constraint_name='PRIMARY'";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("tableName", tableName);
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }
}
