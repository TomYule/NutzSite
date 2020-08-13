package io.nutz.nutzsite.module.tool.gen.querys;

import org.nutz.dao.DB;

import java.util.EnumMap;
import java.util.Map;


/**
 * @author Haiming
 * @date 2020/8/4 11:45 AM
 */
public class DbQueryRegistry {

    private final Map<DB, IDbQuery> db_query_enum_map = new EnumMap<>(DB.class);

    public DbQueryRegistry() {
        db_query_enum_map.put(DB.MYSQL, new MySqlQuery());

        db_query_enum_map.put(DB.ORACLE, new OracleQuery());
        db_query_enum_map.put(DB.SQLSERVER, new SqlServerQuery());
        db_query_enum_map.put(DB.PSQL, new PostgreSqlQuery());
        db_query_enum_map.put(DB.DB2, new DB2Query());
//        db_query_enum_map.put(DbType.MARIADB, new MariadbQuery());
        db_query_enum_map.put(DB.H2, new H2Query());
//        db_query_enum_map.put(DbType.SQLITE, new SqliteQuery());
//        db_query_enum_map.put(DbType.DM, new DMQuery());
//        db_query_enum_map.put(DbType.KINGBASE_ES, new KingbaseESQuery());
//        db_query_enum_map.put(DbType.GAUSS, new GaussQuery());
    }

    public IDbQuery getDbQuery(DB dbType) {
        return db_query_enum_map.get(dbType);
    }
}