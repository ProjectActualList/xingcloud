package com.xing.upms.server.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xing.admin.api.entity.SysLog;
import com.xing.admin.api.vo.PreLogVo;

import java.util.List;

/**
 * 日志表 服务类
 *
 * @author weixing
 * @date 2018/12/21 14:21
 */
public interface SysLogService extends IService<SysLog> {


	/**
	 * 批量插入前端错误日志
	 *
	 * @param preLogVoList 日志信息
	 * @return true/false
	 */
	Boolean saveBatchLogs(List<PreLogVo> preLogVoList);
}
