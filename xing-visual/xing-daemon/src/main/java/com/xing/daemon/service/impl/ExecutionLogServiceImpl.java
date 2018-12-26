package com.xing.daemon.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xing.daemon.entity.ExecutionLog;
import com.xing.daemon.mapper.ExecutionLogMapper;
import com.xing.daemon.service.ExecutionLogService;
import org.springframework.stereotype.Service;

/**
 * 任务日志处理
 *
 * @author weixing
 * @date 2018/12/21 15:21
 */
@Service("executionLogService")
public class ExecutionLogServiceImpl extends ServiceImpl<ExecutionLogMapper, ExecutionLog> implements ExecutionLogService {

}
