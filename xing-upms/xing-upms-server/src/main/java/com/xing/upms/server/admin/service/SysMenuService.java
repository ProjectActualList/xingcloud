package com.xing.upms.server.admin.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.xing.admin.api.entity.SysMenu;
import com.xing.admin.api.vo.MenuVO;

import java.util.List;

/**
 * 菜单权限表 服务类
 *
 * @author weixing
 * @date 2018/12/21 14:21
 */
public interface SysMenuService extends IService<SysMenu> {
	/**
	 * 通过角色编号查询URL 权限
	 *
	 * @param roleId 角色ID
	 * @return 菜单列表
	 */
	List<MenuVO> findMenuByRoleId(Integer roleId);

	/**
	 * 级联删除菜单
	 *
	 * @param id 菜单ID
	 * @return 成功、失败
	 */
	Boolean removeMenuById(Integer id);

	/**
	 * 更新菜单信息
	 *
	 * @param sysMenu 菜单信息
	 * @return 成功、失败
	 */
	Boolean updateMenuById(SysMenu sysMenu);
}
