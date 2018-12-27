package com.xing.act;

import com.xing.common.security.annotation.EnableXingFeignClients;
import com.xing.common.security.annotation.EnableXingResourceServer;
import com.xing.common.swagger.annotation.EnableXingSwagger2;
import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;

/**
 * @author lengleng
 * @date 2018/9/25
 * 工作流管理模块
 */
@EnableXingSwagger2
@EnableXingFeignClients
@EnableXingResourceServer
@SpringCloudApplication
public class XingActivitiApplication {

	public static void main(String[] args) {
		SpringApplication.run(XingActivitiApplication.class, args);
	}

}
