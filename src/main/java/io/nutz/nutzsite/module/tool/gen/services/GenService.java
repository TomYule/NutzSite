package io.nutz.nutzsite.module.tool.gen.services;

import io.nutz.nutzsite.common.base.Globals;
import io.nutz.nutzsite.common.config.GenConfig;
import io.nutz.nutzsite.common.config.VelocityInitializer;
import io.nutz.nutzsite.common.exception.base.BaseException;
import io.nutz.nutzsite.common.page.TableDataInfo;
import io.nutz.nutzsite.common.utils.GenUtils;
import io.nutz.nutzsite.common.utils.StringUtils;
import io.nutz.nutzsite.module.tool.gen.models.ColumnInfo;
import io.nutz.nutzsite.module.tool.gen.models.TableInfo;
import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.Velocity;
import org.nutz.dao.Cnd;
import org.nutz.dao.Dao;
import org.nutz.dao.Sqls;
import org.nutz.dao.entity.Entity;
import org.nutz.dao.pager.Pager;
import org.nutz.dao.sql.Sql;
import org.nutz.dao.util.Daos;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.apache.commons.io.IOUtils;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

@IocBean
public class GenService {
    /**
     * 注入同名的一个ioc对象
     */
    @Inject
    protected Dao dao;

    /**
     * 查询数据库表信息
     *
     * @param tableName
     * @param tableComment
     * @param pageNumber
     * @param pageSize
     * @return
     */
    public TableDataInfo selectTableList(String tableName, String tableComment, int pageNumber, int pageSize) {
        String sqlstr = "select table_name, table_comment, create_time, update_time from information_schema.tables " +
                "where table_comment <> '' and table_schema = (select database()) ";
        if (Strings.isNotBlank(tableName)) {
            sqlstr += "and table_name like @tableName";
        }
        if (Strings.isNotBlank(tableComment)) {
            sqlstr += "and table_comment like @tableComment";
        }
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("tableName", "%" + tableName + "%");
        sql.params().set("tableComment", "%" + tableComment + "%");
        sql.setCallback(Sqls.callback.entities());
        Entity<TableInfo> entity = dao.getEntity(TableInfo.class);

        Pager pager = dao.createPager(pageNumber, pageSize);
        //记录数需手动设置
        pager.setRecordCount((int) Daos.queryCount(dao, sql));
        sql.setPager(pager);
        sql.setEntity(entity).setCondition(Cnd.wrap(sqlstr));
        dao.execute(sql);
//        return sql.getList(TableInfo.class);
        return new TableDataInfo(sql.getList(TableInfo.class), pager.getRecordCount());
    }

    /**
     * 根据表名称查询信息
     *
     * @param tableName
     * @return
     */
    public TableInfo selectTableByName(String tableName) {
        String sqlstr = "select table_name, table_comment, create_time, update_time from information_schema.tables " +
                "where table_comment <> '' and table_schema = (select database()) and table_name = @tableName";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("tableName", tableName);
        sql.setCallback(Sqls.callback.entities());
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
    public List<ColumnInfo> selectTableColumnsByName(String tableName) {
        String sqlstr = "select column_name, data_type, column_comment from information_schema.columns " +
                "where table_name = @tableName and table_schema = (select database()) order by ordinal_position";
        Sql sql = Sqls.create(sqlstr);
        sql.params().set("tableName", tableName);
        sql.setCallback(Sqls.callback.entities());
        Entity<ColumnInfo> entity = dao.getEntity(ColumnInfo.class);
        sql.setEntity(entity);
        dao.execute(sql);
        return sql.getList(ColumnInfo.class);
    }

    /**
     * 生成代码
     *
     * @param tableName
     * @return
     */
    public byte[] generatorCode(String tableName) {
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        ZipOutputStream zip = new ZipOutputStream(outputStream);
        // 查询表信息
        TableInfo table = this.selectTableByName(tableName);
        // 查询列信息
        List<ColumnInfo> columns = this.selectTableColumnsByName(tableName);
        if(StringUtils.isNotNull(table) && StringUtils.isNotNull(columns)){
            // 生成代码
            coding(table, columns, zip);
            IOUtils.closeQuietly(zip);
        }
        return outputStream.toByteArray();
    }

    /**
     * 生成代码
     */
    public void coding(TableInfo table, List<ColumnInfo> columns, ZipOutputStream zip) {
        // 表名转换成Java属性名
        String className = GenUtils.tableToJava(table.getTableName());
        table.setClassName(className);
        table.setClassname(StringUtils.uncapitalize(className));
        // 列信息
        table.setColumns(GenUtils.transColums(columns));
        // 设置主键
        table.setPrimaryKey(table.getColumnsLast());

        VelocityInitializer.initVelocity();
        String packageName = GenConfig.getPackageName();
        String moduleName = GenUtils.getModuleName(packageName);
        VelocityContext context = GenUtils.getVelocityContext(table);

        // 获取模板列表
        List<String> templates = GenUtils.getTemplates();
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
                throw new BaseException("渲染模板失败，表名：" + table.getTableName(), e.getMessage());
            }
        }
    }

}
