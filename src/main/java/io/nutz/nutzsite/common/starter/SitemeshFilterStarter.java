package io.nutz.nutzsite.common.starter;

import org.nutz.boot.starter.WebFilterFace;
import org.nutz.ioc.Ioc;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.ServletContext;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Hamming_Yu on 2018/12/18.
 */
//@IocBean
public class SitemeshFilterStarter extends ConfigurableSiteMeshFilter implements WebFilterFace {
    @Inject("refer:$ioc")
    protected Ioc ioc;

    @Override
    public String getName() {
        return "sitemesh";
    }

    @Override
    public String getPathSpec() {
        return "/*";
    }

    @Override
    public EnumSet<DispatcherType> getDispatches() {
        return EnumSet.of(DispatcherType.REQUEST);
    }

    @Override
    public Filter getFilter() {
//        return this;
        return null;
    }

    @Override
    public Map<String, String> getInitParameters() {
        return new HashMap<String, String>();

    }

    @Override
    public int getOrder() {
        return 0;
    }

    @Override
    public void setServletContext(ServletContext sc) {

    }

    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
        builder.addDecoratorPath("/*", "/views/layouts/default.jsp");
    }
}
