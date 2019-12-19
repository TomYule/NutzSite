package io.nutz.nutzsite.common.config;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * 读取代码生成相关配置
 *
 * @author haiming
 */
public class GenConfig {
    /**
     * application
     * 作者
     */
    public static String author;
    /**
     * 生成包路径
     */
    public static String packageName;
    /**
     * 生成包路径(open)
     */
    public static String packageNameOpen;
    /**
     * 自动去除表前缀，默认是true
     */
    public static String autoRemovePre;
    /**
     * 表前缀(类名不会包含表前缀)
     */
    public static String tablePrefix;

    static {
        try {
            //获取当前类加载器
            ClassLoader classLoader = GenConfig.class.getClassLoader();
            //通过当前累加载器方法获得 文件db.properties的一个输入流
            InputStream is = classLoader.getResourceAsStream("gen.properties");
            //创建一个Properties 对象
            Properties properties = new Properties();
            //加载输入流
            properties.load(is);

            author = properties.getProperty("author");
            packageName = properties.getProperty("packageName");
            autoRemovePre = properties.getProperty("autoRemovePre");
            tablePrefix = properties.getProperty("tablePrefix");
            packageNameOpen = properties.getProperty("packageNameOpen");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        System.out.println(author);
        System.out.println(packageName);
        System.out.println(autoRemovePre);
        System.out.println(tablePrefix);
    }

    public static String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        GenConfig.author = author;
    }

    public static String getPackageName() {
        return packageName;
    }

    public void setPackageName(String packageName) {
        GenConfig.packageName = packageName;
    }

    public static String getAutoRemovePre() {
        return autoRemovePre;
    }

    public void setAutoRemovePre(String autoRemovePre) {
        GenConfig.autoRemovePre = autoRemovePre;
    }

    public static String getTablePrefix() {
        return tablePrefix;
    }

    public void setTablePrefix(String tablePrefix) {
        GenConfig.tablePrefix = tablePrefix;
    }

    public static String getPackageNameOpen() {
        return packageNameOpen;
    }

    public static void setPackageNameOpen(String packageNameOpen) {
        GenConfig.packageNameOpen = packageNameOpen;
    }

    @Override
    public String toString() {
        return "GenConfig [getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
                + "]";
    }
}
