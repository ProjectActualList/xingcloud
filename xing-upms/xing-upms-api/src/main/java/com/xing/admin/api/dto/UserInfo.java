package com.xing.admin.api.dto;

import com.xing.admin.api.entity.SysUser;
import lombok.Data;

import java.io.Serializable;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 13:57
 */
@Data
public class UserInfo implements Serializable {
	/**
	 * 用户基本信息
	 */
	private SysUser sysUser;
	/**
	 * 权限标识集合
	 */
	private String[] permissions;

	/**
	 * 角色集合
	 */
	private Integer[] roles;
}
