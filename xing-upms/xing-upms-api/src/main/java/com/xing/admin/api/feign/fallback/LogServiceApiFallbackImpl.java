package com.xing.admin.api.feign.fallback;

import com.xing.admin.api.entity.SysLog;
import com.xing.admin.api.feign.LogServiceApi;
import com.xing.common.core.util.R;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 14:05
 */
@Slf4j
@Component
public class LogServiceApiFallbackImpl implements LogServiceApi {

	@Setter
	private Throwable cause;

	/**
	 * 保存日志
	 *
	 * @param sysLog
	 * @param from
	 * @return R
	 */
	@Override
	public R<Boolean> saveLog(SysLog sysLog, String from) {
		log.error("feign 插入日志失败", cause);
		return null;
	}
}
