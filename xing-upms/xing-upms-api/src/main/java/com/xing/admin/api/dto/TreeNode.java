package com.xing.admin.api.dto;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * 树节点
 *
 * @author weixing
 * @date 2018/12/21 13:56
 */
@Data
public class TreeNode {
	protected int id;
	protected int parentId;
	protected List<TreeNode> children = new ArrayList<TreeNode>();

	public void add(TreeNode node) {
		children.add(node);
	}
}
