package com.xing.upms.server.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xing.admin.api.entity.SysDeptRelation;

/**
 *  Mapper 接口
 *
 * @author weixing
 * @date 2018/12/21 14:26
 */
public interface SysDeptRelationMapper extends BaseMapper<SysDeptRelation> {
	/**
	 * 删除部门关系表数据
	 *
	 * @param id 部门ID
	 */
	void deleteDeptRelationsById(Integer id);

	/**
	 * 更改部分关系表数据
	 *
	 * @param deptRelation
	 */
	void updateDeptRelations(SysDeptRelation deptRelation);

}
