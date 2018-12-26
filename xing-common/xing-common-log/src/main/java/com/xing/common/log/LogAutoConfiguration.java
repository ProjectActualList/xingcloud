package com.xing.common.log;

import com.xing.admin.api.feign.LogServiceApi;
import com.xing.common.log.aspect.SysLogAspect;
import com.xing.common.log.event.SysLogListener;
import lombok.AllArgsConstructor;
import org.springframework.boot.autoconfigure.condition.ConditionalOnWebApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableAsync;

/**
 * 日志自动配置
 *
 * @author weixing
 * @date 2018/12/21 11:17
 */
@EnableAsync
@Configuration
@AllArgsConstructor
@ConditionalOnWebApplication
public class LogAutoConfiguration {
	private final LogServiceApi logServiceApi;

	@Bean
	public SysLogListener sysLogListener() {
		return new SysLogListener(logServiceApi);
	}

	@Bean
	public SysLogAspect sysLogAspect() {
		return new SysLogAspect();
	}
}
