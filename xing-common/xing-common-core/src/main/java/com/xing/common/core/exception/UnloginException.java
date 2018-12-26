package com.xing.common.core.exception;

import lombok.NoArgsConstructor;

/**
 * 自定义未登录异常
 *
 * @author weixing
 * @date 2018/12/21 11:07
 */
@NoArgsConstructor
public class UnloginException extends RuntimeException {
	private static final long serialVersionUID = 1L;

	public UnloginException(String message) {
		super(message);
	}

	public UnloginException(Throwable cause) {
		super(cause);
	}

	public UnloginException(String message, Throwable cause) {
		super(message, cause);
	}

	public UnloginException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

}
