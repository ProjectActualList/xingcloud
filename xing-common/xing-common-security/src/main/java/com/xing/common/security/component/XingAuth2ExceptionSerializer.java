package com.xing.common.security.component;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import com.xing.common.security.exception.XingAuth2Exception;

import java.io.IOException;

/**
 * OAuth2 异常格式化
 *
 * @author weixing
 * @date 2018/12/21 11:21
 */
public class XingAuth2ExceptionSerializer extends StdSerializer<XingAuth2Exception> {
	public XingAuth2ExceptionSerializer() {
		super(XingAuth2Exception.class);
	}

	@Override
	public void serialize(XingAuth2Exception value, JsonGenerator gen, SerializerProvider provider) throws IOException {
		gen.writeStartObject();
		gen.writeObjectField("code", 1);
		gen.writeStringField("message", value.getMessage());
		gen.writeStringField("data", value.getOAuth2ErrorCode());
		gen.writeEndObject();
	}
}
