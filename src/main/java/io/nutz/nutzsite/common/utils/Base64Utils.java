package io.nutz.nutzsite.common.utils;

import org.apache.tika.Tika;
import org.nutz.lang.Lang;
import org.nutz.mvc.upload.TempFile;

import javax.xml.bind.DatatypeConverter;
import java.io.*;
import java.nio.file.Files;

/**
 * Data URL scheme 支持的类型
 * data:,文本数据
 * data:text/plain,文本数据
 * data:text/html,HTML代码
 * data:text/html;base64,base64编码的HTML代码
 * data:text/css,CSS代码
 * data:text/css;base64,base64编码的CSS代码
 * data:text/JavaScript,Javascript代码
 * data:text/javascript;base64,base64编码的Javascript代码
 * data:image/gif;base64,base64编码的gif图片数据
 * data:image/png;base64,base64编码的png图片数据
 * data:image/jpeg;base64,base64编码的jpeg图片数据
 * data:image/x-icon;base64,base64编码的icon图片数据
 *
 * @Author: Haimming
 * @Date: 2019-05-07 15:41
 * @Version 1.0
 */
public class Base64Utils {

    /**
     * 默认最大上传文件为16M
     */
    public static long MAX_LENGTH = 16777216;

    /**
     * 将图片文件转换成base64字符串，参数为该图片的路径
     *
     * @param file
     * @return java.lang.String
     */
    public static String fileBase64(File file) {
        try {
            // check content type of the file
            Tika tika = new Tika();
            String contentType =tika.detect(file);
            // read data as byte[]
            byte[] data = Files.readAllBytes(file.toPath());
            // convert byte[] to base64(java7)
            String base64str = DatatypeConverter.printBase64Binary(data);
            // convert byte[] to base64(java8)
//             String base64str = Base64.getEncoder().encodeToString(data);
            // cretate "data URI"
            StringBuilder sb = new StringBuilder();
            sb.append("data:");
            sb.append(contentType);
            sb.append(";base64,");
            sb.append(base64str);
            System.out.println(sb.toString());
            return sb.toString();

        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 将文件转换成 base64字段
     * @param tempFile
     * @return
     */
    public static String fileBase64(TempFile tempFile, Long maxLength) {
        // source file
        File file = tempFile.getFile();
        if(maxLength == null){
            maxLength =MAX_LENGTH;
        }
        if(Lang.isEmpty(file) || maxLength < file.length()){
            new IOException("文件超出限制");
        }
        return fileBase64(file);
    }

    /**
     * 将base64解码成图片并保存在传入的路径下
     * 第一个参数为base64 ，第二个参数为路径
     *
     * @param base64, imgFilePath
     * @return boolean
     */
//    public static boolean Base64ToFile(String base64, String imgFilePath) {
//        // 对字节数组字符串进行Base64解码并生成图片
//        if (base64 == null) {
//            // 图像数据为空
//            return false;
//        }
//        BASE64Decoder decoder = new BASE64Decoder();
//        try (OutputStream out = new FileOutputStream(imgFilePath)){
//            // Base64解码
//            byte[] b = decoder.decodeBuffer(base64);
//            long length = b.length;
//            for (int i = 0; i < length; ++i) {
//                // 调整异常数据
//                if (b[i] < 0) {
//                    b[i] += 256;
//                }
//            }
//            out.write(b);
//            out.flush();
//            out.close();
//            return true;
//        } catch (Exception e) {
//            return false;
//        }
//
//    }

    /**
     * 用来测试工具类是否成功
     *
     * @param args
     * @return void
     */
    public static void main(String[] args) {
        String path = "/Users/apple/Pictures/nier-automata/yorha-2b-katana-nier-automata-y1039.jpg";
        String s = fileBase64(new File(path));
        System.out.println(s);
        String tmp = s.substring(s.indexOf(",") + 1);
        String newpath = "/Users/apple/Pictures/nier-automata/asd.jpg";
//        boolean b = Base64ToFile(tmp, newpath);
//        System.out.println(b);
    }

}
