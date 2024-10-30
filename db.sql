/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmb5vlg
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmb5vlg` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmb5vlg`;

/*Table structure for table `bumenjingli` */

DROP TABLE IF EXISTS `bumenjingli`;

CREATE TABLE `bumenjingli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumenbianhao` varchar(200) DEFAULT NULL COMMENT '部门编号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `jinglixingming` varchar(200) DEFAULT NULL COMMENT '经理姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `ruzhiriqi` date DEFAULT NULL COMMENT '入职日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bumenbianhao` (`bumenbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1610955051355 DEFAULT CHARSET=utf8 COMMENT='部门经理';

/*Data for the table `bumenjingli` */

insert  into `bumenjingli`(`id`,`addtime`,`bumenbianhao`,`mima`,`bumen`,`jinglixingming`,`lianxidianhua`,`youxiang`,`shenfenzheng`,`ruzhiriqi`) values (11,'2021-01-18 15:20:39','部门经理1','123456','部门1','经理姓名1','13823888881','773890001@qq.com','440300199101010001','2021-01-18');
insert  into `bumenjingli`(`id`,`addtime`,`bumenbianhao`,`mima`,`bumen`,`jinglixingming`,`lianxidianhua`,`youxiang`,`shenfenzheng`,`ruzhiriqi`) values (12,'2021-01-18 15:20:39','部门经理2','123456','部门2','经理姓名2','13823888882','773890002@qq.com','440300199202020002','2021-01-18');
insert  into `bumenjingli`(`id`,`addtime`,`bumenbianhao`,`mima`,`bumen`,`jinglixingming`,`lianxidianhua`,`youxiang`,`shenfenzheng`,`ruzhiriqi`) values (13,'2021-01-18 15:20:39','部门经理3','123456','部门3','经理姓名3','13823888883','773890003@qq.com','440300199303030003','2021-01-18');
insert  into `bumenjingli`(`id`,`addtime`,`bumenbianhao`,`mima`,`bumen`,`jinglixingming`,`lianxidianhua`,`youxiang`,`shenfenzheng`,`ruzhiriqi`) values (14,'2021-01-18 15:20:39','部门经理4','123456','部门4','经理姓名4','13823888884','773890004@qq.com','440300199404040004','2021-01-18');
insert  into `bumenjingli`(`id`,`addtime`,`bumenbianhao`,`mima`,`bumen`,`jinglixingming`,`lianxidianhua`,`youxiang`,`shenfenzheng`,`ruzhiriqi`) values (15,'2021-01-18 15:20:39','部门经理5','123456','部门5','经理姓名5','13823888885','773890005@qq.com','440300199505050005','2021-01-18');
insert  into `bumenjingli`(`id`,`addtime`,`bumenbianhao`,`mima`,`bumen`,`jinglixingming`,`lianxidianhua`,`youxiang`,`shenfenzheng`,`ruzhiriqi`) values (16,'2021-01-18 15:20:39','部门经理6','123456','部门6','经理姓名6','13823888886','773890006@qq.com','440300199606060006','2021-01-18');
insert  into `bumenjingli`(`id`,`addtime`,`bumenbianhao`,`mima`,`bumen`,`jinglixingming`,`lianxidianhua`,`youxiang`,`shenfenzheng`,`ruzhiriqi`) values (1610955051354,'2021-01-18 15:30:51','bumen001','001','人事部','玉玉','13455667788','56756@qq.com','223344556677889988','2021-01-18');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmb5vlg/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmb5vlg/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmb5vlg/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `lizhishenqing` */

DROP TABLE IF EXISTS `lizhishenqing`;

CREATE TABLE `lizhishenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumenbianhao` varchar(200) DEFAULT NULL COMMENT '部门编号',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `lizhiyuanyin` longtext COMMENT '离职原因',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610955299240 DEFAULT CHARSET=utf8 COMMENT='离职申请';

/*Data for the table `lizhishenqing` */

