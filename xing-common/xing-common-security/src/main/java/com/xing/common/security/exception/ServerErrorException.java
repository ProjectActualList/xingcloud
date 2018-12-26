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
public class ServerErrorException extends XingAuth2Exception {

	public ServerErrorException(String msg, Throwable t) {
		super(msg);
	}

	@Override
	public String getOAuth2ErrorCode() {
		return "server_error";
	}

	@Override
	public int getHttpErrorCode() {
		return HttpStatus.INTERNAL_SERVER_ERROR.value();
	}

}
