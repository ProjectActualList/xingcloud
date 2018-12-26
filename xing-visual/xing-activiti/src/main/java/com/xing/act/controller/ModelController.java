package com.xing.act.controller;

import com.xing.act.dto.ModelForm;
import com.xing.act.service.ModelService;
import com.xing.common.core.util.R;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

/**
 * 
 *
 * @author weixing
 * @date 2018/12/21 15:17
 */
@RestController
@RequestMapping("/model")
@AllArgsConstructor
public class ModelController {
	private final ModelService modelService;

	@PostMapping(value = "/insert")
	public R<Boolean> insertForm(@RequestBody @Valid ModelForm form) {
		modelService.create(form.getName(), form.getKey(), form.getDesc(), form.getCategory());
		return new R<>(Boolean.TRUE);
	}

	@PostMapping
	public R createModel(@RequestParam String name, @RequestParam String key,
						 @RequestParam String desc, @RequestParam String category) {
		return new R(modelService.create(name, key, desc, category));
	}

	@GetMapping
	public R getModelPage(@RequestParam Map<String, Object> params) {
		return new R<>(modelService.getModelPage(params));
	}

	@DeleteMapping("/{id}")
	public R removeModelById(@PathVariable("id") String id) {
		return new R<>(modelService.removeModelById(id));

	}

	@PostMapping("/deploy/{id}")
	public R deploy(@PathVariable("id") String id) {
		return new R<>(modelService.deploy(id));
	}
}