insert  into `lizhishenqing`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`lizhiyuanyin`,`shenqingriqi`,`sfsh`,`shhf`) values (91,'2021-01-18 15:20:39','工号1','员工姓名1','部门编号1','部门1','离职原因1','2021-01-18','否','');
insert  into `lizhishenqing`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`lizhiyuanyin`,`shenqingriqi`,`sfsh`,`shhf`) values (92,'2021-01-18 15:20:39','工号2','员工姓名2','部门编号2','部门2','离职原因2','2021-01-18','否','');
insert  into `lizhishenqing`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`lizhiyuanyin`,`shenqingriqi`,`sfsh`,`shhf`) values (93,'2021-01-18 15:20:39','工号3','员工姓名3','部门编号3','部门3','离职原因3','2021-01-18','否','');
insert  into `lizhishenqing`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`lizhiyuanyin`,`shenqingriqi`,`sfsh`,`shhf`) values (94,'2021-01-18 15:20:39','工号4','员工姓名4','部门编号4','部门4','离职原因4','2021-01-18','否','');
insert  into `lizhishenqing`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`lizhiyuanyin`,`shenqingriqi`,`sfsh`,`shhf`) values (95,'2021-01-18 15:20:39','工号5','员工姓名5','部门编号5','部门5','离职原因5','2021-01-18','否','');
insert  into `lizhishenqing`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`lizhiyuanyin`,`shenqingriqi`,`sfsh`,`shhf`) values (96,'2021-01-18 15:20:39','工号6','员工姓名6','部门编号6','部门6','离职原因6','2021-01-18','否','');
insert  into `lizhishenqing`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`lizhiyuanyin`,`shenqingriqi`,`sfsh`,`shhf`) values (1610955299239,'2021-01-18 15:34:58','yuangong001','的的','bumen001','人事部','地方官电风扇广东佛山','2021-01-18','是','地方官电风扇广东佛山');

/*Table structure for table `neibuyoujian` */

DROP TABLE IF EXISTS `neibuyoujian`;

CREATE TABLE `neibuyoujian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumenbianhao` varchar(200) DEFAULT NULL COMMENT '部门编号',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhuti` varchar(200) DEFAULT NULL COMMENT '主题',
  `neirong` longtext COMMENT '内容',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610955285545 DEFAULT CHARSET=utf8 COMMENT='内部邮件';

/*Data for the table `neibuyoujian` */

insert  into `neibuyoujian`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`zhuti`,`neirong`,`fujian`,`riqi`) values (61,'2021-01-18 15:20:39','工号1','员工姓名1','部门编号1','部门1','主题1','内容1','','2021-01-18');
insert  into `neibuyoujian`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`zhuti`,`neirong`,`fujian`,`riqi`) values (62,'2021-01-18 15:20:39','工号2','员工姓名2','部门编号2','部门2','主题2','内容2','','2021-01-18');
insert  into `neibuyoujian`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`zhuti`,`neirong`,`fujian`,`riqi`) values (63,'2021-01-18 15:20:39','工号3','员工姓名3','部门编号3','部门3','主题3','内容3','','2021-01-18');
insert  into `neibuyoujian`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`zhuti`,`neirong`,`fujian`,`riqi`) values (64,'2021-01-18 15:20:39','工号4','员工姓名4','部门编号4','部门4','主题4','内容4','','2021-01-18');
insert  into `neibuyoujian`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`zhuti`,`neirong`,`fujian`,`riqi`) values (65,'2021-01-18 15:20:39','工号5','员工姓名5','部门编号5','部门5','主题5','内容5','','2021-01-18');
insert  into `neibuyoujian`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`zhuti`,`neirong`,`fujian`,`riqi`) values (66,'2021-01-18 15:20:39','工号6','员工姓名6','部门编号6','部门6','主题6','内容6','','2021-01-18');
insert  into `neibuyoujian`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`zhuti`,`neirong`,`fujian`,`riqi`) values (1610955285544,'2021-01-18 15:34:44','yuangong001','的的','bumen001','人事部','第三方割发代首广东佛山','单方事故电风扇割发代首','http://localhost:8080/ssmb5vlg/upload/1610955280857.docx','2021-01-18');

/*Table structure for table `shenpiliucheng` */

DROP TABLE IF EXISTS `shenpiliucheng`;

CREATE TABLE `shenpiliucheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `shenpixiangmu` varchar(200) DEFAULT NULL COMMENT '审批项目',
  `shenpiliucheng` longtext COMMENT '审批流程',
  `xiangguanfujian` varchar(200) DEFAULT NULL COMMENT '相关附件',
  `gengxinriqi` date DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610955167750 DEFAULT CHARSET=utf8 COMMENT='审批流程';

