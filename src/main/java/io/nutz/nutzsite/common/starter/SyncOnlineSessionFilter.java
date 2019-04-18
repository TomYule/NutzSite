package io.nutz.nutzsite.common.starter;

import io.nutz.nutzsite.common.bean.OnlineSession;
import io.nutz.nutzsite.common.constant.ShiroConstants;
import io.nutz.nutzsite.common.shiro.session.OnlineSessionDAO;
import org.apache.shiro.web.filter.PathMatchingFilter;
import org.nutz.boot.starter.WebFilterFace;
import org.nutz.ioc.Ioc;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

/**
 * 同步Session数据到Db
 *
 * @author haimming
 */
@IocBean(name = "syncOnlineSession")
public class SyncOnlineSessionFilter extends PathMatchingFilter implements WebFilterFace {
    @Inject("refer:$ioc")
    protected Ioc ioc;

    @Inject
    private OnlineSessionDAO onlineSessionDAO;

    @Override
    public String getName() {
        return "syncOnlineSession";
    }

    @Override
    public String getPathSpec() {
        return "/*";
    }
    /**
     * 需要支持哪些请求方式
     *
     * @return 请求方式列表
     */
    @Override
    public EnumSet<DispatcherType> getDispatches() {
        return EnumSet.of( DispatcherType.FORWARD,
                DispatcherType.INCLUDE,
                DispatcherType.REQUEST,
                DispatcherType.ASYNC,
                DispatcherType.ERROR);
    }

    @Override
    public Filter getFilter() {
        return ioc.get(SyncOnlineSessionFilter.class, "syncOnlineSession");
    }

    @Override
    public Map<String, String> getInitParameters() {
        return new HashMap<String, String>();
    }

    @Override
    public int getOrder() {
        return 0;
    }

    /**
     * 同步会话数据到DB 一次请求最多同步一次 防止过多处理 需要放到Shiro过滤器之前
     */
    @Override
    protected boolean onPreHandle(ServletRequest request, ServletResponse response, Object mappedValue) throws Exception {
        OnlineSession session = (OnlineSession) request.getAttribute(ShiroConstants.ONLINE_SESSION);
        // 如果session stop了 也不同步
        // session停止时间，如果stopTimestamp不为null，则代表已停止
        if (session != null && session.getUserId() != null && session.getStopTimestamp() == null) {
            onlineSessionDAO.syncToDb(session);
        }
        return true;
    }
}
