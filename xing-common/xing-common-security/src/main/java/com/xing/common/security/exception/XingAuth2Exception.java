package com.xing.common.security.exception;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.xing.common.security.component.XingAuth2ExceptionSerializer;
import org.springframework.security.oauth2.common.exceptions.OAuth2Exception;

/**
 * 自定义OAuth2Exception
 *
 * @author weixing
 * @date 2018/12/21 14:39
 */
@JsonSerialize(using = XingAuth2ExceptionSerializer.class)
public class XingAuth2Exception extends OAuth2Exception {

	public XingAuth2Exception(String msg) {
		super(msg);
	}
}
