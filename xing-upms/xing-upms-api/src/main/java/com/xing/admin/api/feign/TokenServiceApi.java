package com.xing.admin.api.feign;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xing.admin.api.feign.factory.TokenServiceApiFallbackFactory;
import com.xing.common.core.constant.SecurityConstants;
import com.xing.common.core.constant.ServiceNameConstant;
import com.xing.common.core.util.R;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 14:05
 */
@FeignClient(value = ServiceNameConstant.AUTH_SERVICE, fallbackFactory = TokenServiceApiFallbackFactory.class)
public interface TokenServiceApi {
	/**
	 * 分页查询token 信息
	 *
	 * @param params 分页参数
	 * @param from   内部调用标志
	 * @return page
	 */
	@PostMapping("/token/page")
	R<Page> getTokenPage(@RequestBody Map<String, Object> params, @RequestHeader(SecurityConstants.FROM) String from);

	/**
	 * 删除token
	 *
	 * @param token token
	 * @param from  调用标志
	 * @return
	 */
	@DeleteMapping("/token/{token}")
	R<Boolean> removeTokenById(@PathVariable("token") String token, @RequestHeader(SecurityConstants.FROM) String from);
}
