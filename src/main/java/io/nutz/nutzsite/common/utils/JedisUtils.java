package io.nutz.nutzsite.common.utils;

/**
 * Jedis Cache 工具类
 * @Author: Haimming
 * @Date: 2019-10-10 13:59
 * @Version 1.0
 */
public class JedisUtils {

    /**
     * 获取byte[]类型Key
     * @param object
     * @return
     */
    public static byte[] getBytesKey(Object object){
        if(object instanceof String){
            return StringUtils.getBytes((String)object);
        }else{
            return ObjectUtils.serialize(object);
        }
    }

    /**
     * Object转换byte[]类型
     * @param object
     * @return
     */
    public static byte[] toBytes(Object object){
        return ObjectUtils.serialize(object);
    }

    /**
     * byte[]型转换Object
     * @param bytes
     * @return
     */
    public static Object toObject(byte[] bytes){
        return ObjectUtils.unserialize(bytes);
    }

    /**
     * 获取byte[]类型Key
     * @param key
     * @return
     */
    public static Object getObjectKey(byte[] key){
        try{
            return StringUtils.toString(key);
        }catch(UnsupportedOperationException uoe){
            try{
                return JedisUtils.toObject(key);
            }catch(UnsupportedOperationException uoe2){
                uoe2.printStackTrace();
            }
        }
        return null;
    }

}