/*Data for the table `shenpiliucheng` */

insert  into `shenpiliucheng`(`id`,`addtime`,`bumen`,`shenpixiangmu`,`shenpiliucheng`,`xiangguanfujian`,`gengxinriqi`) values (41,'2021-01-18 15:20:39','部门1','审批项目1','审批流程1','','2021-01-18');
insert  into `shenpiliucheng`(`id`,`addtime`,`bumen`,`shenpixiangmu`,`shenpiliucheng`,`xiangguanfujian`,`gengxinriqi`) values (42,'2021-01-18 15:20:39','部门2','审批项目2','审批流程2','','2021-01-18');
insert  into `shenpiliucheng`(`id`,`addtime`,`bumen`,`shenpixiangmu`,`shenpiliucheng`,`xiangguanfujian`,`gengxinriqi`) values (43,'2021-01-18 15:20:39','部门3','审批项目3','审批流程3','','2021-01-18');
insert  into `shenpiliucheng`(`id`,`addtime`,`bumen`,`shenpixiangmu`,`shenpiliucheng`,`xiangguanfujian`,`gengxinriqi`) values (44,'2021-01-18 15:20:39','部门4','审批项目4','审批流程4','','2021-01-18');
insert  into `shenpiliucheng`(`id`,`addtime`,`bumen`,`shenpixiangmu`,`shenpiliucheng`,`xiangguanfujian`,`gengxinriqi`) values (45,'2021-01-18 15:20:39','部门5','审批项目5','审批流程5','','2021-01-18');
insert  into `shenpiliucheng`(`id`,`addtime`,`bumen`,`shenpixiangmu`,`shenpiliucheng`,`xiangguanfujian`,`gengxinriqi`) values (46,'2021-01-18 15:20:39','部门6','审批项目6','审批流程6','','2021-01-18');
insert  into `shenpiliucheng`(`id`,`addtime`,`bumen`,`shenpixiangmu`,`shenpiliucheng`,`xiangguanfujian`,`gengxinriqi`) values (1610955167749,'2021-01-18 15:32:47','人事部','离职申请','撒旦法都是范德萨范德萨','http://localhost:8080/ssmb5vlg/upload/1610955163285.docx','2021-01-18');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','ldj6yyn1e4lanlvcvgzcv9in2y9t7c8y','2021-01-18 15:29:37','2021-01-18 16:30:02');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1610955103542,'yuangong001','yuangong','员工','xi4qh497eangz18641w280s97476at5p','2021-01-18 15:34:00','2021-01-18 16:36:49');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1610955051354,'bumen001','bumenjingli','部门经理','jfvcyyladfe7xjosrmefvd1fbisuttpb','2021-01-18 15:35:08','2021-01-18 16:35:09');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1610955129375,'123','zongjingli','总经理','xep0zw80vqf76owhy7310cemapibh1t6','2021-01-18 15:36:12','2021-01-18 16:36:13');

/*Table structure for table `tongzhigonggao` */

DROP TABLE IF EXISTS `tongzhigonggao`;

