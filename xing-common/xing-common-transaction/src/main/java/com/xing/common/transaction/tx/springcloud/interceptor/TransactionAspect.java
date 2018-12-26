package com.xing.common.transaction.tx.springcloud.interceptor;

import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.Ordered;
import org.springframework.stereotype.Component;

/**
 * LCN 事务拦截器
 *
 * @author weixing
 * @date 2018/12/21 11:29
 */
@Slf4j
@Aspect
@Component
public class TransactionAspect implements Ordered {

	@Autowired
	private TxManagerInterceptor txManagerInterceptor;


	@Around("@annotation(com.codingapi.tx.annotation.TxTransaction)")
	public Object transactionRunning(ProceedingJoinPoint point) throws Throwable {
		log.debug("annotation-TransactionRunning-start---->");
		Object obj = txManagerInterceptor.around(point);
		log.debug("annotation-TransactionRunning-end---->");
		return obj;
	}

	@Around("this(com.codingapi.tx.annotation.ITxTransaction) && execution( * *(..))")
	public Object around(ProceedingJoinPoint point) throws Throwable {
		log.debug("interface-ITransactionRunning-start---->");
		Object obj = txManagerInterceptor.around(point);
		log.debug("interface-ITransactionRunning-end---->");
		return obj;
	}


	@Override
	public int getOrder() {
		return HIGHEST_PRECEDENCE;
	}


}
