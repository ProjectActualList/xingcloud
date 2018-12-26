package com.xing.upms.server.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xing.admin.api.entity.SysDept;

import java.util.List;

/**
 * 部门管理 Mapper 接口
 *
 * @author weixing
 * @date 2018/12/21 14:26
 */
public interface SysDeptMapper extends BaseMapper<SysDept> {

	/**
	 * 关联dept——relation
	 *
	 * @return 数据列表
	 */
	List<SysDept> listDepts();
}
