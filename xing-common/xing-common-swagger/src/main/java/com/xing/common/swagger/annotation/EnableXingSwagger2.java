package com.xing.common.swagger.annotation;

import com.xing.common.swagger.config.SwaggerAutoConfiguration;
import org.springframework.context.annotation.Import;

import java.lang.annotation.*;

/**
 * 开启 swagger
 *
 * @author weixing
 * @date 2018/12/21 11:26
 */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Inherited
@Import({SwaggerAutoConfiguration.class})
public @interface EnableXingSwagger2 {
}
