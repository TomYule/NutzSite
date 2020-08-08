package io.nutz.nutzsite.module.tool.gen.querys;

import org.nutz.dao.Sqls;
import org.nutz.dao.sql.Sql;
import org.nutz.lang.Strings;

/**
 * @author Haiming
 * @date 2020/8/4 8:02 PM
 */
public class H2Query extends AbstractDbQuery {
    @Override
    public Sql tableList(String tableName, String tableComment, String orderByColumn, String isAsc) {
        String sqlstr = "select TABLE_NAME as table_name,  REMARKS as table_comment  from INFORMATION_SCHEMA.INDEXES ";
//        String sqlstr = "select * from INFORMATION_SCHEMA.INDEXES ";
        if (Strings.isNotBlank(tableName)) {
            tableName = tableName.toUpperCase();
            sqlstr += "where TABLE_NAME like @tableName";
        }
//        if(Strings.isNotBlank(orderByColumn)) {
//            if(Strings.isBlank(isAsc)){
//                isAsc = "asc";
//            }
//            sqlstr += " order by " + orderByColumn + " " + isAsc;
//        }
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("TABNAME", "%" + tableName + "%");
        sql.params().set("REMARKS", "%" + tableComment + "%");
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }

    @Override
    public Sql tableByName(String tableName) {
        String sqlstr = "select TABLE_NAME as table_name,  REMARKS as table_comment  from INFORMATION_SCHEMA.INDEXES " +
                "WHERE TABLE_NAME = @tableName order by ORDINAL_POSITION";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("tableName", tableName.toUpperCase());
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }

    @Override
    public Sql tableColumnsByName(String tableName) {
        String sqlstr = "SELECT COLUMN_NAME  as column_name, TYPE_NAME as data_type, REMARKS as column_comment  " +
                "FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME =  @tableName order by ORDINAL_POSITION";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("tableName", tableName.toUpperCase());
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }

    @Override
    public Sql getPrimaryKey(String tableName) {
        String sqlstr = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE TABLE_NAME =  @tableName";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("tableName", tableName.toUpperCase());
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }
}
