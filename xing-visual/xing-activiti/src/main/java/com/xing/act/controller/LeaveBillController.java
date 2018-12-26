package com.xing.act.controller;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xing.act.entity.LeaveBill;
import com.xing.act.service.LeaveBillService;
import com.xing.act.service.ProcessService;
import com.xing.common.core.constant.enums.TaskStatusEnum;
import com.xing.common.core.util.R;
import com.xing.common.security.util.SecurityUtils;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

/**
 * 请假流程
 *
 * @author weixing
 * @date 2018/12/21 15:11
 */
@RestController
@AllArgsConstructor
@RequestMapping("/leave-bill")
public class LeaveBillController {
	private final LeaveBillService leaveBillService;
	private final ProcessService processService;

	/**
	 * 请假审批单简单分页查询
	 *
	 * @param page      分页对象
	 * @param leaveBill 请假审批单
	 * @return
	 */
	@GetMapping("/page")
	public R getLeaveBillPage(Page page, LeaveBill leaveBill) {
		return new R<>(leaveBillService.page(page, Wrappers.query(leaveBill)));
	}


	/**
	 * 信息
	 *
	 * @param leaveId
	 * @return R
	 */
	@GetMapping("/{leaveId}")
	public R getById(@PathVariable("leaveId") Integer leaveId) {
		return new R<>(leaveBillService.getById(leaveId));
	}

	/**
	 * 保存
	 *
	 * @param leaveBill
	 * @return R
	 */
	@PostMapping
	public R save(@RequestBody LeaveBill leaveBill) {
		leaveBill.setUsername(SecurityUtils.getUsername());
		leaveBill.setState(TaskStatusEnum.UNSUBMIT.getStatus());
		return new R<>(leaveBillService.save(leaveBill));
	}

	/**
	 * 修改
	 *
	 * @param leaveBill
	 * @return R
	 */
	@PutMapping
	public R updateById(@RequestBody LeaveBill leaveBill) {
		return new R<>(leaveBillService.updateById(leaveBill));
	}

	/**
	 * 删除
	 *
	 * @param leaveId
	 * @return R
	 */
	@DeleteMapping("/{leaveId}")
	public R removeById(@PathVariable Integer leaveId) {
		return new R<>(leaveBillService.removeById(leaveId));
	}

	/**
	 * 提交请假流程
	 *
	 * @param leaveId
	 * @return R
	 */
	@GetMapping("/submit/{leaveId}")
	public R submit(@PathVariable("leaveId") Integer leaveId) {
		return new R<>(processService.saveStartProcess(leaveId));
	}
}
