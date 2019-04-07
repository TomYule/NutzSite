package io.nutz.nutzsite.module.tool.gen.models;

import io.nutz.nutzsite.common.base.Model;
import org.nutz.dao.entity.annotation.Column;

import java.io.Serializable;
import java.util.List;

/**
 * 数据库表
 */
public class TableInfo extends Model implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * 表名称
     */
    @Column("table_name")
    private String tableName;

    /**
     * 表描述
     */
    @Column("table_comment")
    private String tableComment;

    /**
     * 表的主键列信息
     */
    @Column("")
    private ColumnInfo primaryKey;

    /**
     * 表的列名(不包含主键)
     */
    @Column("")
    private List<ColumnInfo> columns;

    /**
     * 类名(第一个字母大写)
     */
    @Column("")
    private String className;

    /**
     * 类名(第一个字母小写)
     */
    @Column("")
    private String classname;

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getTableComment() {
        return tableComment;
    }

    public void setTableComment(String tableComment) {
        this.tableComment = tableComment;
    }

    public ColumnInfo getPrimaryKey() {
        return primaryKey;
    }

    public void setPrimaryKey(ColumnInfo primaryKey) {
        this.primaryKey = primaryKey;
    }

    public List<ColumnInfo> getColumns() {
        return columns;
    }

    public void setColumns(List<ColumnInfo> columns) {
        this.columns = columns;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }
}
