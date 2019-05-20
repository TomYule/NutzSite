package io.nutz.nutzsite.common.base;

import org.nutz.lang.Strings;
import org.nutz.mvc.Mvcs;

/**
 * 返回消息通用类
 * "result": 1,【4种状态，0：请求成功，1：请求失败，2： ，3：token失效】--类型为Integer
 * "msg": "相关内容解释",
 * "data": "数据主体"
 * @author wizzer
 * @date 2016/6/22
 */
public class Result {

    private int code;
    private String msg;
    private Object data;

    public Result() {
    }

    public Result(int code, String msg, Object data) {
        this.code = code;
        this.msg = Strings.isBlank(msg) ? "" : Mvcs.getMessage(Mvcs.getActionContext().getRequest(), msg);
        this.data = data;
    }

    public static Result success(String content) {
        return new Result(0, content, null);
    }

    public static Result success(String content, Object data) {
        return new Result(0, content, data);
    }

    public static Result error(int code, String content) {
        return new Result(code, content, null);
    }

    public static Result error(String content) {
        return new Result(1, content, null);
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public static Result token() {
        return new Result(3, "token失效", null);
    }
}
