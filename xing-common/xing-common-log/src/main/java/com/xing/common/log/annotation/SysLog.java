package com.xing.common.log.annotation;

import java.lang.annotation.*;

/**
 * 操作日志注解
 *
 * @author weixing
 * @date 2018/12/21 11:18
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface SysLog {

	/**
	 * 描述
	 *
	 * @return {String}
	 */
	String value();
}
