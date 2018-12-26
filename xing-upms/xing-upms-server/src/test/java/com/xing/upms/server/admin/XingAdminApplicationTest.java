package com.xing.upms.server.admin;

import com.ulisesbocchio.jasyptspringboot.encryptor.DefaultLazyEncryptor;
import org.jasypt.encryption.StringEncryptor;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.env.StandardEnvironment;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * 加解密单元测试
 *
 * @author weixing
 * @date 2018/12/21 14:33
 */
public class XingAdminApplicationTest {

	@Test
	public void testJasypt() {
		// 对应application-dev.yml 中配置的根密码
		System.setProperty("jasypt.encryptor.password", "xing");
		StringEncryptor stringEncryptor = new DefaultLazyEncryptor(new StandardEnvironment());

		//加密方法
		System.out.println(stringEncryptor.encrypt("act"));

		//解密方法
		//System.out.println(stringEncryptor.decrypt("gPFcUOmJm8WqM3k3eSqS0Q=="));
	}
}
