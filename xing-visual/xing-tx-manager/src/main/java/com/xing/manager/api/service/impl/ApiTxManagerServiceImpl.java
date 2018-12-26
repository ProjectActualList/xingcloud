package com.xing.manager.api.service.impl;

import com.xing.manager.api.service.ApiTxManagerService;
import com.xing.manager.compensate.model.TransactionCompensateMsg;
import com.xing.manager.compensate.service.CompensateService;
import com.xing.manager.config.ConfigReader;
import com.xing.manager.manager.service.MicroService;
import com.xing.manager.manager.service.TxManagerSenderService;
import com.xing.manager.manager.service.TxManagerService;
import com.xing.manager.model.TxServer;
import com.xing.manager.model.TxState;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

/**
 *@author LCN on 2017/7/1.
 *
 * @author LCN
 * @author lengleng
 */
@Service
@AllArgsConstructor
public class ApiTxManagerServiceImpl implements ApiTxManagerService {

	private final TxManagerService managerService;

	private final MicroService eurekaService;

	private final CompensateService compensateService;

	private final TxManagerSenderService txManagerSenderService;

	private final ConfigReader configReader;


	@Override
	public TxServer getServer() {
		return eurekaService.getServer();
	}


	@Override
	public int cleanNotifyTransaction(String groupId, String taskId) {
		return managerService.cleanNotifyTransaction(groupId, taskId);
	}


	@Override
	public boolean sendCompensateMsg(long currentTime, String groupId, String model, String address, String uniqueKey, String className, String methodStr, String data, int time, int startError) {
		TransactionCompensateMsg transactionCompensateMsg = new TransactionCompensateMsg(currentTime, groupId, model, address, uniqueKey, className, methodStr, data, time, 0, startError);
		return compensateService.saveCompensateMsg(transactionCompensateMsg);
	}

	@Override
	public String sendMsg(String model, String msg) {
		return txManagerSenderService.sendMsg(model, msg, configReader.getTransactionNettyDelayTime());
	}


	@Override
	public TxState getState() {
		return eurekaService.getState();
	}
}
