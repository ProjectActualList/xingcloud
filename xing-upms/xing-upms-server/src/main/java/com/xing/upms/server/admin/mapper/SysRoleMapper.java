package com.xing.upms.server.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xing.admin.api.entity.SysRole;

import java.util.List;

/**
 * Mapper 接口
 *
 * @author weixing
 * @date 2018/12/21 14:27
 */
public interface SysRoleMapper extends BaseMapper<SysRole> {
	/**
	 * 通过用户ID，查询角色信息
	 *
	 * @param userId
	 * @return
	 */
	List<SysRole> listRolesByUserId(Integer userId);
}
