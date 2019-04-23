package io.nutz.nutzsite.common.shiro.session;

import io.nutz.nutzsite.common.bean.OnlineSession;
import io.nutz.nutzsite.common.manager.AsyncManager;
import io.nutz.nutzsite.common.manager.factory.AsyncFactory;
import io.nutz.nutzsite.module.monitor.models.UserOnline;
import io.nutz.nutzsite.module.monitor.services.UserOnlineService;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.EnterpriseCacheSessionDAO;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;

import java.io.Serializable;
import java.util.Date;

/**
 * 针对自定义的ShiroSession的db操作
 *
 * @author ruoyi
 */
@IocBean
public class OnlineSessionDAO extends EnterpriseCacheSessionDAO {
    /**
     * 上次同步数据库的时间戳
     */
    private static final String LAST_SYNC_DB_TIMESTAMP = OnlineSessionDAO.class.getName() + "LAST_SYNC_DB_TIMESTAMP";

    /**
     * 同步session到数据库的周期 单位为毫秒（默认1分钟）
     */
    @Inject("java:$conf.get('shiro.session.dbSyncPeriod')")
    private int dbSyncPeriod;

    @Inject
    private AsyncFactory asyncFactory;

    @Inject
    private UserOnlineService onlineService;

    @Inject
    private OnlineSessionFactory onlineSessionFactory;

    public OnlineSessionDAO() {
        super();
    }

    public OnlineSessionDAO(long expireTime) {
        super();
    }

    /**
     * 根据会话ID获取会话
     *
     * @param sessionId 会话ID
     * @return ShiroSession
     */
    @Override
    protected Session doReadSession(Serializable sessionId) {
        UserOnline userOnline = onlineService.fetch(String.valueOf(sessionId));
        if (userOnline == null) {
            return null;
        }
        return onlineSessionFactory.createSession(userOnline);
    }

    /**
     * 更新会话；如更新会话最后访问时间/停止会话/设置超时时间/设置移除属性等会调用
     */
    public void syncToDb(OnlineSession onlineSession) {
        Date lastSyncTimestamp = (Date) onlineSession.getAttribute(LAST_SYNC_DB_TIMESTAMP);
        if (lastSyncTimestamp != null) {
            boolean needSync = true;
            long deltaTime = onlineSession.getLastAccessTime().getTime() - lastSyncTimestamp.getTime();
            if (deltaTime < dbSyncPeriod * 60 * 1000) {
                // 时间差不足 无需同步
                needSync = false;
            }
            boolean isGuest = Strings.isEmpty(onlineSession.getUserId());

            // session 数据变更了 同步
            if (isGuest == false && onlineSession.isAttributeChanged()) {
                needSync = true;
            }

            if (needSync == false) {
                return;
            }
        }
        onlineSession.setAttribute(LAST_SYNC_DB_TIMESTAMP, onlineSession.getLastAccessTime());
        // 更新完后 重置标识
        if (onlineSession.isAttributeChanged()) {
            onlineSession.resetAttributeChanged();
        }
        AsyncManager.me().execute(asyncFactory.syncSessionToDb(onlineSession));
    }

    /**
     * 当会话过期/停止（如用户退出时）属性等会调用
     */
    @Override
    protected void doDelete(Session session) {
        OnlineSession onlineSession = (OnlineSession) session;
        if (null == onlineSession) {
            return;
        }
        onlineSession.setStatus(OnlineSession.OnlineStatus.off_line);
        onlineService.delete(String.valueOf(onlineSession.getId()));
    }
}
