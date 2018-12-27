## 模块
``` lua
xingcloud
├── xingcloud-ui -- 前端工程[8000]
├── xing-auth -- 授权服务提供[3000]
├── xing-common -- 系统公共模块 
├    ├── xing-common-core -- 公共工具类核心包
├    ├── xing-common-cache -- 缓存
├    ├── xing-common-job -- 定时任务
├    ├── xing-common-log -- 日志服务
├    └── xing-common-security -- 安全工具类
├    └── xing-common-swagger -- Swagger Api文档生成
├    └── xing-common-transaction -- 分布式事务工具包
├── xing-config -- 配置中心[8888]
├── xing-eureka -- 服务注册与发现[8761]
├── xing-gateway -- Spring Cloud Gateway网关[9999]
├── xing-upms -- 通用用户权限管理模块
├    └── xing-upms-api -- 通用用户权限管理系统公共api模块
├    └── xing-upms-server -- 通用用户权限管理系统业务处理模块[4000]
└── xing-visual  -- 图形化模块 
├    ├── xing-monitor -- Spring Boot Admin监控 [5001]
├    ├── xing-daemon -- 分布式调度中心[5002]
├    └── xing-code-gen -- 图形化代码生成[5003]
├    └── xing-tx-manager -- xing分布式事务解决方案[5004]
├    └── xing-activiti -- 工作流模块[5005]
	 
```
