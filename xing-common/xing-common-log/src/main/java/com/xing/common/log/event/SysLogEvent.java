package com.xing.common.log.event;

import com.xing.admin.api.entity.SysLog;
import org.springframework.context.ApplicationEvent;

/**
 * 系统日志事件
 *
 * @author weixing
 * @date 2018/12/21 11:17
 */
public class SysLogEvent extends ApplicationEvent {

	public SysLogEvent(SysLog source) {
		super(source);
	}
}
