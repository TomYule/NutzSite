package io.nutz.nutzsite.common.shiro.session;

import com.google.common.collect.Sets;
import io.nutz.nutzsite.common.base.Globals;
import io.nutz.nutzsite.common.utils.DateUtils;
import io.nutz.nutzsite.common.utils.JedisUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.UnknownSessionException;
import org.apache.shiro.session.mgt.SimpleSession;
import org.apache.shiro.session.mgt.eis.AbstractSessionDAO;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.support.DefaultSubjectContext;
import org.nutz.integration.jedis.JedisAgent;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Streams;
import org.nutz.mvc.Mvcs;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import redis.clients.jedis.Jedis;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.Map;
import java.util.Set;

/**
 * 自定义授权会话管理类
 * @Author: Haimming
 * @Date: 2019-10-10 14:28
 * @Version 1.0
 */
@IocBean(name = "jedisSessionDAO")
public class JedisSessionDAO extends AbstractSessionDAO implements SessionDAO {

    private Logger logger = LoggerFactory.getLogger(getClass());

    private String sessionKeyPrefix = "shiro_session_";
    /**
     * 注入JedisAgent
     * 有人可能问,为啥不是注入JedisPool? 原因是,JedisAgent能双模式切换(普通模式和集群模式)
     */
    @Inject
    private JedisAgent jedisAgent;

    /**
     * 静态文件后缀
     */
    private final static String[] staticFiles = StringUtils.split(Globals.getConfig("web.staticFile"), ",");


