package com.xing.daemon.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xing.daemon.entity.StatusTraceLog;
import com.xing.daemon.mapper.StatusTraceLogMapper;
import com.xing.daemon.service.StatusTraceLogService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

/**
 * 任务轨迹处理
 *
 * @author weixing
 * @date 2018/12/21 15:21
 */
@Service("statusTraceLogService")
@AllArgsConstructor
public class StatusTraceLogServiceImpl extends ServiceImpl<StatusTraceLogMapper, StatusTraceLog> implements StatusTraceLogService {

}
