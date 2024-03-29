### 写在最前
**如果想快速部署xing，请完全参考本篇文档。**    
如果有个性化的修改，请参考本篇运行起来以后，自行修改。循序渐进

### 特别说明 
- flushdb 清空redis ， 2.0 数据结构不同
- 确保你的IDE 已经安装lombok 
- 代码git clone ,不要下载 zip 源码包
- 建议使用 IDEA 2018+ 启动效果会更好
- 内存较小开发机 每个微服务建议设置  -Xms128m -Xmx256m  
![](http://a.xing.top/20181210181538.png)

### 环境说明
- jdk 1.8 
- mysql 5.7
- redis 3.2+
- node 8.0+
- npm 6.0+
- zookeeper 3.4+


### 一、项目下载

```
git clone https://github.com/XingCloudSpace/xingcloud.git
```

### 二、配置数据库
- 参数说明
```
版本： mysql5.7+
默认字符集: utf8mb4
默认排序规则: utf8mb4_general_ci
```

- 脚本说明 
2.0 把核心库和业务库分开，建议使用两个库   

```sql
1scheme.sql    建库语句
2xing.sql     核心数据库
3xing_ac.sql   工作流相关数据库

```


### 三、xing配置修改   （建议批量替换）

- redis 修改  
xing/xing-config/src/main/resources/config/application-dev.yml

```
# redis 相关
spring:
  redis:
    password:
    host: xing-redis
``` 
- 数据库配置   
xing/xing-config/src/main/resources/config/xing-auth-dev.yml    
xing/xing-config/src/main/resources/config/xing-upms-dev.yml  
xing/xing-config/src/main/resources/config/xing-codegen-dev.yml  
xing/xing-config/src/main/resources/config/xing-daemon-dev.yml  
xing/xing-config/src/main/resources/config/xing-activiti-dev.yml  

```
# 数据源
spring:
  datasource:
    username: root
    password: xing1618
    url: jdbc:mysql://xing-mysql:3306/xing?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=Asia/Shanghai
```

### 四、配置本地hosts 建议使用 switchhost）

修改本地hosts文件中存在以下片段


```
# 本地测试环境  
127.0.0.1   xing-mysql
127.0.0.1	xing-zookeeper
127.0.0.1	xing-redis
127.0.0.1	xing-gateway
127.0.0.1	xing-eureka
```
### 五、启动顺序（基础模块） 
```java
1. XingEurekaApplication
2. XingConfigApplication
3. XingGatewayApplication
4. XingAuthApplication
5. XingAdminApplication
```

### 六、启动前端

```
git clone https://github.com/XingCloudSpace/xingcloud-ui.git

# 安装cnpm 镜像
npm run pre

# 安装依赖
npm install

# 启动
npm run dev
```


