package com.xing.eureka;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

/**
 * 服务注册中心
 *
 * @author weixing
 * @date 2018/12/21 10:53
 */
@EnableEurekaServer
@SpringBootApplication
public class XingEurekaApplication {

	public static void main(String[] args) {
		SpringApplication.run(XingEurekaApplication.class, args);
	}
}
