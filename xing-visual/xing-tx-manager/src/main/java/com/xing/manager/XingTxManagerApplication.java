package com.xing.manager;

import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;

/**
 * tx-manager ，进行了代码逻辑和代码规范重构
 *
 * @author weixing
 * @date 2018/12/21 14:59
 */
@SpringCloudApplication
public class XingTxManagerApplication {


	public static void main(String[] args) {
		SpringApplication.run(XingTxManagerApplication.class, args);
	}

}
