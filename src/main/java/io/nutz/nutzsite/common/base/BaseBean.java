package io.nutz.nutzsite.common.base;

import io.nutz.nutzsite.module.sys.models.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.nutz.lang.random.R;

import java.io.Serializable;
import java.util.Date;

/**
 * @author : haiming
 * @date : 2020-02-27
 */
public abstract class BaseBean implements Serializable {
    private static final long serialVersionUID = 1L;

    public String uuid() {
        return R.UU32().toLowerCase();
    }

    public String uid() {
        try {
            Subject subject = SecurityUtils.getSubject();
            User user = (User) subject.getPrincipal();
            return user == null ? "" : user.getId();
        } catch (Exception e) {
            return "";
        }
    }

    public Date now() {
        return new Date();
    }
}
