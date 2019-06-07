package io.nutz.nutzsite.common.base;

import io.nutz.nutzsite.common.page.TableDataInfo;
import io.nutz.nutzsite.common.utils.GenUtils;
import org.nutz.dao.*;
import org.nutz.dao.entity.MappingField;
import org.nutz.dao.pager.Pager;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import org.nutz.service.EntityService;

import java.util.List;

/**
 * @author Hamming_Yu on 2018/12/31.
 */
public class Service<T> extends EntityService<T> {
    protected final static int DEFAULT_PAGE_NUMBER = 10;

    public Service() {
        super();
    }

    public Service(Dao dao) {
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
    public int count(String tableName, Condition cnd) {
        return this.dao().count(tableName, cnd);
    }

    /**
     * 统计表记录条数
     *
     * @param tableName
     * @return
     */
    public int count(String tableName) {
        return this.dao().count(tableName);
    }

    public T fetch(long id) {
        return this.dao().fetch(this.getEntityClass(), id);
    }

    public T fetch(String name) {
        return this.dao().fetch(this.getEntityClass(), name);
    }

    public T fetchLinks(T t, String name) {
        return this.dao().fetchLinks(t, name);
    }

    public List<T> fetchLinks(List<T> t, String name) {
        return this.dao().fetchLinks(t, name);
    }

    public T fetchLinks(T t, String name, Condition cnd) {
        return this.dao().fetchLinks(t, name, cnd);
    }

    public T insert(T t) {
        return this.dao().insert(t);
    }

    public void insert(String tableName, Chain chain) {
        this.dao().insert(tableName, chain);
    }

    public T fastInsert(T t) {
        return this.dao().fastInsert(t);
    }

    /**
     * 更新
     * @param obj
     * @return
     */
    public int update(Object obj) {
        return this.dao().update(obj);
    }

    /**
     * 忽略值为null的字段
     *
     * @param obj
     * @return
     */
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
    public int update(String tableName, Chain chain, Condition cnd) {
        return this.dao().update(tableName, chain, cnd);
    }


    public int delete(long id) {
        return this.dao().delete(this.getEntityClass(), id);
    }

    public int delete(int id) {
        return this.dao().delete(this.getEntityClass(), id);
    }

    public int delete(String name) {
        return this.dao().delete(this.getEntityClass(), name);
    }

    /**
     * 批量删除
     *
     * @param ids
     */
    public void delete(Integer[] ids) {
        this.dao().clear(getEntityClass(), Cnd.where("id", "in", ids));
    }

    /**
     * 批量删除
     *
     * @param ids
     */
    public void delete(Long[] ids) {
        this.dao().clear(getEntityClass(), Cnd.where("id", "in", ids));
    }

    /**
     * 批量删除
     *
     * @param ids
     */
    public void delete(String[] ids) {
        this.dao().clear(getEntityClass(), Cnd.where("id", "in", ids));
    }

    /**
     * 伪删除
     *
     * @param id
     * @return
     */
    public int vDelete(String id) {
        return this.dao().update(this.getEntityClass(), Chain.make("delFlag", true), Cnd.where("id", "=", id));
    }

    /**
     * 批量伪删除
     *
     * @param ids
     * @return
     */
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
    public QueryResult listPage( int pageNumber, int pageSize){
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
    public QueryResult listPage( int pageNumber, int pageSize,Condition cnd){
        Pager pager = this.dao().createPager(pageNumber, pageSize);
        List<T> list = this.dao().query(this.getEntityClass(), cnd, pager);
        pager.setRecordCount(this.dao().count(getEntityClass(), cnd));
        return new QueryResult(list, pager);
    }

    /**
     * 分页查询数据封装
     * @param pageNumber
     * @param pageSize
     * @return
     */
    public TableDataInfo tableList( int pageNumber, int pageSize){
        Pager pager = this.dao().createPager(pageNumber, pageSize);
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
    public TableDataInfo tableList( int pageNumber, int pageSize,Cnd cnd){
        Pager pager = this.dao().createPager(pageNumber, pageSize);
        List<T> list = this.dao().query(this.getEntityClass(), cnd, pager);
        return new TableDataInfo(list, this.dao().count(this.getEntityClass(),cnd));
    }

    /**
     * 分页查询数据封装 查询关联数据
     * @param pageNumber
     * @param pageSize
     * @param cnd
     * @param linkname
     * @return
     */
    public TableDataInfo tableList( int pageNumber, int pageSize,Cnd cnd,String orderByColumn,String isAsc,String linkname){
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
        return new TableDataInfo(list, this.dao().count(this.getEntityClass(),cnd));
    }
}
