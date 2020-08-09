package io.nutz.nutzsite.module.tool.gen.services.impl;

import io.nutz.nutzsite.common.base.Globals;
import io.nutz.nutzsite.common.config.GenConfig;
import io.nutz.nutzsite.common.config.VelocityInitializer;
import io.nutz.nutzsite.common.exception.ErrorException;
import io.nutz.nutzsite.common.page.TableDataInfo;
import io.nutz.nutzsite.common.utils.GenUtils;
import io.nutz.nutzsite.common.utils.StringUtils;
import io.nutz.nutzsite.module.tool.gen.converts.ITypeConvert;
import io.nutz.nutzsite.module.tool.gen.converts.TypeConvertRegistry;
import io.nutz.nutzsite.module.tool.gen.models.ColumnInfo;
import io.nutz.nutzsite.module.tool.gen.models.TableInfo;
import io.nutz.nutzsite.module.tool.gen.querys.DbQueryRegistry;
import io.nutz.nutzsite.module.tool.gen.querys.IDbQuery;
import io.nutz.nutzsite.module.tool.gen.services.GenService;
import org.apache.commons.io.IOUtils;
import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.Velocity;
import org.nutz.dao.Cnd;
import org.nutz.dao.DB;
import org.nutz.dao.Dao;
import org.nutz.dao.Sqls;
import org.nutz.dao.entity.Entity;
import org.nutz.dao.entity.MappingField;
import org.nutz.dao.entity.Record;
import org.nutz.dao.pager.Pager;
import org.nutz.dao.sql.Sql;
import org.nutz.dao.util.Daos;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.util.*;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/**
 *
 * @author Haiming
 */
@IocBean
public class GenServiceImpl implements GenService {
    /**
     * 注入同名的一个ioc对象
     */
    @Inject
    protected Dao dao;

    /**
     * 数据库信息查询
     */
    private static IDbQuery dbQuery;

    /**
     * 类型转换
     */
    private static ITypeConvert typeConvert;


    /**
     * sql 查询抽象类 接口实现
     * @return
     */
    private synchronized IDbQuery getDbQuery() {
        if (null == dbQuery) {
            DbQueryRegistry dbQueryRegistry = new DbQueryRegistry();
            // 默认 MYSQL
            dbQuery = Optional.ofNullable(dbQueryRegistry.getDbQuery(dao.meta().getType()))
                    .orElseGet(() -> dbQueryRegistry.getDbQuery(DB.MYSQL));
        }
        return dbQuery;
    }

    /**
     * 数据库类型抽象类 封装 实现
     * @return
     */
    private synchronized  ITypeConvert getTypeConvert() {
        if (null == typeConvert) {
            TypeConvertRegistry typeConvertRegistry = new TypeConvertRegistry();
            // 默认 MYSQL
            typeConvert = Optional.ofNullable(typeConvertRegistry.getTypeConvert(dao.meta().getType()))
                    .orElseGet(() -> typeConvertRegistry.getTypeConvert(DB.MYSQL));
        }
        return typeConvert;
    }


    /**
     * 查询数据库表信息
     *
     * @param tableName
     * @param tableComment
     * @param pageNumber
     * @param pageSize
     * @return
     */
    @Override
    public TableDataInfo selectTableList(String tableName, String tableComment, int pageNumber, int pageSize,
                                         String orderByColumn, String isAsc) {
        if(Strings.isNotBlank(orderByColumn)){
            MappingField field =dao.getEntity(TableInfo.class).getField(orderByColumn);
            orderByColumn = field.getColumnName();
        }
        Sql sql = getDbQuery().tableList(tableName,tableComment,orderByColumn,isAsc);
        Entity<TableInfo> entity = dao.getEntity(TableInfo.class);
        Pager pager = dao.createPager(pageNumber, pageSize);
        //记录数需手动设置
        pager.setRecordCount((int) Daos.queryCount(dao, sql));
        sql.setPager(pager);
        sql.setEntity(entity).setCondition(Cnd.wrap(sql.getSourceSql()));
        dao.execute(sql);
        return new TableDataInfo(sql.getList(TableInfo.class), pager.getRecordCount());
    }


    /**
     * 根据表名称查询信息
     *
     * @param tableName
     * @return
     */
    private TableInfo selectTableByName(String tableName) {
        Sql sql = getDbQuery().tableByName(tableName);
        Entity<TableInfo> entity = dao.getEntity(TableInfo.class);
        sql.setEntity(entity);
        dao.execute(sql);
        return sql.getObject(TableInfo.class);
    }

    /**
     * 根据表名称查询列信息
     *
     * @param tableName 表名称
     * @return 列信息
     */
    private List<ColumnInfo> selectTableColumnsByName(String tableName) {
        Sql sql = getDbQuery().tableColumnsByName(tableName);
        Entity<ColumnInfo> entity = dao.getEntity(ColumnInfo.class);
        sql.setEntity(entity);
        dao.execute(sql);
        return sql.getList(ColumnInfo.class);
    }

