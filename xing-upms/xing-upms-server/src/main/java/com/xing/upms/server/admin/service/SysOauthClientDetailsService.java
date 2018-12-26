package com.xing.upms.server.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xing.admin.api.entity.SysOauthClientDetails;

/**
 * Oauth2.0 认证服务类
 *
 * @author weixing
 * @date 2018/12/21 14:21
 */
public interface SysOauthClientDetailsService extends IService<SysOauthClientDetails> {
	/**
	 * 通过ID删除客户端
	 *
	 * @param id
	 * @return
	 */
	Boolean removeClientDetailsById(String id);

	/**
	 * 根据客户端信息
	 *
	 * @param sysOauthClientDetails
	 * @return
	 */
	Boolean updateClientDetailsById(SysOauthClientDetails sysOauthClientDetails);
}
