package com.xing.daemon.job;

import com.dangdang.ddframe.job.api.ShardingContext;
import com.dangdang.ddframe.job.api.dataflow.DataflowJob;

import java.util.List;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 15:21
 */
public class XingDataflowJob implements DataflowJob<Integer> {

	@Override
	public List<Integer> fetchData(ShardingContext shardingContext) {
		return null;
	}

	@Override
	public void processData(ShardingContext shardingContext, List<Integer> list) {

	}
}