    /**
     * 查询主键
     * @param tableName
     * @return
     */
    private String getPrimaryKey(String tableName) {
        try{
            Sql sql = getDbQuery().getPrimaryKey(tableName);
            Entity<Record> entity = dao.getEntity(Record.class);
            sql.setEntity(entity);
            dao.execute(sql);
            List<Record> list = sql.getList(Record.class);
            if(Lang.isNotEmpty(list) && list.size() >0){
                return list.get(0).getString("column_name");
            }
        }catch (Exception e){
//            e.printStackTrace();
        }
        return null;
    }

    /**
     * 初始化列信息
     * @param columns
     * @return
     */
    private List<ColumnInfo> initColumns(List<ColumnInfo> columns){
        // 列信息
        List<ColumnInfo> columsList = new ArrayList<>();
        for (ColumnInfo column : columns) {
            // 列名转换成Java属性名
            String attrName = StringUtils.convertToCamelCase(column.getColumnName());
            column.setAttrName(attrName);
            column.setAttrname(StringUtils.uncapitalize(attrName));
            String attrType = getTypeConvert().processTypeConvert(column.getDataType()).getType();
            column.setAttrType(attrType);
            //为空设置默认值
            if (Strings.isBlank(column.getColumnComment())) {
                column.setColumnComment(column.getColumnName());
            }
            columsList.add(column);
        }
        return columsList;
    }


    /**
     * 初始化 TableInfo 数据
     * @param table
     * @param columns
     * @return
     */
    private TableInfo initTable(TableInfo table, List<ColumnInfo> columns){
        // 表名转换成Java属性名
        String className = GenUtils.tableToJava(table.getTableName());
        table.setClassName(className);
        table.setClassname(StringUtils.uncapitalize(className));
        //设置表备注
        if (Strings.isBlank(table.getTableComment())) {
            table.setTableComment(table.getTableComment());
        }
        // 列信息
        table.setColumns(initColumns(columns));
        // 设置主键
        String key = this.getPrimaryKey(table.getTableName());
        if(Strings.isNotBlank(key)){
            for(ColumnInfo c:columns){
                if(key.equalsIgnoreCase(c.getColumnName())){
                    table.setPrimaryKey(c);
                }
            }
        }else {
            table.setPrimaryKey(table.getColumnsLast());
        }
        return table;
    }

    /**
     * 生成代码
     *
     * @param table
     * @param columns
     * @param zip
     * @param templates 模板列表
     */
    private void coding(TableInfo table, List<ColumnInfo> columns, ZipOutputStream zip, List<String> templates) {
        table = initTable(table,columns);
        VelocityInitializer.initVelocity();
        String packageName = GenConfig.getPackageName();
        String moduleName = GenUtils.getModuleName(packageName);
        VelocityContext context = GenUtils.getVelocityContext(table);

        // 获取模板列表
//        List<String> templates = GenUtils.getListTemplates();
        for (String template : templates) {
            // 渲染模板
            StringWriter sw = new StringWriter();
            Template tpl = Velocity.getTemplate(template, Globals.UTF8);
            tpl.merge(context, sw);
            try {
                // 添加到zip
                zip.putNextEntry(new ZipEntry(GenUtils.getFileName(template, table, moduleName)));
                IOUtils.write(sw.toString(), zip, Globals.UTF8);
                IOUtils.closeQuietly(sw);
                zip.closeEntry();
            } catch (IOException e) {
                e.printStackTrace();
                throw new ErrorException("渲染模板失败，表名：" + table.getTableName());
            }
        }
    }


    /**
     * 生成代码
     *
     * @param tableName
     * @return
     */
    @Override
    public byte[] generatorCode(String tableName, List<String> templates) {
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        ZipOutputStream zip = new ZipOutputStream(outputStream);
        // 查询表信息
        TableInfo table = this.selectTableByName(tableName);
        // 查询列信息
        List<ColumnInfo> columns = this.selectTableColumnsByName(tableName);
        if (Lang.isNotEmpty(table) && Lang.isNotEmpty(columns)) {
            // 生成代码
            coding(table, columns, zip, templates);
            IOUtils.closeQuietly(zip);
        }
        return outputStream.toByteArray();
    }

    /**
     * 生成代码预览
     * @param tableName
     * @param templates
     * @return
     */
    @Override
    public Map<String, String> previewCode(String tableName, List<String> templates){
        Map<String, String> dataMap = new LinkedHashMap<>();
        // 查询表信息
        TableInfo table = this.selectTableByName(tableName);
        // 查询列信息
        List<ColumnInfo> columns = this.selectTableColumnsByName(tableName);
        if (Lang.isNotEmpty(table) && Lang.isNotEmpty(columns)) {
            // 生成代码
            table = initTable(table,columns);

            VelocityInitializer.initVelocity();
            VelocityContext context = GenUtils.getVelocityContext(table);

            for (String template : templates) {
                // 渲染模板
                StringWriter sw = new StringWriter();
                Template tpl = Velocity.getTemplate(template, Globals.UTF8);
                tpl.merge(context, sw);
                dataMap.put(template, sw.toString());
            }
            return dataMap;
        }
        return null;
    }
}
