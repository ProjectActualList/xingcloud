package com.xing.daemon.job;

import com.dangdang.ddframe.job.api.ShardingContext;
import com.dangdang.ddframe.job.api.simple.SimpleJob;
import lombok.extern.slf4j.Slf4j;

/**
 * 测试Job
 *
 * @author weixing
 * @date 2018/12/21 15:22
 */
@Slf4j
public class XingSimpleJob2 implements SimpleJob {
	/**
	 * 业务执行逻辑
	 *
	 * @param shardingContext 分片信息
	 */
	@Override
	public void execute(ShardingContext shardingContext) {
		log.info("第二个执行了:{}", shardingContext);
	}
}
