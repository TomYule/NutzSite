package io.nutz.nutzsite.common.mvc.processor;
import io.nutz.nutzsite.common.base.Globals;
import org.nutz.lang.Strings;
import org.nutz.mvc.ActionContext;
import org.nutz.mvc.ActionInfo;
import org.nutz.mvc.Mvcs;
import org.nutz.mvc.NutConfig;
import org.nutz.mvc.impl.processor.AbstractProcessor;

/**
 *  全局变量设置
 *
 * @Author: Haimming
 * @Date: 2019-10-15 16:03
 * @Version 1.0
 */
public class GlobalsSettingProcessor extends AbstractProcessor {

    @Override
    public void init(NutConfig config, ActionInfo ai) throws Throwable {

    }

    //    @SuppressWarnings("rawtypes")
    @Override
    public void process(ActionContext ac) throws Throwable {

        boolean captcha = Boolean.valueOf(Globals.getConfig("login.captcha"));
        String path = ac.getServletContext().getContextPath();
        String projectName = path.length() > 0 ? path + "/" : "/";
        ac.getRequest().setAttribute("AppBase", projectName);
        ac.getRequest().setAttribute("captchaEnabled", captcha);
        ac.getRequest().setAttribute("pubkey", Globals.getPublicKey());
        // 如果url中有语言属性则设置
        String lang = ac.getRequest().getParameter("lang");
        if (!Strings.isEmpty(lang)) {
            Mvcs.setLocalizationKey(lang);
        } else {
            // Mvcs.getLocalizationKey()  1.r.56 版本是null,所以要做两次判断, 1.r.57已修复为默认值 Nutz:Fix issue 1072
            lang = Strings.isBlank(Mvcs.getLocalizationKey()) ? Mvcs.getDefaultLocalizationKey() : Mvcs.getLocalizationKey();
        }
        ac.getRequest().setAttribute("lang", lang);
        doNext(ac);
    }
}