CREATE TABLE `tongzhigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `xiangguanfujian` varchar(200) DEFAULT NULL COMMENT '相关附件',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610955214636 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `tongzhigonggao` */

insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`neirong`,`xiangguanfujian`,`faburiqi`) values (81,'2021-01-18 15:20:39','标题1','内容1','','2021-01-18');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`neirong`,`xiangguanfujian`,`faburiqi`) values (82,'2021-01-18 15:20:39','标题2','内容2','','2021-01-18');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`neirong`,`xiangguanfujian`,`faburiqi`) values (83,'2021-01-18 15:20:39','标题3','内容3','','2021-01-18');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`neirong`,`xiangguanfujian`,`faburiqi`) values (84,'2021-01-18 15:20:39','标题4','内容4','','2021-01-18');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`neirong`,`xiangguanfujian`,`faburiqi`) values (85,'2021-01-18 15:20:39','标题5','内容5','','2021-01-18');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`neirong`,`xiangguanfujian`,`faburiqi`) values (86,'2021-01-18 15:20:39','标题6','内容6','','2021-01-18');
insert  into `tongzhigonggao`(`id`,`addtime`,`biaoti`,`neirong`,`xiangguanfujian`,`faburiqi`) values (1610955214635,'2021-01-18 15:33:34','第三方手打富士达','方法规划发过的花费更多','http://localhost:8080/ssmb5vlg/upload/1610955208295.docx','2021-01-18');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-01-18 15:20:39');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `bumenbianhao` varchar(200) DEFAULT NULL COMMENT '部门编号',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `ruzhiriqi` date DEFAULT NULL COMMENT '入职日期',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `anquandengji` varchar(200) DEFAULT NULL COMMENT '安全等级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1610955103543 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`yuangongxingming`,`xingbie`,`shouji`,`youxiang`,`bumenbianhao`,`bumen`,`ruzhiriqi`,`xueli`,`anquandengji`) values (21,'2021-01-18 15:20:39','员工1','123456','员工姓名1','男','13823888881','773890001@qq.com','部门编号1','部门1','2021-01-18','学历1','安全等级1');
insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`yuangongxingming`,`xingbie`,`shouji`,`youxiang`,`bumenbianhao`,`bumen`,`ruzhiriqi`,`xueli`,`anquandengji`) values (22,'2021-01-18 15:20:39','员工2','123456','员工姓名2','男','13823888882','773890002@qq.com','部门编号2','部门2','2021-01-18','学历2','安全等级2');
insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`yuangongxingming`,`xingbie`,`shouji`,`youxiang`,`bumenbianhao`,`bumen`,`ruzhiriqi`,`xueli`,`anquandengji`) values (23,'2021-01-18 15:20:39','员工3','123456','员工姓名3','男','13823888883','773890003@qq.com','部门编号3','部门3','2021-01-18','学历3','安全等级3');
insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`yuangongxingming`,`xingbie`,`shouji`,`youxiang`,`bumenbianhao`,`bumen`,`ruzhiriqi`,`xueli`,`anquandengji`) values (24,'2021-01-18 15:20:39','员工4','123456','员工姓名4','男','13823888884','773890004@qq.com','部门编号4','部门4','2021-01-18','学历4','安全等级4');
insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`yuangongxingming`,`xingbie`,`shouji`,`youxiang`,`bumenbianhao`,`bumen`,`ruzhiriqi`,`xueli`,`anquandengji`) values (25,'2021-01-18 15:20:39','员工5','123456','员工姓名5','男','13823888885','773890005@qq.com','部门编号5','部门5','2021-01-18','学历5','安全等级5');
insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`yuangongxingming`,`xingbie`,`shouji`,`youxiang`,`bumenbianhao`,`bumen`,`ruzhiriqi`,`xueli`,`anquandengji`) values (26,'2021-01-18 15:20:39','员工6','123456','员工姓名6','男','13823888886','773890006@qq.com','部门编号6','部门6','2021-01-18','学历6','安全等级6');
insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`yuangongxingming`,`xingbie`,`shouji`,`youxiang`,`bumenbianhao`,`bumen`,`ruzhiriqi`,`xueli`,`anquandengji`) values (1610955103542,'2021-01-18 15:31:43','yuangong001','001','的的','男','13455667788','568768@qq.com','bumen001','人事部','2021-01-18','本科','中级');

/*Table structure for table `yuangonggongzi` */

DROP TABLE IF EXISTS `yuangonggongzi`;

CREATE TABLE `yuangonggongzi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `faxinyuefen` varchar(200) DEFAULT NULL COMMENT '发薪月份',
  `jibengongzi` varchar(200) DEFAULT NULL COMMENT '基本工资',
  `ticheng` varchar(200) DEFAULT NULL COMMENT '提成',
  `butie` varchar(200) DEFAULT NULL COMMENT '补贴',
  `koukuan` varchar(200) DEFAULT NULL COMMENT '扣款',
  `shifagongzi` varchar(200) DEFAULT NULL COMMENT '实发工资',
  `koukuanbeizhu` longtext COMMENT '扣款备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610955328924 DEFAULT CHARSET=utf8 COMMENT='员工工资';

