/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssms1924
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssms1924` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssms1924`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssms1924/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssms1924/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssms1924/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `jiaoxueshijian` */

DROP TABLE IF EXISTS `jiaoxueshijian`;

CREATE TABLE `jiaoxueshijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoxuemingcheng` varchar(200) NOT NULL COMMENT '教学名称',
  `jiaoxueneirong` longtext NOT NULL COMMENT '教学内容',
  `shoukelaoshi` varchar(200) DEFAULT NULL COMMENT '授课老师',
  `jiaoxueshijian` varchar(200) DEFAULT NULL COMMENT '教学时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shiyanshihao` varchar(200) DEFAULT NULL COMMENT '实验室号',
  `shiyanshimingcheng` varchar(200) DEFAULT NULL COMMENT '实验室名称',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教学实践';

/*Data for the table `jiaoxueshijian` */

insert  into `jiaoxueshijian`(`id`,`addtime`,`jiaoxuemingcheng`,`jiaoxueneirong`,`shoukelaoshi`,`jiaoxueshijian`,`tupian`,`shiyanshihao`,`shiyanshimingcheng`,`userid`) values (21,'2021-05-08 16:37:44','教学名称1','教学内容1','授课老师1','教学时间1','http://localhost:8080/ssms1924/upload/jiaoxueshijian_tupian1.jpg','实验室号1','实验室名称1',1);
insert  into `jiaoxueshijian`(`id`,`addtime`,`jiaoxuemingcheng`,`jiaoxueneirong`,`shoukelaoshi`,`jiaoxueshijian`,`tupian`,`shiyanshihao`,`shiyanshimingcheng`,`userid`) values (22,'2021-05-08 16:37:44','教学名称2','教学内容2','授课老师2','教学时间2','http://localhost:8080/ssms1924/upload/jiaoxueshijian_tupian2.jpg','实验室号2','实验室名称2',2);
insert  into `jiaoxueshijian`(`id`,`addtime`,`jiaoxuemingcheng`,`jiaoxueneirong`,`shoukelaoshi`,`jiaoxueshijian`,`tupian`,`shiyanshihao`,`shiyanshimingcheng`,`userid`) values (23,'2021-05-08 16:37:44','教学名称3','教学内容3','授课老师3','教学时间3','http://localhost:8080/ssms1924/upload/jiaoxueshijian_tupian3.jpg','实验室号3','实验室名称3',3);
insert  into `jiaoxueshijian`(`id`,`addtime`,`jiaoxuemingcheng`,`jiaoxueneirong`,`shoukelaoshi`,`jiaoxueshijian`,`tupian`,`shiyanshihao`,`shiyanshimingcheng`,`userid`) values (24,'2021-05-08 16:37:44','教学名称4','教学内容4','授课老师4','教学时间4','http://localhost:8080/ssms1924/upload/jiaoxueshijian_tupian4.jpg','实验室号4','实验室名称4',4);
insert  into `jiaoxueshijian`(`id`,`addtime`,`jiaoxuemingcheng`,`jiaoxueneirong`,`shoukelaoshi`,`jiaoxueshijian`,`tupian`,`shiyanshihao`,`shiyanshimingcheng`,`userid`) values (25,'2021-05-08 16:37:44','教学名称5','教学内容5','授课老师5','教学时间5','http://localhost:8080/ssms1924/upload/jiaoxueshijian_tupian5.jpg','实验室号5','实验室名称5',5);
insert  into `jiaoxueshijian`(`id`,`addtime`,`jiaoxuemingcheng`,`jiaoxueneirong`,`shoukelaoshi`,`jiaoxueshijian`,`tupian`,`shiyanshihao`,`shiyanshimingcheng`,`userid`) values (26,'2021-05-08 16:37:44','教学名称6','教学内容6','授课老师6','教学时间6','http://localhost:8080/ssms1924/upload/jiaoxueshijian_tupian6.jpg','实验室号6','实验室名称6',6);

/*Table structure for table `kechengbiao` */

DROP TABLE IF EXISTS `kechengbiao`;

CREATE TABLE `kechengbiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kebiaomingcheng` varchar(200) DEFAULT NULL COMMENT '课表名称',
  `kebiao` varchar(200) DEFAULT NULL COMMENT '课表',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `kebiaojianjie` longtext COMMENT '课表简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='课程表';

