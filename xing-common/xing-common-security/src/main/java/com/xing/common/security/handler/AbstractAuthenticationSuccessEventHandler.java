package com.xing.common.security.handler;

import cn.hutool.core.collection.CollUtil;
import org.springframework.context.ApplicationListener;
import org.springframework.security.authentication.event.AuthenticationSuccessEvent;
import org.springframework.security.core.Authentication;

/**
 * 认证成功事件处理器
 *
 * @author weixing
 * @date 2018/12/21 14:42
 */
public abstract class AbstractAuthenticationSuccessEventHandler implements ApplicationListener<AuthenticationSuccessEvent> {
	/**
	 * Handle an application event.
	 *
	 * @param event the event to respond to
	 */
	@Override
	public void onApplicationEvent(AuthenticationSuccessEvent event) {
		Authentication authentication = (Authentication) event.getSource();
		if (CollUtil.isNotEmpty(authentication.getAuthorities())) {
			handle(authentication);
		}
	}

	/**
	 * 处理登录成功方法
	 * <p>
	 * 获取到登录的authentication 对象
	 *
	 * @param authentication 登录对象
	 */
	public abstract void handle(Authentication authentication);
}
