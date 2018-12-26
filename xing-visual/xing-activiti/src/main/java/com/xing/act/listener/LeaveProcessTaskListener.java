package com.xing.act.listener;

import cn.hutool.core.collection.CollUtil;
import com.xing.admin.api.entity.SysUser;
import com.xing.admin.api.feign.UserServiceApi;
import com.xing.common.core.util.R;
import com.xing.common.core.util.SpringContextHolder;
import com.xing.common.security.util.SecurityUtils;
import lombok.extern.slf4j.Slf4j;
import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;

import java.util.List;
import java.util.stream.Collectors;

/**
 * 请假流程监听器
 *
 * @author weixing
 * @date 2018/12/21 15:09
 */
@Slf4j
public class LeaveProcessTaskListener implements TaskListener {

	/**
	 * 查询提交人的上级
	 *
	 * @param delegateTask
	 */
	@Override
	public void notify(DelegateTask delegateTask) {
		UserServiceApi userService = SpringContextHolder.getBean(UserServiceApi.class);

		R<List<SysUser>> result = userService.ancestorUsers(SecurityUtils.getUsername());

		if (CollUtil.isEmpty(result.getData())) {
			log.warn("用户 {} 不存在上级,任务单由当前用户审批", SecurityUtils.getUsername());
			delegateTask.addCandidateUser(SecurityUtils.getUsername());
		} else {
			List<String> userList = result.getData().stream().map(SysUser::getUsername).collect(Collectors.toList());
			log.warn("当前任务 {}，由 {}处理", delegateTask.getId(), userList);
			delegateTask.addCandidateUsers(userList);
		}

	}
}
