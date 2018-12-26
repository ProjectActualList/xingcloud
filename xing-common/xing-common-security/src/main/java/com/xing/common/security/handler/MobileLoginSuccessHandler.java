package com.xing.common.security.handler;

import cn.hutool.core.map.MapUtil;
import cn.hutool.core.util.CharsetUtil;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.xing.common.core.constant.CommonConstant;
import com.xing.common.security.util.AuthUtils;
import lombok.Builder;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpHeaders;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.common.exceptions.InvalidClientException;
import org.springframework.security.oauth2.common.exceptions.UnapprovedClientAuthenticationException;
import org.springframework.security.oauth2.provider.*;
import org.springframework.security.oauth2.provider.request.DefaultOAuth2RequestValidator;
import org.springframework.security.oauth2.provider.token.AuthorizationServerTokenServices;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 手机号登录成功，返回oauth token
 *
 * @author weixing
 * @date 2018/12/21 14:43
 */
@Slf4j
@Builder
public class MobileLoginSuccessHandler implements AuthenticationSuccessHandler {
	private static final String BASIC_ = "Basic ";
	private ObjectMapper objectMapper;
	private PasswordEncoder passwordEncoder;
	private ClientDetailsService clientDetailsService;
	private AuthorizationServerTokenServices defaultAuthorizationServerTokenServices;

	/**
	 * Called when a user has been successfully authenticated.
	 * 调用spring security oauth API 生成 oAuth2AccessToken
	 *
	 * @param request        the request which caused the successful authentication
	 * @param response       the response
	 * @param authentication the <tt>Authentication</tt> object which was created during
	 */
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) {
		String header = request.getHeader(HttpHeaders.AUTHORIZATION);

		if (header == null || !header.startsWith(BASIC_)) {
			throw new UnapprovedClientAuthenticationException("请求头中client信息为空");
		}

		try {
			String[] tokens = AuthUtils.extractAndDecodeHeader(header);
			assert tokens.length == 2;
			String clientId = tokens[0];

			ClientDetails clientDetails = clientDetailsService.loadClientByClientId(clientId);

			//校验secret
			if (!passwordEncoder.matches(tokens[1], clientDetails.getClientSecret())) {
				throw new InvalidClientException("Given client ID does not match authenticated client");

			}

			TokenRequest tokenRequest = new TokenRequest(MapUtil.newHashMap(), clientId, clientDetails.getScope(), "mobile");

			//校验scope
			new DefaultOAuth2RequestValidator().validateScope(tokenRequest, clientDetails);
			OAuth2Request oAuth2Request = tokenRequest.createOAuth2Request(clientDetails);
			OAuth2Authentication oAuth2Authentication = new OAuth2Authentication(oAuth2Request, authentication);
			OAuth2AccessToken oAuth2AccessToken = defaultAuthorizationServerTokenServices.createAccessToken(oAuth2Authentication);
			log.info("获取token 成功：{}", oAuth2AccessToken.getValue());

			response.setCharacterEncoding(CharsetUtil.UTF_8);
			response.setContentType(CommonConstant.CONTENT_TYPE);
			PrintWriter printWriter = response.getWriter();
			printWriter.append(objectMapper.writeValueAsString(oAuth2AccessToken));
		} catch (IOException e) {
			throw new BadCredentialsException(
				"Failed to decode basic authentication token");
		}

	}


}
