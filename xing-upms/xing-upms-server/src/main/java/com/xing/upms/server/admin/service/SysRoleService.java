package com.xing.upms.server.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xing.admin.api.entity.SysRole;

import java.util.List;

/**
 * 系统角色 服务类
 *
 * @author weixing
 * @date 2018/12/21 14:22
 */
public interface SysRoleService extends IService<SysRole> {

	/**
	 * 通过用户ID，查询角色信息
	 *
	 * @param userId
	 * @return
	 */
	List<SysRole> findRolesByUserId(Integer userId);

	/**
	 * 通过角色ID，删除角色
	 *
	 * @param id
	 * @return
	 */
	Boolean removeRoleById(Integer id);
}
