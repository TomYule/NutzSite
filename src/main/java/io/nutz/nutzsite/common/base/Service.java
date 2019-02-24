package io.nutz.nutzsite.common.base;

import org.nutz.dao.Condition;
import org.nutz.dao.Dao;
import org.nutz.lang.Lang;
import org.nutz.service.EntityService;

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

    public T fetchLinks(T t, String name, Condition cnd) {
        return this.dao().fetchLinks(t, name, cnd);
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

}
