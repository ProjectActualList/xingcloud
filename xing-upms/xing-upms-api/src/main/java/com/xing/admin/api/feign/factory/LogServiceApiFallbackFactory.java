package com.xing.admin.api.feign.factory;

import com.xing.admin.api.feign.LogServiceApi;
import com.xing.admin.api.feign.fallback.LogServiceApiFallbackImpl;
import feign.hystrix.FallbackFactory;
import org.springframework.stereotype.Component;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 14:03
 */
@Component
public class LogServiceApiFallbackFactory implements FallbackFactory<LogServiceApi> {

	@Override
	public LogServiceApi create(Throwable throwable) {
		LogServiceApiFallbackImpl remoteLogServiceFallback = new LogServiceApiFallbackImpl();
		remoteLogServiceFallback.setCause(throwable);
		return remoteLogServiceFallback;
	}
}
