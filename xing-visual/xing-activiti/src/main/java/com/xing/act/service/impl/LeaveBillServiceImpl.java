package com.xing.act.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xing.act.entity.LeaveBill;
import com.xing.act.mapper.LeaveBillMapper;
import com.xing.act.service.LeaveBillService;
import org.springframework.stereotype.Service;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 15:09
 */
@Service("leaveBillService")
public class LeaveBillServiceImpl extends ServiceImpl<LeaveBillMapper, LeaveBill> implements LeaveBillService {

}
