package com.xing.common.transaction.tx;

import com.xing.common.transaction.tx.springcloud.feign.TransactionRestTemplateInterceptor;
import feign.RequestInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
/**
 *
 *
 * @author weixing
 * @date 2018/12/21 11:28
 */
@Configuration
public class RequestInterceptorConfiguration {

	@Bean
	public RequestInterceptor requestInterceptor() {
		return new TransactionRestTemplateInterceptor();
	}
}
