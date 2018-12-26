package com.xing.manager.api.service.impl;

import com.xing.manager.api.service.ApiModelService;
import com.xing.manager.manager.ModelInfoManager;
import com.xing.manager.model.ModelInfo;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author LCN on 2017/11/13
 */
@Service
public class ApiModelServiceImpl implements ApiModelService {


	@Override
	public List<ModelInfo> onlines() {
		return ModelInfoManager.getInstance().getOnlines();
	}


}
