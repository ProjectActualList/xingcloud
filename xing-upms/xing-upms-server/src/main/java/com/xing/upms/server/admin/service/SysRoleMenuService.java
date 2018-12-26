package com.xing.upms.server.admin.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.xing.admin.api.entity.SysRoleMenu;

/**
 * 角色菜单表 服务类
 *
 * @author weixing
 * @date 2018/12/21 14:22
 */
public interface SysRoleMenuService extends IService<SysRoleMenu> {

	/**
	 * 更新角色菜单
	 *
	 * @param role
	 * @param roleId  角色
	 * @param menuIds 菜单ID拼成的字符串，每个id之间根据逗号分隔
	 * @return
	 */
	Boolean saveRoleMenus(String role, Integer roleId, String menuIds);
}
