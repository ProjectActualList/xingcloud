package com.xing.admin.api.feign;

import com.xing.admin.api.dto.UserInfo;
import com.xing.admin.api.entity.SysUser;
import com.xing.admin.api.feign.factory.UserServiceApiFallbackFactory;
import com.xing.common.core.constant.SecurityConstants;
import com.xing.common.core.constant.ServiceNameConstant;
import com.xing.common.core.util.R;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;

import java.util.List;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 14:06
 */
@FeignClient(value = ServiceNameConstant.UMPS_SERVICE, fallbackFactory = UserServiceApiFallbackFactory.class)
public interface UserServiceApi {
	/**
	 * 通过用户名查询用户、角色信息
	 *
	 * @param username 用户名
	 * @param from     调用标志
	 * @return R
	 */
	@GetMapping("/user/info/{username}")
	R<UserInfo> info(@PathVariable("username") String username
		, @RequestHeader(SecurityConstants.FROM) String from);

	/**
	 * 通过社交账号或手机号查询用户、角色信息
	 *
	 * @param inStr appid@code
	 * @param from  调用标志
	 * @return
	 */
	@GetMapping("/social/info/{inStr}")
	R<UserInfo> social(@PathVariable("inStr") String inStr
		, @RequestHeader(SecurityConstants.FROM) String from);

	/**
	 * 查询上级部门的用户信息
	 *
	 * @param username 用户名
	 * @return R
	 */
	@GetMapping("/user/ancestor/{username}")
	R<List<SysUser>> ancestorUsers(@PathVariable("username") String username);
}
