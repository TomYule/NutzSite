package io.nutz.nutzsite.module.sys.controllers;

import io.nutz.nutzsite.common.utils.Toolkit;
import io.swagger.annotations.ApiOperation;
import org.nutz.img.Images;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.random.R;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;

/**
 * 公共验证码
 *
 * @Author: Haimming
 * @Date: 2019-08-19 11:33
 * @Version 1.0
 */
@IocBean
@At("/captcha")
public class CaptchaController {

    /**
     * 获取验证码
     *
     * @param session session
     * @param w       宽
     * @param h       高
     * @return
     */
    @At
    @Ok("raw:png")
    @ApiOperation(value = "获取验证码", notes = "公共验证码", httpMethod = "GET")
    public BufferedImage next(HttpSession session,
                              @Param("w") int w,
                              @Param("h") int h) {
        /**
         * 长或宽为0?重置为默认长宽.
         */
        if (w * h < 1) {
            w = 145;
            h = 35;
        }
        String text = R.captchaChar(4);
        session.setAttribute(Toolkit.captcha_attr, text);
        return Images.createCaptcha(text, w, h, null, "FFF", null);
    }
}
