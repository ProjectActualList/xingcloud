package com.xing.upms.server.admin.config;

import cn.hutool.core.util.ArrayUtil;
import com.baomidou.mybatisplus.core.injector.ISqlInjector;
import com.baomidou.mybatisplus.core.parser.ISqlParser;
import com.baomidou.mybatisplus.extension.injector.LogicSqlInjector;
import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import com.baomidou.mybatisplus.extension.plugins.tenant.TenantHandler;
import com.baomidou.mybatisplus.extension.plugins.tenant.TenantSqlParser;
import com.xing.common.core.datascope.DataScopeInterceptor;
import com.xing.common.core.util.TenantContextHolder;
import lombok.extern.slf4j.Slf4j;
import net.sf.jsqlparser.expression.Expression;
import net.sf.jsqlparser.expression.LongValue;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.ArrayList;
import java.util.List;

/**
 *
 *
 * @author weixing
 * @date 2018/12/21 14:31
 */
@Slf4j
@Configuration
@MapperScan("com.xing.upms.server.admin.mapper")
public class MybatisPlusConfigurer {
	private static final String[] IGNORETABLES = new String[]{"sys_dept_relation", "sys_role_dept", "sys_role_menu", "sys_user_role", "sys_route_conf", "sys_menu"};

	/**
	 * 分页插件
	 *
	 * @return PaginationInterceptor
	 */
	@Bean
	public PaginationInterceptor paginationInterceptor() {
		PaginationInterceptor paginationInterceptor = new PaginationInterceptor();
		List<ISqlParser> sqlParserList = new ArrayList<>();
		TenantSqlParser tenantSqlParser = new TenantSqlParser();
		tenantSqlParser.setTenantHandler(new TenantHandler() {
			@Override
			public Expression getTenantId() {
				Integer tenantId = TenantContextHolder.getTenantId();
				log.debug("当前租户为 >> {}", tenantId);
				return new LongValue(tenantId);
			}

			@Override
			public String getTenantIdColumn() {
				return "tenant_id";
			}

			@Override
			public boolean doTableFilter(String tableName) {
				return ArrayUtil.contains(IGNORETABLES, tableName);
			}
		});
		sqlParserList.add(tenantSqlParser);
		paginationInterceptor.setSqlParserList(sqlParserList);
		return paginationInterceptor;
	}

	/**
	 * 数据权限插件
	 *
	 * @return DataScopeInterceptor
	 */
	@Bean
	public DataScopeInterceptor dataScopeInterceptor() {
		return new DataScopeInterceptor();
	}

	/**
	 * 逻辑删除插件
	 *
	 * @return LogicSqlInjector
	 */
	@Bean
	public ISqlInjector sqlInjector() {
		return new LogicSqlInjector();
	}
}
