package com.xing.common.job;

import com.dangdang.ddframe.job.reg.zookeeper.ZookeeperConfiguration;
import com.dangdang.ddframe.job.reg.zookeeper.ZookeeperRegistryCenter;
import com.xing.common.job.jobinit.DataflowJobInitialization;
import com.xing.common.job.jobinit.ScriptJobInitialization;
import com.xing.common.job.jobinit.SimpleJobInitialization;
import com.xing.common.job.properties.ElasticJobProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.condition.ConditionalOnBean;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * 任务初配置入口类
 *
 * @author weixing
 * @date 2018/12/21 11:13
 */
@Configuration
@EnableAutoConfiguration
@EnableConfigurationProperties(ElasticJobProperties.class)
public class ElasticJobAutoConfiguration {

	/**
	 * 默认注册中心
	 */
	public static final String DEFAULT_REGISTRY_CENTER_NAME = "elasticJobRegistryCenter";

	@Autowired
	private ElasticJobProperties elasticJobProperties;

	@Bean(name = DEFAULT_REGISTRY_CENTER_NAME, initMethod = "init")
	@ConditionalOnMissingBean
	public ZookeeperRegistryCenter elasticJobRegistryCenter() {
		ElasticJobProperties.ZkConfiguration regCenterProperties = elasticJobProperties.getZookeeper();
		ZookeeperConfiguration zookeeperConfiguration = new ZookeeperConfiguration(regCenterProperties.getServerLists(), regCenterProperties.getNamespace());
		zookeeperConfiguration.setBaseSleepTimeMilliseconds(regCenterProperties.getBaseSleepTimeMilliseconds());
		zookeeperConfiguration.setConnectionTimeoutMilliseconds(regCenterProperties.getConnectionTimeoutMilliseconds());
		zookeeperConfiguration.setMaxSleepTimeMilliseconds(regCenterProperties.getMaxSleepTimeMilliseconds());
		zookeeperConfiguration.setSessionTimeoutMilliseconds(regCenterProperties.getSessionTimeoutMilliseconds());
		zookeeperConfiguration.setMaxRetries(regCenterProperties.getMaxRetries());
		zookeeperConfiguration.setDigest(regCenterProperties.getDigest());
		return new ZookeeperRegistryCenter(zookeeperConfiguration);
	}

	@Bean(initMethod = "init")
	@ConditionalOnMissingBean
	@ConditionalOnBean(ZookeeperRegistryCenter.class)
	public SimpleJobInitialization simpleJobInitialization() {
		return new SimpleJobInitialization(elasticJobProperties.getSimples());
	}

	@Bean(initMethod = "init")
	@ConditionalOnMissingBean
	@ConditionalOnBean(ZookeeperRegistryCenter.class)
	public DataflowJobInitialization dataflowJobInitialization() {
		return new DataflowJobInitialization(elasticJobProperties.getDataflows());
	}

	@Bean(initMethod = "init")
	@ConditionalOnMissingBean
	@ConditionalOnBean(ZookeeperRegistryCenter.class)
	public ScriptJobInitialization scriptJobInitialization() {
		return new ScriptJobInitialization(elasticJobProperties.getScripts());
	}
}
