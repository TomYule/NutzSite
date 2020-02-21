package io.nutz.nutzsite.common.base;

import io.nutz.nutzsite.common.utils.RSAUtils;
import org.nutz.lang.Strings;
import org.nutz.mvc.Mvcs;

import java.io.IOException;
import java.io.InputStream;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/**
 * @author Haiming
 */
public class Globals {
    private Globals() {
    }


    /**
     * 当前对象实例
     */
    private static Globals global = null;

    /**
     * UTF-8 字符集
     */
    public static final String UTF8 = "UTF-8";
    /**
     * 页面请求路径
     */
    public static String AppBase = "";

    /**
     * 保存全局属性值
     */
    private static Map<String, String> map = new HashMap<>();

    /**
     * 属性文件加载对象
     */
    private static Properties loader = null;

    /**
     * 上传文件基础虚拟路径
     */
    public static final String USERFILES_BASE_URL = "/userfiles/";

    /**
     * 登录页面公钥
     */
    private static String PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnYNNvRKJa5r4W8iTKvHnKEqKNW6h3xU3BaSgyfu7qOMg2DE4v2UJvY4H6M4YDmPU4jr6yyxRl1zssm0LT1ImOJyL+ZK7r5RWNswu/HNH/aiMZVDk3fKjMOLSNh5cXAr0gq2VdGrKeVpZgBbcl/i6hohhX8tl4vunR87WzYmvX4BJ/MUawxLUZL2Ni5R0jvfG4vO5sW4JqwUJNwVHRgC/t5B2hWFU8+VnOLdtlvqXWKZvCg3Ockyv3uqHR/j0f2kpcgOspouy7ptJRwa3Y5CYKz7Ctwh/dDDp/wjy66VDvUhc3aSUaz/oU9unW+EOW8+ZDlHxBRP6nPUgb0VAGZ6c0wIDAQAB";

    /**
     * 私钥
     */
    private static String PRIVATE_KEY = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCdg029EolrmvhbyJMq8ecoSoo1bqHfFTcFpKDJ+7uo4yDYMTi/ZQm9jgfozhgOY9TiOvrLLFGXXOyybQtPUiY4nIv5kruvlFY2zC78c0f9qIxlUOTd8qMw4tI2HlxcCvSCrZV0asp5WlmAFtyX+LqGiGFfy2Xi+6dHztbNia9fgEn8xRrDEtRkvY2LlHSO98bi87mxbgmrBQk3BUdGAL+3kHaFYVTz5Wc4t22W+pdYpm8KDc5yTK/e6odH+PR/aSlyA6ymi7Lum0lHBrdjkJgrPsK3CH90MOn/CPLrpUO9SFzdpJRrP+hT26db4Q5bz5kOUfEFE/qc9SBvRUAZnpzTAgMBAAECggEAcntpuB9N9ADJvGQW2uLBIN60f0tuqWaQ/DAAkW2+omyahaeY2DtGjhg6FXIdt+/FXbyCZcNLdhkbDEAHNVq+3uyhK/8DHQVSeDeFewUK8QldKZJXFh3xkGl7YcxFUry/pG8nrlqj2PnbDScQpAArCfb71xVNc2F23tEt/GuzJFRCo1JsiijRoMHPuYNkhZ8H0bCc+W54Yrh0gJ9+IrX7N4V7v+YkMjPvOTtB18gIRY/oOuwjYJ7fb3iN7k5bRsLLCzHmwD/8yT6kU6eD9dTDP/+7GOzpTiX4WwRVbiqITRw1DkcXJnZavzQahb4v4RehIm2DNpkS9YpmUTL25V6FcQKBgQDkTftCE2RMcYCai6UDBdcR0ecYjuZLqmN3I60YsQedxBrCRsWV5PAOJI5FEF0oAZtW7hNnkvCt4Y2tiyuAalUMdBhZ7tYQViOinYj+Drw/bhmMy84gTJqjyhwfBiQu/EQd8ZGARGez8GEwpc5D9XSmL/1vmhHx7CTwhS3t9PZR2QKBgQCwnuE8lpuvIGnDkvZ9OvbrNGZlF3C++sYcMUewa+w1H8+nhXBC5uhQDH/oEJUgMsq4bedlcbbjlbCpnDtjujJYbt5SmpvAcEJOiTlSAZTESapJR4XhkfNmSsjZUm2K4sEmi+oeMC1d3YsKN/FMmsIwsK/faSWX8VNub/CMnBoMiwKBgQCAAFjHCyhI07pO68xwjW2vyAfRdQ0Zj0aFHbOHDHpAshpuok9VYy5UP5qkjjAspfn6GzE1+OSIGNXeXxDcxsE4Yj7k7UuHjUQdgEW2a3yP86LPldTTtx9chYyOuFrBHR7zyuTRDYk3EabsJ4omABCOvIlTcQZupP9w+rptl9IiwQKBgA/OWCfc7pfQlcZ723U/lqNb8CHx5BQjSyFww5KlReFHNIUwauiB055+T+ALw9y6zuuMYl3wvEZHuiSjp6j4G9NQMLNBxNiG81gl7axKGe8rDIM8VF3oetjXrnvMZaM9Qb3aXZxQAW9aCTxj30NUwjYrScH7nfKoFShX+jYLLkWbAoGASrDk4GsAIITWi1wOnuykBnyfJVSKVkNhlQmqHH2sAxRoXgdvgXV1M7ICd9LXRvUBOoF6AjlM9DISoxgLCWXeYYK1cD6hpNenlovFoggrNWj0b3QsP1OSF4mYm150P+mC3XeS1DGKfefYh2o6L1BnXJ7i1pGMSdvBrxJvDyUGRYI=";
    /**
     * 单表（增删改查）
     */
    public static final String TPL_CRUD = "crud";

    /**
     * 树表（增删改查）
     */
    public static final String TPL_TREE = "tree";

    static {
        try {
            //获取当前类加载器
            ClassLoader classLoader = Globals.class.getClassLoader();
            //通过当前累加载器方法获得 文件db.properties的一个输入流
            InputStream is = classLoader.getResourceAsStream("application.properties");
            //创建一个Properties 对象
            loader = new Properties();
            //加载输入流
            loader.load(is);
            //生成公钥和私钥
            RSAUtils.genKeyPair();
            PUBLIC_KEY = RSAUtils.keyMap.get(RSAUtils.PUBLIC_KEY);
            PRIVATE_KEY = RSAUtils.keyMap.get(RSAUtils.PRIVATE_KEY);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e) {
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
     *
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


    /**
     * 获取上传文件的根目录
     *
     * @return
     */
    public static String getUserfilesBaseDir() {
        String dir = getConfig("userfiles.basedir");
        if (Strings.isBlank(dir)) {
            try {
                dir = Mvcs.getServletContext().getRealPath("/");
            } catch (Exception e) {
                return "";
            }
        }
        if (!dir.endsWith("/")) {
            dir += "/";
        }
        // System.out.println("userfiles.basedir: " + dir);
        return dir;
    }

    public static String getPublicKey() {
        return PUBLIC_KEY;
    }

    public static String getPrivateKey() {
        return PRIVATE_KEY;
    }
}
