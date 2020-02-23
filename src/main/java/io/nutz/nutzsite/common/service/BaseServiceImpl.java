package io.nutz.nutzsite.common.service;

import io.nutz.nutzsite.common.page.TableDataInfo;
import org.nutz.dao.*;
import org.nutz.dao.entity.MappingField;
import org.nutz.dao.pager.Pager;
import org.nutz.dao.util.Daos;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import org.nutz.service.EntityService;

import java.util.List;

/**
 * @author Hamming_Yu on 2018/12/31.
 */
public class BaseServiceImpl<T> extends EntityService<T> implements BaseService<T> {
    protected final static int DEFAULT_PAGE_NUMBER = 10;

    public BaseServiceImpl() {
        super();
    }

    public BaseServiceImpl(Dao dao) {
        super(dao);
    }

    /**
     * 统计符合条件的对象表条数
     *
     * @param cnd
     * @return
     */
    @Override
    public int count(Condition cnd) {
        return this.dao().count(this.getEntityClass(), cnd);
    }

    /**
     * 统计对象表条数
     *
     * @return
     */
    @Override
    public int count() {
        return this.dao().count(this.getEntityClass());
    }

    /**
     * 统计符合条件的记录条数
     *
     * @param tableName
     * @param cnd
     * @return
     */
    @Override
    public int count(String tableName, Condition cnd) {
        return this.dao().count(tableName, cnd);
    }

    /**
     * 统计表记录条数
     *
     * @param tableName
     * @return
     */
    @Override
    public int count(String tableName) {
        return this.dao().count(tableName);
    }

    @Override
    public T fetch(long id) {
        return this.dao().fetch(this.getEntityClass(), id);
    }

    @Override
    public T fetch(String name) {
        return this.dao().fetch(this.getEntityClass(), name);
    }

    @Override
    public T fetchLinks(T t, String name) {
        return this.dao().fetchLinks(t, name);
    }

    @Override
    public List<T> fetchLinks(List<T> t, String name) {
        return this.dao().fetchLinks(t, name);
    }

    @Override
    public T fetchLinks(T t, String name, Condition cnd) {
        return this.dao().fetchLinks(t, name, cnd);
    }

    @Override
    public T insert(T t) {
        return this.dao().insert(t);
    }

    @Override
    public void insert(String tableName, Chain chain) {
        this.dao().insert(tableName, chain);
    }

    @Override
    public T fastInsert(T t) {
        return this.dao().fastInsert(t);
    }


    /**
     * 查询获取部分字段
     *
     * @param fieldName 支持通配符 ^(a|b)$
     * @param cnd
     * @return
     */
    @Override
    public List<T> query(String fieldName, Condition cnd) {
        return Daos.ext(this.dao(), FieldFilter.create(this.getEntityClass(), fieldName))
                .query(this.getEntityClass(), cnd);
    }

    /**
     * 查询一组对象。你可以为这次查询设定条件
     *
     * @param cnd WHERE 条件。如果为 null，将获取全部数据，顺序为数据库原生顺序<br>
     *            只有在调用这个函数的时候， cnd.limit 才会生效
     * @return 对象列表
     */
    @Override
    public List<T> query(Condition cnd) {
        return dao().query(getEntityClass(), cnd);
    }


    /**
     * 获取全部数据
     *
     * @return
     */
    @Override
    public List<T> query() {
        return dao().query(getEntityClass(), null);
    }


    /**
     * 获取表及关联表全部数据
     *
     * @param cnd      查询条件
     * @param linkName 关联字段，支持正则 ^(a|b)$
     * @return
     */
    @Override
    public List<T> query(Condition cnd, String linkName) {
        List<T> list = this.dao().query(this.getEntityClass(), cnd);
        if (!Strings.isBlank(linkName)) {
            this.dao().fetchLinks(list, linkName);
        }
        return list;
    }

    /**
     * 获取表及关联表全部数据(支持子查询)
     *
     * @param cnd      查询条件
     * @param linkName 关联字段，支持正则 ^(a|b)$
     * @param linkCnd  关联条件
     * @return
     */
    @Override
    public List<T> query(Condition cnd, String linkName, Condition linkCnd) {
        List<T> list = this.dao().query(this.getEntityClass(), cnd);
        if (!Strings.isBlank(linkName)) {
            this.dao().fetchLinks(list, linkName, linkCnd);
        }
        return list;
    }

    /**
     * 获取表及关联表全部数据
     *
     * @param linkName 关联字段，支持正则 ^(a|b)$
     * @return
     */
    @Override
    public List<T> query(String linkName) {
        return this.query(null, linkName);
    }


