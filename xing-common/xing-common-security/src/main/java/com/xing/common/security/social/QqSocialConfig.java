package com.xing.common.security.social;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

/**
 * qq登录配置信息
 *
 * @author weixing
 * @date 2018/12/21 14:45
 */
@Data
@Configuration
@ConfigurationProperties(prefix = "social.qq")
public class QqSocialConfig {
	private String appid;
	private String secret;
}
