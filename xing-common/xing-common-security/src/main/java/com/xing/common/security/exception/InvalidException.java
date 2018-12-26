package com.xing.common.security.exception;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.xing.common.security.component.XingAuth2ExceptionSerializer;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 14:40
 */
@JsonSerialize(using = XingAuth2ExceptionSerializer.class)
public class InvalidException extends XingAuth2Exception {

	public InvalidException(String msg, Throwable t) {
		super(msg);
	}

	@Override
	public String getOAuth2ErrorCode() {
		return "invalid_exception";
	}

	@Override
	public int getHttpErrorCode() {
		return 426;
	}

}