    /**
     * 分页关联字段查询
     *
     * @param cnd      查询条件
     * @param linkName 关联字段，支持正则 ^(a|b)$
     * @param pager    分页对象
     * @return
     */
    @Override
    public List<T> query(Condition cnd, String linkName, Pager pager) {
        List<T> list = this.dao().query(this.getEntityClass(), cnd, pager);
        if (!Strings.isBlank(linkName)) {
            this.dao().fetchLinks(list, linkName);
        }
        return list;
    }

    /**
     * 分页关联字段查询(支持关联条件)
     *
     * @param cnd      查询条件
     * @param linkName 关联字段，支持正则 ^(a|b)$
     * @param linkCnd  关联条件
     * @param pager    分页对象
     * @return
     */
    @Override
    public List<T> query(Condition cnd, String linkName, Condition linkCnd, Pager pager) {
        List<T> list = this.dao().query(this.getEntityClass(), cnd, pager);
        if (!Strings.isBlank(linkName)) {
            this.dao().fetchLinks(list, linkName, linkCnd);
        }
        return list;
    }

    /**
     * 分页查询
     *
     * @param cnd   查询条件
     * @param pager 分页对象
     * @return
     */
    @Override
    public List<T> query(Condition cnd, Pager pager) {
        return dao().query(getEntityClass(), cnd, pager);
    }

    /**
     * 分页查询
     * @param cnd
     * @param pageNumber
     * @param pageSize
     * @return
     */
    @Override
    public List<T> query(Condition cnd, int pageNumber, int pageSize){
        Pager pager = this.dao().createPager(pageNumber, pageSize);
        List<T> list = this.dao().query(this.getEntityClass(), cnd, pager);
        return list;
    }

    /**
     * 更新
     * @param obj
     * @return
     */
    @Override
    public int update(Object obj) {
        return this.dao().update(obj);
    }

    /**
     * 忽略值为null的字段
     *
     * @param obj
     * @return
     */
    @Override
    public int updateIgnoreNull(Object obj) {
        return this.dao().updateIgnoreNull(obj);
    }

    /**
     * 部分更新实体表
     *
     * @param chain
     * @param cnd
     * @return
     */
    @Override
    public int update(Chain chain, Condition cnd) {
        return this.dao().update(this.getEntityClass(), chain, cnd);
    }

    /**
     * 部分更新表
     *
     * @param tableName
     * @param chain
     * @param cnd
     * @return
     */
    @Override
    public int update(String tableName, Chain chain, Condition cnd) {
        return this.dao().update(tableName, chain, cnd);
    }


    @Override
    public int delete(long id) {
        return this.dao().delete(this.getEntityClass(), id);
    }

    @Override
    public int delete(int id) {
        return this.dao().delete(this.getEntityClass(), id);
    }

    @Override
    public int delete(String name) {
        return this.dao().delete(this.getEntityClass(), name);
    }

    /**
     * 批量删除
     *
     * @param ids
     */
    @Override
    public void delete(Integer[] ids) {
        this.dao().clear(getEntityClass(), Cnd.where("id", "in", ids));
    }

    /**
     * 批量删除
     *
     * @param ids
     */
    @Override
    public void delete(Long[] ids) {
        this.dao().clear(getEntityClass(), Cnd.where("id", "in", ids));
    }

    /**
     * 批量删除
     *
     * @param ids
     */
    @Override
    public void delete(String[] ids) {
        this.dao().clear(getEntityClass(), Cnd.where("id", "in", ids));
    }

    /**
     * 伪删除
     *
     * @param id
     * @return
     */
    @Override
    public int vDelete(String id) {
        return this.dao().update(this.getEntityClass(), Chain.make("delFlag", true), Cnd.where("id", "=", id));
    }

    /**
     * 批量伪删除
     *
     * @param ids
     * @return
     */
    @Override
    public int vDelete(String[] ids) {
        return this.dao().update(this.getEntityClass(), Chain.make("delFlag", true), Cnd.where("id", "in", ids));
    }

    /**
     * 默认页码
     *
     * @param pageNumber
     * @return
     */
    protected int getPageNumber(Integer pageNumber) {
        return Lang.isEmpty(pageNumber) ? 1 : pageNumber;
    }

    /**
     * 默认页大小
     *
     * @param pageSize
     * @return
     */
    protected int getPageSize(int pageSize) {
        return pageSize == 0 ? DEFAULT_PAGE_NUMBER : pageSize;
    }

    /**
     * 分页查询
     * @param pageNumber
     * @param pageSize
     * @return
     */
    @Override
    public QueryResult listPage(int pageNumber, int pageSize){
        Pager pager = this.dao().createPager(pageNumber, pageSize);
        List<T> list = this.dao().query(this.getEntityClass(), null, pager);
        pager.setRecordCount(this.dao().count(this.getEntityClass()));
        return new QueryResult(list, pager);
    }

