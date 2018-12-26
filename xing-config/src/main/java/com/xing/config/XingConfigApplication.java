package com.xing.config;

import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

/**
 * 配置中心
 *
 * @author weixing
 * @date 2018/12/21 11:40
 */
@EnableConfigServer
@SpringCloudApplication
public class XingConfigApplication {

	public static void main(String[] args) {
		SpringApplication.run(XingConfigApplication.class, args);
	}
}
