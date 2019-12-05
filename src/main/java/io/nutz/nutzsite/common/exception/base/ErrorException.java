package io.nutz.nutzsite.common.exception.base;


/**
 * 基础异常
 */
public class ErrorException extends RuntimeException {
    private static final long serialVersionUID = 1L;


    /**
     * 错误码
     */
    private int code;

    /**
     * 错误码对应的参数
     */
    private Object[] args;

    /**
     * 错误消息
     */
    private String defaultMessage;

    public ErrorException(int code, Object[] args, String defaultMessage) {
        this.code = code;
        this.args = args;
        this.defaultMessage = defaultMessage;
    }

    public ErrorException(String defaultMessage) {
        this(1, null, defaultMessage);
    }
    public ErrorException(String defaultMessage,Object[] args) {
        this(1, args, defaultMessage);
    }
    @Override
    public String getMessage() {
        String message = null;
        if (message == null) {
            message = defaultMessage;
        }
        return message;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public Object[] getArgs() {
        return args;
    }

    public void setArgs(Object[] args) {
        this.args = args;
    }

    public String getDefaultMessage() {
        return defaultMessage;
    }

    public void setDefaultMessage(String defaultMessage) {
        this.defaultMessage = defaultMessage;
    }

    @Override
    public String toString() {
        return this.getClass() + "{" + ", message='" + getMessage() + '\'' + '}';
    }
}
