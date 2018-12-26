package com.xing.common.job.jobinit;

import com.dangdang.ddframe.job.config.JobCoreConfiguration;
import com.dangdang.ddframe.job.config.JobTypeConfiguration;
import com.dangdang.ddframe.job.config.simple.SimpleJobConfiguration;
import com.xing.common.job.properties.ElasticJobProperties;

import java.util.Map;

/**
 * 简单任务初始化
 *
 * @author weixing
 * @date 2018/12/21 11:15
 */
public class SimpleJobInitialization extends AbstractJobInitialization {

	private Map<String, ElasticJobProperties.SimpleConfiguration> simpleConfigurationMap;

	public SimpleJobInitialization(final Map<String, ElasticJobProperties.SimpleConfiguration> simpleConfigurationMap) {
		this.simpleConfigurationMap = simpleConfigurationMap;
	}

	public void init() {
		for (String jobName : simpleConfigurationMap.keySet()) {
			ElasticJobProperties.SimpleConfiguration configuration = simpleConfigurationMap.get(jobName);
			initJob(jobName, configuration.getJobType(), configuration);
		}
	}

	@Override
	public JobTypeConfiguration getJobTypeConfiguration(String jobName, JobCoreConfiguration jobCoreConfiguration) {
		ElasticJobProperties.SimpleConfiguration configuration = simpleConfigurationMap.get(jobName);
		return new SimpleJobConfiguration(jobCoreConfiguration, configuration.getJobClass());
	}
}
