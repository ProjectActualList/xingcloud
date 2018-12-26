package com.xing.upms.server.admin;


import com.xing.common.security.annotation.EnableXingFeignClients;
import com.xing.common.security.annotation.EnableXingResourceServer;
import com.xing.common.swagger.annotation.EnableXingSwagger2;
import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;

/**
 * 用户统一管理系统
 *
 * @author weixing
 * @date 2018/12/21 14:32
 */
@EnableXingSwagger2
@SpringCloudApplication
@EnableXingFeignClients
@EnableXingResourceServer(details = true)
public class XingAdminApplication {
	public static void main(String[] args) {
		SpringApplication.run(XingAdminApplication.class, args);
	}

}
