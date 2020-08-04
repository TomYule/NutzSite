package io.nutz.nutzsite.module.tool.gen.converts.type;

/**
 * 字段类型转换
 * @author Haiming
 * @date 2020/8/4 4:14 PM
 */
public interface IColumnType {
    /**
     * 获取字段类型
     *
     * @return 字段类型
     */
    String getType();

    /**
     * 获取字段类型完整名
     *
     * @return 字段类型完整名
     */
    String getPkg();
}
