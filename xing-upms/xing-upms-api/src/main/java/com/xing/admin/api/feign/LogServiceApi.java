package com.xing.admin.api.feign;

import com.xing.admin.api.entity.SysLog;
import com.xing.admin.api.feign.factory.LogServiceApiFallbackFactory;
import com.xing.common.core.constant.SecurityConstants;
import com.xing.common.core.constant.ServiceNameConstant;
import com.xing.common.core.util.R;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;

/**
 * 日志
 *
 * @author weixing
 * @date 2018/12/21 14:00
 */
@FeignClient(value = ServiceNameConstant.UMPS_SERVICE, fallbackFactory = LogServiceApiFallbackFactory.class)
public interface LogServiceApi {
	/**
	 * 保存日志
	 *
	 * @param sysLog 日志实体
	 * @param from   是否内部调用
	 * @return succes、false
	 */
	@PostMapping("/log/save")
	R<Boolean> saveLog(@RequestBody SysLog sysLog, @RequestHeader(SecurityConstants.FROM) String from);
}
