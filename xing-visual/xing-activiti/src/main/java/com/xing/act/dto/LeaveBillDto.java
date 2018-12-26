package com.xing.act.dto;

import com.xing.act.entity.LeaveBill;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;
import java.util.List;

/**
 * LeaveBillDto
 *
 * @author weixing
 * @date 2018/12/21 15:10
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class LeaveBillDto extends LeaveBill {
	/**
	 * 任务ID
	 */
	private String taskId;

	/**
	 * 任务提交时间
	 */
	private Date time;

	/**
	 * 批准信息
	 */
	private String comment;

	/**
	 * 连线信息
	 */
	private List<String> flagList;

	private String taskFlag;
}
