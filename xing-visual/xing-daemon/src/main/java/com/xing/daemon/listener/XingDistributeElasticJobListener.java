package com.xing.daemon.listener;

import com.dangdang.ddframe.job.executor.ShardingContexts;
import com.dangdang.ddframe.job.lite.api.listener.AbstractDistributeOnceElasticJobListener;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 15:19
 */
public class XingDistributeElasticJobListener extends AbstractDistributeOnceElasticJobListener {

	public XingDistributeElasticJobListener(long startedTimeoutMilliseconds, long completedTimeoutMilliseconds) {
		super(startedTimeoutMilliseconds, completedTimeoutMilliseconds);
	}

	@Override
	public void doBeforeJobExecutedAtLastStarted(ShardingContexts shardingContexts) {
		System.out.println(shardingContexts.getJobName() + " | MyDistributeElasticJobListener doBeforeJobExecutedAtLastStarted...");
	}

	@Override
	public void doAfterJobExecutedAtLastCompleted(ShardingContexts shardingContexts) {
		System.out.println(shardingContexts.getJobName() + " | MyDistributeElasticJobListener doAfterJobExecutedAtLastCompleted...");
	}
}