/*Data for the table `kechengbiao` */

insert  into `kechengbiao`(`id`,`addtime`,`kebiaomingcheng`,`kebiao`,`yuanxi`,`nianji`,`banji`,`kebiaojianjie`) values (61,'2021-05-08 16:37:44','课表名称1','http://localhost:8080/ssms1924/upload/kechengbiao_kebiao1.jpg','院系1','大一','班级1','课表简介1');
insert  into `kechengbiao`(`id`,`addtime`,`kebiaomingcheng`,`kebiao`,`yuanxi`,`nianji`,`banji`,`kebiaojianjie`) values (62,'2021-05-08 16:37:44','课表名称2','http://localhost:8080/ssms1924/upload/kechengbiao_kebiao2.jpg','院系2','大一','班级2','课表简介2');
insert  into `kechengbiao`(`id`,`addtime`,`kebiaomingcheng`,`kebiao`,`yuanxi`,`nianji`,`banji`,`kebiaojianjie`) values (63,'2021-05-08 16:37:44','课表名称3','http://localhost:8080/ssms1924/upload/kechengbiao_kebiao3.jpg','院系3','大一','班级3','课表简介3');
insert  into `kechengbiao`(`id`,`addtime`,`kebiaomingcheng`,`kebiao`,`yuanxi`,`nianji`,`banji`,`kebiaojianjie`) values (64,'2021-05-08 16:37:44','课表名称4','http://localhost:8080/ssms1924/upload/kechengbiao_kebiao4.jpg','院系4','大一','班级4','课表简介4');
insert  into `kechengbiao`(`id`,`addtime`,`kebiaomingcheng`,`kebiao`,`yuanxi`,`nianji`,`banji`,`kebiaojianjie`) values (65,'2021-05-08 16:37:44','课表名称5','http://localhost:8080/ssms1924/upload/kechengbiao_kebiao5.jpg','院系5','大一','班级5','课表简介5');
insert  into `kechengbiao`(`id`,`addtime`,`kebiaomingcheng`,`kebiao`,`yuanxi`,`nianji`,`banji`,`kebiaojianjie`) values (66,'2021-05-08 16:37:44','课表名称6','http://localhost:8080/ssms1924/upload/kechengbiao_kebiao6.jpg','院系6','大一','班级6','课表简介6');

/*Table structure for table `shebeixinxi` */

DROP TABLE IF EXISTS `shebeixinxi`;

