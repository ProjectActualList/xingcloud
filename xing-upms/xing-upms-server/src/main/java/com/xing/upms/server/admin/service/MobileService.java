package com.xing.upms.server.admin.service;

import com.xing.common.core.util.R;

/**
 * 手机验证码服务
 *
 * @author weixing
 * @date 2018/12/21 14:20
 */
public interface MobileService {
	/**
	 * 发送手机验证码
	 *
	 * @param mobile mobile
	 * @return code
	 */
	R<Boolean> sendSmsCode(String mobile);
}