    /**
     * 分页查询
     * @param pageNumber
     * @param pageSize
     * @param cnd
     * @return
     */
    @Override
    public QueryResult listPage(int pageNumber, int pageSize, Condition cnd){
        Pager pager = this.dao().createPager(pageNumber, pageSize);
        List<T> list = this.dao().query(this.getEntityClass(), cnd, pager);
        pager.setRecordCount(this.dao().count(getEntityClass(), cnd));
        return new QueryResult(list, pager);
    }

    @Override
    public QueryResult listPage(int pageNumber, int pageSize, Cnd cnd, String orderByColumn, String isAsc, String linkname){
        Pager pager = this.dao().createPager(pageNumber, pageSize);
        if (Strings.isNotBlank(orderByColumn) && Strings.isNotBlank(isAsc)) {
            MappingField field =dao().getEntity(this.getEntityClass()).getField(orderByColumn);
            if(Lang.isNotEmpty(field)){
                cnd.orderBy(field.getColumnName(),isAsc);
            }
        }
        List<T> list = this.dao().query(this.getEntityClass(), cnd, pager);
        if (!Strings.isBlank(linkname)) {
            this.dao().fetchLinks(list, linkname);
        }
        pager.setRecordCount(this.dao().count(getEntityClass(), cnd));
        return new QueryResult(list, pager);
    }
    /**
     * 分页查询数据封装
     * @param pageNumber
     * @param pageSize
     * @return
     */
    @Override
    public TableDataInfo tableList(Integer pageNumber, Integer pageSize){
        Pager pager=null;
        if(Lang.isNotEmpty(pageNumber) && Lang.isNotEmpty(pageSize)){
            pager = this.dao().createPager(pageNumber, pageSize);
        }
        List<T> list = this.dao().query(this.getEntityClass(), null, pager);
        return new TableDataInfo(list, this.dao().count(this.getEntityClass()));
    }

    /**
     * 分页查询数据封装
     * @param pageNumber
     * @param pageSize
     * @param cnd
     * @return
     */
    @Override
    public TableDataInfo tableList(Integer pageNumber, Integer pageSize, Cnd cnd){
        Pager pager=null;
        if(Lang.isNotEmpty(pageNumber) && Lang.isNotEmpty(pageSize)){
            pager = this.dao().createPager(pageNumber, pageSize);
        }
        List<T> list = this.dao().query(this.getEntityClass(), cnd, pager);
        return new TableDataInfo(list, this.dao().count(this.getEntityClass(),cnd));
    }


    /**
     * 分页查询数据封装 查询关联数据
     *
     * @param pageNumber
     * @param pageSize
     * @param cnd
     * @param linkname
     * @return
     */
    @Override
    public TableDataInfo tableList(Integer pageNumber, Integer pageSize, Cnd cnd, String orderByColumn, String isAsc, String linkname) {
        Pager pager=null;
        if(Lang.isNotEmpty(pageNumber) && Lang.isNotEmpty(pageSize)){
            pager = this.dao().createPager(pageNumber, pageSize);
        }
        if (Strings.isNotBlank(orderByColumn) && Strings.isNotBlank(isAsc)) {
            MappingField field = dao().getEntity(this.getEntityClass()).getField(orderByColumn);
            if (Lang.isNotEmpty(field)) {
                cnd.orderBy(field.getColumnName(), isAsc);
            }
        }
        if (Strings.isBlank(linkname)) {
            List<T> list = this.dao().query(this.getEntityClass(), cnd, pager);
            return new TableDataInfo(list, this.dao().count(this.getEntityClass(), cnd));
        } else {
            List<T> list = this.dao().queryByJoin(this.getEntityClass(), linkname, cnd, pager);
            return new TableDataInfo(list, this.dao().count(this.getEntityClass(), cnd));
        }
    }


    public TableDataInfo tableListFetchLinks(Integer pageNumber, Integer pageSize,Cnd cnd,String orderByColumn,String isAsc,String linkname){
        Pager pager=null;
        if(Lang.isNotEmpty(pageNumber) && Lang.isNotEmpty(pageSize)){
            pager = this.dao().createPager(pageNumber, pageSize);
        }
        if (Strings.isNotBlank(orderByColumn) && Strings.isNotBlank(isAsc)) {
            MappingField field =dao().getEntity(this.getEntityClass()).getField(orderByColumn);
            if(Lang.isNotEmpty(field)){
                cnd.orderBy(field.getColumnName(),isAsc);
            }
        }
        List<T> list = this.dao().query(this.getEntityClass(), cnd, pager);
        if (!Strings.isBlank(linkname)) {
            this.dao().fetchLinks(list, linkname);
        }
        return new TableDataInfo(list, this.dao().count(this.getEntityClass(),cnd));
    }
}
