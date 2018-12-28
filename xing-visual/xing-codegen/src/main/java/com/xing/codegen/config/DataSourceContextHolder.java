package com.xing.codegen.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 
 *
 * @author weixing
 * @date 2018/12/27 16:57
 */
public class DataSourceContextHolder {

    private static Logger logger = LoggerFactory.getLogger(DataSourceContextHolder.class);
    /**
     * 默认数据源
     */
    public static final String DEFAULT_DS = "ds-sys";

    private static final ThreadLocal<String> contextHolder = new ThreadLocal<>();

    /**
     *  设置数据源名
     */
    public static void setDB(String dbType) {
        logger.debug("切换到{}数据源" + dbType);
        contextHolder.set(dbType);
    }

    /**
     *  获取数据源名
     */
    public static String getDB() {
        return (contextHolder.get());
    }

    /**
     *  清除数据源名
     */
    public static void clearDB() {
        contextHolder.remove();
    }
}
