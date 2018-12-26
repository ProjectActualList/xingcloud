package com.xing.eureka.security;

/**
 *	安全访问配置
 *
 * @author weixing
 * @date 2018/12/21 10:53
 */
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable()
			.authorizeRequests()
			.antMatchers("/actuator/**").permitAll()
			.anyRequest()
			.authenticated().and().httpBasic();
	}
}
