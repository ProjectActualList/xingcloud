package com.xing.manager.listener;

import com.xing.manager.listener.service.InitService;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


/**
 *@author LCN on 2017/7/1.
 */

@Component
public class ServerListener implements ServletContextListener {

	private WebApplicationContext springContext;


	private InitService initService;

	@Override
	public void contextInitialized(ServletContextEvent event) {
		springContext = WebApplicationContextUtils
			.getWebApplicationContext(event.getServletContext());
		initService = springContext.getBean(InitService.class);
		initService.start();
	}


	@Override
	public void contextDestroyed(ServletContextEvent event) {
		initService.close();
	}

}
