package io.nutz.nutzsite.common.shiro.cache;
import com.google.common.collect.Sets;
import io.nutz.nutzsite.common.utils.JedisUtils;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.cache.CacheException;
import org.apache.shiro.cache.CacheManager;
import org.nutz.integration.jedis.JedisAgent;
import org.nutz.ioc.aop.Aop;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Streams;
import org.nutz.mvc.Mvcs;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import redis.clients.jedis.Jedis;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;

import static org.nutz.integration.jedis.RedisInterceptor.jedis;

/**
 * 自定义授权缓存管理类
 * 参考文档
 * https://github.com/nutzam/nutzmore/tree/master/nutz-integration-jedis
 */
//@IocBean(name = "jedisCacheManager")
public class JedisCacheManager implements CacheManager {

	private String cacheKeyPrefix = "shiro_cache_";
	/**
	 * 注入JedisAgent
	 * 有人可能问,为啥不是注入JedisPool? 原因是,JedisAgent能双模式切换(普通模式和集群模式)
	 */
	@Inject
	private JedisAgent jedisAgent;

	@Override
	public <K, V> Cache<K, V> getCache(String name) throws CacheException {
		return new JedisCache<K, V>(cacheKeyPrefix + name);
	}

	public String getCacheKeyPrefix() {
		return cacheKeyPrefix;
	}

	public void setCacheKeyPrefix(String cacheKeyPrefix) {
		this.cacheKeyPrefix = cacheKeyPrefix;
	}

    /**
     * 自定义授权缓存管理类
     * @param <K>
     * @param <V>
     */
	public class JedisCache<K, V> implements Cache<K, V> {

		private Logger logger = LoggerFactory.getLogger(getClass());

		private String cacheKeyName = null;

		public JedisCache(String cacheKeyName) {
			this.cacheKeyName = cacheKeyName;
//			if (!JedisUtils.exists(cacheKeyName)){
//				Map<String, Object> map = Maps.newHashMap();
//				JedisUtils.setObjectMap(cacheKeyName, map, 60 * 60 * 24);
//			}
//			logger.debug("Init: cacheKeyName {} ", cacheKeyName);
		}
		
		@SuppressWarnings("unchecked")
		@Override
        @Aop("redis")
		public V get(K key) throws CacheException {
			if (key == null){
				return null;
			}
			
			V v = null;
			HttpServletRequest request = Mvcs.getReq();
			if (request != null){
				v = (V)request.getAttribute(cacheKeyName);
				if (v != null){
					return v;
				}
			}
			
			V value = null;
			Jedis jedis = null;
			try {
				jedis = jedisAgent.getResource();
                value = (V) jedis().hget(JedisUtils.getBytesKey(cacheKeyName),JedisUtils.getBytesKey(cacheKeyName));
				logger.debug("get {} {} {}", cacheKeyName, key, request != null ? request.getRequestURI() : "");
			} catch (Exception e) {
				logger.error("get {} {} {}", cacheKeyName, key, request != null ? request.getRequestURI() : "", e);
			} finally {
				Streams.safeClose(jedis);
			}
			
			if (request != null && value != null){
				request.setAttribute(cacheKeyName, value);
			}
			
			return value;
		}

		@Override
		public V put(K key, V value) throws CacheException {
			if (key == null){
				return null;
			}
			
			Jedis jedis = null;
			try {
				jedis = jedisAgent.getResource();
				jedis.hset(JedisUtils.getBytesKey(cacheKeyName), JedisUtils.getBytesKey(key), JedisUtils.toBytes(value));
				logger.debug("put {} {} = {}", cacheKeyName, key, value);
			} catch (Exception e) {
				logger.error("put {} {}", cacheKeyName, key, e);
			} finally {
				Streams.safeClose(jedis);
			}
			return value;
		}

		@SuppressWarnings("unchecked")
		@Override
		public V remove(K key) throws CacheException {
			V value = null;
			Jedis jedis = null;
			try {
				jedis = jedisAgent.getResource();
				value = (V)JedisUtils.toObject(jedis.hget(JedisUtils.getBytesKey(cacheKeyName), JedisUtils.getBytesKey(key)));
				jedis.hdel(JedisUtils.getBytesKey(cacheKeyName), JedisUtils.getBytesKey(key));
				logger.debug("remove {} {}", cacheKeyName, key);
			} catch (Exception e) {
				logger.warn("remove {} {}", cacheKeyName, key, e);
			} finally {
				Streams.safeClose(jedis);
			}
			return value;
		}

		@Override
		public void clear() throws CacheException {
			Jedis jedis = null;
			try {
				jedis = jedisAgent.getResource();
				jedis.hdel(JedisUtils.getBytesKey(cacheKeyName));
				logger.debug("clear {}", cacheKeyName);
			} catch (Exception e) {
				logger.error("clear {}", cacheKeyName, e);
			} finally {
				Streams.safeClose(jedis);
			}
		}

		@Override
		public int size() {
			int size = 0;
			Jedis jedis = null;
			try {
				jedis = jedisAgent.getResource();
				size = jedis.hlen(JedisUtils.getBytesKey(cacheKeyName)).intValue();
				logger.debug("size {} {} ", cacheKeyName, size);
				return size;
			} catch (Exception e) {
				logger.error("clear {}",  cacheKeyName, e);
			} finally {
				Streams.safeClose(jedis);
			}
			return size;
		}

		@SuppressWarnings("unchecked")
		@Override
		public Set<K> keys() {
			Set<K> keys = Sets.newHashSet();
			Jedis jedis = null;
			try {
				jedis = jedisAgent.getResource();
				Set<byte[]> set = jedis.hkeys(JedisUtils.getBytesKey(cacheKeyName));
				for(byte[] key : set){
					Object obj = (K)JedisUtils.getObjectKey(key);
					if (obj != null){
						keys.add((K) obj);
					}
	        	}
				logger.debug("keys {} {} ", cacheKeyName, keys);
				return keys;
			} catch (Exception e) {
				logger.error("keys {}", cacheKeyName, e);
			} finally {
				Streams.safeClose(jedis);
			}
			return keys;
		}

		@SuppressWarnings("unchecked")
		@Override
		public Collection<V> values() {
			Collection<V> vals = Collections.emptyList();;
			Jedis jedis = null;
			try {
				jedis = jedisAgent.getResource();
				Collection<byte[]> col = jedis.hvals(JedisUtils.getBytesKey(cacheKeyName));
				for(byte[] val : col){
					Object obj = JedisUtils.toObject(val);
					if (obj != null){
						vals.add((V) obj);
					}
	        	}
				logger.debug("values {} {} ", cacheKeyName, vals);
				return vals;
			} catch (Exception e) {
				logger.error("values {}",  cacheKeyName, e);
			} finally {
				Streams.safeClose(jedis);
			}
			return vals;
		}
	}
}
