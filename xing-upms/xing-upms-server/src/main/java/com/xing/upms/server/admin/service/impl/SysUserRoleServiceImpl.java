package com.xing.upms.server.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xing.admin.api.entity.SysUserRole;
import com.xing.upms.server.admin.mapper.SysUserRoleMapper;
import com.xing.upms.server.admin.service.SysUserRoleService;
import org.springframework.stereotype.Service;

/**
 * 用户角色 服务实现类
 *
 * @author weixing
 * @date 2018/12/21 14:26
 */
@Service
public class SysUserRoleServiceImpl extends ServiceImpl<SysUserRoleMapper, SysUserRole> implements SysUserRoleService {

	/**
	 * 根据用户Id删除该用户的角色关系
	 *
	 * @param userId 用户ID
	 * @return boolean
	 * @author 寻欢·李
	 * @date 2017年12月7日 16:31:38
	 */
	@Override
	public Boolean deleteByUserId(Integer userId) {
		return baseMapper.deleteByUserId(userId);
	}
}