/*Data for the table `yuangonggongzi` */

insert  into `yuangonggongzi`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`faxinyuefen`,`jibengongzi`,`ticheng`,`butie`,`koukuan`,`shifagongzi`,`koukuanbeizhu`) values (71,'2021-01-18 15:20:39','工号1','员工姓名1','发薪月份1','基本工资1','提成1','补贴1','扣款1','实发工资1','扣款备注1');
insert  into `yuangonggongzi`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`faxinyuefen`,`jibengongzi`,`ticheng`,`butie`,`koukuan`,`shifagongzi`,`koukuanbeizhu`) values (72,'2021-01-18 15:20:39','工号2','员工姓名2','发薪月份2','基本工资2','提成2','补贴2','扣款2','实发工资2','扣款备注2');
insert  into `yuangonggongzi`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`faxinyuefen`,`jibengongzi`,`ticheng`,`butie`,`koukuan`,`shifagongzi`,`koukuanbeizhu`) values (73,'2021-01-18 15:20:39','工号3','员工姓名3','发薪月份3','基本工资3','提成3','补贴3','扣款3','实发工资3','扣款备注3');
insert  into `yuangonggongzi`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`faxinyuefen`,`jibengongzi`,`ticheng`,`butie`,`koukuan`,`shifagongzi`,`koukuanbeizhu`) values (74,'2021-01-18 15:20:39','工号4','员工姓名4','发薪月份4','基本工资4','提成4','补贴4','扣款4','实发工资4','扣款备注4');
insert  into `yuangonggongzi`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`faxinyuefen`,`jibengongzi`,`ticheng`,`butie`,`koukuan`,`shifagongzi`,`koukuanbeizhu`) values (75,'2021-01-18 15:20:39','工号5','员工姓名5','发薪月份5','基本工资5','提成5','补贴5','扣款5','实发工资5','扣款备注5');
insert  into `yuangonggongzi`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`faxinyuefen`,`jibengongzi`,`ticheng`,`butie`,`koukuan`,`shifagongzi`,`koukuanbeizhu`) values (76,'2021-01-18 15:20:39','工号6','员工姓名6','发薪月份6','基本工资6','提成6','补贴6','扣款6','实发工资6','扣款备注6');
insert  into `yuangonggongzi`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`faxinyuefen`,`jibengongzi`,`ticheng`,`butie`,`koukuan`,`shifagongzi`,`koukuanbeizhu`) values (1610955328923,'2021-01-18 15:35:28','yuangong001','的的','202101','1200','900','800','5','2895','给对方花费更多h');

/*Table structure for table `yuangongliuyan` */

DROP TABLE IF EXISTS `yuangongliuyan`;

