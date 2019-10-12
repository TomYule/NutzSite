package io.nutz.nutzsite.common.utils;

import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import io.nutz.nutzsite.common.base.Globals;
import io.nutz.nutzsite.common.qiniu.QiniuConfig;
import org.apache.tika.Tika;
import org.apache.tika.mime.MimeType;
import org.apache.tika.mime.MimeTypeException;
import org.apache.tika.mime.MimeTypes;
import org.nutz.lang.Files;
import org.nutz.lang.Strings;
import org.nutz.lang.random.R;
import org.nutz.mvc.upload.TempFile;
import java.io.*;
import java.util.Date;

/**
 * 文件上传工具类
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
        String name = DateUtils.parseDateToStr("yyyyMMdd", new Date()) + R.UU32() + tf.getSubmittedFileName().substring(tf.getSubmittedFileName().indexOf("."));
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

    /**
     * 上传文件存储为base86编码
     *
     * @param tf
     * @return
     */
    public static String upLoadFileBase64(TempFile tf) {
        if (tf == null) {
            return "";
        }
        return Base64Utils.fileBase64(tf,null);
    }

    /**
     * 本地文件存储
     * @param tf
     * @param userId
     * @return
     */
    public static String upLoadFileSysConfigPath(TempFile tf,String userId) {
        String f ="";
        if (tf == null) {
            return "";
        }
        try {
            Tika tika = new Tika();
            String contentType =tika.detect(tf.getFile());
            MimeTypes allTypes = MimeTypes.getDefaultMimeTypes();
            MimeType mimeType = allTypes.forName(contentType);
            String extension = mimeType.getExtension();
            if(Strings.isEmpty(userId)){
                userId = "temp";
            }
            f = Globals.getConfig("upload.path") + "/" + userId +"/" + DateUtils.getYear() + DateUtils.getMonth() + "/" + R.UU32()+ extension;
            Files.write(new File(f), tf.getInputStream());
        } catch (IOException e) {
            e.printStackTrace();
        } catch (MimeTypeException e) {
            e.printStackTrace();
        }
        return f;
    }

}
