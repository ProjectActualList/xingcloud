package com.xing.common.core.constant.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 流程状态
 *
 * @author weixing
 * @date 2018/12/21 11:04
 */
@Getter
@AllArgsConstructor
public enum ProcessStatusEnum {
	/**
	 * 图片资源
	 */
	ACTIVE("active", "图片资源"),

	/**
	 * xml资源
	 */
	SUSPEND("suspend", "xml资源");

	/**
	 * 类型
	 */
	private final String status;
	/**
	 * 描述
	 */
	private final String description;
}
