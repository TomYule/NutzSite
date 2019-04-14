package io.nutz.nutzsite.common.exception;

import org.apache.shiro.authc.AuthenticationException;

/**
 * 自定义异常 验证码
 * Created by wizzer on 2016/6/22
 */
public class EmptyCaptchaException extends AuthenticationException {

    public EmptyCaptchaException() {
        super();
    }

    public EmptyCaptchaException(String message, Throwable cause) {
        super(message, cause);
    }

    public EmptyCaptchaException(String message) {
        super(message);
    }

    public EmptyCaptchaException(Throwable cause) {
        super(cause);
    }
}
