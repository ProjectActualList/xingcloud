package com.xing.act.dto;

import lombok.Data;

import java.util.Date;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 15:10
 */
@Data
public class TaskDTO {
	private String applicant;
	private String taskId;
	private String taskName;
	private String title;
	private String pdName;
	private String version;
	private Date time;
	private String processInstanceId;
	private String status;
	private String nodeKey;
	private String processDefKey;
	private String category;
}
