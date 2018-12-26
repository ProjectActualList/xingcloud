package com.xing.common.log.event;

import com.xing.admin.api.entity.SysLog;
import com.xing.admin.api.feign.LogServiceApi;
import com.xing.common.core.constant.SecurityConstants;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.event.EventListener;
import org.springframework.core.annotation.Order;
import org.springframework.scheduling.annotation.Async;

/**
 * 异步监听日志事件
 *
 * @author weixing
 * @date 2018/12/21 11:18
 */
@Slf4j
@AllArgsConstructor
public class SysLogListener {
	private final LogServiceApi logServiceApi;

	@Async
	@Order
	@EventListener(SysLogEvent.class)
	public void saveSysLog(SysLogEvent event) {
		SysLog sysLog = (SysLog) event.getSource();
		logServiceApi.saveLog(sysLog, SecurityConstants.FROM_IN);
	}
}
