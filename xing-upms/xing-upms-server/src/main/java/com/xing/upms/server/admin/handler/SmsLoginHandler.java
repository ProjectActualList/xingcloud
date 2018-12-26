package com.xing.upms.server.admin.handler;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.xing.admin.api.dto.UserInfo;
import com.xing.admin.api.entity.SysUser;
import com.xing.upms.server.admin.service.SysUserService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 14:28
 */
@Slf4j
@Component("SMS")
@AllArgsConstructor
public class SmsLoginHandler extends AbstractLoginHandler {
	private final SysUserService sysUserService;

	/**
	 * 验证码登录传入为手机号
	 * 不用不处理
	 *
	 * @param mobile
	 * @return
	 */
	@Override
	public String identify(String mobile) {
		return mobile;
	}

	/**
	 * 通过mobile 获取用户信息
	 *
	 * @param identify
	 * @return
	 */
	@Override
	public UserInfo info(String identify) {
		SysUser sysUser = sysUserService
			.getOne(Wrappers.<SysUser>query()
				.lambda().eq(SysUser::getPhone, identify));

		if (sysUser == null) {
			log.info("手机号未注册:{}", identify);
			return null;
		}
		return sysUserService.findUserInfo(sysUser);
	}
}
