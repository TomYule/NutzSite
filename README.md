
<p align="center"><a href="https://tomyule.github.io/NutzSite/" target="_blank"><img width="100" src="https://gitee.com/TomYule/NutzSite/raw/master/src/main/resources/static/nutzsite.png"></a></p>

[![GitHub license](https://img.shields.io/github/license/TomYule/NutzSite)](https://github.com/TomYule/NutzSite/blob/master/LICENSE)
[![PowerByNutz](https://img.shields.io/badge/PowerBy-Nutz-green.svg)](https://github.com/nutzam/nutz)
[![Build Status](https://travis-ci.org/TomYule/NutzSite.svg?branch=master)](https://travis-ci.org/TomYule/NutzSite)   
## NutzSite基于Nutz的Java开源企业级快速开发框架  

# 简介
Java快速开发框架 基于nutz框架；支持 任意SQL数据库,例如MySQL,Oracle,SqlServer等等;去繁从简，简约而不简单: 一对多 多对多复杂关系数据保存用nutz 就是那么简单;
优势:支持各类数据库 代码生成；别人还在加班熬夜 重复增删改查时 你已经通过工具 写完所有;最大限度的提高 Java 开发人员的生产力;有更多的时间陪伴家人,陪伴对象

*Talk is cheap. Show me the code!!*

## 主要功能
* 支持 任意SQL数据库,例如MySQL,Oracle,SqlServer等等
* 可以通过数据库快速生成代码 列表,树
* 拖拽生成表单,ztree,文件上传,地图选择位置 等等
* 登录,操作 日志记录
* 角色管理,部门管理,用户管理,内容管理系统,微信公众平台设置 等等
## 目前支持
* [Nutz](https://github.com/nutzam/nutz)
* [Nutzboot](https://github.com/nutzam/nutzboot)
* [nutz-plugins-slog](https://github.com/nutzam/nutzmore/tree/master/nutz-plugins-slog)日志记录
* [nutz-plugins-validation](https://github.com/nutzam/nutzmore/tree/master/nutz-plugins-validation)数据校验
* [Druid](https://github.com/alibaba/druid)
* [Shiro](https://github.com/apache/shiro)
* [Thymeleaf](https://github.com/thymeleaf/thymeleaf)
* [Redis](https://github.com/antirez/redis)
* [Caffeine](https://github.com/ben-manes/caffeine) 缓存
* [Quartz](https://github.com/quartz-scheduler/quartz) 定时任务
* [JWT](https://github.com/jwtk/jjwt)
* 支付宝
* 微信公众平台
* 阿里云消息推送
* 阿里云短信
* 高德地图
* 七牛云
* XSS攻击过滤 SQL注入过滤
* Excel 导出数据  案例: 系统管理-参数设置
* CMS 能用 不完善
## 后期支持待完善功能
* 审批流

项目截图
![生成代码](src/main/resources/static/1556263681393.jpg)
![服务监控](src/main/resources/static/1577241788123.jpg)
![项目截图](src/main/resources/static/1556263635342.jpg)
## 为什么选择nutz
你有没有想过 为什么Java开发就一定要用spring,MyBatis 为什么大多数人缓存就选择Ehcache 不选择Caffeine  
nutz Java小伙伴们的另一种选择

本压缩包是一个maven工程, eclipse/idea均可按maven项目导入

MainLauncher是入口,启动即可

## 环境要求

* 建议 JDK8+ 支持OpenJDK 
* 数据库 任意SQL数据库,例如MySQL,Oracle,SqlServer等等
* eclipse或idea等IDE开发工具,可选

## 配置信息位置

数据库配置信息,jetty端口等配置信息,均位于src/main/resources/application.properties  
代码生成 位于src/main/resources/gen.properties  
目前支持MySQL,db2,PostgreSql 数据库 代码生成
注意: 数据库表名需要有备注

## 命令下启动

仅供测试用,使用mvn命令即可

```
// for windows
set MAVEN_OPTS="-Dfile.encoding=UTF-8"
mvn compile nutzboot:run

// for *uix
export MAVEN_OPTS="-Dfile.encoding=UTF-8"
mvn compile nutzboot:run
```

## 项目打包

```
mvn clean package nutzboot:shade
mvn clean package nutzboot:shade nutzboot:war
```

请注意,当前需要package + nutzboot:shade, 单独执行package或者nutzboot:shade是不行的

## 相关资源

* 论坛: https://nutz.cn
* 官网: https://nutz.io
* 一键生成NB的项目: https://get.nutz.io
* 项目80%参考 [RuoYi](https://gitee.com/y_project/RuoYi-fast)
* 部分代码 参考 [nutzwk](https://github.com/Wizzercn/NutzWk/tree/bak-delete-v3-bootstrap)
* 代码生成部分 参考 [mybatis-plus-generator](https://gitee.com/baomidou/mybatis-plus/tree/3.0/mybatis-plus-generator)  

## 鸣谢
*   nutz 项目的所有贡献者
*   感谢各开源项目作者
*   [@wendal](https://github.com/wendal) (代码贡献者,技术大牛,Nutz主要作者,无所不知且乐于助人)

## 我想改变行业的未来,因为我有一颗改变世界的心
有码走遍天下 无码寸步难行（引自网络）  
1024 - 梦想，永不止步!  
爱编程 不爱Bug  
爱加班 不爱黑眼圈  
固执 但不偏执  
疯狂 但不疯癫  
生活里的菜鸟  
工作中的大神  
身怀宝藏，一心憧憬星辰大海  
追求极致，目标始于高山之巅  
一群怀揣好奇，梦想改变世界的孩子  
一群追日逐浪，正在改变世界的极客  
你们用最美的语言，诠释着科技的力量  
你们用极速的创新，引领着时代的变迁  
------至所有正在努力奋斗的程序猿们！加油！！  
  
# 关于  
本项目完全开源，商用完全免费。但请勿侵犯作者合法权益，如申请软著等。