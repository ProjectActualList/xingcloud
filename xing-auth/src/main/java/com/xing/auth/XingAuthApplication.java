package com.xing.auth;


import com.xing.common.security.annotation.EnableXingFeignClients;
import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;

/**
 * @author lengleng
 * @date 2018年06月21日
 * 认证授权中心
 */
@SpringCloudApplication
@EnableXingFeignClients
public class XingAuthApplication {

	public static void main(String[] args) {
		SpringApplication.run(XingAuthApplication.class, args);
	}
}
