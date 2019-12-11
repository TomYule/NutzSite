package io.nutz.nutzsite.common.mvc;

import io.nutz.nutzsite.common.mvc.processor.ErrorProcessor;
import io.nutz.nutzsite.common.mvc.processor.GlobalsSettingProcessor;
import io.nutz.nutzsite.common.mvc.processor.XssSqlFilterProcessor;
import org.nutz.integration.shiro.NutShiroProcessor;
import org.nutz.mvc.*;
import org.nutz.mvc.impl.NutActionChain;
import org.nutz.mvc.impl.processor.*;
import org.nutz.plugins.validation.ValidationProcessor;

import java.util.ArrayList;
import java.util.List;

/**
 * 动作链 配置
 * https://nutzam.com/core/mvc/action_chain.html
 * @Author: Haimming
 * @Date: 2019-10-09 11:41
 * @Version 1.0
 */
public class MyActionChainMaker implements ActionChainMaker {

    /**
     * 该接口只有一个方法
     * @param config
     * @param ai
     * @return
     */
    @Override
    public ActionChain eval(NutConfig config, ActionInfo ai) {
        // 提醒: config可以获取ioc等信息, ai可以获取方法上的各种配置及方法本身
        // 正常处理的列表
        List<Processor> list = new ArrayList<>();
        // 设置base/msg等内置属性
        list.add(new UpdateRequestAttributesProcessor());

        list.add(new GlobalsSettingProcessor());
        // 设置编码信息@Encoding
        list.add(new EncodingProcessor());
        // 获取入口类的对象,从ioc或直接new
        list.add(new ModuleProcessor());
        //shiro
        list.add(new NutShiroProcessor());
        // SQL 注入过滤 XSS过滤
        list.add(new XssSqlFilterProcessor());
        // 处理@Filters
        list.add(new ActionFiltersProcessor());
        // 处理@Adaptor
        list.add(new AdaptorProcessor());
        //必填项做判断
        list.add(new ValidationProcessor());
        // 执行入口方法
        list.add(new MethodInvokeProcessor());
        // 对入口方法进行渲染@Ok
        list.add(new ViewProcessor());
        for (Processor p : list) {
            try {
                p.init(config, ai);
            } catch (Throwable throwable) {
                throwable.printStackTrace();
            }
        }

        // 最后是专门负责兜底的异常处理器,这个处理器可以认为是全局异常处理器,对应@Fail
        ErrorProcessor error = new ErrorProcessor();
        try {
            error.init(config, ai);
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }
        return new NutActionChain(list, error, ai);
    }
}
