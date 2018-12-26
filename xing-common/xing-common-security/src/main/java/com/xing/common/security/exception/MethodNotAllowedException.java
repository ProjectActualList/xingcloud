package com.xing.common.security.exception;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.xing.common.security.component.XingAuth2ExceptionSerializer;
import org.springframework.http.HttpStatus;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 14:39
 */
@JsonSerialize(using = XingAuth2ExceptionSerializer.class)
public class MethodNotAllowedException extends XingAuth2Exception {

	public MethodNotAllowedException(String msg, Throwable t) {
		super(msg);
	}

	@Override
	public String getOAuth2ErrorCode() {
		return "method_not_allowed";
	}

	@Override
	public int getHttpErrorCode() {
		return HttpStatus.METHOD_NOT_ALLOWED.value();
	}

}
