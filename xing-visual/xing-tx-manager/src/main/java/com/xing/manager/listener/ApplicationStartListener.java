package com.xing.manager.listener;

import com.xing.manager.framework.utils.Constants;
import org.springframework.boot.web.context.WebServerInitializedEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

import java.net.InetAddress;
import java.net.UnknownHostException;

/**
 * @author LCN on 2017/8/7
 */
@Component
public class ApplicationStartListener implements ApplicationListener<WebServerInitializedEvent> {


	@Override
	public void onApplicationEvent(WebServerInitializedEvent event) {
		int serverPort = event.getWebServer().getPort();
		String ip = getIp();
		Constants.address = ip + ":" + serverPort;
	}


	private String getIp() {
		String host = null;
		try {
			host = InetAddress.getLocalHost().getHostAddress();
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		return host;
	}
}
