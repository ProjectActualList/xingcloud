package com.xing.codegen;

import com.xing.common.security.annotation.EnableXingFeignClients;
import com.xing.common.security.annotation.EnableXingResourceServer;
import com.xing.common.swagger.annotation.EnableXingSwagger2;
import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 15:35
 */
@EnableXingSwagger2
@SpringCloudApplication
@EnableXingFeignClients
@EnableXingResourceServer
public class XingCodeGenApplication {

	public static void main(String[] args) {
		SpringApplication.run(XingCodeGenApplication.class, args);
	}
}
