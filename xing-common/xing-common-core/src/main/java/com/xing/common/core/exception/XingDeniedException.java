package com.xing.common.core.exception;

import lombok.NoArgsConstructor;

/**
 * 自定义 403 授权拒绝
 *
 * @author weixing
 * @date 2018/12/21 11:06
 */
@NoArgsConstructor
public class XingDeniedException extends RuntimeException {
	private static final long serialVersionUID = 1L;

	public XingDeniedException(String message) {
		super(message);
	}

	public XingDeniedException(Throwable cause) {
		super(cause);
	}

	public XingDeniedException(String message, Throwable cause) {
		super(message, cause);
	}

	public XingDeniedException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

}
