package com.xing.upms.server.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xing.admin.api.entity.SysMenu;
import com.xing.admin.api.vo.MenuVO;

import java.util.List;

/**
 * 菜单权限表 Mapper 接口
 *
 * @author weixing
 * @date 2018/12/21 14:27
 */
public interface SysMenuMapper extends BaseMapper<SysMenu> {

	/**
	 * 通过角色编号查询菜单
	 *
	 * @param roleId 角色ID
	 * @return
	 */
	List<MenuVO> listMenusByRoleId(Integer roleId);

	/**
	 * 通过角色ID查询权限
	 *
	 * @param roleIds Ids
	 * @return
	 */
	List<String> listPermissionsByRoleIds(String roleIds);
}
