package io.nutz.nutzsite.common.enums;

/**
 * @author Haiming
 * @date 2020/8/4 4:28 PM
 */
public enum  DateType {
    /**
     * 只使用 java.util.date 代替
     */
    ONLY_DATE,
    /**
     * 使用 java.sql 包下的
     */
    SQL_PACK,
    /**
     * 使用 java.time 包下的
     * <p>java8 新的时间类型</p>
     */
    TIME_PACK
}
