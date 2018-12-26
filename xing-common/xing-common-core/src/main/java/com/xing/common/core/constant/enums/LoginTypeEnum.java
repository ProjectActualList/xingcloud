package com.xing.common.core.constant.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 社交登录类型
 *
 * @author weixing
 * @date 2018/12/21 11:04
 */
@Getter
@AllArgsConstructor
public enum LoginTypeEnum {
	/**
	 * 账号密码登录
	 */
	PWD("PWD", "账号密码登录"),

	/**
	 * 验证码登录
	 */
	SMS("SMS", "验证码登录"),

	/**
	 * QQ登录
	 */
	QQ("QQ", "QQ登录"),

	/**
	 * 微信登录
	 */
	WECHAT("WX", "微信登录");

	/**
	 * 类型
	 */
	private String type;
	/**
	 * 描述
	 */
	private String description;
}
