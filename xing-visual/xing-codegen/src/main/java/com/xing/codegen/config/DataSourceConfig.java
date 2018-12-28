package com.xing.codegen.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

/**
 * https://blog.csdn.net/neosmith/article/details/61202084
 *
 * 多数据源配置
 *
 * @author weixing
 * @date 2018/12/27 16:56
 */
@Configuration
public class DataSourceConfig {

    /**
     * ds-sys
     * pplication.properteis中对应属性的前缀
     *
     * @return DataSource
     * @author weixing
     * @date 2018/12/27 17:13
     */
    @Bean(name = "sysDS")
    @ConfigurationProperties(prefix = "spring.datasource.ds-sys")
    public DataSource dsSys() {
        return DataSourceBuilder.create().build();
    }

    /**
     * ds-act
     * pplication.properteis中对应属性的前缀
     *
     * @return DataSource
     * @author weixing
     * @date 2018/12/27 17:13
     */
    @Bean(name = "actDS")
    @ConfigurationProperties(prefix = "spring.datasource.ds-act")
    public DataSource dsAct() {
        return DataSourceBuilder.create().build();
    }

    /**
     * ds-bus
     * pplication.properteis中对应属性的前缀
     *
     * @return DataSource
     * @author weixing
     * @date 2018/12/27 17:13
     */
    @Bean(name = "busDS")
    @ConfigurationProperties(prefix = "spring.datasource.ds-bus")
    public DataSource busAct() {
        return DataSourceBuilder.create().build();
    }
}
