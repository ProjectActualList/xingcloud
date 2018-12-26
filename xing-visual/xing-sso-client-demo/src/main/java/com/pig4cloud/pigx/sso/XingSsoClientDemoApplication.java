package com.pig4cloud.pigx.sso;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.security.oauth2.client.EnableOAuth2Sso;
import org.springframework.cloud.client.SpringCloudApplication;

/**
 * 单点登录客户端
 * 1. 启动实例访问:http://localhost:4040/sso1/ 提示登录，然后获取到用户信息
 * 2. 再启动一个实例： http://localhost:4041/sso1/ 不需要登录即可获取当前用户信息
 *
 * @author weixing
 * @date 2018/12/21 15:31
 */
@EnableOAuth2Sso
@SpringCloudApplication
public class XingSsoClientDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(XingSsoClientDemoApplication.class, args);
	}

}
