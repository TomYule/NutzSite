package io.nutz.nutzsite.module.tool.gen.converts;

import io.nutz.nutzsite.module.tool.gen.converts.type.DbColumnType;
import io.nutz.nutzsite.module.tool.gen.converts.type.IColumnType;

/**
 * @author Haiming
 * @date 2020/8/4 5:39 PM
 */
public class DB2TypeConvert implements ITypeConvert {

    @Override
    public IColumnType processTypeConvert(String fieldType) {
        String t = fieldType.toLowerCase();
        if (t.contains("char")) {
            return DbColumnType.STRING;
        } else if (t.contains("bigint")) {
            return DbColumnType.LONG;
        } else if (t.contains("smallint")) {
            return DbColumnType.BASE_SHORT;
        } else if (t.contains("int")) {
            return DbColumnType.INTEGER;
        } else if (t.contains("date") || t.contains("time")
                || t.contains("year") || t.contains("timestamp")) {
            return DbColumnType.DATE;
        } else if (t.contains("text")) {
            return DbColumnType.STRING;
        } else if (t.contains("bit")) {
            return DbColumnType.BOOLEAN;
        } else if (t.contains("decimal")) {
            return DbColumnType.BIG_DECIMAL;
        } else if (t.contains("clob")) {
            return DbColumnType.CLOB;
        } else if (t.contains("blob")) {
            return DbColumnType.BLOB;
        } else if (t.contains("binary")) {
            return DbColumnType.BYTE_ARRAY;
        } else if (t.contains("float")) {
            return DbColumnType.FLOAT;
        } else if (t.contains("double")) {
            return DbColumnType.DOUBLE;
        } else if (t.contains("json") || t.contains("enum")) {
            return DbColumnType.STRING;
        }
        return DbColumnType.STRING;
    }

}
