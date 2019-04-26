package io.nutz.nutzsite.common.utils;

import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import io.nutz.nutzsite.common.qiniu.QiniuConfig;
import org.nutz.lang.random.R;
import org.nutz.mvc.upload.TempFile;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;

/**
 * 七牛云 文件上传工具类
 *
 * @author Hamming_Yu on 2018/11/15.
 */
public class UpLoadUtil {
    private static UploadManager uploadManager = new UploadManager(new Configuration());

    /**
     * 文件上传工具类
     *
     * @param tf
     * @return
     */
    public static String upLoadFile(TempFile tf) {
        if (tf == null) {
            return "";
        }
        String name = DateUtils.parseDateToStr( "yyyyMMdd",new Date()) + R.UU32() + tf.getSubmittedFileName().substring(tf.getSubmittedFileName().indexOf("."));
        try (InputStream is = tf.getInputStream()) {
            String token = QiniuConfig.dummyAuth.uploadToken(QiniuConfig.dummyBucket);
            byte[] byteData = new byte[is.available()];
            is.read(byteData);
            Response response = uploadManager.put(byteData, name, token);
        } catch (QiniuException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return QiniuConfig.dummyUrl + "/" + name;
    }
}
