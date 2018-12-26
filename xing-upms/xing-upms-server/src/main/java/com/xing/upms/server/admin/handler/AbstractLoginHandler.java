package com.xing.upms.server.admin.handler;

import com.xing.admin.api.dto.UserInfo;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 14:28
 */
public abstract class AbstractLoginHandler implements LoginHandler {

	/**
	 * 处理方法
	 *
	 * @param loginStr 登录参数
	 * @return
	 */
	@Override
	public UserInfo handle(String loginStr) {
		String identify = identify(loginStr);
		return info(identify);
	}
}
