package com.xing.daemon.controller;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xing.common.core.util.R;
import com.xing.daemon.entity.StatusTraceLog;
import com.xing.daemon.service.StatusTraceLogService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

/**
 * 
 *
 * @author weixing
 * @date 2018/12/21 15:23
 */
@RestController
@AllArgsConstructor
@RequestMapping("/status-trace-log")
public class StatusTraceLogController {
	private final StatusTraceLogService statusTraceLogService;

	/**
	 * 任务轨迹处理简单分页查询
	 *
	 * @param page           分页对象
	 * @param statusTraceLog 任务轨迹处理
	 * @return
	 */
	@GetMapping("/page")
	public R getStatusTraceLogPage(Page<StatusTraceLog> page, StatusTraceLog statusTraceLog) {
		return new R<>(statusTraceLogService.page(page, Wrappers.query(statusTraceLog)));
	}


	/**
	 * 信息
	 *
	 * @param id
	 * @return R
	 */
	@GetMapping("/{id}")
	public R getById(@PathVariable("id") String id) {
		return new R<>(statusTraceLogService.getById(id));
	}

	/**
	 * 保存
	 *
	 * @param statusTraceLog
	 * @return R
	 */
	@PostMapping
	public R save(@RequestBody StatusTraceLog statusTraceLog) {
		return new R<>(statusTraceLogService.save(statusTraceLog));
	}

	/**
	 * 修改
	 *
	 * @param statusTraceLog
	 * @return R
	 */
	@PutMapping
	public R update(@RequestBody StatusTraceLog statusTraceLog) {
		return new R<>(statusTraceLogService.updateById(statusTraceLog));
	}

	/**
	 * 删除
	 *
	 * @param id
	 * @return R
	 */
	@DeleteMapping("/{id}")
	public R removeById(@PathVariable("id") String id) {
		return new R<>(statusTraceLogService.removeById(id));
	}

}