    /**
     * 判断访问URI是否是静态文件请求
     * @throws Exception
     */
    public static boolean isStaticFile(String uri){
        if (staticFiles == null){
            try {
                throw new Exception("检测到“app.properties”中没有配置“web.staticFile”属性。配置示例：\n#静态文件后缀\n"
                        +"web.staticFile=.css,.js,.png,.jpg,.gif,.jpeg,.bmp,.ico,.swf,.psd,.htc,.crx,.xpi,.exe,.ipa,.apk");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (StringUtils.endsWithAny(uri, staticFiles) ){
            return true;
        }
        return false;
    }


    @Override
    public void update(Session session) throws UnknownSessionException {
        if (session == null || session.getId() == null) {
            return;
        }

        HttpServletRequest request = Mvcs.getReq();
        if (request != null){
            String uri = request.getServletPath();
            // 如果是静态文件，则不更新SESSION
            if (isStaticFile(uri)){
                return;
            }

            // 手动控制不更新SESSION
//            if (Global.NO.equals(request.getParameter("updateSession"))){
//                return;
//            }
        }

        Jedis jedis = null;
        try {

            jedis = jedisAgent.getResource();

            // 获取登录者编号
            PrincipalCollection pc = (PrincipalCollection)session.getAttribute(DefaultSubjectContext.PRINCIPALS_SESSION_KEY);
            String principalId = pc != null ? pc.getPrimaryPrincipal().toString() : StringUtils.EMPTY;

            jedis.hset(sessionKeyPrefix, session.getId().toString(), principalId + "|" + session.getTimeout() + "|" + session.getLastAccessTime().getTime());
            jedis.set(JedisUtils.getBytesKey(sessionKeyPrefix + session.getId()), JedisUtils.toBytes(session));

            // 设置超期时间
            int timeoutSeconds = (int)(session.getTimeout() / 1000);
            jedis.expire((sessionKeyPrefix + session.getId()), timeoutSeconds);

            logger.debug("update {} {}", session.getId(), request != null ? request.getRequestURI() : "");
        } catch (Exception e) {
            logger.error("update {} {}", session.getId(), request != null ? request.getRequestURI() : "", e);
        } finally {
           Streams.safeClose(jedis);
        }
    }

    @Override
    public void delete(Session session) {
        if (session == null || session.getId() == null) {
            return;
        }

        Jedis jedis = null;
        try {
            jedis = jedisAgent.getResource();

            jedis.hdel(JedisUtils.getBytesKey(sessionKeyPrefix), JedisUtils.getBytesKey(session.getId().toString()));
            jedis.del(JedisUtils.getBytesKey(sessionKeyPrefix + session.getId()));

            logger.debug("delete {} ", session.getId());
        } catch (Exception e) {
            logger.error("delete {} ", session.getId(), e);
        } finally {
           Streams.safeClose(jedis);
        }
    }

    @Override
    public Collection<Session> getActiveSessions() {
        return getActiveSessions(true);
    }

    /**
     * 获取活动会话
     * @param includeLeave 是否包括离线（最后访问时间大于3分钟为离线会话）
     * @return
     */
    @Override
    public Collection<Session> getActiveSessions(boolean includeLeave) {
        return getActiveSessions(includeLeave, null, null);
    }

    /**
     * 获取活动会话
     * @param includeLeave 是否包括离线（最后访问时间大于3分钟为离线会话）
     * @param principal 根据登录者对象获取活动会话
     * @param filterSession 不为空，则过滤掉（不包含）这个会话。
     * @return
     */
    @Override
    public Collection<Session> getActiveSessions(boolean includeLeave, Object principal, Session filterSession){
        Set<Session> sessions = Sets.newHashSet();

        Jedis jedis = null;
        try {
            jedis = jedisAgent.getResource();
            Map<String, String> map = jedis.hgetAll(sessionKeyPrefix);
            for (Map.Entry<String, String> e : map.entrySet()){
                if (StringUtils.isNotBlank(e.getKey()) && StringUtils.isNotBlank(e.getValue())){

                    String[] ss = StringUtils.split(e.getValue(), "|");
                    if (ss != null && ss.length == 3){
                        // jedis.exists(sessionKeyPrefix + e.getKey())){
                        // Session session = (Session)JedisUtils.toObject(jedis.get(JedisUtils.getBytesKey(sessionKeyPrefix + e.getKey())));
                        SimpleSession session = new SimpleSession();
                        session.setId(e.getKey());
                        session.setAttribute("principalId", ss[0]);
                        session.setTimeout(Long.valueOf(ss[1]));
                        session.setLastAccessTime(new Date(Long.valueOf(ss[2])));
                        try{
                            // 验证SESSION
                            session.validate();

                            boolean isActiveSession = false;
                            // 不包括离线并符合最后访问时间小于等于3分钟条件。
                            if (includeLeave || DateUtils.pastMinutes(session.getLastAccessTime()) <= 3){
                                isActiveSession = true;
                            }
                            // 符合登陆者条件。
                            if (principal != null){
                                PrincipalCollection pc = (PrincipalCollection)session.getAttribute(DefaultSubjectContext.PRINCIPALS_SESSION_KEY);
                                if (principal.toString().equals(pc != null ? pc.getPrimaryPrincipal().toString() : StringUtils.EMPTY)){
                                    isActiveSession = true;
                                }
                            }
                            // 过滤掉的SESSION
                            if (filterSession != null && filterSession.getId().equals(session.getId())){
                                isActiveSession = false;
                            }
                            if (isActiveSession){
                                sessions.add(session);
                            }

                        }
                        // SESSION验证失败
                        catch (Exception e2) {
                            jedis.hdel(sessionKeyPrefix, e.getKey());
                        }
                    }
                    // 存储的SESSION不符合规则
                    else{
                        jedis.hdel(sessionKeyPrefix, e.getKey());
                    }
                }
                // 存储的SESSION无Value
                else if (StringUtils.isNotBlank(e.getKey())){
                    jedis.hdel(sessionKeyPrefix, e.getKey());
                }
            }
            logger.info("getActiveSessions size: {} ", sessions.size());
        } catch (Exception e) {
            logger.error("getActiveSessions", e);
        } finally {
           Streams.safeClose(jedis);
        }
        return sessions;
    }

    @Override
    protected Serializable doCreate(Session session) {
        HttpServletRequest request =  Mvcs.getReq();
        if (request != null){
            String uri = request.getServletPath();
            // 如果是静态文件，则不创建SESSION
            if (isStaticFile(uri)){
                return null;
            }
        }
        Serializable sessionId = this.generateSessionId(session);
        this.assignSessionId(session, sessionId);
        this.update(session);
        return sessionId;
    }

    @Override
    protected Session doReadSession(Serializable sessionId) {

        Session s = null;
        HttpServletRequest request =  Mvcs.getReq();
        if (request != null){
            String uri = request.getServletPath();
            // 如果是静态文件，则不获取SESSION
            if (isStaticFile(uri)){
                return null;
            }
            s = (Session)request.getAttribute("sid"+sessionId);
        }
        if (s != null){
            return s;
        }

        Session session = null;
        Jedis jedis = null;
        try {
            jedis = jedisAgent.getResource();
//			if (jedis.exists(sessionKeyPrefix + sessionId)){
            session = (Session)JedisUtils.toObject(jedis.get(
                    JedisUtils.getBytesKey(sessionKeyPrefix + sessionId)));
//			}
            logger.debug("doReadSession {} {}", sessionId, request != null ? request.getRequestURI() : "");
        } catch (Exception e) {
            logger.error("doReadSession {} {}", sessionId, request != null ? request.getRequestURI() : "", e);
        } finally {
           Streams.safeClose(jedis);
        }

        if (request != null && session != null){
            request.setAttribute("sid"+sessionId, session);
        }

        return session;
    }

    @Override
    public Session readSession(Serializable sessionId) throws UnknownSessionException {
        try{
            return super.readSession(sessionId);
        }catch (UnknownSessionException e) {
            return null;
        }
    }

    public String getSessionKeyPrefix() {
        return sessionKeyPrefix;
    }

    public void setSessionKeyPrefix(String sessionKeyPrefix) {
        this.sessionKeyPrefix = sessionKeyPrefix;
    }

}
