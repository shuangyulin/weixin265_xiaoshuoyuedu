/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoshuoyueduxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoshuoyueduxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoshuoyueduxitong`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='帮助中心';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'11233',NULL,NULL,NULL,2,1,'2022-05-11 13:39:25'),(2,1,NULL,NULL,'需要等待一段时间后才会显示，数据显示出来再回复','2022-05-11 13:49:08',NULL,2,'2022-05-11 13:49:09'),(3,1,'11111',NULL,NULL,NULL,1,1,'2022-05-11 13:58:25');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/xiaoshuoyueduxitong/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/xiaoshuoyueduxitong/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/xiaoshuoyueduxitong/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'chat_types','数据类型',1,'问题',NULL,NULL,'2022-05-11 10:37:11'),(2,'chat_types','数据类型',2,'回复',NULL,NULL,'2022-05-11 10:37:11'),(3,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2022-05-11 10:37:11'),(4,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2022-05-11 10:37:11'),(5,'xiaoshuo_types','作品类型',1,'作品类型1',NULL,NULL,'2022-05-11 10:37:11'),(6,'xiaoshuo_types','作品类型',2,'作品类型2',NULL,NULL,'2022-05-11 10:37:11'),(7,'xiaoshuo_types','作品类型',3,'作品类型3',NULL,NULL,'2022-05-11 10:37:11'),(8,'shangxia_types','是否上架',1,'上架',NULL,NULL,'2022-05-11 10:37:11'),(9,'shangxia_types','是否上架',2,'下架',NULL,NULL,'2022-05-11 10:37:11'),(10,'xiaoshuo_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-05-11 10:37:11'),(11,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-05-11 10:37:11'),(12,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-05-11 10:37:11'),(13,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-05-11 10:37:11'),(14,'sex_types','性别',1,'男',NULL,NULL,'2022-05-11 10:37:11'),(15,'sex_types','性别',2,'女',NULL,NULL,'2022-05-11 10:37:11'),(16,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-05-11 10:37:12'),(17,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-05-11 10:37:12');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='论坛信息';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',NULL,1,'2022-05-11 10:37:23','2022-05-11 10:37:23','2022-05-11 10:37:23'),(2,'帖子标题2',3,NULL,'发布内容2',NULL,1,'2022-05-11 10:37:23','2022-05-11 10:37:23','2022-05-11 10:37:23'),(3,'帖子标题3',3,NULL,'发布内容3',NULL,1,'2022-05-11 10:37:23','2022-05-11 10:37:23','2022-05-11 10:37:23'),(4,'帖子标题4',2,NULL,'发布内容4',NULL,1,'2022-05-11 10:37:23','2022-05-11 10:37:23','2022-05-11 10:37:23'),(5,'帖子标题5',2,NULL,'发布内容5',NULL,1,'2022-05-11 10:37:23','2022-05-11 10:37:23','2022-05-11 10:37:23'),(6,NULL,NULL,1,'管理评论111',5,2,'2022-05-11 13:49:25',NULL,'2022-05-11 13:49:25'),(7,NULL,1,NULL,'评论11111',5,2,'2022-05-11 13:58:11',NULL,'2022-05-11 13:58:11'),(8,'123',1,NULL,'123',NULL,1,'2022-05-11 14:13:37',NULL,'2022-05-11 14:13:37');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'http://localhost:8080/xiaoshuoyueduxitong/upload/news1.jpg','2022-05-11 10:37:23','公告详情1','2022-05-11 10:37:23'),(2,'公告标题2',2,'http://localhost:8080/xiaoshuoyueduxitong/upload/news2.jpg','2022-05-11 10:37:23','公告详情2','2022-05-11 10:37:23'),(3,'公告标题3',2,'http://localhost:8080/xiaoshuoyueduxitong/upload/news3.jpg','2022-05-11 10:37:23','公告详情3','2022-05-11 10:37:23'),(4,'公告标题4',2,'http://localhost:8080/xiaoshuoyueduxitong/upload/news4.jpg','2022-05-11 10:37:23','公告详情4','2022-05-11 10:37:23'),(5,'公告标题5',1,'http://localhost:8080/xiaoshuoyueduxitong/upload/news5.jpg','2022-05-11 10:37:23','公告详情5','2022-05-11 10:37:23');

/*Table structure for table `shujia` */

DROP TABLE IF EXISTS `shujia`;

CREATE TABLE `shujia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaoshuo_id` int(11) DEFAULT NULL COMMENT '小说',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='书架信息';

/*Data for the table `shujia` */

insert  into `shujia`(`id`,`xiaoshuo_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,1,1,'2022-05-11 10:37:23','2022-05-11 10:37:23'),(2,2,1,'2022-05-11 10:37:23','2022-05-11 10:37:23'),(3,3,1,'2022-05-11 10:37:23','2022-05-11 10:37:23'),(4,4,2,'2022-05-11 10:37:23','2022-05-11 10:37:23'),(5,5,3,'2022-05-11 10:37:23','2022-05-11 10:37:23');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','hy3zhkz7arooxokx085g8bo858re2hqo','2022-05-11 10:44:43','2022-05-11 15:25:51'),(2,1,'a1','yonghu','用户','s73ga2hxr26cctgmx7ob4f4yvk8rs5vd','2022-05-11 11:14:29','2022-05-11 14:57:13');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `xiaoshuo` */

