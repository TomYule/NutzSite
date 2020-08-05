package io.nutz.nutzsite.module.tool.gen.querys;

import org.nutz.dao.Sqls;
import org.nutz.dao.sql.Sql;
import org.nutz.lang.Strings;

/**
 * @author Haiming
 * @date 2020/8/5 11:25 AM
 */
public class PostgreSqlQuery extends AbstractDbQuery {
    @Override
    public Sql tableList(String tableName, String tableComment, String orderByColumn, String isAsc) {
        String sqlstr = "SELECT A.tablename as table_name, obj_description(relfilenode, 'pg_class') AS table_comment " +
                "FROM pg_tables A, pg_class B " +
                "WHERE A.schemaname='public' and A.tablename = B.relname";
        if (Strings.isNotBlank(tableName)) {
            tableName = tableName.toUpperCase();
            sqlstr += "and A.tablename = like @TABNAME";
        }
//        if (Strings.isNotBlank(tableComment)) {
//            sqlstr += "and REMARKS like @REMARKS";
//        }

        sqlstr += " order by A.tablename asc";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("TABNAME", "%" + tableName + "%");
        sql.params().set("REMARKS", "%" + tableComment + "%");
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }

    @Override
    public Sql tableByName(String tableName) {
        String sqlstr = "SELECT A.tablename as table_name, obj_description(relfilenode, 'pg_class') AS table_comment " +
                "FROM pg_tables A, pg_class B " +
                "WHERE A.schemaname='public' and A.tablename = B.relname";
        sqlstr += " and A.tablename = @TABNAME";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("TABNAME", tableName);
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }

    @Override
    public Sql tableColumnsByName(String tableName) {
        String sqlstr = "SELECT A.attname AS column_name ,format_type (A.atttypid,A.atttypmod) AS data_type,col_description (A.attrelid,A.attnum) AS column_comment," +
                "(CASE WHEN (SELECT COUNT (*) FROM pg_constraint AS PC WHERE A.attnum = PC.conkey[1] AND PC.contype = 'p') > 0 THEN 'PRI' ELSE '' END) AS key " +
                "FROM pg_class AS C,pg_attribute AS A " +
                "WHERE A.attrelid = @tableName ::regclass and A.attrelid= C.oid AND A.attnum> 0 AND NOT A.attisdropped ORDER  BY A.attnum";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("tableName", tableName);
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }

    @Override
    public Sql getPrimaryKey(String tableName) {
        String sqlstr = "SELECT\n" +
//                "    pg_constraint.conname AS pk_name,\n" +
                "    pg_attribute.attname AS colname\n" +
//                " ,   pg_type.typname AS typename\n" +
                "FROM\n" +
                "    pg_constraint\n" +
                "INNER JOIN pg_class ON pg_constraint.conrelid = pg_class.oid\n" +
                "INNER JOIN pg_attribute ON pg_attribute.attrelid = pg_class.oid\n" +
                "AND pg_attribute.attnum = pg_constraint.conkey [ 1 ]\n" +
                "INNER JOIN pg_type ON pg_type.oid = pg_attribute.atttypid\n" +
                "WHERE\n" +
                "    pg_class.relname  = @tableName \n" +
                "AND pg_constraint.contype = 'p'";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("tableName", tableName);
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }
}
