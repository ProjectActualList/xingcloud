package com.xing.admin.api.feign.factory;

import com.xing.admin.api.feign.UserServiceApi;
import com.xing.admin.api.feign.fallback.UserServiceApiApiFallbackImpl;
import feign.hystrix.FallbackFactory;
import org.springframework.stereotype.Component;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 14:05
 */
@Component
public class UserServiceApiFallbackFactory implements FallbackFactory<UserServiceApi> {

	@Override
	public UserServiceApi create(Throwable throwable) {
		UserServiceApiApiFallbackImpl remoteUserServiceFallback = new UserServiceApiApiFallbackImpl();
		remoteUserServiceFallback.setCause(throwable);
		return remoteUserServiceFallback;
	}
}
