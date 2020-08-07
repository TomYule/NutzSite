package io.nutz.nutzsite.module.tool.gen.querys;

import org.nutz.dao.Sqls;
import org.nutz.dao.sql.Sql;
import org.nutz.lang.Strings;

/**
 *
 * @author Haiming
 * @date 2020/8/7 11:45 AM
 */
public class SqlServerQuery extends AbstractDbQuery {
    @Override
    public Sql tableList(String tableName, String tableComment, String orderByColumn, String isAsc) {
        String sqlstr = "select cast(so.name as varchar(500)) as table_name, cast(sep.value as varchar(500)) as table_comment " +
                " from sysobjects so " +
                "left JOIN sys.extended_properties sep on sep.major_id=so.id and sep.minor_id=0 " +
                "where so.id not like '%-%'and (xtype='U' or xtype='v') ";
        if (Strings.isNotBlank(tableName)) {
            tableName = tableName.toUpperCase();
            sqlstr += "and so.name like @TABNAME ";
        }
//        sqlstr +=" order by so.name asc";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("TABNAME", "%" + tableName + "%");
        sql.params().set("REMARKS", "%" + tableComment + "%");
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }

    @Override
    public Sql tableByName(String tableName) {
        String sqlstr = "select cast(so.name as varchar(500)) as table_name, cast(sep.value as varchar(500)) as table_comment " +
                " from sysobjects so " +
                "left JOIN sys.extended_properties sep on sep.major_id=so.id and sep.minor_id=0 " +
                "where (xtype='U' or xtype='v') and so.name = @TABNAME";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("TABNAME",tableName);
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }

    @Override
    public Sql tableColumnsByName(String tableName) {
        String sqlstr = "SELECT cast(b.name AS VARCHAR(500))         AS column_name,\n" +
                "  cast(c.VALUE AS NVARCHAR(500))       AS column_comment,\n" +
                "  cast(sys.types.name AS VARCHAR(500)) AS DATA_TYPE\n" +
                "FROM (select  name, object_id from sys.tables UNION all select  name, object_id from sys.views) a\n" +
                "  INNER JOIN sys.columns b ON b.object_id = a.object_id\n" +
                "  LEFT JOIN sys.types ON b.user_type_id = sys.types.user_type_id\n" +
                "  LEFT JOIN sys.extended_properties c ON c.major_id = b.object_id AND c.minor_id = b.column_id\n" +
                "WHERE a.name = @TABNAME and sys.types.name != 'sysname' order by b.column_id asc";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("TABNAME", tableName);
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }

    @Override
    public Sql getPrimaryKey(String tableName) {
        String sqlstr = "SELECT COLUMN_NAME as column_name FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE TABLE_NAME = @tableName";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("tableName", tableName);
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }
}
