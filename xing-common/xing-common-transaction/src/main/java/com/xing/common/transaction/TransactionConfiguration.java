package com.xing.common.transaction;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * LNC 事物配置
 *
 * @author weixing
 * @date 2018/12/21 11:28
 */
@Configuration
@ComponentScan({"com.codingapi.tx", "com.xing.common.transaction"})
public class TransactionConfiguration {


}
