package com.xing.upms.server.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xing.admin.api.dto.UserInfo;
import com.xing.admin.api.entity.SysSocialDetails;

/**
 * 系统社交登录账号 服务类
 *
 * @author weixing
 * @date 2018/12/21 14:23
 */
public interface SysSocialDetailsService extends IService<SysSocialDetails> {

	/**
	 * 绑定社交账号
	 *
	 * @param state 类型
	 * @param code  code
	 * @return
	 */
	Boolean bindSocial(String state, String code);

	/**
	 * 根据入参查询用户信息
	 *
	 * @param inStr
	 * @return
	 */
	UserInfo getUserInfo(String inStr);
}

