package com.xing.codegen;

import com.xing.common.security.annotation.EnableXingFeignClients;
import com.xing.common.security.annotation.EnableXingResourceServer;
import com.xing.common.swagger.annotation.EnableXingSwagger2;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.cloud.client.SpringCloudApplication;

/**
 * codegen 启动类
 *
 * @author weixing
 * @date 2018/12/21 15:35
 *
 * @SpringBootApplication(exclude = {DataSourceAutoConfiguration.class}) 取消数据源自动加载
 */
@EnableXingSwagger2
@SpringCloudApplication
@EnableXingFeignClients
@EnableXingResourceServer
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class XingCodeGenApplication {

	public static void main(String[] args) {
		SpringApplication.run(XingCodeGenApplication.class, args);
	}
}
