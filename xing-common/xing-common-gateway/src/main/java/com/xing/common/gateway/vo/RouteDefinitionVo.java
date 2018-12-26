package com.xing.common.gateway.vo
	;

import lombok.Data;
import org.springframework.cloud.gateway.route.RouteDefinition;

import java.io.Serializable;

/**
 * 扩展此类支持序列化
 *
 * @author weixing
 * @date 2018/12/21 11:11
 */
@Data
public class RouteDefinitionVo extends RouteDefinition implements Serializable {
	/**
	 * 路由名称
	 */
	private String routeName;
}