CREATE TABLE `shebeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `yongtu` varchar(200) DEFAULT NULL COMMENT '用途',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shebeibianhao` (`shebeibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='设备信息';

/*Data for the table `shebeixinxi` */

insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`leixing`,`yongtu`,`zhuyishixiang`) values (41,'2021-05-08 16:37:44','设备编号1','设备名称1','http://localhost:8080/ssms1924/upload/shebeixinxi_tupian1.jpg','类型1','用途1','注意事项1');
insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`leixing`,`yongtu`,`zhuyishixiang`) values (42,'2021-05-08 16:37:44','设备编号2','设备名称2','http://localhost:8080/ssms1924/upload/shebeixinxi_tupian2.jpg','类型2','用途2','注意事项2');
insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`leixing`,`yongtu`,`zhuyishixiang`) values (43,'2021-05-08 16:37:44','设备编号3','设备名称3','http://localhost:8080/ssms1924/upload/shebeixinxi_tupian3.jpg','类型3','用途3','注意事项3');
insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`leixing`,`yongtu`,`zhuyishixiang`) values (44,'2021-05-08 16:37:44','设备编号4','设备名称4','http://localhost:8080/ssms1924/upload/shebeixinxi_tupian4.jpg','类型4','用途4','注意事项4');
insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`leixing`,`yongtu`,`zhuyishixiang`) values (45,'2021-05-08 16:37:44','设备编号5','设备名称5','http://localhost:8080/ssms1924/upload/shebeixinxi_tupian5.jpg','类型5','用途5','注意事项5');
insert  into `shebeixinxi`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`leixing`,`yongtu`,`zhuyishixiang`) values (46,'2021-05-08 16:37:44','设备编号6','设备名称6','http://localhost:8080/ssms1924/upload/shebeixinxi_tupian6.jpg','类型6','用途6','注意事项6');

/*Table structure for table `shebeiyuyue` */

DROP TABLE IF EXISTS `shebeiyuyue`;

CREATE TABLE `shebeiyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yongtu` varchar(200) DEFAULT NULL COMMENT '用途',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='设备预约';

/*Data for the table `shebeiyuyue` */

insert  into `shebeiyuyue`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`yongtu`,`zhanghao`,`mima`,`xingming`) values (51,'2021-05-08 16:37:44','设备编号1','设备名称1','http://localhost:8080/ssms1924/upload/shebeiyuyue_tupian1.jpg','用途1','账号1','密码1','姓名1');
insert  into `shebeiyuyue`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`yongtu`,`zhanghao`,`mima`,`xingming`) values (52,'2021-05-08 16:37:44','设备编号2','设备名称2','http://localhost:8080/ssms1924/upload/shebeiyuyue_tupian2.jpg','用途2','账号2','密码2','姓名2');
insert  into `shebeiyuyue`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`yongtu`,`zhanghao`,`mima`,`xingming`) values (53,'2021-05-08 16:37:44','设备编号3','设备名称3','http://localhost:8080/ssms1924/upload/shebeiyuyue_tupian3.jpg','用途3','账号3','密码3','姓名3');
insert  into `shebeiyuyue`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`yongtu`,`zhanghao`,`mima`,`xingming`) values (54,'2021-05-08 16:37:44','设备编号4','设备名称4','http://localhost:8080/ssms1924/upload/shebeiyuyue_tupian4.jpg','用途4','账号4','密码4','姓名4');
insert  into `shebeiyuyue`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`yongtu`,`zhanghao`,`mima`,`xingming`) values (55,'2021-05-08 16:37:44','设备编号5','设备名称5','http://localhost:8080/ssms1924/upload/shebeiyuyue_tupian5.jpg','用途5','账号5','密码5','姓名5');
insert  into `shebeiyuyue`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`yongtu`,`zhanghao`,`mima`,`xingming`) values (56,'2021-05-08 16:37:44','设备编号6','设备名称6','http://localhost:8080/ssms1924/upload/shebeiyuyue_tupian6.jpg','用途6','账号6','密码6','姓名6');

/*Table structure for table `shiyanshixinxi` */

DROP TABLE IF EXISTS `shiyanshixinxi`;

CREATE TABLE `shiyanshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanshihao` varchar(200) DEFAULT NULL COMMENT '实验室号',
  `shiyanshimingcheng` varchar(200) DEFAULT NULL COMMENT '实验室名称',
  `shiyanshitupian` varchar(200) DEFAULT NULL COMMENT '实验室图片',
  `shiyanshiweizhi` varchar(200) DEFAULT NULL COMMENT '实验室位置',
  `shiyanshizhuangtai` varchar(200) DEFAULT NULL COMMENT '实验室状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='实验室信息';

/*Data for the table `shiyanshixinxi` */

insert  into `shiyanshixinxi`(`id`,`addtime`,`shiyanshihao`,`shiyanshimingcheng`,`shiyanshitupian`,`shiyanshiweizhi`,`shiyanshizhuangtai`) values (91,'2021-05-08 16:37:44','实验室号1','实验室名称1','http://localhost:8080/ssms1924/upload/shiyanshixinxi_shiyanshitupian1.jpg','实验室位置1','使用中');
insert  into `shiyanshixinxi`(`id`,`addtime`,`shiyanshihao`,`shiyanshimingcheng`,`shiyanshitupian`,`shiyanshiweizhi`,`shiyanshizhuangtai`) values (92,'2021-05-08 16:37:44','实验室号2','实验室名称2','http://localhost:8080/ssms1924/upload/shiyanshixinxi_shiyanshitupian2.jpg','实验室位置2','使用中');
insert  into `shiyanshixinxi`(`id`,`addtime`,`shiyanshihao`,`shiyanshimingcheng`,`shiyanshitupian`,`shiyanshiweizhi`,`shiyanshizhuangtai`) values (93,'2021-05-08 16:37:44','实验室号3','实验室名称3','http://localhost:8080/ssms1924/upload/shiyanshixinxi_shiyanshitupian3.jpg','实验室位置3','使用中');
insert  into `shiyanshixinxi`(`id`,`addtime`,`shiyanshihao`,`shiyanshimingcheng`,`shiyanshitupian`,`shiyanshiweizhi`,`shiyanshizhuangtai`) values (94,'2021-05-08 16:37:44','实验室号4','实验室名称4','http://localhost:8080/ssms1924/upload/shiyanshixinxi_shiyanshitupian4.jpg','实验室位置4','使用中');
insert  into `shiyanshixinxi`(`id`,`addtime`,`shiyanshihao`,`shiyanshimingcheng`,`shiyanshitupian`,`shiyanshiweizhi`,`shiyanshizhuangtai`) values (95,'2021-05-08 16:37:44','实验室号5','实验室名称5','http://localhost:8080/ssms1924/upload/shiyanshixinxi_shiyanshitupian5.jpg','实验室位置5','使用中');
insert  into `shiyanshixinxi`(`id`,`addtime`,`shiyanshihao`,`shiyanshimingcheng`,`shiyanshitupian`,`shiyanshiweizhi`,`shiyanshizhuangtai`) values (96,'2021-05-08 16:37:44','实验室号6','实验室名称6','http://localhost:8080/ssms1924/upload/shiyanshixinxi_shiyanshitupian6.jpg','实验室位置6','使用中');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-08 16:37:44');

/*Table structure for table `xueshengqiandao` */

DROP TABLE IF EXISTS `xueshengqiandao`;

CREATE TABLE `xueshengqiandao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoxuemingcheng` varchar(200) DEFAULT NULL COMMENT '教学名称',
  `jiaoxueneirong` varchar(200) DEFAULT NULL COMMENT '教学内容',
  `shoukelaoshi` varchar(200) DEFAULT NULL COMMENT '授课老师',
  `jiaoxueshijian` varchar(200) DEFAULT NULL COMMENT '教学时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='学生签到';

/*Data for the table `xueshengqiandao` */

insert  into `xueshengqiandao`(`id`,`addtime`,`jiaoxuemingcheng`,`jiaoxueneirong`,`shoukelaoshi`,`jiaoxueshijian`,`tupian`,`zhanghao`,`mima`,`xingming`) values (31,'2021-05-08 16:37:44','教学名称1','教学内容1','授课老师1','教学时间1','http://localhost:8080/ssms1924/upload/xueshengqiandao_tupian1.jpg','账号1','密码1','姓名1');
insert  into `xueshengqiandao`(`id`,`addtime`,`jiaoxuemingcheng`,`jiaoxueneirong`,`shoukelaoshi`,`jiaoxueshijian`,`tupian`,`zhanghao`,`mima`,`xingming`) values (32,'2021-05-08 16:37:44','教学名称2','教学内容2','授课老师2','教学时间2','http://localhost:8080/ssms1924/upload/xueshengqiandao_tupian2.jpg','账号2','密码2','姓名2');
insert  into `xueshengqiandao`(`id`,`addtime`,`jiaoxuemingcheng`,`jiaoxueneirong`,`shoukelaoshi`,`jiaoxueshijian`,`tupian`,`zhanghao`,`mima`,`xingming`) values (33,'2021-05-08 16:37:44','教学名称3','教学内容3','授课老师3','教学时间3','http://localhost:8080/ssms1924/upload/xueshengqiandao_tupian3.jpg','账号3','密码3','姓名3');
insert  into `xueshengqiandao`(`id`,`addtime`,`jiaoxuemingcheng`,`jiaoxueneirong`,`shoukelaoshi`,`jiaoxueshijian`,`tupian`,`zhanghao`,`mima`,`xingming`) values (34,'2021-05-08 16:37:44','教学名称4','教学内容4','授课老师4','教学时间4','http://localhost:8080/ssms1924/upload/xueshengqiandao_tupian4.jpg','账号4','密码4','姓名4');
insert  into `xueshengqiandao`(`id`,`addtime`,`jiaoxuemingcheng`,`jiaoxueneirong`,`shoukelaoshi`,`jiaoxueshijian`,`tupian`,`zhanghao`,`mima`,`xingming`) values (35,'2021-05-08 16:37:44','教学名称5','教学内容5','授课老师5','教学时间5','http://localhost:8080/ssms1924/upload/xueshengqiandao_tupian5.jpg','账号5','密码5','姓名5');
insert  into `xueshengqiandao`(`id`,`addtime`,`jiaoxuemingcheng`,`jiaoxueneirong`,`shoukelaoshi`,`jiaoxueshijian`,`tupian`,`zhanghao`,`mima`,`xingming`) values (36,'2021-05-08 16:37:44','教学名称6','教学内容6','授课老师6','教学时间6','http://localhost:8080/ssms1924/upload/xueshengqiandao_tupian6.jpg','账号6','密码6','姓名6');

/*Table structure for table `yonghuxinxi` */

DROP TABLE IF EXISTS `yonghuxinxi`;

CREATE TABLE `yonghuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户信息';

/*Data for the table `yonghuxinxi` */

insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`xuehao`,`youxiang`,`banji`) values (11,'2021-05-08 16:37:44','用户信息1','123456','姓名1','男','13823888881','学号1','773890001@qq.com','班级1');
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`xuehao`,`youxiang`,`banji`) values (12,'2021-05-08 16:37:44','用户信息2','123456','姓名2','男','13823888882','学号2','773890002@qq.com','班级2');
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`xuehao`,`youxiang`,`banji`) values (13,'2021-05-08 16:37:44','用户信息3','123456','姓名3','男','13823888883','学号3','773890003@qq.com','班级3');
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`xuehao`,`youxiang`,`banji`) values (14,'2021-05-08 16:37:44','用户信息4','123456','姓名4','男','13823888884','学号4','773890004@qq.com','班级4');
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`xuehao`,`youxiang`,`banji`) values (15,'2021-05-08 16:37:44','用户信息5','123456','姓名5','男','13823888885','学号5','773890005@qq.com','班级5');
insert  into `yonghuxinxi`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`xuehao`,`youxiang`,`banji`) values (16,'2021-05-08 16:37:44','用户信息6','123456','姓名6','男','13823888886','学号6','773890006@qq.com','班级6');

