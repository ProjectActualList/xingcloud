package com.xing.common.job.jobinit;

import com.dangdang.ddframe.job.config.JobCoreConfiguration;
import com.dangdang.ddframe.job.config.JobTypeConfiguration;
import com.dangdang.ddframe.job.config.script.ScriptJobConfiguration;
import com.xing.common.job.properties.ElasticJobProperties;

import java.util.Map;

/**
 * 脚本任务初始化
 *
 * @author weixing
 * @date 2018/12/21 11:14
 */
public class ScriptJobInitialization extends AbstractJobInitialization {

	private Map<String, ElasticJobProperties.ScriptConfiguration> scriptConfigurationMap;

	public ScriptJobInitialization(final Map<String, ElasticJobProperties.ScriptConfiguration> scriptConfigurationMap) {
		this.scriptConfigurationMap = scriptConfigurationMap;
	}

	public void init() {
		for (String jobName : scriptConfigurationMap.keySet()) {
			ElasticJobProperties.ScriptConfiguration configuration = scriptConfigurationMap.get(jobName);
			initJob(jobName, configuration.getJobType(), configuration);
		}
	}

	@Override
	public JobTypeConfiguration getJobTypeConfiguration(String jobName, JobCoreConfiguration jobCoreConfiguration) {
		ElasticJobProperties.ScriptConfiguration configuration = scriptConfigurationMap.get(jobName);
		return new ScriptJobConfiguration(jobCoreConfiguration, configuration.getScriptCommandLine());
	}
}
