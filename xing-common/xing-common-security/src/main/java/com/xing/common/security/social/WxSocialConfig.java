package com.xing.common.security.social;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

/**
 * 微信登录配置
 *
 * @author weixing
 * @date 2018/12/21 14:46
 */
@Data
@Configuration
@ConfigurationProperties(prefix = "social.wx")
public class WxSocialConfig {
	private String appid;
	private String secret;
}
