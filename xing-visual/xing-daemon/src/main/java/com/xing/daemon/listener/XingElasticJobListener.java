package com.xing.daemon.listener;

import com.dangdang.ddframe.job.executor.ShardingContexts;
import com.dangdang.ddframe.job.lite.api.listener.ElasticJobListener;

/**
 * 任务监听器
 *
 * @author weixing
 * @date 2018/12/21 15:20
 */
public class XingElasticJobListener implements ElasticJobListener {

	@Override
	public void beforeJobExecuted(ShardingContexts shardingContexts) {
		System.out.println(shardingContexts.getJobName() + " | MyElasticJobListener beforeJobExecuted");
	}

	@Override
	public void afterJobExecuted(ShardingContexts shardingContexts) {
		System.out.println(shardingContexts.getJobName() + " | MyElasticJobListener afterJobExecuted");
	}
}
