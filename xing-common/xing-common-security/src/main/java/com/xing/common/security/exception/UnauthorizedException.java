package com.xing.common.security.exception;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.xing.common.security.component.XingAuth2ExceptionSerializer;
import org.springframework.http.HttpStatus;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 14:40
 */
@JsonSerialize(using = XingAuth2ExceptionSerializer.class)
public class UnauthorizedException extends XingAuth2Exception {

	public UnauthorizedException(String msg, Throwable t) {
		super(msg);
	}

	@Override
	public String getOAuth2ErrorCode() {
		return "unauthorized";
	}

	@Override
	public int getHttpErrorCode() {
		return HttpStatus.UNAUTHORIZED.value();
	}

}
