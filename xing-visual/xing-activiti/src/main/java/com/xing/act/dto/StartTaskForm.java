package com.xing.act.dto;

import lombok.Data;

import javax.validation.constraints.NotEmpty;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 15:10
 */
@Data
public class StartTaskForm {
	@NotEmpty
	public String procDefKey;
	public String entityId;
	@NotEmpty
	public String title;
	public String comment;
}
