package com.xing.upms.server.admin.service;

import cn.hutool.json.JSONArray;
import com.baomidou.mybatisplus.extension.service.IService;
import com.xing.admin.api.entity.SysRouteConf;
import reactor.core.publisher.Mono;

import java.util.List;

/**
 * 路由配置 服务类
 *
 * @author weixing
 * @date 2018/12/21 14:22
 */
public interface SysRouteConfService extends IService<SysRouteConf> {

	/**
	 * 获取全部路由
	 * <p>
	 * RedisRouteDefinitionWriter.java
	 * PropertiesRouteDefinitionLocator.java
	 *
	 * @return
	 */
	List<SysRouteConf> routes();

	/**
	 * 更新路由信息
	 *
	 * @param routes 路由信息
	 * @return
	 */
	Mono<Void> updateRoutes(JSONArray routes);
}

