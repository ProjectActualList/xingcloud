package com.xing.daemon;

import com.xing.common.job.annotation.EnableXingJob;
import com.xing.common.security.annotation.EnableXingFeignClients;
import com.xing.common.security.annotation.EnableXingResourceServer;
import com.xing.common.swagger.annotation.EnableXingSwagger2;
import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;

/**
 * 分布式任务调度模块
 *
 * @author weixing
 * @date 2018/12/21 15:24
 */
@EnableXingJob
@EnableXingSwagger2
@EnableXingFeignClients
@SpringCloudApplication
@EnableXingResourceServer
public class XingDaemonApplication {

	public static void main(String[] args) {
		SpringApplication.run(XingDaemonApplication.class, args);
	}

}
