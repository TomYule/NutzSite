package io.nutz.nutzsite.module.tool.gen.converts;

import org.nutz.dao.DB;

import java.util.EnumMap;
import java.util.Map;

/**
 *
 * @author Haiming
 * @date 2020/8/4 4:31 PM
 */
public class TypeConvertRegistry  {

    private final Map<DB, ITypeConvert> type_convert_enum_map = new EnumMap<>(DB.class);

    public TypeConvertRegistry() {
        type_convert_enum_map.put(DB.MYSQL, new MySqlTypeConvert());
//        type_convert_enum_map.put(DB.ORACLE, new OracleTypeConvert());
        type_convert_enum_map.put(DB.SQLSERVER, new SqlServerTypeConvert());
        type_convert_enum_map.put(DB.PSQL, new PostgreSqlTypeConvert());
        type_convert_enum_map.put(DB.DB2, new DB2TypeConvert());
//        type_convert_enum_map.put(DB.SQLITE, new SqliteTypeConvert());
//        type_convert_enum_map.put(DB.DM, new DmTypeConvert());
//        type_convert_enum_map.put(DB.MARIADB, new MySqlTypeConvert());
//        type_convert_enum_map.put(DB.KINGBASE_ES, new KingbaseESTypeConvert());
//        type_convert_enum_map.put(DB.GAUSS, new GaussTypeConvert());
    }

    public ITypeConvert getTypeConvert(DB dbType) {
        return type_convert_enum_map.get(dbType);
    }
}
