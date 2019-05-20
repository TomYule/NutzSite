package io.nutz.nutzsite.common.utils;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;
import org.nutz.mvc.Mvcs;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.Key;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

/**
 * jwt验证工具类
 * @author Hamming_Yu on 2018/11/13.
 */
public class JWTUtil {
    private static Logger log = LoggerFactory.getLogger(JWTUtil.class);

    //We will sign our JWT with our ApiKey secret
    private static Key key;
    private static String issuer="nutzsite";

    static {
        //初始化api.key 文件存放位置
        Path fpath= Paths.get("api.key");
        //创建文件
        if(!Files.exists(fpath)) {
            try {
                Files.createFile(fpath);
//                Files.createDirectory(fpath);
                key = Keys.secretKeyFor(SignatureAlgorithm.HS256);
                try ( ObjectOutputStream keyOut = new ObjectOutputStream(new FileOutputStream(fpath.toFile()))){
                    keyOut.writeObject(key);
                    keyOut.close();
                } catch (IOException e) {
                    log.debug(e.getMessage());
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }else {
            try (ObjectInputStream keyIn = new ObjectInputStream(new FileInputStream(fpath.toFile()))){
                key = (Key) keyIn.readObject();
                keyIn.close();
            } catch (IOException e) {
                log.debug(e.getMessage());
            } catch (ClassNotFoundException e) {
                log.debug(e.getMessage());
            }
        }
    }

    /**
     * 创建token
     * @param id
     * @return
     */
    public static String createJWT(String id) {
        //过期时间不要太长 移动端需要长时间记住用户名 让移动端本地存储 用户名 密码即可
        Date exp = DateUtils.addDays(new Date(),1) ;
        //Let's set the JWT Claims
        JwtBuilder builder = Jwts.builder().setId(id)
                .setIssuedAt(new Date())
                .setSubject(id)
                .setIssuer(issuer)
                .signWith(key);
        builder.setExpiration(exp);
        //Builds the JWT and serializes it to a compact, URL-safe string
        return builder.compact();
    }

    /**
     * 验证token
     * @param token
     * @return
     */
    public static boolean verifyToken(String token) {
        try {
            Claims claims = Jwts.parser()
                    .setSigningKey(key)
                    .parseClaimsJws(token).getBody();
            if(!issuer.equals(claims.getIssuer()) &&
                    !claims.getIssuer().equals( claims.getSubject() )  ){
                return false;
            }
            return true;
        } catch (Exception e) {
            log.debug(e.getMessage());
//            e.printStackTrace();
            return false;
        }
    }

    /**
     *  获取ID
     * @return
     */
    public static String getId() {
        HttpServletRequest request = Mvcs.getReq();
        Map<String, String> map = new HashMap<String, String>();
        Enumeration headerNames = request.getHeaderNames();
        while (headerNames.hasMoreElements()) {
            String key = (String) headerNames.nextElement();
            String value = request.getHeader(key);
            map.put(key, value);
        }
        try{
            String token=map.get("authorization");
           if(verifyToken(token)){
               Claims claims = Jwts.parser()
                       .setSigningKey(key)
                       .parseClaimsJws(token).getBody();
               return  claims.getId();
           }
        }catch (Exception e){
            log.debug(e.getMessage());
            e.printStackTrace();

        }
        return null;
    }

    /**
     * Sample method to validate and read the JWT
     * @param jwt
     */
    public static void parseJWT(String jwt) {
        //This line will throw an exception if it is not a signed JWS (as expected)
        Claims claims = Jwts.parser()
                .setSigningKey(key)
                .parseClaimsJws(jwt).getBody();
//        System.out.println("ID: " + claims.getId());
//        System.out.println("Subject: " + claims.getSubject());
//        System.out.println("Issuer: " + claims.getIssuer());
//        System.out.println("Expiration: " + claims.getExpiration());
    }
}
