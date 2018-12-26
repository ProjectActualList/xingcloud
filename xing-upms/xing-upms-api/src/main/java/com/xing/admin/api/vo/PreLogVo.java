package com.xing.admin.api.vo;

import lombok.Data;

/**
 * 前端日志 vo
 *
 * @author weixing
 * @date 2018/12/21 14:06
 */
@Data
public class PreLogVo {
	private String url;
	private String time;
	private String user;
	private String type;
	private String message;
	private String stack;
	private String info;
}
