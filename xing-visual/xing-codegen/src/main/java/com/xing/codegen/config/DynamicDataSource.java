package com.xing.codegen.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

import javax.sql.DataSource;
import java.util.HashMap;
import java.util.Map;

/**
 * 
 *
 * @author weixing
 * @date 2018/12/27 17:08
 */
public class DynamicDataSource extends AbstractRoutingDataSource {

    private static Logger logger = LoggerFactory.getLogger(DataSourceContextHolder.class);

    @Override
    protected Object determineCurrentLookupKey() {
        logger.debug("数据源为{}", DataSourceContextHolder.getDB());
        return DataSourceContextHolder.getDB();
    }

    /**
     * 动态数据源: 通过AOP在不同数据源之间动态切换
     * @return
     */
    @Bean(name = "dynamicDS")
    public DataSource dataSource() {
        DynamicDataSource dynamicDataSource = new DynamicDataSource();
        // 默认数据源
        //dynamicDataSource.setDefaultTargetDataSource(sysDS());

        // 配置多数据源
        //Map<Object, Object> dsMap = new HashMap(5);
        //dsMap.put("ds-sys", sysDS());
        //dsMap.put("ds-act", actDS());
        //dsMap.put("ds-bus", busDS());

        //dynamicDataSource.setTargetDataSources(dsMap);

        return dynamicDataSource;
    }
}
