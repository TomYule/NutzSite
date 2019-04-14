package io.nutz.nutzsite.common.exception;

import org.apache.shiro.authc.AuthenticationException;

/**
 * 自定义异常 验证码错误
 * Created by Wizzer.cn on 2015/7/1.
 */
public class IncorrectCaptchaException extends AuthenticationException {

    public IncorrectCaptchaException() {
        super();
    }

    public IncorrectCaptchaException(String message, Throwable cause) {
        super(message, cause);
    }

    public IncorrectCaptchaException(String message) {
        super(message);
    }

    public IncorrectCaptchaException(Throwable cause) {
        super(cause);
    }
}
