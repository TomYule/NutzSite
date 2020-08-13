package io.nutz.nutzsite.module.tool.gen.querys;

import io.nutz.nutzsite.common.config.GenConfig;
import org.nutz.dao.Sqls;
import org.nutz.dao.sql.Sql;
import org.nutz.lang.Strings;

/**
 * @author Haiming
 * @date 2020/8/11 8:33 PM
 */
public class OracleQuery extends AbstractDbQuery {

    @Override
    public Sql tableList(String tableName, String tableComment, String orderByColumn, String isAsc) {
        String sqlstr = "SELECT TABLE_NAME , COMMENTS as table_comment FROM ALL_TAB_COMMENTS where not regexp_like(OWNER,'SYS|SYSTEM|OUTLN|XDB|HR|APEX')";
        if (Strings.isNotBlank(tableName)) {
            tableName = tableName.toUpperCase();
            sqlstr += "and TABLE_NAME like @TABNAME";
        }
        if (Strings.isNotBlank(tableComment)) {
            sqlstr += "and COMMENTS like @REMARKS";
        }
        sqlstr += " order by TABLE_NAME asc";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("TABNAME", "%" + tableName + "%");
        sql.params().set("REMARKS", "%" + tableComment + "%");
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }

    @Override
    public Sql tableByName(String tableName) {
        String sqlstr = "SELECT TABLE_NAME , COMMENTS as table_comment FROM ALL_TAB_COMMENTS where TABLE_NAME = @TABNAME ";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("TABNAME",tableName);
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }

    @Override
    public Sql tableColumnsByName(String tableName) {
        String schema = GenConfig.getSchema();
        String sqlstr = "SELECT" +
                "  A.COLUMN_NAME," +
                "  CASE WHEN A.DATA_TYPE = 'NUMBER'" +
                "    THEN" +
                "      (CASE WHEN A.DATA_PRECISION IS NULL" +
                "        THEN A.DATA_TYPE" +
                "       WHEN NVL(A.DATA_SCALE, 0) > 0" +
                "         THEN A.DATA_TYPE || '(' || A.DATA_PRECISION || ',' || A.DATA_SCALE || ')'" +
                "       ELSE A.DATA_TYPE || '(' || A.DATA_PRECISION || ')' END)" +
                "  ELSE A.DATA_TYPE END           DATA_TYPE," +
                "  B.COMMENTS" +
                " FROM ALL_TAB_COLUMNS A" +
                "  INNER JOIN ALL_COL_COMMENTS B ON A.TABLE_NAME = B.TABLE_NAME AND A.COLUMN_NAME = B.COLUMN_NAME AND B.OWNER =  '"+ schema +"' " +
                "  LEFT JOIN ALL_CONSTRAINTS D ON D.TABLE_NAME = A.TABLE_NAME AND D.CONSTRAINT_TYPE = 'P' AND D.OWNER = '"+ schema +"' " +
                " WHERE A.OWNER =  '"+ schema +"' AND A.TABLE_NAME=@TABNAME " +
                " ORDER BY A.COLUMN_ID ";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("TABNAME", tableName);
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }

    @Override
    public Sql getPrimaryKey(String tableName) {
        String sqlstr = "select  col.COLUMN_NAME AS column_comment from user_constraints con,user_cons_columns col " +
                "where con.constraint_name=col.constraint_name and con.constraint_type='P' and col.table_name=@TABNAME " +
                "ORDER BY POSITION ASC";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("TABNAME",tableName);
        sql.setCallback(Sqls.callback.entities());
        return sql;
    }
}