CREATE TABLE `yuangongliuyan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `bumenbianhao` varchar(200) DEFAULT NULL COMMENT '部门编号',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `liuyanneirong` longtext COMMENT '留言内容',
  `xiangguanfujian` varchar(200) DEFAULT NULL COMMENT '相关附件',
  `liuyanriqi` date DEFAULT NULL COMMENT '留言日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610955267172 DEFAULT CHARSET=utf8 COMMENT='员工留言';

/*Data for the table `yuangongliuyan` */

insert  into `yuangongliuyan`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`liuyanneirong`,`xiangguanfujian`,`liuyanriqi`,`sfsh`,`shhf`) values (51,'2021-01-18 15:20:39','工号1','员工姓名1','部门编号1','部门1','留言内容1','','2021-01-18','是','阿萨德富士达富士达');
insert  into `yuangongliuyan`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`liuyanneirong`,`xiangguanfujian`,`liuyanriqi`,`sfsh`,`shhf`) values (52,'2021-01-18 15:20:39','工号2','员工姓名2','部门编号2','部门2','留言内容2','','2021-01-18','否','');
insert  into `yuangongliuyan`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`liuyanneirong`,`xiangguanfujian`,`liuyanriqi`,`sfsh`,`shhf`) values (53,'2021-01-18 15:20:39','工号3','员工姓名3','部门编号3','部门3','留言内容3','','2021-01-18','否','');
insert  into `yuangongliuyan`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`liuyanneirong`,`xiangguanfujian`,`liuyanriqi`,`sfsh`,`shhf`) values (54,'2021-01-18 15:20:39','工号4','员工姓名4','部门编号4','部门4','留言内容4','','2021-01-18','否','');
insert  into `yuangongliuyan`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`liuyanneirong`,`xiangguanfujian`,`liuyanriqi`,`sfsh`,`shhf`) values (55,'2021-01-18 15:20:39','工号5','员工姓名5','部门编号5','部门5','留言内容5','','2021-01-18','否','');
insert  into `yuangongliuyan`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`liuyanneirong`,`xiangguanfujian`,`liuyanriqi`,`sfsh`,`shhf`) values (56,'2021-01-18 15:20:39','工号6','员工姓名6','部门编号6','部门6','留言内容6','','2021-01-18','否','');
insert  into `yuangongliuyan`(`id`,`addtime`,`gonghao`,`yuangongxingming`,`bumenbianhao`,`bumen`,`liuyanneirong`,`xiangguanfujian`,`liuyanriqi`,`sfsh`,`shhf`) values (1610955267171,'2021-01-18 15:34:26','yuangong001','的的','bumen001','人事部','的双方各范德萨广东佛山','http://localhost:8080/ssmb5vlg/upload/1610955262996.pptx','2021-01-18','是','法国动画发过的很过分');

/*Table structure for table `zongjingli` */

DROP TABLE IF EXISTS `zongjingli`;

CREATE TABLE `zongjingli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1610955129376 DEFAULT CHARSET=utf8 COMMENT='总经理';

/*Data for the table `zongjingli` */

insert  into `zongjingli`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`) values (31,'2021-01-18 15:20:39','总经理1','123456','姓名1','男','13823888881','773890001@qq.com');
insert  into `zongjingli`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`) values (32,'2021-01-18 15:20:39','总经理2','123456','姓名2','男','13823888882','773890002@qq.com');
insert  into `zongjingli`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`) values (33,'2021-01-18 15:20:39','总经理3','123456','姓名3','男','13823888883','773890003@qq.com');
insert  into `zongjingli`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`) values (34,'2021-01-18 15:20:39','总经理4','123456','姓名4','男','13823888884','773890004@qq.com');
insert  into `zongjingli`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`) values (35,'2021-01-18 15:20:39','总经理5','123456','姓名5','男','13823888885','773890005@qq.com');
insert  into `zongjingli`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`) values (36,'2021-01-18 15:20:39','总经理6','123456','姓名6','男','13823888886','773890006@qq.com');
insert  into `zongjingli`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`) values (1610955129375,'2021-01-18 15:32:09','123','123','手打','男','13455667788','568782@qq.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
