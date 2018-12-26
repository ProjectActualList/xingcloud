package com.xing.manager.manager.service;

import com.xing.manager.model.LoadBalanceInfo;

/**
 * @author LCN on 2017/12/5
 */
public interface LoadBalanceService {

	boolean put(LoadBalanceInfo loadBalanceInfo);

	LoadBalanceInfo get(String groupId, String key);

	boolean remove(String groupId);

	String getLoadBalanceGroupName(String groupId);

}
