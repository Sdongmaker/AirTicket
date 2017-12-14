# JavaWeb项目-飞机票预订管理系统


## 1. 项目介绍

### 1.1 功能介绍

项目详细请进入我的博客->[飞机票预订管理系统](http://devtor.cn/technology/java-project-airticket.html)

*用户：*

- 查询飞机航班信息，包括时间, 起降点, 价格, 飞机舱位等
- 用户个人信息维护
- 机票预订，包括预订,支付, 改签, 取消等操作

*管理员：*

- 注册用户
- 维护和更新系统的航班路线
- 维护和更新在航的飞机
- 已订机票订单管理


### 1.2 项目运用知识

- 数据库基本查询
- 数据库连接池 c3p0
- 使用dbutils.jar 包封装表单数据到bean对象中
- 利用dbutils.jar 包简化对数据库增、删、改、查的代码
- JavaWeb 三层架构--MVC模式
- 标签库
- 反射
- 前端Bootstrap

## 2. 准备
### 2.1 搭建环境
jdk1.8+ MyEclipse2017+Tomcat 8.5/9 + MySQL

我这里使用的是MyEclipse2017-ci3的版本，也是我最后使用 MyMclipse开发的项目了；从此投入IntelliJ IDEA 的怀抱了。

### 2.2 导入jar包以及c3p0配置文件

- c3p0-0.9.1.2.jar
- commons-beanutils-1.9.3.jar
- commons-collections-3.2.1.jar
- commons-dbutils-1.6.jar
- commons-io-2.5.jar
- commons-logging-1.2.jar
- mysql-connector-java-5.1.17-bin.jar

这些jar包都可以在我项目的 `WEB-INF/lib` 下面找到哦。

### 2.3 创建包名-MVC

- bean
- dao.impl
- service.impl
- servlet
- utils

![项目包名](http://p0vpb736v.bkt.clouddn.com/airticket/package.png)

### 2.4 MySQL 建库建表

数据库名：airticket

- airplane
- flight
- manager
- orders
- price
- userinfo

就这六个表, 看这些单词也应该就能知道每个表都是干嘛的了。具体的表结构请看 [AirTicket_DBMS](http://p0vpb736v.bkt.clouddn.com/AirTicket_DBMS.txt) 文档。为了方便大家，这些建表的SQL语句，我也会导出一并打包上传到GitHub上面, 可以到项目里面找到哦。

给大家推荐一个工具：Navicat ; 操作数据库非常的方便哦。导入我的sql文件别忘了要先创建`airticker` 数据库。

## 3. 使用方法

直接克隆我的GitHub上的仓库

```shell
git clone https://github.com/ZengGUI/AirTicket.git
```

然后用 MyEclipse2017导入, 还要重新配置一下jdk，还有jar包的位置哦。

## 4. 项目运行截图
### 4.1 首页

![首页](http://p0vpb736v.bkt.clouddn.com/airticket/index.png)

### 4.2 匿名查询机票

![匿名查询预订机票](http://p0vpb736v.bkt.clouddn.com/airticket/anonymous-query.png)

### 4.3 登陆用户预订机票

![用户查询预订机票](http://p0vpb736v.bkt.clouddn.com/airticket/user-query.png)

### 4.4 用户订单管理

![用户订单管理](http://p0vpb736v.bkt.clouddn.com/airticket/user-orders.png)

### 4.5 后台: 用户管理

![后台:用户管理](http://p0vpb736v.bkt.clouddn.com/airticket/admin-user.png)

### 4.6 后台: 航班管理

![后台:航班管理](http://p0vpb736v.bkt.clouddn.com/airticket/admin-flight.png)

### 4.7 后台: 飞机管理

![后台:飞机管理](http://p0vpb736v.bkt.clouddn.com/airticket/admin-airplane.png)

### 4.8 后台: 订单管理

![后台:订单管理](http://p0vpb736v.bkt.clouddn.com/airticket/admin-orders.png)


