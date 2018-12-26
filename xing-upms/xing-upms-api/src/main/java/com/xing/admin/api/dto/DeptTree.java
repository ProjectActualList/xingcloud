package com.xing.admin.api.dto;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 部门树
 *
 * @author weixing
 * @date 2018/12/21 13:55
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class DeptTree extends TreeNode {
	private String name;
}
