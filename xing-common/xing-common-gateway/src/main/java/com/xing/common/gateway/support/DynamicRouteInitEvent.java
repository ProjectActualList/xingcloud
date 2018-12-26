package com.xing.common.gateway.support;

import org.springframework.context.ApplicationEvent;

/**
 * 路由初始化事件
 *
 * @author weixing
 * @date 2018/12/21 11:11
 */
public class DynamicRouteInitEvent extends ApplicationEvent {
	public DynamicRouteInitEvent(Object source) {
		super(source);
	}
}
