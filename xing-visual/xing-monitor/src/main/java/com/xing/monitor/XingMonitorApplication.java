package com.xing.monitor;


import de.codecentric.boot.admin.server.config.EnableAdminServer;
import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.netflix.hystrix.dashboard.EnableHystrixDashboard;
import org.springframework.cloud.netflix.turbine.EnableTurbine;

/**
 * @author lengleng
 * @date 2018年06月21日
 * 监控中心
 */
@EnableTurbine
@EnableAdminServer
@EnableHystrixDashboard
@SpringCloudApplication
public class XingMonitorApplication {

	public static void main(String[] args) {
		SpringApplication.run(XingMonitorApplication.class, args);
	}
}
