package com.xing.gateway;


import com.xing.common.gateway.annotation.EnableXingDynamicRoute;
import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;

/**
 * @author lengleng
 * @date 2018年06月21日
 * 网关应用
 */
@EnableXingDynamicRoute
@SpringCloudApplication
public class XingGatewayApplication {

	public static void main(String[] args) {
		SpringApplication.run(XingGatewayApplication.class, args);
	}
}
