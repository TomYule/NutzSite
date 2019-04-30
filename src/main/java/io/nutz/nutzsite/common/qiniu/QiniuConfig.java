package io.nutz.nutzsite.common.qiniu;


import com.qiniu.util.Auth;

/**
 * @author haiming
 */
public final class QiniuConfig {
    //dummy ak & sk
    public static final String dummyAccessKey = "";
    public static final String dummySecretKey = "";
    public static final Auth dummyAuth = Auth.create(dummyAccessKey, dummySecretKey);

    public static final String dummyBucket = "";
    public static final String dummyKey = "";
    public static final String dummyDomain = "";
    public static final String dummyUrl= "";
    public static final String dummyUptoken = "";
    public static final String dummyInvalidUptoken = "";


    //code
    public static final int ERROR_CODE_BUCKET_NOT_EXIST = 631;
    public static final int ERROR_CODE_KEY_NOT_EXIST = 612;


    private QiniuConfig() {
    }

    public static boolean isTravis() {
        return "travis".equals(System.getenv("QINIU_TEST_ENV"));
    }
}
