package com.xing.upms.server.admin.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xing.admin.api.entity.SysDict;
import com.xing.upms.server.admin.service.SysDictService;
import com.xing.common.core.util.R;
import com.xing.common.log.annotation.SysLog;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

/**
 * 字典表 前端控制器
 *
 * @author weixing
 * @date 2018/12/21 14:29
 */
@RestController
@AllArgsConstructor
@RequestMapping("/dict")
@Api(value = "dict", description = "字典管理模块")
public class DictController {
	private final SysDictService sysDictService;

	/**
	 * 通过ID查询字典信息
	 *
	 * @param id ID
	 * @return 字典信息
	 */
	@GetMapping("/{id}")
	public R getById(@PathVariable Integer id) {
		return new R<>(sysDictService.getById(id));
	}

	/**
	 * 分页查询字典信息
	 *
	 * @param page 分页对象
	 * @return 分页对象
	 */
	@GetMapping("/page")
	public R<IPage> getDictPage(Page page, SysDict sysDict) {
		return new R<>(sysDictService.page(page, Wrappers.query(sysDict)));
	}

	/**
	 * 通过字典类型查找字典
	 *
	 * @param type 类型
	 * @return 同类型字典
	 */
	@GetMapping("/type/{type}")
	@Cacheable(value = "dict_details", key = "#type")
	public R getDictByType(@PathVariable String type) {
		return new R<>(sysDictService.list(Wrappers
			.<SysDict>query().lambda()
			.eq(SysDict::getType, type)));
	}

	/**
	 * 添加字典
	 *
	 * @param sysDict 字典信息
	 * @return success、false
	 */
	@SysLog("添加字典")
	@PostMapping
	@CacheEvict(value = "dict_details", key = "#sysDict.type")
	@PreAuthorize("@pms.hasPermission('sys_dict_add')")
	public R save(@Valid @RequestBody SysDict sysDict) {
		return new R<>(sysDictService.save(sysDict));
	}

	/**
	 * 删除字典，并且清除字典缓存
	 *
	 * @param id   ID
	 * @param type 类型
	 * @return R
	 */
	@SysLog("删除字典")
	@DeleteMapping("/{id}/{type}")
	@CacheEvict(value = "dict_details", key = "#type")
	@PreAuthorize("@pms.hasPermission('sys_dict_del')")
	public R removeById(@PathVariable Integer id, @PathVariable String type) {
		return new R<>(sysDictService.removeById(id));
	}

	/**
	 * 修改字典
	 *
	 * @param sysDict 字典信息
	 * @return success/false
	 */
	@PutMapping
	@SysLog("修改字典")
	@CacheEvict(value = "dict_details", key = "#sysDict.type")
	@PreAuthorize("@pms.hasPermission('sys_dict_edit')")
	public R updateById(@Valid @RequestBody SysDict sysDict) {
		return new R<>(sysDictService.updateById(sysDict));
	}
}
