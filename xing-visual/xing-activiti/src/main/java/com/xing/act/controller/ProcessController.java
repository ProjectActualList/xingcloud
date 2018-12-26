package com.xing.act.controller;

import cn.hutool.core.io.IoUtil;
import com.xing.act.service.ProcessService;
import com.xing.common.core.constant.enums.ResourceTypeEnum;
import com.xing.common.core.util.R;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.InputStream;
import java.util.Map;

/**
 * 
 *
 * @author weixing
 * @date 2018/12/21 15:18
 */
@RestController
@AllArgsConstructor
@RequestMapping("/process")
public class ProcessController {
	private final ProcessService processService;

	@GetMapping
	public R list(@RequestParam Map<String, Object> params) {
		return new R<>(processService.getProcessByPage(params));
	}

	@GetMapping(value = "/resource/{proInsId}/{procDefId}/{resType}")
	public ResponseEntity resourceRead(@PathVariable String procDefId, @PathVariable String proInsId, @PathVariable String resType) {

		HttpHeaders headers = new HttpHeaders();

		if (ResourceTypeEnum.XML.getType().equals(resType)) {
			headers.setContentType(MediaType.APPLICATION_XML);
		} else {
			headers.setContentType(MediaType.IMAGE_PNG);
		}

		InputStream resourceAsStream = processService.readResource(procDefId, proInsId, resType);
		return new ResponseEntity(IoUtil.readBytes(resourceAsStream), headers, HttpStatus.CREATED);
	}

	@PutMapping("/status/{procDefId}/{status}")
	public R updateState(@PathVariable String procDefId, @PathVariable String status) {
		return new R<>(processService.updateStatus(status, procDefId));
	}

	@DeleteMapping("/{deploymentId}")
	public R deleteProcIns(@PathVariable String deploymentId) {
		return new R<>(processService.removeProcIns(deploymentId));
	}
}