/*Table structure for table `yudingshiyanshi` */

DROP TABLE IF EXISTS `yudingshiyanshi`;

CREATE TABLE `yudingshiyanshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanshihao` varchar(200) NOT NULL COMMENT '实验室号',
  `shiyanshimingcheng` varchar(200) NOT NULL COMMENT '实验室名称',
  `shiyanshitupian` varchar(200) DEFAULT NULL COMMENT '实验室图片',
  `shiyanshiweizhi` varchar(200) DEFAULT NULL COMMENT '实验室位置',
  `shiyanshizhuangtai` varchar(200) NOT NULL COMMENT '实验室状态',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='预定实验室';

/*Data for the table `yudingshiyanshi` */

insert  into `yudingshiyanshi`(`id`,`addtime`,`shiyanshihao`,`shiyanshimingcheng`,`shiyanshitupian`,`shiyanshiweizhi`,`shiyanshizhuangtai`,`zhanghao`,`xingming`,`shouji`,`clicknum`) values (81,'2021-05-08 16:37:44','实验室号1','实验室名称1','http://localhost:8080/ssms1924/upload/yudingshiyanshi_shiyanshitupian1.jpg','实验室位置1','实验室状态1','账号1','姓名1','手机1',1);
insert  into `yudingshiyanshi`(`id`,`addtime`,`shiyanshihao`,`shiyanshimingcheng`,`shiyanshitupian`,`shiyanshiweizhi`,`shiyanshizhuangtai`,`zhanghao`,`xingming`,`shouji`,`clicknum`) values (82,'2021-05-08 16:37:44','实验室号2','实验室名称2','http://localhost:8080/ssms1924/upload/yudingshiyanshi_shiyanshitupian2.jpg','实验室位置2','实验室状态2','账号2','姓名2','手机2',2);
insert  into `yudingshiyanshi`(`id`,`addtime`,`shiyanshihao`,`shiyanshimingcheng`,`shiyanshitupian`,`shiyanshiweizhi`,`shiyanshizhuangtai`,`zhanghao`,`xingming`,`shouji`,`clicknum`) values (83,'2021-05-08 16:37:44','实验室号3','实验室名称3','http://localhost:8080/ssms1924/upload/yudingshiyanshi_shiyanshitupian3.jpg','实验室位置3','实验室状态3','账号3','姓名3','手机3',3);
insert  into `yudingshiyanshi`(`id`,`addtime`,`shiyanshihao`,`shiyanshimingcheng`,`shiyanshitupian`,`shiyanshiweizhi`,`shiyanshizhuangtai`,`zhanghao`,`xingming`,`shouji`,`clicknum`) values (84,'2021-05-08 16:37:44','实验室号4','实验室名称4','http://localhost:8080/ssms1924/upload/yudingshiyanshi_shiyanshitupian4.jpg','实验室位置4','实验室状态4','账号4','姓名4','手机4',4);
insert  into `yudingshiyanshi`(`id`,`addtime`,`shiyanshihao`,`shiyanshimingcheng`,`shiyanshitupian`,`shiyanshiweizhi`,`shiyanshizhuangtai`,`zhanghao`,`xingming`,`shouji`,`clicknum`) values (85,'2021-05-08 16:37:44','实验室号5','实验室名称5','http://localhost:8080/ssms1924/upload/yudingshiyanshi_shiyanshitupian5.jpg','实验室位置5','实验室状态5','账号5','姓名5','手机5',5);
insert  into `yudingshiyanshi`(`id`,`addtime`,`shiyanshihao`,`shiyanshimingcheng`,`shiyanshitupian`,`shiyanshiweizhi`,`shiyanshizhuangtai`,`zhanghao`,`xingming`,`shouji`,`clicknum`) values (86,'2021-05-08 16:37:44','实验室号6','实验室名称6','http://localhost:8080/ssms1924/upload/yudingshiyanshi_shiyanshitupian6.jpg','实验室位置6','实验室状态6','账号6','姓名6','手机6',6);

