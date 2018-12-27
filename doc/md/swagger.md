# Swagger配置文档

### 写在最前
xingcloud 集成了Swagger作为API生成与测试框架,xingcloud 提供了自动化的配置，让您从繁琐的编码工作中解放出来，快速生成自己定制化的Swagger API文档。

### 快速使用
您可以轻松地在 xingcloud 中引入Swagger:   

- 在`pom.xml`中引入以下依赖:

```xml
		<dependency>
			<groupId>com.xing</groupId>
			<artifactId>xing-common-swagger</artifactId>
		</dependency>
```

- 在应用主类中增加`@EnableXingSwagger2`注解

```java
@EnableXingSwagger2
@EnableFeignClients
@SpringCloudApplication
public class XingAdminApplication {
	public static void main(String[] args) {
		SpringApplication.run(XingAdminApplication.class, args);
	}
}
```

只需以上两步，就能产生当前工程中Spring MVC加载的请求映射所形成的文档。如需要个性化的定制，请看下文。

### 配置示例与说明

```
# Swagger相关的配置
swagger:
  # 标题,默认空
  title: 'Xing Swagger API'
  # 描述,默认空
  description: '全宇宙最牛逼的Spring Cloud微服务开发脚手架'
  # 版本,默认空
  version: '1.0.0'
  # 许可证,默认空
  license: 'Powered By Xing'
  # 许可证URL,默认空
  licenseUrl: ''
  # 服务条款URL,默认空
  terms-of-service-url: ''
  # 文档的host信息，默认：空
  host: ''
  # swagger会解析的包路径,默认为空，扫描所有包
  base-package: '' 
  # swagger会解析的url规则
  base-path: /**
  # 在basePath基础上需要排除的url规则
  exclude-path: 
    - /actuator/**
    - /error  
  # 联系人相关配置
  contact:
    # 联系人姓名，默认空
    name: 'weixing'
    # 联系人Email，默认空
    email: 'weixingmail@126.com'
    # 联系人URL，默认空
    url: ''
  # 统一鉴权相关配置
  authorization:
    # 鉴权策略名称，默认空
    name: 'Xing OAuth'
    # 需要开启鉴权URL的正则，默认匹配所有
    auth-regex: '^.*$'
    # 鉴权作用域列表配置,默认空
    authorization-scope-list:
        # 鉴权作用域名称,默认空
      - scope: 'server'
        # 鉴权作用域描述,默认空
        description: 'server all'
    # 校验token的地址列表,默认空  
    token-url-list:
      - 'http://localhost:9999/auth/oauth/token'

```

**注意:**
- 配置中的鉴权作用域`scope`必须是数据库`sys_oauth_client_details`表的`scope`字段里的内容的一个子集，否则发起Oauth2.0请求时会直接失败。
- 默认情况下Swagger映射Spring MVC中所有的请求,这样的请求包含了排除了Spring Boot默认的监控和异常信息处理路径,通常不是我们想要的。因此提供两种解决方案，任选其一即可。
- 我们可以使用`swagger.base-path`来指定所有需要生成文档的请求路径基础规则，然后再利用`swagger.exclude-path`来剔除部分我们不需要的。
我们可以这样设置：

```yaml
swagger:
  base-path: /**
  exclude-path: 
    - /actuator/**
    - /error
```

上面的配置将解析所有除了`/actuator`开始以及spring boot自带`/error`请求路径，这样，就排除了Spring Boot默认的监控和异常信息处理路径。   
- 除了以上的方法,我们同样可以通过配置包扫描的方式，扫描指定包下的类生成API文档。
我们可以这样设置：

```yaml
swagger:
  base-package: com.xing.admin.controller
```
这样，Swagger只会生成对应包下的API文档，这样，自然也就排除了Spring Boot默认的监控和异常信息处理路径。
### 如何在xing Swagger中OAuth2.0 授权

#### 增加客户端

默认对所有终端进行验证码校验，但是swagger 模拟的时候不需要。

- 通过界面的形式

  ![](http://obq1lvsd9.bkt.clouddn.com/20180725132807.png)

- 直接操作**sys_oauth_client_details**表

```sql
INSERT INTO `xing`.`sys_oauth_client_details` (
	`authorities`,
	`authorized_grant_types`,
	`web_server_redirect_uri`,
	`scope`,
	`additional_information`,
	`autoapprove`,
	`resource_ids`,
	`refresh_token_validity`,
	`client_secret`,
	`client_id`,
	`access_token_validity`
)
VALUES
	(
		NULL,
		'password,refresh_token',
		NULL,
		'server',
		NULL,
		'true',
		NULL,
		NULL,
		'test',
		'test',
		NULL
	);
```

#### 过滤指定客户端

xing-gateway-dev.yml

```yml
# 不校验验证码终端
ignore:
  clients:
    - test
```

#### 填写客户端信息

![](http://obq1lvsd9.bkt.clouddn.com/20180725133119.png)

![](http://obq1lvsd9.bkt.clouddn.com/20180725133206.png)

