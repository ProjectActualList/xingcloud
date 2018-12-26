package com.xing.common.security.annotation;

import com.xing.common.security.component.XingResourceServerAutoConfiguration;
import com.xing.common.security.component.XingSecurityBeanDefinitionRegistrar;
import org.springframework.context.annotation.Import;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;

import java.lang.annotation.*;

/**
 * 资源服务注解
 *
 * @author weixing
 * @date 2018/12/21 11:20
 */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Inherited
@EnableResourceServer
@EnableGlobalMethodSecurity(prePostEnabled = true)
@Import({XingResourceServerAutoConfiguration.class, XingSecurityBeanDefinitionRegistrar.class})
public @interface EnableXingResourceServer {

	/**
	 * false：上下文获取用户名
	 * true： 上下文获取全部用户信息
	 *
	 * @return
	 */
	boolean details() default false;
}
