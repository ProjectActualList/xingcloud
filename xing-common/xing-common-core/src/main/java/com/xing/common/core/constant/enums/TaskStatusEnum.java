package com.xing.common.core.constant.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * @author lengleng
 * @date 2018/9/30
 * 流程状态
 */
/**
 * 流程状态
 *
 * @author weixing
 * @date 2018/12/21 11:05
 */
@Getter
@AllArgsConstructor
public enum TaskStatusEnum {
	/**
	 * 未提交
	 */
	UNSUBMIT("0", "未提交"),

	/**
	 * 审核中
	 */
	CHECK("1", "审核中"),

	/**
	 * 已完成
	 */
	COMPLETED("2", "已完成"),

	/**
	 * 驳回
	 */
	OVERRULE("9", "驳回");

	/**
	 * 类型
	 */
	private final String status;
	/**
	 * 描述
	 */
	private final String description;
}
