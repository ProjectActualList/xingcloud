package com.xing.common.gateway.annotation;

import com.xing.common.gateway.configuration.DynamicRouteAutoConfiguration;
import org.springframework.context.annotation.Import;

import java.lang.annotation.*;


/**
 * 开启 动态路由
 *
 * @author weixing
 * @date 2018/12/21 11:12
 */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Inherited
@Import(DynamicRouteAutoConfiguration.class)
public @interface EnableXingDynamicRoute {
}
