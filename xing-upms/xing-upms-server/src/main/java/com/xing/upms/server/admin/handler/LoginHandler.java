package com.xing.upms.server.admin.handler;

import com.xing.admin.api.dto.UserInfo;

/**
 * 登录处理器
 *
 * @author weixing
 * @date 2018/12/21 14:28
 */
public interface LoginHandler {

	/**
	 * 通过用户传入获取唯一标识
	 *
	 * @param loginStr
	 * @return
	 */
	String identify(String loginStr);

	/**
	 * 通过openId 获取用户信息
	 *
	 * @param identify
	 * @return
	 */
	UserInfo info(String identify);

	/**
	 * 处理方法
	 *
	 * @param loginStr 登录参数
	 * @return
	 */
	UserInfo handle(String loginStr);
}
