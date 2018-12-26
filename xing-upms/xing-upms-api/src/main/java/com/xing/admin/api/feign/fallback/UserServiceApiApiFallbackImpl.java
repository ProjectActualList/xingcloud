package com.xing.admin.api.feign.fallback;

import com.xing.admin.api.dto.UserInfo;
import com.xing.admin.api.entity.SysUser;
import com.xing.admin.api.feign.UserServiceApi;
import com.xing.common.core.util.R;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 14:05
 */
@Slf4j
@Component
public class UserServiceApiApiFallbackImpl implements UserServiceApi {
	@Setter
	private Throwable cause;

	/**
	 * 通过用户名查询用户、角色信息
	 *
	 * @param username 用户名
	 * @param from     内外标志
	 * @return R
	 */
	@Override
	public R<UserInfo> info(String username, String from) {
		log.error("feign 查询用户信息失败:{}", username, cause);
		return null;
	}

	/**
	 * 通过社交账号查询用户、角色信息
	 *
	 * @param inStr appid@code
	 * @param from  内外标志
	 * @return
	 */
	@Override
	public R<UserInfo> social(String inStr, String from) {
		log.error("feign 查询用户信息失败:{}", inStr, cause);
		return null;
	}

	/**
	 * 查询上级部门的用户信息
	 *
	 * @param username 用户名
	 * @return R
	 */
	@Override
	public R<List<SysUser>> ancestorUsers(String username) {
		log.error("feign 查询用户上级部门用户列失败:{}", username, cause);
		return null;
	}
}