/*Table structure for table `yuyuekecheng` */

DROP TABLE IF EXISTS `yuyuekecheng`;

CREATE TABLE `yuyuekecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kebiaomingcheng` varchar(200) DEFAULT NULL COMMENT '课表名称',
  `kebiao` varchar(200) DEFAULT NULL COMMENT '课表',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='预约课程';

/*Data for the table `yuyuekecheng` */

insert  into `yuyuekecheng`(`id`,`addtime`,`kebiaomingcheng`,`kebiao`,`yuanxi`,`nianji`,`banji`,`zhanghao`,`xingming`,`shouji`) values (71,'2021-05-08 16:37:44','课表名称1','http://localhost:8080/ssms1924/upload/yuyuekecheng_kebiao1.jpg','院系1','年级1','班级1','账号1','姓名1','手机1');
insert  into `yuyuekecheng`(`id`,`addtime`,`kebiaomingcheng`,`kebiao`,`yuanxi`,`nianji`,`banji`,`zhanghao`,`xingming`,`shouji`) values (72,'2021-05-08 16:37:44','课表名称2','http://localhost:8080/ssms1924/upload/yuyuekecheng_kebiao2.jpg','院系2','年级2','班级2','账号2','姓名2','手机2');
insert  into `yuyuekecheng`(`id`,`addtime`,`kebiaomingcheng`,`kebiao`,`yuanxi`,`nianji`,`banji`,`zhanghao`,`xingming`,`shouji`) values (73,'2021-05-08 16:37:44','课表名称3','http://localhost:8080/ssms1924/upload/yuyuekecheng_kebiao3.jpg','院系3','年级3','班级3','账号3','姓名3','手机3');
insert  into `yuyuekecheng`(`id`,`addtime`,`kebiaomingcheng`,`kebiao`,`yuanxi`,`nianji`,`banji`,`zhanghao`,`xingming`,`shouji`) values (74,'2021-05-08 16:37:44','课表名称4','http://localhost:8080/ssms1924/upload/yuyuekecheng_kebiao4.jpg','院系4','年级4','班级4','账号4','姓名4','手机4');
insert  into `yuyuekecheng`(`id`,`addtime`,`kebiaomingcheng`,`kebiao`,`yuanxi`,`nianji`,`banji`,`zhanghao`,`xingming`,`shouji`) values (75,'2021-05-08 16:37:44','课表名称5','http://localhost:8080/ssms1924/upload/yuyuekecheng_kebiao5.jpg','院系5','年级5','班级5','账号5','姓名5','手机5');
insert  into `yuyuekecheng`(`id`,`addtime`,`kebiaomingcheng`,`kebiao`,`yuanxi`,`nianji`,`banji`,`zhanghao`,`xingming`,`shouji`) values (76,'2021-05-08 16:37:44','课表名称6','http://localhost:8080/ssms1924/upload/yuyuekecheng_kebiao6.jpg','院系6','年级6','班级6','账号6','姓名6','手机6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
