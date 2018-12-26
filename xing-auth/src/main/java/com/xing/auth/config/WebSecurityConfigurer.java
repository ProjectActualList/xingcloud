package com.xing.auth.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.xing.common.security.handler.MobileLoginSuccessHandler;
import com.xing.common.security.mobile.MobileSecurityConfigurer;
import com.xing.common.security.service.XingUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.Primary;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.provider.ClientDetailsService;
import org.springframework.security.oauth2.provider.token.AuthorizationServerTokenServices;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

/**
 * 认证相关配置
 *
 * @author weixing
 * @date 2018/12/21 11:39
 */
@Primary
@Order(90)
@Configuration
public class WebSecurityConfigurer extends WebSecurityConfigurerAdapter {
	@Autowired
	private ObjectMapper objectMapper;
	@Autowired
	private ClientDetailsService clientDetailsService;
	@Autowired
	private XingUserDetailsService userDetailsService;
	@Lazy
	@Autowired
	private AuthorizationServerTokenServices defaultAuthorizationServerTokenServices;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.formLogin()
			.loginPage("/token/login")
			.loginProcessingUrl("/token/form")
			.and()
			.authorizeRequests()
			.antMatchers(
				"/token/**",
				"/actuator/**",
				"/mobile/**").permitAll()
			.anyRequest().authenticated()
			.and().csrf().disable()
			.apply(mobileSecurityConfigurer());
	}

	/**
	 * 不拦截静态资源
	 *
	 * @param web
	 */
	@Override
	public void configure(WebSecurity web) {
		web.ignoring().antMatchers("/css/**");
	}

	@Bean
	@Override
	public AuthenticationManager authenticationManagerBean() throws Exception {
		return super.authenticationManagerBean();
	}

	@Bean
	public AuthenticationSuccessHandler mobileLoginSuccessHandler() {
		return MobileLoginSuccessHandler.builder()
			.objectMapper(objectMapper)
			.clientDetailsService(clientDetailsService)
			.passwordEncoder(passwordEncoder())
			.defaultAuthorizationServerTokenServices(defaultAuthorizationServerTokenServices).build();
	}

	@Bean
	public MobileSecurityConfigurer mobileSecurityConfigurer() {
		MobileSecurityConfigurer mobileSecurityConfigurer = new MobileSecurityConfigurer();
		mobileSecurityConfigurer.setMobileLoginSuccessHandler(mobileLoginSuccessHandler());
		mobileSecurityConfigurer.setUserDetailsService(userDetailsService);
		return mobileSecurityConfigurer;
	}


	/**
	 * https://spring.io/blog/2017/11/01/spring-security-5-0-0-rc1-released#password-storage-updated
	 * Encoded password does not look like BCrypt
	 *
	 * @return PasswordEncoder
	 */
	@Bean
	public PasswordEncoder passwordEncoder() {
		return PasswordEncoderFactories.createDelegatingPasswordEncoder();
	}

}
