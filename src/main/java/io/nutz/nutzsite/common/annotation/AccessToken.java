package io.nutz.nutzsite.common.annotation;

import java.lang.annotation.*;

/**
 * @Author: Haimming
 * @Date: 2019-05-17 16:52
 * @Version 1.0
 */
// 必须带这个,不然读取不到的
@Retention(RetentionPolicy.RUNTIME)
// aop,一般指方法
@Target({ElementType.METHOD})
// 记录到javadoc
@Documented
public @interface AccessToken {

}
