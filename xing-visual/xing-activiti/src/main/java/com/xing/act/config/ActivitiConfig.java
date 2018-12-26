package com.xing.act.config;

import lombok.AllArgsConstructor;
import org.activiti.spring.SpringProcessEngineConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.PlatformTransactionManager;

import javax.sql.DataSource;

/**
 * Activiti 配置
 *
 * @author weixing
 * @date 2018/12/21 15:11
 */
@Configuration
@AllArgsConstructor
public class ActivitiConfig {
	private final DataSource dataSource;
	private final PlatformTransactionManager transactionManager;

	@Bean
	public SpringProcessEngineConfiguration getProcessEngineConfiguration() {
		SpringProcessEngineConfiguration config =
			new SpringProcessEngineConfiguration();
		// 流程图字体设置
		config.setActivityFontName("宋体");
		config.setAnnotationFontName("宋体");
		config.setLabelFontName("黑体");

		config.setDataSource(dataSource);
		config.setTransactionManager(transactionManager);
		config.setDatabaseType("mysql");
		config.setDatabaseSchemaUpdate("true");
		return config;
	}
}
