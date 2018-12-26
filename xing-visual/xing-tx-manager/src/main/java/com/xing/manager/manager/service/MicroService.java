package com.xing.manager.manager.service;

import com.xing.manager.model.TxServer;
import com.xing.manager.model.TxState;

/**
 * @author LCN on 2017/11/11
 */
public interface MicroService {

	String TMKEY = "tx-manager";

	TxServer getServer();

	TxState getState();
}
