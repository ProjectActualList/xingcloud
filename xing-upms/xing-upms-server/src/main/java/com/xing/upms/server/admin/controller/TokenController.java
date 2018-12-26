package com.xing.upms.server.admin.controller;

import com.xing.admin.api.feign.TokenServiceApi;
import com.xing.common.core.constant.SecurityConstants;
import com.xing.common.core.util.R;
import com.xing.common.log.annotation.SysLog;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * getTokenPage 管理
 *
 * @author weixing
 * @date 2018/12/21 14:30
 */
@RestController
@AllArgsConstructor
@RequestMapping("/token")
@Api(value = "token", description = "令牌管理模块")
public class TokenController {
	private final TokenServiceApi tokenServiceApi;

	/**
	 * 分页token 信息
	 *
	 * @param params 参数集
	 * @return token集合
	 */
	@GetMapping("/page")
	public R getTokenPage(@RequestParam Map<String, Object> params) {
		return tokenServiceApi.getTokenPage(params, SecurityConstants.FROM_IN);
	}

	/**
	 * 删除
	 *
	 * @param token getTokenPage
	 * @return success/false
	 */
	@SysLog("删除用户token")
	@DeleteMapping("/{token}")
	@PreAuthorize("@pms.hasPermission('sys_token_del')")
	public R removeById(@PathVariable String token) {
		return tokenServiceApi.removeTokenById(token, SecurityConstants.FROM_IN);
	}
}
