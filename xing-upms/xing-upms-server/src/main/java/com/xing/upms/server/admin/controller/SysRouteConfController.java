package com.xing.upms.server.admin.controller;

import cn.hutool.json.JSONArray;
import com.xing.upms.server.admin.service.SysRouteConfService;
import com.xing.common.core.util.R;
import com.xing.common.log.annotation.SysLog;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

/**
 * 路由
 *
 * @author weixing
 * @date 2018/12/21 14:30
 */
@RestController
@AllArgsConstructor
@RequestMapping("/route")
@Api(value = "route",description = "动态路由管理模块")
public class SysRouteConfController {
	private final SysRouteConfService sysRouteConfService;


	/**
	 * 获取当前定义的路由信息
	 *
	 * @return
	 */
	@GetMapping
	public R listRoutes() {
		return new R<>(sysRouteConfService.list());
	}

	/**
	 * 修改路由
	 *
	 * @param routes 路由定义
	 * @return
	 */
	@SysLog("修改路由")
	@PutMapping
	public R updateRoutes(@RequestBody JSONArray routes) {
		return new R(sysRouteConfService.updateRoutes(routes));
	}

}
