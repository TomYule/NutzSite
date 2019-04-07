package io.nutz.nutzsite.module.tool.gen.services;

import io.nutz.nutzsite.common.page.TableDataInfo;
import io.nutz.nutzsite.module.tool.gen.models.TableInfo;
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

import java.util.List;

@IocBean
public class GenService {
    /**
     * 注入同名的一个ioc对象
     */
    @Inject
    protected Dao dao;

    /**
     * 查询数据库表信息
     * @param tableName
     * @param tableComment
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

        Pager pager =dao.createPager(pageNumber, pageSize);
        //记录数需手动设置
        pager.setRecordCount((int) Daos.queryCount(dao, sql));
        sql.setPager(pager);
        sql.setEntity(entity).setCondition(Cnd.wrap(sqlstr));
        dao.execute(sql);
//        return sql.getList(TableInfo.class);
        return new TableDataInfo(sql.getList(TableInfo.class), pager.getRecordCount());
    }
}
