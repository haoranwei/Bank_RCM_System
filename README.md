English Version：[English Version](README_US.md)
# 项目介绍
本项目基于Spring + Spring MVC + Mybatis，使用MybatisPlus作为数据库操作框架，使用MySQL作为数据库。
项目名称：银行风险管控系统

我完成了以下功能：
1.用户管理
2.贷款申请模块
3.放款管理
4.还款管理

# 项目运行说明
1.项目运行前，请先在MySQL数据库中创建一个名为`brs`的数据库，然后将`brs.sql`文件导入到`brs`数据库中。
2.项目运行前，请先配置好MySQL数据库的连接信息，配置文件为`db.properties`文件，配置文件中需要参数。
3.复制项目到Idea IDE，并导入（导入时选择MAVEN项目）
4.运行项目时，需要配置Tomcat服务器