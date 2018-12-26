package com.xing.common.core.exception;

/**
 * 自定义验证码异常
 *
 * @author weixing
 * @date 2018/12/21 11:07
 */
public class ValidateCodeException extends Exception {
	private static final long serialVersionUID = -7285211528095468156L;

	public ValidateCodeException() {
	}

	public ValidateCodeException(String msg) {
		super(msg);
	}
}
