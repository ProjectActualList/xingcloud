package com.xing.act.service.impl;

import cn.hutool.core.map.MapUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xing.act.dto.ProcessDefDTO;
import com.xing.act.entity.LeaveBill;
import com.xing.act.mapper.LeaveBillMapper;
import com.xing.act.service.ProcessService;
import com.xing.common.core.constant.PaginationConstant;
import com.xing.common.core.constant.enums.ProcessStatusEnum;
import com.xing.common.core.constant.enums.ResourceTypeEnum;
import com.xing.common.core.constant.enums.TaskStatusEnum;
import com.xing.common.core.util.TenantContextHolder;
import lombok.AllArgsConstructor;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.repository.ProcessDefinitionQuery;
import org.activiti.engine.runtime.ProcessInstance;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 15:09
 */
@Service
@AllArgsConstructor
public class ProcessServiceImpl implements ProcessService {
	private final RepositoryService repositoryService;
	private final RuntimeService runtimeService;
	private final LeaveBillMapper leaveBillMapper;

	/**
	 * 分页流程列表
	 *
	 * @param params
	 * @return
	 */
	@Override
	public IPage<ProcessDefDTO> getProcessByPage(Map<String, Object> params) {
		ProcessDefinitionQuery query = repositoryService.createProcessDefinitionQuery()
			.processDefinitionTenantId(String.valueOf(TenantContextHolder.getTenantId())).latestVersion();

		String category = MapUtil.getStr(params, "category");
		if (StrUtil.isNotBlank(category)) {
			query.processDefinitionCategory(category);
		}

		int page = MapUtil.getInt(params, PaginationConstant.CURRENT);
		int limit = MapUtil.getInt(params, PaginationConstant.SIZE);

		IPage result = new Page(page, limit);
		result.setTotal(query.count());

		List<ProcessDefDTO> deploymentList = query.listPage((page - 1) * limit, limit)
			.stream()
			.map(processDefinition -> {
				Deployment deployment = repositoryService.createDeploymentQuery()
					.deploymentId(processDefinition.getDeploymentId()).singleResult();
				return ProcessDefDTO.toProcessDefDTO(processDefinition, deployment);
			}).collect(Collectors.toList());
		result.setRecords(deploymentList);
		return result;
	}

	/**
	 * 读取xml/image资源
	 *
	 * @param procDefId
	 * @param proInsId
	 * @param resType
	 * @return
	 */
	@Override
	public InputStream readResource(String procDefId, String proInsId, String resType) {

		if (StrUtil.isBlank(procDefId)) {
			ProcessInstance processInstance = runtimeService
				.createProcessInstanceQuery()
				.processInstanceId(proInsId)
				.singleResult();
			procDefId = processInstance.getProcessDefinitionId();
		}
		ProcessDefinition processDefinition = repositoryService
			.createProcessDefinitionQuery()
			.processDefinitionId(procDefId)
			.singleResult();

		String resourceName = "";
		if (ResourceTypeEnum.IMAGE.getType().equals(resType)) {
			resourceName = processDefinition.getDiagramResourceName();
		} else if (ResourceTypeEnum.XML.getType().equals(resType)) {
			resourceName = processDefinition.getResourceName();
		}

		InputStream resourceAsStream = repositoryService
			.getResourceAsStream(processDefinition.getDeploymentId(), resourceName);
		return resourceAsStream;
	}

	/**
	 * 更新状态
	 *
	 * @param status
	 * @param procDefId
	 * @return
	 */
	@Override
	public Boolean updateStatus(String status, String procDefId) {
		if (ProcessStatusEnum.ACTIVE.getStatus().equals(status)) {
			repositoryService.activateProcessDefinitionById(procDefId, true, null);
		} else if (ProcessStatusEnum.SUSPEND.getStatus().equals(status)) {
			repositoryService.suspendProcessDefinitionById(procDefId, true, null);
		}
		return Boolean.TRUE;
	}

	/**
	 * 删除部署的流程，级联删除流程实例
	 *
	 * @param deploymentId
	 * @return
	 */
	@Override
	public Boolean removeProcIns(String deploymentId) {
		repositoryService.deleteDeployment(deploymentId, true);
		return Boolean.TRUE;
	}

	/**
	 * 启动流程、更新请假单状态
	 *
	 * @param leaveId
	 * @return
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public Boolean saveStartProcess(Integer leaveId) {
		LeaveBill leaveBill = leaveBillMapper.selectById(leaveId);
		leaveBill.setState(TaskStatusEnum.CHECK.getStatus());

		String key = leaveBill.getClass().getSimpleName();
		String businessKey = key + "_" + leaveBill.getLeaveId();
		runtimeService.startProcessInstanceByKeyAndTenantId(key, businessKey, String.valueOf(TenantContextHolder.getTenantId()));
		leaveBillMapper.updateById(leaveBill);
		return Boolean.TRUE;
	}

}