DROP TABLE IF EXISTS `xiaoshuo`;

CREATE TABLE `xiaoshuo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaoshuo_name` varchar(200) DEFAULT NULL COMMENT '作品名称  Search111 ',
  `xiaoshuo_photo` varchar(200) DEFAULT NULL COMMENT '作品封面',
  `xiaoshuo_zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `xiaoshuo_zishu` int(11) DEFAULT NULL COMMENT '字数',
  `xiaoshuo_types` int(11) DEFAULT NULL COMMENT '作品类型 Search111',
  `xiaoshuo_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `xiaoshuo_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `xiaoshuo_content` text COMMENT '作品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='书城信息';

/*Data for the table `xiaoshuo` */

insert  into `xiaoshuo`(`id`,`xiaoshuo_name`,`xiaoshuo_photo`,`xiaoshuo_zuozhe`,`xiaoshuo_zishu`,`xiaoshuo_types`,`xiaoshuo_clicknum`,`shangxia_types`,`xiaoshuo_delete`,`xiaoshuo_content`,`create_time`) values (1,'作品名称1','http://localhost:8080/xiaoshuoyueduxitong/upload/xiaoshuo1.jpg','作者1',54,2,195,1,1,'作品简介1','2022-05-11 10:37:23'),(2,'作品名称2','http://localhost:8080/xiaoshuoyueduxitong/upload/xiaoshuo2.jpg','作者2',473,3,72,1,1,'作品简介2','2022-05-11 10:37:23'),(3,'作品名称3','http://localhost:8080/xiaoshuoyueduxitong/upload/xiaoshuo3.jpg','作者3',273,2,252,1,1,'作品简介3','2022-05-11 10:37:23'),(4,'作品名称4','http://localhost:8080/xiaoshuoyueduxitong/upload/xiaoshuo4.jpg','作者4',65,2,351,1,1,'作品简介4','2022-05-11 10:37:23'),(5,'作品名称5','http://localhost:8080/xiaoshuoyueduxitong/upload/xiaoshuo5.jpg','作者5',132,1,64,1,1,'作品简介5','2022-05-11 10:37:23');

/*Table structure for table `xiaoshuo_collection` */

DROP TABLE IF EXISTS `xiaoshuo_collection`;

CREATE TABLE `xiaoshuo_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaoshuo_id` int(11) DEFAULT NULL COMMENT '作品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiaoshuo_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='作品收藏';

/*Data for the table `xiaoshuo_collection` */

insert  into `xiaoshuo_collection`(`id`,`xiaoshuo_id`,`yonghu_id`,`xiaoshuo_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2022-05-11 10:37:23','2022-05-11 10:37:23'),(2,2,1,1,'2022-05-11 10:37:23','2022-05-11 10:37:23'),(3,3,1,1,'2022-05-11 10:37:23','2022-05-11 10:37:23'),(4,4,3,1,'2022-05-11 10:37:23','2022-05-11 10:37:23'),(5,5,3,1,'2022-05-11 10:37:23','2022-05-11 10:37:23');

