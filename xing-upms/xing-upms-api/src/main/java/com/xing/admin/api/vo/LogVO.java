package com.xing.admin.api.vo;

import com.xing.admin.api.entity.SysLog;
import lombok.Data;

import java.io.Serializable;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 14:06
 */
@Data
public class LogVO implements Serializable {
	private static final long serialVersionUID = 1L;

	private SysLog sysLog;
	private String username;
}
