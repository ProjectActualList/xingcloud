package com.xing.common.security.feign;

import feign.RequestInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * feign 租户信息拦截
 *
 * @author weixing
 * @date 2018/12/21 14:42
 */
@Configuration
public class XingFeignTenantConfiguration {
	@Bean
	public RequestInterceptor xingFeignTenantInterceptor() {
		return new XingFeignTenantInterceptor();
	}
}
