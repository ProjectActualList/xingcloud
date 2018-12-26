package com.xing.admin.api.feign.factory;

import com.xing.admin.api.feign.TokenServiceApi;
import com.xing.admin.api.feign.fallback.TokenServiceApiApiFallbackImpl;
import feign.hystrix.FallbackFactory;
import org.springframework.stereotype.Component;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 14:05
 */
@Component
public class TokenServiceApiFallbackFactory implements FallbackFactory<TokenServiceApi> {

	@Override
	public TokenServiceApi create(Throwable throwable) {
		TokenServiceApiApiFallbackImpl remoteTokenServiceFallback = new TokenServiceApiApiFallbackImpl();
		remoteTokenServiceFallback.setCause(throwable);
		return remoteTokenServiceFallback;
	}
}
