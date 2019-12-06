package io.nutz.nutzsite.common.exception;


import org.nutz.plugins.validation.Errors;

/**
 * 基础异常
 * @author haiming
 */
public class ErrorException extends RuntimeException {
    private static final long serialVersionUID = 1L;

    public ErrorException() {
    }

    public ErrorException(String message) {
        super(message);
    }

    /**
     *  数据校验封装
     * @param es
     */
    public ErrorException(Errors es) {
        super(es.getErrorsList().toString());
    }
    public ErrorException(String message, Throwable cause) {
        super(message, cause);
    }

    public ErrorException(Throwable cause) {
        super(cause);
    }

    public ErrorException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
