package com.xing.codegen.entity;

import lombok.Data;

/**
 * 生成配置
 *
 * @author weixing
 * @date 2018/12/21 15:36
 */
@Data
public class GenConfig {
	/**
	 * 包名
	 */
	private String packageName;
	/**
	 * 作者
	 */
	private String author;
	/**
	 * 模块名称
	 */
	private String moduleName;
	/**
	 * 表前缀
	 */
	private String tablePrefix;

	/**
	 * 表名称
	 */
	private String tableName;

	/**
	 * 表备注
	 */
	private String comments;
}
