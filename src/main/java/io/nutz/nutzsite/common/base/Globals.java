package io.nutz.nutzsite.common.base;

import com.google.common.collect.Maps;
import org.nutz.lang.Strings;

import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.Properties;

/**
 * @author Haiming
 */
public class Globals {
    private Globals() {}


    /**
     * 当前对象实例
     */
    private static Globals global = null;

    /**
     * UTF-8 字符集
     */
    public static final String UTF8 = "UTF-8";

    /**
     * 保存全局属性值
     */
    private static Map<String, String> map = Maps.newHashMap();

    /**
     * 属性文件加载对象
     */
    private static Properties loader =null;


    static {
        try {
            //获取当前类加载器
            ClassLoader classLoader=Globals.class.getClassLoader();
            //通过当前累加载器方法获得 文件db.properties的一个输入流
            InputStream is=classLoader.getResourceAsStream("application.properties");
            //创建一个Properties 对象
            loader=new Properties();
            //加载输入流
            loader.load(is);
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }


    /**
     * 静态工厂方法 获取当前对象实例 多线程安全单例模式(使用双重同步锁)
     */
    public static synchronized Globals getInstance() {
        if (global == null) {
            synchronized (Globals.class) {
                if (global == null) {
                    global = new Globals();
                }
            }
        }
        return global;
    }


    /**
     * 获取配置
     * @param key
     * @return
     */
    public static String getConfig(String key) {
        String value = map.get(key);
        if (value == null) {
            value = loader.getProperty(key);
            map.put(key, Strings.sNull(value));
        }
        return value;
    }



}
