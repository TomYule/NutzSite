package io.nutz.nutzsite.common.exception;

/**
 * As you see...
 *
 */
public class AppException extends Exception {

    private static final long serialVersionUID = -6339959428822547104L;

    public AppException() {
    }

    public AppException(String message) {
        super(message);
    }

    public AppException(String message, Throwable cause) {
        super(message, cause);
    }

    public AppException(Throwable cause) {
        super(cause);
    }

    public AppException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
