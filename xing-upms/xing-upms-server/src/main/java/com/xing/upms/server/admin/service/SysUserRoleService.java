package com.xing.upms.server.admin.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.xing.admin.api.entity.SysUserRole;

/**
 * 用户角色 服务类
 *
 * @author weixing
 * @date 2018/12/21 14:23
 */
public interface SysUserRoleService extends IService<SysUserRole> {

	/**
	 * 根据用户Id删除该用户的角色关系
	 *
	 * @param userId 用户ID
	 * @return boolean
	 * @author 寻欢·李
	 * @date 2017年12月7日 16:31:38
	 */
	Boolean deleteByUserId(Integer userId);
}