/*Table structure for table `xiaoshuo_liuyan` */

DROP TABLE IF EXISTS `xiaoshuo_liuyan`;

CREATE TABLE `xiaoshuo_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaoshuo_id` int(11) DEFAULT NULL COMMENT '作品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiaoshuo_liuyan_text` text COMMENT '评论内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='作品评论';

/*Data for the table `xiaoshuo_liuyan` */

insert  into `xiaoshuo_liuyan`(`id`,`xiaoshuo_id`,`yonghu_id`,`xiaoshuo_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评论内容1','2022-05-11 10:37:23','回复信息1','2022-05-11 10:37:23','2022-05-11 10:37:23'),(2,2,1,'评论内容2','2022-05-11 10:37:23','回复信息2','2022-05-11 10:37:23','2022-05-11 10:37:23'),(3,3,1,'评论内容3','2022-05-11 10:37:23','回复信息3','2022-05-11 10:37:23','2022-05-11 10:37:23'),(4,4,1,'评论内容4','2022-05-11 10:37:23','回复信息4','2022-05-11 10:37:23','2022-05-11 10:37:23'),(5,5,1,'评论内容5','2022-05-11 10:37:23','下架的作品不会在前台展示','2022-05-11 13:49:57','2022-05-11 10:37:23'),(6,4,1,'用户评论21212','2022-05-11 13:57:39','',NULL,'2022-05-11 13:57:39');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '学号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_email`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/xiaoshuoyueduxitong/upload/yonghu1.jpg',2,'17703786901','1@qq.com',1,'2022-05-11 10:37:23','2022-05-11 10:37:23'),(2,'a2','123456','用户姓名2','http://localhost:8080/xiaoshuoyueduxitong/upload/yonghu2.jpg',1,'17703786902','2@qq.com',1,'2022-05-11 10:37:23','2022-05-11 10:37:23'),(3,'a3','123456','用户姓名3','http://localhost:8080/xiaoshuoyueduxitong/upload/yonghu3.jpg',2,'17703786903','3@qq.com',1,'2022-05-11 10:37:23','2022-05-11 10:37:23');

/*Table structure for table `zhangjie` */

DROP TABLE IF EXISTS `zhangjie`;

CREATE TABLE `zhangjie` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaoshuo_id` int(11) DEFAULT NULL COMMENT '小说',
  `zhangjie_name` varchar(200) DEFAULT NULL COMMENT '章节标题  Search111 ',
  `zhangjie_content` text COMMENT '章节内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='章节信息';

/*Data for the table `zhangjie` */

insert  into `zhangjie`(`id`,`xiaoshuo_id`,`zhangjie_name`,`zhangjie_content`,`insert_time`,`create_time`) values (1,1,'章节标题1','章节内容1','2022-05-11 10:37:23','2022-05-11 10:37:23'),(2,1,'章节标题2','章节内容2','2022-05-11 10:37:23','2022-05-11 10:37:23'),(3,1,'章节标题3','章节内容3','2022-05-11 10:37:23','2022-05-11 10:37:23'),(4,2,'章节标题2.1','章节内容2.1','2022-05-11 10:37:23','2022-05-11 10:37:23'),(5,3,'章节标题3.1','章节内容3.1','2022-05-11 10:37:23','2022-05-11 10:37:23'),(6,4,'章节标题4.1','章节内容4.1','2022-05-11 10:37:23','2022-05-11 10:37:23'),(7,5,'章节标题5.1','章节内容5.1章节内容5.1章节内容5.1章节内容5.1章节内容5.1章节内容5.1章节内容5.1','2022-05-11 10:37:23','2022-05-11 10:37:23'),(8,1,' 章节标题1111111','<p><span style=\"color: rgb(96, 98, 102);\">章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容章节内容</span></p>','2022-05-11 13:50:44','2022-05-11 13:50:44');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
