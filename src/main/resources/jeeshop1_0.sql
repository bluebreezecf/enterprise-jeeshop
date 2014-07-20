CREATE DATABASE  IF NOT EXISTS `jeeshop1_0` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `jeeshop1_0`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: jeeshop1_0
-- ------------------------------------------------------
-- Server version	5.5.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_questionnaire`
--

DROP TABLE IF EXISTS `t_questionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_questionnaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `title2` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `createAccount` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateAccount` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `showStartDate` date DEFAULT NULL,
  `showEndDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_questionnaire`
--

LOCK TABLES `t_questionnaire` WRITE;
/*!40000 ALTER TABLE `t_questionnaire` DISABLE KEYS */;
INSERT INTO `t_questionnaire` VALUES (1,'问卷调查1','321312的是否是否是方式','2011-11-11 00:00:00','2014-02-18 19:00:25','1','admin','y','2011-11-11','2011-11-18'),(2,'3232321','321312',NULL,'2014-02-15 09:54:32',NULL,NULL,'y','2014-02-06','2014-02-13'),(3,'22','3333',NULL,NULL,NULL,NULL,'n',NULL,NULL),(4,'4234','42435555','2014-02-10 10:33:32','2014-02-10 10:34:21','admin','admin','n','2014-01-31',NULL),(5,'5555','555555','2014-02-10 12:01:12',NULL,'select',NULL,'n',NULL,NULL);
/*!40000 ALTER TABLE `t_questionnaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_attribute_link`
--

DROP TABLE IF EXISTS `t_attribute_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_attribute_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attrID` int(11) DEFAULT '0',
  `productID` int(11) DEFAULT '0',
  `value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=653 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_attribute_link`
--

LOCK TABLES `t_attribute_link` WRITE;
/*!40000 ALTER TABLE `t_attribute_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_attribute_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_advert`
--

DROP TABLE IF EXISTS `t_advert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `remark` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `html` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_unicode_ci DEFAULT 'y',
  `useImagesRandom` varchar(2) COLLATE utf8_unicode_ci DEFAULT 'n',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_advert`
--

LOCK TABLES `t_advert` WRITE;
/*!40000 ALTER TABLE `t_advert` DISABLE KEYS */;
INSERT INTO `t_advert` VALUES (10,'首页头部广告','index_top',NULL,'<div>\r\n	<a href=\"http://www.aliyun.com/?spm=5176.914900.2.1.YbCBQO\" target=\"_blank\" title=\"首页头部广告\"><img alt=\"mycms-logo\" style=\"width:100%;\" src=\"http://info-database.csdn.net/Upload/2013-12-03/qnx-728-90-1202.jpg\" /></a> \r\n</div>','2014-01-09','2014-01-31','y',NULL),(11,'首页右侧头部广告','index_right_top',NULL,'<div>\r\n	<a href=\"http://www.aliyun.com/?spm=5176.914900.2.1.YbCBQO\" target=\"_blank\"><img alt=\"mycms-logo\" style=\"width:100%;\" src=\"http://images.csdn.net/20140108/%E6%9C%AA%E5%91%BD%E5%90%8D.jpg\" /> </a>\r\n</div>','2014-01-09','2014-01-31','y',NULL),(12,'首页右侧底部广告','index_right_bottom',NULL,'<div>\r\n	<a href=\"http://www.aliyun.com/?spm=5176.914900.2.1.YbCBQO\" target=\"_blank\">\r\n<img alt=\"mycms-logo\" style=\"width:100%;\" src=\"http://market.21cn.com/w/free/meiti/2013new/213.jpg\" />\r\n</a></div>',NULL,NULL,'y',NULL),(13,'新闻页面-右侧头部广告','newslist_right_top',NULL,NULL,NULL,NULL,'y',NULL),(14,'登陆页面广告','advert_login_page',NULL,'<div class=\"row\" style=\"text-align:left;\">\r\n	<p>\r\n		<b>IT-else软件技术论坛</b> \r\n	</p>\r\n</div>\r\n<div class=\"row\" style=\"text-align:left;\">\r\n	<h4>\r\n		<p>\r\n			来到这里，你可以：\r\n		</p>\r\n	</h4>\r\n</div>\r\n<div class=\"row\" style=\"text-align:left;\">\r\n	<p>\r\n		1、可以和大家分享技术心得\r\n	</p>\r\n</div>\r\n<div class=\"row\" style=\"text-align:left;\">\r\n	<p>\r\n		2、可以交到更多的朋友\r\n	</p>\r\n</div>\r\n<div class=\"row\" style=\"text-align:left;\">\r\n	<p>\r\n		3、可以和这里的小伙伴们分享技术以外的事情\r\n	</p>\r\n</div>\r\n<div class=\"row\" style=\"text-align:left;\">\r\n	<p>\r\n		4、有趣的，无趣的，搞笑的，烦<span style=\"line-height:1.5;\">恼的，这些是我们的初衷。</span> \r\n	</p>\r\n</div>\r\n<div class=\"row\" style=\"text-align:left;\">\r\n	<p>\r\n		5、当然，还有很多...我们正在开发<span style=\"line-height:1.5;\">完善当中...</span><img src=\"http://i.mmcdn.cn/simba/img/T1M6L9FcFgXXb1upjX.jpg\" width=\"100%\" height=\"100\" alt=\"\" /> \r\n	</p>\r\n</div>',NULL,NULL,'y','y'),(15,'注册页面广告','advert_register_page',NULL,NULL,NULL,NULL,'y','y');
/*!40000 ALTER TABLE `t_advert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ordership`
--

DROP TABLE IF EXISTS `t_ordership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ordership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `shipname` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `shipaddress` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `provinceCode` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `cityCode` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `areaCode` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ordership`
--

LOCK TABLES `t_ordership` WRITE;
/*!40000 ALTER TABLE `t_ordership` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ordership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_product`
--

DROP TABLE IF EXISTS `t_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `introduce` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(9,2) DEFAULT NULL,
  `nowPrice` decimal(9,2) DEFAULT NULL,
  `picture` varchar(245) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `createAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateAccount` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `isnew` char(1) COLLATE utf8_unicode_ci DEFAULT 'n',
  `sale` char(1) COLLATE utf8_unicode_ci DEFAULT 'n',
  `hit` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `productHTML` longtext COLLATE utf8_unicode_ci,
  `maxPicture` varchar(245) COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catalogID` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sellcount` int(11) DEFAULT '0',
  `stock` int(11) DEFAULT '0',
  `searchKey` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(145) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(145) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activityID` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(25) COLLATE utf8_unicode_ci DEFAULT 'item',
  `score` int(11) DEFAULT '0',
  `isTimePromotion` char(1) COLLATE utf8_unicode_ci DEFAULT 'n',
  PRIMARY KEY (`id`),
  KEY `product_name` (`name`),
  KEY `product_catalog` (`catalogID`),
  KEY `product_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=10322 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_product`
--

LOCK TABLES `t_product` WRITE;
/*!40000 ALTER TABLE `t_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_systemsetting`
--

DROP TABLE IF EXISTS `t_systemsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_systemsetting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `systemCode` varchar(45) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `www` varchar(100) NOT NULL,
  `log` varchar(100) DEFAULT NULL,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `keywords` varchar(100) NOT NULL,
  `shortcuticon` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `icp` varchar(45) NOT NULL,
  `isopen` varchar(8) NOT NULL DEFAULT 'y',
  `closeMsg` varchar(500) DEFAULT NULL,
  `qq` varchar(25) DEFAULT NULL,
  `imageRootPath` varchar(45) DEFAULT NULL,
  `manageHttp` varchar(45) DEFAULT NULL,
  `defaultProductImg` varchar(145) DEFAULT NULL,
  `style` varchar(20) DEFAULT 'default',
  `version` varchar(145) DEFAULT NULL,
  `qqHelpHtml` text,
  `images` text,
  `manageLeftTreeLeafIcon` varchar(100) DEFAULT NULL,
  `statisticsCode` varchar(1000) DEFAULT NULL,
  `openResponsive` varchar(1) DEFAULT 'y',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_systemsetting`
--

LOCK TABLES `t_systemsetting` WRITE;
/*!40000 ALTER TABLE `t_systemsetting` DISABLE KEYS */;
INSERT INTO `t_systemsetting` VALUES (1,'jeeshop','网上商店系统(jeeshop)','http://127.0.0.1:8080/jeeshop','http://127.0.0.1:8080/jeeshop/resource/images/log.png','网上商店系统(jeeshop)','网上商店系统(jeeshop) 个性化的网店系统 通用的个人网店系统','网上商店系统(jeeshop) 个性化的网店系统 通用的个人网店系统','http://127.0.0.1:8080/jeeshop/resource/images/favicon.png','XXX省XXX市XXX区XXX号XX弄301','400-666-8888','jqsl2012@163.com','©2013 jeeshop.net 沪ICP备13028197号-1','true','由于维护原因，网站暂时关闭，由此带来的不便请亲原谅，大概会在10分钟后开放网站，敬请期待！',NULL,'http://myshopxx.oss.aliyuncs.com','http://127.0.0.1:8080/jeeshop','http://127.0.0.1:8080/jeeshop/resource/images/loading7.gif','united','系统版本号:0.5.2.8433.开发测试版.','<div>\r\n	<a href=\"http://wpa.qq.com/msgrd?v=3&uin=543089122&site=qq&menu=yes\" target=\"_blank\"><img title=\"QQ店小二,点击这里给我发消息\" alt=\"QQ店小二,点击这里给我发消息\" src=\"http://wpa.qq.com/pa?p=2:543089122:51\" border=\"0\" /></a> <a href=\"http://wpa.qq.com/msgrd?v=3&uin=543089122&site=qq&menu=yes\" target=\"_blank\"><img title=\"QQ店小三,点击这里给我发消息\" alt=\"QQ店小三,点击这里给我发消息\" src=\"http://wpa.qq.com/pa?p=2:543089122:51\" border=\"0\" /></a> <a href=\"http://wpa.qq.com/msgrd?v=3&uin=543089122&site=qq&menu=yes\" target=\"_blank\"><img title=\"QQ店小四,点击这里给我发消息\" alt=\"QQ店小四,点击这里给我发消息\" src=\"http://wpa.qq.com/pa?p=2:543089122:51\" border=\"0\" /></a> \r\n</div>','/attached/image/20140304/1393899445649_3.jpg,/attached/image/20140304/1393900297582_3.jpg,/attached/image/20140304/1393902455326_3.jpg,/attached/image/20140304/1393900298738_3.jpg','http://demo.jeeshop.net/resource/images/letter.gif','<script type=\"text/javascript\">var cnzz_protocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\");document.write(unescape(\"%3Cspan id=\'cnzz_stat_icon_1000234875\'%3E%3C/span%3E%3Cscript src=\'\" + cnzz_protocol + \"s96.cnzz.com/z_stat.php%3Fid%3D1000234875%26show%3Dpic\' type=\'text/javascript\'%3E%3C/script%3E\"));</script>','n');
/*!40000 ALTER TABLE `t_systemsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_address`
--

DROP TABLE IF EXISTS `t_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(245) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `isdefault` varchar(2) COLLATE utf8_unicode_ci DEFAULT 'n',
  `province` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pcadetail` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_address`
--

LOCK TABLES `t_address` WRITE;
/*!40000 ALTER TABLE `t_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_favorite`
--

DROP TABLE IF EXISTS `t_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_favorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `productID` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `createtime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_favorite`
--

LOCK TABLES `t_favorite` WRITE;
/*!40000 ALTER TABLE `t_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_accountrank`
--

DROP TABLE IF EXISTS `t_accountrank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_accountrank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `minScore` int(11) DEFAULT NULL,
  `maxScore` int(11) DEFAULT NULL,
  `remark` varchar(445) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_accountrank`
--

LOCK TABLES `t_accountrank` WRITE;
/*!40000 ALTER TABLE `t_accountrank` DISABLE KEYS */;
INSERT INTO `t_accountrank` VALUES (1,'R1','普通会员',0,0,'1'),(2,'R2','铜牌会员',0,999,NULL),(3,'R3','银牌会员',1000,1999,NULL),(4,'R4','金牌会员',2000,4000,NULL),(5,'R5','钻石会员',4000,99999999,NULL);
/*!40000 ALTER TABLE `t_accountrank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_news`
--

DROP TABLE IF EXISTS `t_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `title2` varchar(45) DEFAULT NULL,
  `content` longtext,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `readerCount` int(11) DEFAULT '0',
  `status` varchar(2) DEFAULT 'n',
  `catalogID` varchar(15) DEFAULT NULL,
  `lableID` varchar(100) DEFAULT '0',
  `createAccount` varchar(45) NOT NULL,
  `order1` int(11) DEFAULT '0',
  `code` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_news`
--

LOCK TABLES `t_news` WRITE;
/*!40000 ALTER TABLE `t_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `createAccount` varchar(45) DEFAULT NULL,
  `updateAccount` varchar(45) DEFAULT NULL,
  `status` varchar(2) DEFAULT 'y',
  `rid` varchar(45) DEFAULT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `nickname_UNIQUE` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e','2013-07-30 20:53:09','2014-04-22 10:52:12',NULL,NULL,'y','1','超级管理员',NULL);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_systemlog`
--

DROP TABLE IF EXISTS `t_systemlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_systemlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `content` varchar(500) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `account` varchar(45) DEFAULT NULL,
  `loginIP` varchar(15) DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  `loginArea` varchar(45) DEFAULT NULL,
  `diffAreaLogin` char(1) DEFAULT 'n',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=969 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_systemlog`
--

LOCK TABLES `t_systemlog` WRITE;
/*!40000 ALTER TABLE `t_systemlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_systemlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_privilege`
--

DROP TABLE IF EXISTS `t_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_privilege` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2826 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_privilege`
--

LOCK TABLES `t_privilege` WRITE;
/*!40000 ALTER TABLE `t_privilege` DISABLE KEYS */;
INSERT INTO `t_privilege` VALUES (2044,2,11),(2045,2,14),(2046,2,64),(2047,2,1),(2048,2,5),(2049,2,57),(2253,6,11),(2254,6,65),(2255,6,14),(2256,6,73),(2257,6,78),(2258,6,74),(2259,6,75),(2260,6,76),(2261,6,77),(2262,6,64),(2263,6,66),(2264,6,18),(2265,6,19),(2266,6,84),(2267,6,85),(2268,6,23),(2269,6,24),(2270,6,46),(2271,6,6),(2272,6,43),(2273,6,71),(2274,6,7),(2275,6,45),(2276,6,9),(2277,6,40),(2278,6,72),(2279,6,29),(2280,6,68),(2281,6,79),(2282,6,25),(2283,6,26),(2284,6,27),(2285,6,28),(2286,6,32),(2287,6,34),(2288,6,35),(2289,6,80),(2290,6,81),(2291,6,82),(2292,6,83),(2293,6,1),(2294,6,5),(2295,6,48),(2296,6,38),(2297,6,49),(2298,6,51),(2299,6,69),(2300,6,70),(2301,6,57),(2712,1,57),(2713,1,11),(2714,1,65),(2715,1,14),(2716,1,73),(2717,1,78),(2718,1,74),(2719,1,75),(2720,1,76),(2721,1,77),(2722,1,64),(2723,1,66),(2724,1,86),(2725,1,18),(2726,1,19),(2727,1,84),(2728,1,85),(2729,1,23),(2730,1,90),(2731,1,24),(2732,1,46),(2733,1,6),(2734,1,43),(2735,1,71),(2736,1,7),(2737,1,45),(2738,1,9),(2739,1,40),(2740,1,87),(2741,1,88),(2742,1,95),(2743,1,32),(2744,1,34),(2745,1,35),(2746,1,80),(2747,1,81),(2748,1,82),(2749,1,83),(2750,1,92),(2751,1,93),(2752,1,1),(2753,1,3),(2754,1,52),(2755,1,55),(2756,1,56),(2757,1,4),(2758,1,58),(2759,1,59),(2760,1,60),(2761,1,2),(2762,1,61),(2763,1,62),(2764,1,63),(2765,1,5),(2766,1,48),(2767,1,38),(2768,1,36),(2769,1,49),(2770,1,51),(2771,1,69),(2772,1,91),(2782,8,1),(2783,8,3),(2784,8,52),(2785,8,55),(2786,8,56),(2787,8,4),(2788,8,58),(2789,8,59),(2790,8,60),(2791,7,57),(2792,7,23),(2793,7,90),(2794,7,24),(2795,7,46),(2796,7,6),(2797,7,43),(2798,7,71),(2799,7,7),(2800,7,45),(2801,7,9),(2802,7,40),(2803,7,87),(2804,7,88),(2805,7,1),(2806,7,3),(2807,7,52),(2808,7,55),(2809,7,56),(2810,7,4),(2811,7,58),(2812,7,59),(2813,7,60),(2814,7,2),(2815,7,61),(2816,7,62),(2817,7,63),(2818,7,5),(2819,7,48),(2820,7,38),(2821,7,36),(2822,7,49),(2823,7,51),(2824,7,69),(2825,7,91);
/*!40000 ALTER TABLE `t_privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_menu`
--

DROP TABLE IF EXISTS `t_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '111',
  `orderNum` int(11) NOT NULL DEFAULT '0',
  `type` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_menu`
--

LOCK TABLES `t_menu` WRITE;
/*!40000 ALTER TABLE `t_menu` DISABLE KEYS */;
INSERT INTO `t_menu` VALUES (1,0,'','系统管理',20,'module'),(2,1,'system/menu/menuList.jsp','资源管理',3,'page'),(3,1,'user!selectList.action?init=y','用户管理',1,'page'),(4,1,'role!selectList.action?init=y','角色管理',2,'page'),(5,1,'user!toChangePwd.action','修改密码',4,'page'),(6,0,'','内容管理',4,'module'),(7,6,'news!selectList.action?init=y&type=help','文章管理',3,'page'),(9,6,'indexImg!selectList.action','门户滚动图片',6,'page'),(11,0,'','商品管理',1,'module'),(14,11,'product!selectList.action?init=y','商品管理',4,'page'),(18,0,'','订单管理',2,'module'),(19,18,'order!selectList.action?init=y','订单管理',1,'page'),(23,0,'','会员管理',3,'module'),(24,23,'account!selectList.action?init=y','会员管理',1,'page'),(32,0,'','报表统计',6,'module'),(34,32,'report!orderSales.action?init=y','订单销售统计',2,'page'),(35,32,'report!productSales.action?init=y','商品销售统计',3,'page'),(36,1,'systemlog!selectList.action?init=y','日志管理',8,'page'),(38,1,'express!selectList.action?init=y','配送方式',6,'page'),(40,6,'advert!selectList.action?init=y','广告管理',8,'page'),(43,6,'catalog!selectList.action?init=y&e.type=a','文章分类',1,'page'),(45,6,'navigation!selectList.action?init=y','友情链接',5,'page'),(46,23,'comment!selectList.action?init=y','评论管理',3,'page'),(48,1,'area/areaTree.jsp','区域管理',5,'page'),(49,1,'systemSetting!toEdit.action','系统设置',9,'page'),(51,1,'keyvalue!selectList.action?init=y','键值对管理',11,'page'),(52,3,'user!selectList.action','查询',1,'button'),(55,3,'user!insert.action','添加',2,'button'),(56,3,'user!deletes.action','删除',3,'button'),(57,0,'../user!initManageIndex.action','首页',-100,'page'),(58,4,'role!selectList.action','查询',1,'button'),(59,4,'role!insert.action','添加',2,'button'),(60,4,'role!deletes.action','删除',3,'button'),(61,2,'menu!selectList.action','查询',1,'button'),(62,2,'menu!insert.action','添加',2,'button'),(63,2,'menu!deletes.action','删除',3,'button'),(64,11,'attribute!selectList.action?init=y&e.pid=0','商品属性',5,'page'),(65,11,'catalog!selectList.action?init=y&e.type=p','商品目录',2,'page'),(66,11,'attribute!selectList.action?init=y&e.pid=-1','商品参数',6,'page'),(69,1,'cache/cache.jsp','缓存管理',12,'page'),(71,6,'news!selectList.action?init=y&type=notice','公告管理',2,'page'),(73,14,'product!selectList.action','查询',1,'button'),(74,14,'product!toAdd.action','添加',2,'button'),(75,14,'product!deletes.action','删除',3,'button'),(76,14,'product!up.action','上架',4,'button'),(77,14,'product!down.action','下架',5,'button'),(78,14,'product!toEdit.action','编辑',1,'button'),(80,0,'','第三方插件',8,'module'),(81,80,'pay!selectList.action?init=y','支付管理',1,'page'),(82,80,'oss!selectList.action?init=y','存储管理',2,'page'),(83,80,'commentType!selectList.action?init=y','评论管理',3,'page'),(84,18,'order!selectList.action?init=y&refundStatus=WAIT_SELLER_AGREE','退款管理',2,'page'),(85,18,'order!selectList.action?init=y&refundStatus=WAIT_SELLER_CONFIRM_GOODS','退货管理',3,'page'),(86,11,'emailNotifyProduct!selectList?init=y','到货通知',11,'page'),(87,6,'notifyTemplate!selectList.action?init=y','通知模板管理',13,'page'),(88,6,'email!selectList.action?init=y','发送邮件列表',14,'page'),(90,23,'accountRank!selectList.action?init=y','等级管理',0,'page');
/*!40000 ALTER TABLE `t_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_express`
--

DROP TABLE IF EXISTS `t_express`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `fee` decimal(9,2) DEFAULT NULL,
  `order1` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_express`
--

LOCK TABLES `t_express` WRITE;
/*!40000 ALTER TABLE `t_express` DISABLE KEYS */;
INSERT INTO `t_express` VALUES (1,'EXPRESS','快递',5.00,2),(2,'POST','平邮',0.00,1),(3,'EMS','EMS',15.00,3);
/*!40000 ALTER TABLE `t_express` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_keyvalue`
--

DROP TABLE IF EXISTS `t_keyvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_keyvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key1` varchar(45) NOT NULL,
  `value` varchar(145) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key_UNIQUE` (`key1`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_keyvalue`
--

LOCK TABLES `t_keyvalue` WRITE;
/*!40000 ALTER TABLE `t_keyvalue` DISABLE KEYS */;
INSERT INTO `t_keyvalue` VALUES (3,'order_status_init','未审核'),(4,'order_status_pass','已审核'),(5,'order_status_send','已发货'),(6,'order_status_sign','已签收'),(7,'order_status_cancel','已取消'),(8,'product_orderBy_1','热门'),(9,'product_orderBy_2','价格'),(10,'product_orderBy_3','最新'),(11,'orderpay_paystatus_y','支付成功'),(12,'orderpay_paystatus_n','支付失败'),(13,'orderpay_paymethod_zfb','支付宝'),(14,'orderpay_paymethod_cft','财付通'),(15,'orderpay_paymethod_gsyhxyk','工商银行信用卡'),(16,'orderpay_paymethod_orderpay_paymethod_cft','银联在线'),(17,'order_status_file','已归档'),(18,'order_paystatus_n','未支付'),(19,'order_paystatus_p','部分支付'),(20,'order_paystatus_y','全部支付'),(21,'news_status_y','显示'),(22,'news_status_n','不显示'),(23,'pay_code_alipay','支付宝支付'),(24,'pay_code_cft','财付通'),(25,'pay_code_yinlian','银联支付'),(26,'oss_code_aliyun','阿里云存储'),(27,'oss_code_baiduyun','百度云'),(28,'oss_code_centenoss','腾讯云'),(29,'commentType_code_default','系统内置评论功能'),(30,'commentType_code_duoshuo','多说评论插件'),(31,'orderpay_paymethod_alipayescow','支付宝纯担保交易'),(32,'order_refundStatus_WAIT_SELLER_AGREE','买家申请退款'),(33,'order_refundStatus_WAIT_BUYER_RETURN_GOODS','退款协议达成，等待买家退货'),(34,'order_refundStatus_WAIT_SELLER_CONFIRM_GOODS','买家已退货，等待卖家收到退货'),(35,'order_refundStatus_REFUND_SUCCESS','退款成功'),(36,'order_refundStatus_REFUND_CLOSED','退款关闭'),(37,'order_refundStatus_SELLER_REFUSE_BUYER','卖家不同意协议，等待买家修改'),(38,'account_accountType_qq','QQ登陆'),(39,'account_accountType_sinawb','新浪微博登陆'),(40,'account_accountType_alipay','支付宝快捷登陆'),(41,'account_rank_R1','普通会员'),(42,'account_rank_R2','铜牌会员'),(43,'account_rank_R3','银牌会员'),(44,'account_rank_R4','金牌会员'),(45,'account_rank_R5','钻石会员');
/*!40000 ALTER TABLE `t_keyvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_commenttype`
--

DROP TABLE IF EXISTS `t_commenttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_commenttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_unicode_ci DEFAULT 'y',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_commenttype`
--

LOCK TABLES `t_commenttype` WRITE;
/*!40000 ALTER TABLE `t_commenttype` DISABLE KEYS */;
INSERT INTO `t_commenttype` VALUES (1,'系统内置评论功能','default','y');
/*!40000 ALTER TABLE `t_commenttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_catalog`
--

DROP TABLE IF EXISTS `t_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `pid` int(11) DEFAULT '0',
  `order1` int(11) DEFAULT NULL,
  `type` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `showInNav` varchar(2) COLLATE utf8_unicode_ci DEFAULT 'n',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_catalog`
--

LOCK TABLES `t_catalog` WRITE;
/*!40000 ALTER TABLE `t_catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_comment`
--

DROP TABLE IF EXISTS `t_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productID` varchar(45) DEFAULT NULL,
  `account` varchar(45) DEFAULT NULL,
  `orderID` varchar(45) DEFAULT NULL,
  `orderdetailID` varchar(45) DEFAULT NULL,
  `content` varchar(500) NOT NULL,
  `createdate` datetime DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `status` varchar(2) DEFAULT 'y',
  `reply` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_comment`
--

LOCK TABLES `t_comment` WRITE;
/*!40000 ALTER TABLE `t_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_attribute`
--

DROP TABLE IF EXISTS `t_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `catalogID` int(11) NOT NULL,
  `pid` int(11) DEFAULT '0',
  `order1` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_attribute`
--

LOCK TABLES `t_attribute` WRITE;
/*!40000 ALTER TABLE `t_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_indexmenu`
--

DROP TABLE IF EXISTS `t_indexmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_indexmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  `target` varchar(25) NOT NULL,
  `remark` varchar(145) DEFAULT NULL,
  `catalogID` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_indexmenu`
--

LOCK TABLES `t_indexmenu` WRITE;
/*!40000 ALTER TABLE `t_indexmenu` DISABLE KEYS */;
INSERT INTO `t_indexmenu` VALUES (1,'首页',1,'index','_blank',NULL,0),(2,'一楼',2,'1f','_blank',NULL,1),(3,'二楼',3,'2f','_blank',NULL,2),(4,'三楼',4,'3f','_blank',NULL,3),(5,'5楼',4,'1','_blank',NULL,4);
/*!40000 ALTER TABLE `t_indexmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_lable`
--

DROP TABLE IF EXISTS `t_lable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_lable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_lable`
--

LOCK TABLES `t_lable` WRITE;
/*!40000 ALTER TABLE `t_lable` DISABLE KEYS */;
INSERT INTO `t_lable` VALUES (23,'好玩'),(24,'好看'),(25,'好笑'),(26,'好吃');
/*!40000 ALTER TABLE `t_lable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_oss`
--

DROP TABLE IF EXISTS `t_oss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_oss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'y',
  `ossJsonInfo` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_oss`
--

LOCK TABLES `t_oss` WRITE;
/*!40000 ALTER TABLE `t_oss` DISABLE KEYS */;
INSERT INTO `t_oss` VALUES (1,'阿里云存储','aliyun','y','{\"ACCESS_ID\":\"xxx\",\"ACCESS_KEY\":\"xxx\",\"OSS_ENDPOINT\":\"http://oss.aliyuncs.com/\",\"bucketName\":\"xxx\"}');
/*!40000 ALTER TABLE `t_oss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) NOT NULL,
  `role_desc` varchar(45) DEFAULT NULL,
  `role_dbPrivilege` varchar(45) DEFAULT NULL,
  `status` varchar(2) DEFAULT 'y',
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_name_UNIQUE` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES (1,'超级管理员','系统角色，不可删除','select,insert,update,delete','y'),(2,'商品管理员','维护商品信息','select,insert','y'),(6,'查看权限','查看权限-测试','select','y'),(7,'331231','','select','n'),(8,'test','test','select','n');
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_activity`
--

DROP TABLE IF EXISTS `t_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `accountRange` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `content` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'n',
  `catalogs` varchar(245) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discountType` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `minprice` decimal(8,2) DEFAULT NULL,
  `maxprice` decimal(8,2) DEFAULT NULL,
  `maxSellCount` int(11) DEFAULT NULL,
  `productID` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activityType` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exchangeScore` int(11) DEFAULT NULL,
  `minGroupCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10008 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_activity`
--

LOCK TABLES `t_activity` WRITE;
/*!40000 ALTER TABLE `t_activity` DISABLE KEYS */;
INSERT INTO `t_activity` VALUES (10000,'rewrwr','R2, R3, R4, R5','2014-04-09 00:00:00','2014-04-24 00:00:00',NULL,'y',NULL,'r',21.00,NULL,NULL,2,'10258','c',NULL,NULL),(10001,'降价促销','R2, R4, R5','2014-04-10 00:00:00','2014-04-24 00:00:00',NULL,'y',NULL,'r',22.00,NULL,NULL,2,'10314|10309|10308|10307','c',0,NULL),(10002,'打折促销','R2, R4, R5','2014-04-13 00:00:00','2014-04-14 00:00:00',NULL,'y',NULL,'d',88.00,NULL,NULL,12,'10303|10316|10315|10317|','c',NULL,NULL),(10003,'双倍积分','R2, R4, R5','2014-04-10 14:45:50','2014-04-18 20:40:40',NULL,'y',NULL,'s',1.00,NULL,NULL,3,'10298|10297|10296','c',NULL,NULL),(10005,'fff','R2, R3','2014-04-19 15:44:11','2014-04-26 15:44:14',NULL,'y',NULL,'r',NULL,NULL,NULL,NULL,'10258','t',NULL,NULL),(10006,'网上商店系统(myshop)','R2, R3','2014-04-19 16:11:59','2014-04-26 16:12:01',NULL,'y',NULL,'-',NULL,NULL,NULL,2,'10257','j',680,NULL),(10007,'网上商店系统(myshop)','R2, R3','2014-04-19 16:11:59','2014-04-26 16:12:01',NULL,'y',NULL,'-',NULL,NULL,NULL,3,'10258','j',450,NULL);
/*!40000 ALTER TABLE `t_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_orderdetail`
--

DROP TABLE IF EXISTS `t_orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `price` decimal(20,2) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `productName` varchar(145) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee` decimal(20,2) DEFAULT NULL,
  `total0` decimal(20,2) DEFAULT NULL,
  `isComment` varchar(2) COLLATE utf8_unicode_ci DEFAULT 'n',
  `lowStocks` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'n',
  `score` int(11) DEFAULT NULL,
  `specInfo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_orderdetail`
--

LOCK TABLES `t_orderdetail` WRITE;
/*!40000 ALTER TABLE `t_orderdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_questionnaireresult`
--

DROP TABLE IF EXISTS `t_questionnaireresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_questionnaireresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qid` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `account` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `qItemID` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(145) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_questionnaireresult`
--

LOCK TABLES `t_questionnaireresult` WRITE;
/*!40000 ALTER TABLE `t_questionnaireresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_questionnaireresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_index_img`
--

DROP TABLE IF EXISTS `t_index_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_index_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(245) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `order1` int(11) NOT NULL,
  `desc1` varchar(1145) DEFAULT NULL,
  `link` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_index_img`
--

LOCK TABLES `t_index_img` WRITE;
/*!40000 ALTER TABLE `t_index_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_index_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_notice`
--

DROP TABLE IF EXISTS `t_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `createtime` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'now()',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_notice`
--

LOCK TABLES `t_notice` WRITE;
/*!40000 ALTER TABLE `t_notice` DISABLE KEYS */;
INSERT INTO `t_notice` VALUES (2,'2013双十一大量打折促销活动','2013双十一大量打折促销活动','2014-01-25 20:13:03'),(3,'2013双十二大量打折促销活动','2013双十二大量打折促销活动','2014-01-25 20:13:27'),(4,'2013元旦又有打折惊喜了，时间不多欢迎速速抢购','2013元旦又有打折惊喜了，时间不多欢迎速速抢购','2014-01-27 13:45:19'),(5,'马年到年货疯抢，大部分商品半价','马年到年货疯抢，大部分商品半价','2014-01-27 13:54:39'),(6,'201309至201311大量水果打折促销活动，欢迎抢购','201309至201311大量水果打折促销活动，欢迎抢购','2014-01-27 13:55:45'),(7,'工行信用卡18元抢购水果活动','工行信用卡18元抢购水果活动','2014-01-27 13:59:31'),(8,'2014爱在夏季水果大甩卖活动开启了','2014爱在夏季水果大甩卖活动开启了','2014-01-27 14:00:19');
/*!40000 ALTER TABLE `t_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_navigation`
--

DROP TABLE IF EXISTS `t_navigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_navigation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `target` varchar(45) NOT NULL DEFAULT '_blank',
  `position` varchar(45) NOT NULL DEFAULT 'bottom',
  `desc1` varchar(145) DEFAULT NULL,
  `order1` int(11) DEFAULT NULL,
  `http` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_navigation`
--

LOCK TABLES `t_navigation` WRITE;
/*!40000 ALTER TABLE `t_navigation` DISABLE KEYS */;
INSERT INTO `t_navigation` VALUES (2,'淘宝','_blank','bottom',NULL,1,'www.taobao.com'),(3,'京东商城','_blank','bottom',NULL,2,'www.jd.com'),(4,'易讯','_blank','bottom',NULL,3,'www.yixun.com'),(5,'阿里巴巴','_blank','bottom',NULL,4,'www.alibaba.com'),(6,'阿里巴中国站','_blank','bottom',NULL,0,'www.1688.com'),(7,'支付宝','_blank','bottom',NULL,5,'www.alipay.com'),(8,'阿里云计算','_blank','bottom',NULL,6,'www.aliyun.com'),(9,'来往','_blank','bottom',NULL,7,'www.laiwang.com'),(11,'万网','_blank','bottom',NULL,9,'www.net.cn'),(12,'一号店','_blank','bottom',NULL,10,'www.yhd.com'),(13,'天猫商城','_blank','bottom',NULL,11,'www.tmall.com'),(14,'当当网','_blank','bottom',NULL,12,'www.dangdang.com'),(15,'苏宁','_blank','bottom',NULL,13,'www.suning.com'),(16,'银泰网','_blank','bottom',NULL,15,'www.yintai.com'),(17,'梦芭莎','_blank','bottom',NULL,16,'www.moonbasa.com'),(18,'红孩子','_blank','bottom',NULL,17,'redbaby.suning.com'),(19,'亚马逊','_blank','bottom',NULL,18,'www.amazon.cn'),(20,'财付通','_blank','bottom',NULL,19,'www.tenpay.com'),(21,'快递查询','_blank','bottom',NULL,20,'www.kuaidi100.com');
/*!40000 ALTER TABLE `t_navigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_orderlog`
--

DROP TABLE IF EXISTS `t_orderlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_orderlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `account` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime DEFAULT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `accountType` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=701 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_orderlog`
--

LOCK TABLES `t_orderlog` WRITE;
/*!40000 ALTER TABLE `t_orderlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_orderlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_notifytemplate`
--

DROP TABLE IF EXISTS `t_notifytemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_notifytemplate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `template` text COLLATE utf8_unicode_ci NOT NULL,
  `remark` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_notifytemplate`
--

LOCK TABLES `t_notifytemplate` WRITE;
/*!40000 ALTER TABLE `t_notifytemplate` DISABLE KEYS */;
INSERT INTO `t_notifytemplate` VALUES (1,'email','email_reg','<span><span style=\"font-size:14px;line-height:normal;background-color:#FFFFFF;\"> \r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"620\" class=\"ke-zeroborder\" style=\"color:#000000;font-size:14px;background-color:#FFFFFF;font-family:arial, verdana, sans-serif;\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				<strong>亲爱的会员：${nickname}您好！</strong> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				恭喜您在${system}注册成功，请您立即点击下面的链接激活账号：<br />\r\n<u><a href=\"${url}\" target=\"_blank\">${url}</a></u> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				<p>\r\n					此邮件为本系统自动发出，请勿回复！\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				<p>\r\n					如有任何疑问，请联系myshop客服，客服热线：${servicesPhone}\r\n				</p>\r\n				<p>\r\n					官方邮箱：${systemEmail}\r\n				</p>\r\n				<p>\r\n					帮助中心：${helpUrl}\r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</span></span>','${nickname}:会员昵称;${system}:系统名称;${url}:链接地址，会员可以点击的。;${servicesPhone}:客服热线;${systemEmail}:官方系统邮箱;${helpUrl}:帮助中心链接地址','注册成功之邮件通知'),(2,'email','email_forget_password','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"620\" class=\"ke-zeroborder\" style=\"background-color:#FFFFFF;color:#000000;font-size:14px;font-family:arial, verdana, sans-serif;\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				<strong>亲爱的会员：${nickname}您好！</strong> \r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"620\" class=\"ke-zeroborder\" style=\"color:#000000;font-size:14px;background-color:#FFFFFF;font-family:arial, verdana, sans-serif;\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				<strong></strong> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				您在${system}点击了“忘记密码”按钮，故系统自动为您发送了这封邮件。您可以点击以下链接修改您的密码：<br />\r\n<u><a href=\"http://127.0.0.1:8080/myshopFront/user/reset.html?sign=1d0cb6b99b12464c8c13cc9be99c5245\" target=\"_blank\">$</a>{url}</u> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				此链接有效期为两个小时，请在两小时内点击链接进行修改，每天最多允许找回5次密码。如果您不需要修改密码，或者您从未点击过“忘记密码”按钮，请忽略本邮件。&nbsp;<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				<p>\r\n					<span style=\"line-height:1.5;\">如有任何</span><span style=\"line-height:1.5;\">疑问，请联系myshop客服，客服热线：${servicesPhone}</span> \r\n				</p>\r\n				<p style=\"font-family:arial, verdana, sans-serif;background-color:#FFFFFF;\">\r\n					官方邮箱：${systemEmail}\r\n				</p>\r\n				<p style=\"font-family:arial, verdana, sans-serif;background-color:#FFFFFF;\">\r\n					帮助中心：${helpUrl}\r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>','${nickname}:会员昵称;${system}:系统名称;${url}:链接地址，会员可以点击的。;${servicesPhone}:客服热线;${systemEmail}:官方系统邮箱;${helpUrl}:帮助中心链接地址','找回密码之邮件通知'),(3,'email','email_change_email','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"620\" class=\"ke-zeroborder\" style=\"background-color:#FFFFFF;color:#000000;font-size:14px;font-family:arial, verdana, sans-serif;\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				<strong>亲爱的会员：${nickname}您好！</strong> \r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"620\" class=\"ke-zeroborder\" style=\"color:#000000;font-size:14px;background-color:#FFFFFF;font-family:arial, verdana, sans-serif;\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				<strong></strong> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				您在${system}点击了“修改邮箱”链接，故系统自动为您发送了这封邮件。您可以点击以下链接来激活您的新邮箱：<br />\r\n<u><a href=\"http://127.0.0.1:8080/myshopFront/user/reset.html?sign=1d0cb6b99b12464c8c13cc9be99c5245\" target=\"_blank\">$</a>{url}</u> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				此链接有效期为两个小时，请在两小时内点击链接进行修改，每天最多允许找回5次密码。如果您不需要修改密码，或者您从未点击过“忘记密码”按钮，请忽略本邮件。&nbsp;<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				<p>\r\n					<span style=\"font-family:\'sans serif\', tahoma, verdana, helvetica;line-height:1.5;\">如有任何疑问，请联系myshop客服，客服热线：${servicesPhone}</span> \r\n				</p>\r\n				<p>\r\n					官方邮箱：${systemEmail}\r\n				</p>\r\n				<p>\r\n					帮助中心：${helpUrl}\r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>','${nickname}:会员昵称;${system}:系统名称;${url}:链接地址，会员可以点击的。;${servicesPhone}:客服热线;${systemEmail}:官方系统邮箱;${helpUrl}:帮助中心链接地址','修改邮箱之邮件通知'),(4,'email','email_notify_product','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"620\" class=\"ke-zeroborder\" style=\"background-color:#FFFFFF;color:#000000;font-size:14px;font-family:arial, verdana, sans-serif;\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				<strong>亲爱的会员：${nickname}您好！</strong> \r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"620\" class=\"ke-zeroborder\" style=\"color:#000000;font-size:14px;background-color:#FFFFFF;font-family:arial, verdana, sans-serif;\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				<strong></strong> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				<p>\r\n					<br />\r\n				</p>\r\n				<p>\r\n					您关注的商品：<a href=\"${url}\" target=\"_blank\">${productName}</a>&nbsp;已经到货，欢迎您的长期关注。\r\n				</p>\r\n				<p>\r\n					<br />\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				此邮件为系统自动发送，请勿回复！\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"font-family:arial, verdana, sans-serif;\">\r\n				<p>\r\n					<span style=\"font-family:\'sans serif\', tahoma, verdana, helvetica;line-height:1.5;\">如有任何疑问，请联系myshop客服，客服热线：${servicesPhone}</span> \r\n				</p>\r\n				<p>\r\n					官方邮箱：${systemEmail}\r\n				</p>\r\n				<p>\r\n					帮助中心：${helpUrl}\r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>','${nickname}:会员昵称;${system}:系统名称;${url}:链接地址，会员可以点击的。;${servicesPhone}:客服热线;${systemEmail}:官方系统邮箱;${helpUrl}:帮助中心链接地址;${productName}:商品名称;${productID}:商品ID','到货通知之邮件通知');
/*!40000 ALTER TABLE `t_notifytemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_area`
--

DROP TABLE IF EXISTS `t_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `pcode` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `desc1` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7823 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_area`
--

LOCK TABLES `t_area` WRITE;
/*!40000 ALTER TABLE `t_area` DISABLE KEYS */;
INSERT INTO `t_area` VALUES (4682,'621227','621200','徽县',NULL),(4683,'621228','621200','两当县',NULL),(4684,'621225','621200','西和县',NULL),(4685,'621226','621200','礼县',NULL),(4686,'431230','431200','通道侗族自治县',NULL),(4687,'320282','320200','江阴市',NULL),(4688,'320282','320200','宜兴市',NULL),(4689,'431222','431200','沅陵县',NULL),(4690,'431223','431200','辰溪县',NULL),(4691,'431224','431200','溆浦县',NULL),(4692,'431225','431200','会同县',NULL),(4693,'431226','431200','麻阳苗族自治县',NULL),(4694,'431227','431200','新晃侗族自治县',NULL),(4695,'431228','431200','芷江侗族自治县',NULL),(4696,'431229','431200','靖州苗族侗族自治县',NULL),(4697,'320296','320200','新区',NULL),(4698,'341126','341100','凤阳县',NULL),(4699,'341125','341100','定远县',NULL),(4700,'341124','341100','全椒县',NULL),(4701,'431221','431200','中方县',NULL),(4702,'341122','341100','来安县',NULL),(4703,'511702','511700','通川区',NULL),(4704,'511700','510000','达州市',NULL),(4705,'350825','350800','连城县',NULL),(4706,'350824','350800','武平县',NULL),(4707,'350823','350800','上杭县',NULL),(4708,'621222','621200','文县',NULL),(4709,'350822','350800','永定县',NULL),(4710,'621221','621200','成县',NULL),(4711,'350821','350800','长汀县',NULL),(4712,'621224','621200','康县',NULL),(4713,'621223','621200','宕昌县',NULL),(4714,'430121','430100','长沙县',NULL),(4715,'230621','230600','肇州县',NULL),(4716,'230622','230600','肇源县',NULL),(4717,'230623','230600','林甸县',NULL),(4718,'230624','230600','杜尔伯特蒙古族自治县',NULL),(4719,'371581','371500','临清市',NULL),(4720,'430111','430100','雨花区',NULL),(4721,'341102','341100','琅琊区',NULL),(4722,'341100','340000','滁州市',NULL),(4723,'140581','140500','高平市',NULL),(4724,'341103','341100','南谯区',NULL),(4725,'232700','230000','大兴安岭地区',NULL),(4726,'430105','430100','开福区',NULL),(4727,'621200','620000','陇南市',NULL),(4728,'430104','430100','岳麓区',NULL),(4729,'621202','621200','武都区',NULL),(4730,'430100','430000','长沙市',NULL),(4731,'430103','430100','天心区',NULL),(4732,'430102','430100','芙蓉区',NULL),(4733,'131023','131000','永清县',NULL),(4734,'131024','131000','香河县',NULL),(4735,'540126','540100','达孜县',NULL),(4736,'131022','131000','固安县',NULL),(4737,'540127','540100','墨竹工卡县',NULL),(4738,'540124','540100','曲水县',NULL),(4739,'340711','340700','郊区',NULL),(4740,'150105','150100','赛罕区',NULL),(4741,'131028','131000','大厂回族自治县',NULL),(4742,'540125','540100','堆龙德庆县',NULL),(4743,'150104','150100','玉泉区',NULL),(4744,'131025','131000','大城县',NULL),(4745,'540122','540100','当雄县',NULL),(4746,'150103','150100','回民区',NULL),(4747,'131026','131000','文安县',NULL),(4748,'540123','540100','尼木县',NULL),(4749,'150102','150100','新城区',NULL),(4750,'150100','150000','呼和浩特市',NULL),(4751,'230606','230600','大同区',NULL),(4752,'230605','230600','红岗区',NULL),(4753,'230604','230600','让胡路区',NULL),(4754,'230603','230600','龙凤区',NULL),(4755,'341182','341100','明光市',NULL),(4756,'230602','230600','萨尔图区',NULL),(4757,'341181','341100','天长市',NULL),(4758,'230600','230000','大庆市',NULL),(4759,'231202','231200','北林区',NULL),(4760,'231200','230000','绥化市',NULL),(4761,'632522','632500','同德县',NULL),(4762,'632523','632500','贵德县',NULL),(4763,'632524','632500','兴海县',NULL),(4764,'632525','632500','贵南县',NULL),(4765,'340721','340700','铜陵县',NULL),(4766,'533400','530000','迪庆藏族自治州',NULL),(4767,'540121','540100','林周县',NULL),(4768,'131003','131000','广阳区',NULL),(4769,'131002','131000','安次区',NULL),(4770,'131000','130000','廊坊市',NULL),(4771,'231222','231200','兰西县',NULL),(4772,'231223','231200','青冈县',NULL),(4773,'231221','231200','望奎县',NULL),(4774,'231226','231200','绥棱县',NULL),(4775,'231224','231200','庆安县',NULL),(4776,'231225','231200','明水县',NULL),(4777,'340703','340700','狮子山区',NULL),(4778,'340702','340700','铜官山区',NULL),(4779,'511721','511700','达县',NULL),(4780,'511722','511700','宣汉县',NULL),(4781,'340700','340000','铜陵市',NULL),(4782,'511723','511700','开江县',NULL),(4783,'511724','511700','大竹县',NULL),(4784,'511725','511700','渠县',NULL),(4785,'431281','431200','洪江市',NULL),(4786,'350800','350000','龙岩市',NULL),(4787,'210782','210700','北镇市',NULL),(4788,'350802','350800','新罗区',NULL),(4789,'533422','533400','德钦县',NULL),(4790,'533421','533400','香格里拉县',NULL),(4791,'430802','430800','永定区',NULL),(4792,'430800','430000','张家界市',NULL),(4793,'430181','430100','浏阳市',NULL),(4794,'451381','451300','合山市',NULL),(4795,'370523','370500','广饶县',NULL),(4796,'370521','370500','垦利县',NULL),(4797,'370522','370500','利津县',NULL),(4798,'320204','320200','北塘区',NULL),(4799,'450921','450900','容县',NULL),(4800,'320203','320200','南长区',NULL),(4801,'320206','320200','惠山区',NULL),(4802,'450923','450900','博白县',NULL),(4803,'320205','320200','锡山区',NULL),(4804,'450922','450900','陆川县',NULL),(4805,'320200','320000','无锡市',NULL),(4806,'430811','430800','武陵源区',NULL),(4807,'450924','450900','兴业县',NULL),(4808,'320202','320200','崇安区',NULL),(4809,'430821','430800','慈利县',NULL),(4810,'430822','430800','桑植县',NULL),(4811,'410306','410300','吉利区',NULL),(4812,'410307','410300','洛龙区',NULL),(4813,'410304','410300','廛河回族区',NULL),(4814,'410305','410300','涧西区',NULL),(4815,'410302','410300','老城区',NULL),(4816,'410303','410300','西工区',NULL),(4817,'410300','410000','洛阳市',NULL),(4818,'540100','540000','拉萨市',NULL),(4819,'542338','542300','岗巴县',NULL),(4820,'540102','540100','城关区',NULL),(4821,'542337','542300','萨嘎县',NULL),(4822,'542336','542300','聂拉木县',NULL),(4823,'542335','542300','吉隆县',NULL),(4824,'542334','542300','亚东县',NULL),(4825,'542333','542300','仲巴县',NULL),(4826,'370502','370500','东营区',NULL),(4827,'370500','370000','东营市',NULL),(4828,'370503','370500','河口区',NULL),(4829,'410325','410300','嵩县',NULL),(4830,'410324','410300','栾川县',NULL),(4831,'410323','410300','新安县',NULL),(4832,'410322','410300','孟津县',NULL),(4833,'410329','410300','伊川县',NULL),(4834,'410328','410300','洛宁县',NULL),(4835,'410327','410300','宜阳县',NULL),(4836,'410326','410300','汝阳县',NULL),(4837,'430124','430100','宁乡县',NULL),(4838,'430122','430100','望城县',NULL),(4839,'232724','232700','加格达奇区',NULL),(4840,'232721','232700','呼玛县',NULL),(4841,'232723','232700','漠河县',NULL),(4842,'232722','232700','塔河县',NULL),(4843,'542330','542300','仁布县',NULL),(4844,'542332','542300','定结县',NULL),(4845,'542331','542300','康马县',NULL),(4846,'542322','542300','南木林县',NULL),(4847,'542323','542300','江孜县',NULL),(4848,'542324','542300','定日县',NULL),(4849,'542325','542300','萨迦县',NULL),(4850,'542326','542300','拉孜县',NULL),(4851,'542327','542300','昂仁县',NULL),(4852,'542328','542300','谢通门县',NULL),(4853,'542329','542300','白朗县',NULL),(4854,'320211','320200','滨湖区',NULL),(4855,'431202','431200','鹤城区',NULL),(4856,'431200','430000','怀化市',NULL),(4857,'450981','450900','北流市',NULL),(4858,'542300','540000','日喀则地区',NULL),(4859,'542301','542300','日喀则市',NULL),(4860,'522622','522600','黄平县',NULL),(4861,'522624','522600','三穗县',NULL),(4862,'522623','522600','施秉县',NULL),(4863,'522626','522600','岑巩县',NULL),(4864,'522625','522600','镇远县',NULL),(4865,'522628','522600','锦屏县',NULL),(4866,'522627','522600','天柱县',NULL),(4867,'522629','522600','剑河县',NULL),(4868,'451302','451300','兴宾区',NULL),(4869,'440507','440500','龙湖区',NULL),(4870,'451300','450000','来宾市',NULL),(4871,'610481','610400','兴平市',NULL),(4872,'441224','441200','怀集县',NULL),(4873,'370481','370400','滕州市',NULL),(4874,'441223','441200','广宁县',NULL),(4875,'440500','440000','汕头市',NULL),(4876,'441226','441200','德庆县',NULL),(4877,'522630','522600','台江县',NULL),(4878,'441225','441200','封开县',NULL),(4879,'522631','522600','黎平县',NULL),(4880,'340000','0','安徽省',NULL),(4881,'211481','211400','兴城市',NULL),(4882,'341800','340000','宣城市',NULL),(4883,'341802','341800','宣州区',NULL),(4884,'440514','440500','潮南区',NULL),(4885,'440515','440500','澄海区',NULL),(4886,'440512','440500','濠江区',NULL),(4887,'440513','440500','潮阳区',NULL),(4888,'440511','440500','金平区',NULL),(4889,'152202','152200','阿尔山市',NULL),(4890,'510302','510300','自流井区',NULL),(4891,'152200','150000','兴安盟',NULL),(4892,'510303','510300','贡井区',NULL),(4893,'152201','152200','乌兰浩特市',NULL),(4894,'510304','510300','大安区',NULL),(4895,'451321','451300','忻城县',NULL),(4896,'451322','451300','象州县',NULL),(4897,'451323','451300','武宣县',NULL),(4898,'451324','451300','金秀瑶族自治县',NULL),(4899,'510311','510300','沿滩区',NULL),(4900,'530630','530600','水富县',NULL),(4901,'522636','522600','丹寨县',NULL),(4902,'522635','522600','麻江县',NULL),(4903,'522634','522600','雷山县',NULL),(4904,'522633','522600','从江县',NULL),(4905,'522632','522600','榕江县',NULL),(4906,'130399','130300','经济技术开发区',NULL),(4907,'510300','510000','自贡市',NULL),(4908,'530629','530600','威信县',NULL),(4909,'530628','530600','彝良县',NULL),(4910,'530627','530600','镇雄县',NULL),(4911,'530626','530600','绥江县',NULL),(4912,'530625','530600','永善县',NULL),(4913,'152224','152200','突泉县',NULL),(4914,'530624','530600','大关县',NULL),(4915,'152223','152200','扎赉特旗',NULL),(4916,'530623','530600','盐津县',NULL),(4917,'152222','152200','科尔沁右翼中旗',NULL),(4918,'530622','530600','巧家县',NULL),(4919,'152221','152200','科尔沁右翼前旗',NULL),(4920,'530621','530600','鲁甸县',NULL),(4921,'611000','610000','商洛市',NULL),(4922,'611002','611000','商州区',NULL),(4923,'522600','520000','黔东南苗族侗族自治州',NULL),(4924,'530602','530600','昭阳区',NULL),(4925,'522601','522600','凯里市',NULL),(4926,'530600','530000','昭通市',NULL),(4927,'441203','441200','鼎湖区',NULL),(4928,'440523','440500','南澳县',NULL),(4929,'441202','441200','端州区',NULL),(4930,'441200','440000','肇庆市',NULL),(4931,'611024','611000','山阳县',NULL),(4932,'611025','611000','镇安县',NULL),(4933,'611026','611000','柞水县',NULL),(4934,'611021','611000','洛南县',NULL),(4935,'611022','611000','丹凤县',NULL),(4936,'611023','611000','商南县',NULL),(4937,'341822','341800','广德县',NULL),(4938,'341823','341800','泾县',NULL),(4939,'341824','341800','绩溪县',NULL),(4940,'341825','341800','旌德县',NULL),(4941,'360281','360200','乐平市',NULL),(4942,'341821','341800','郎溪县',NULL),(4943,'420684','420600','宜城市',NULL),(4944,'330523','330500','安吉县',NULL),(4945,'610400','610000','咸阳市',NULL),(4946,'360222','360200','浮梁县',NULL),(4947,'350782','350700','武夷山市',NULL),(4948,'330521','330500','德清县',NULL),(4949,'350781','350700','邵武市',NULL),(4950,'330522','330500','长兴县',NULL),(4951,'350784','350700','建阳市',NULL),(4952,'131081','131000','霸州市',NULL),(4953,'350783','350700','建瓯市',NULL),(4954,'131082','131000','三河市',NULL),(4955,'321003','321000','邗江区',NULL),(4956,'321002','321000','广陵区',NULL),(4957,'211400','210000','葫芦岛市',NULL),(4958,'211403','211400','龙港区',NULL),(4959,'211402','211400','连山区',NULL),(4960,'533323','533300','福贡县',NULL),(4961,'211404','211400','南票区',NULL),(4962,'533321','533300','泸水县',NULL),(4963,'321011','321000','维扬区',NULL),(4964,'340800','340000','安庆市',NULL),(4965,'140603','140600','平鲁区',NULL),(4966,'340802','340800','迎江区',NULL),(4967,'340803','340800','大观区',NULL),(4968,'140602','140600','朔城区',NULL),(4969,'632600','630000','果洛藏族自治州',NULL),(4970,'420683','420600','枣阳市',NULL),(4971,'140600','140000','朔州市',NULL),(4972,'420682','420600','老河口市',NULL),(4973,'511681','511600','华蓥市',NULL),(4974,'511682','511600','市辖区',NULL),(4975,'532822','532800','勐海县',NULL),(4976,'532823','532800','勐腊县',NULL),(4977,'341881','341800','宁国市',NULL),(4978,'210781','210700','凌海市',NULL),(4979,'321023','321000','宝应县',NULL),(4980,'120102','120100','河东区',NULL),(4981,'120103','120100','河西区',NULL),(4982,'120104','120100','南开区',NULL),(4983,'120105','120100','河北区',NULL),(4984,'610422','610400','三原县',NULL),(4985,'330502','330500','吴兴区',NULL),(4986,'120100','120000','天津市',NULL),(4987,'330500','330000','湖州市',NULL),(4988,'120101','120100','和平区',NULL),(4989,'330503','330500','南浔区',NULL),(4990,'120106','120100','红桥区',NULL),(4991,'211421','211400','绥中县',NULL),(4992,'120107','120100','塘沽区',NULL),(4993,'120108','120100','汉沽区',NULL),(4994,'120109','120100','大港区',NULL),(4995,'211422','211400','建昌县',NULL),(4996,'632624','632600','达日县',NULL),(4997,'140623','140600','右玉县',NULL),(4998,'130323','130300','抚宁县',NULL),(4999,'632623','632600','甘德县',NULL),(5000,'140624','140600','怀仁县',NULL),(5001,'130324','130300','卢龙县',NULL),(5002,'632622','632600','班玛县',NULL),(5003,'140621','140600','山阴县',NULL),(5004,'130321','130300','青龙满族自治县',NULL),(5005,'632621','632600','玛沁县',NULL),(5006,'140622','140600','应县',NULL),(5007,'130322','130300','昌黎县',NULL),(5008,'632626','632600','玛多县',NULL),(5009,'632625','632600','久治县',NULL),(5010,'371622','371600','阳信县',NULL),(5011,'371621','371600','惠民县',NULL),(5012,'371624','371600','沾化县',NULL),(5013,'371623','371600','无棣县',NULL),(5014,'371626','371600','邹平县',NULL),(5015,'131051','131000','开发区',NULL),(5016,'371625','371600','博兴县',NULL),(5017,'131052','131000','燕郊经济技术开发区',NULL),(5018,'150000','0','内蒙古自治区',NULL),(5019,'620602','620600','凉州区',NULL),(5020,'321000','320000','扬州市',NULL),(5021,'533325','533300','兰坪白族普米族自治县',NULL),(5022,'533324','533300','贡山独龙族怒族自治县',NULL),(5023,'620600','620000','武威市',NULL),(5024,'610402','610400','秦都区',NULL),(5025,'610403','610400','杨陵区',NULL),(5026,'610404','610400','渭城区',NULL),(5027,'120121','120100','宁河县',NULL),(5028,'210727','210700','义县',NULL),(5029,'210726','210700','黑山县',NULL),(5030,'120123','120100','静海县',NULL),(5031,'120125','120100','蓟县',NULL),(5032,'231281','231200','安达市',NULL),(5033,'130302','130300','海港区',NULL),(5034,'231283','231200','海伦市',NULL),(5035,'130300','130000','秦皇岛市',NULL),(5036,'231282','231200','肇东市',NULL),(5037,'130304','130300','北戴河区',NULL),(5038,'130303','130300','山海关区',NULL),(5039,'420626','420600','保康县',NULL),(5040,'120112','120100','津南区',NULL),(5041,'610430','610400','淳化县',NULL),(5042,'120111','120100','西青区',NULL),(5043,'610431','610400','武功县',NULL),(5044,'120110','120100','东丽区',NULL),(5045,'120116','120100','滨海新区',NULL),(5046,'420625','420600','谷城县',NULL),(5047,'120115','120100','宝坻区',NULL),(5048,'371600','370000','滨州市',NULL),(5049,'420624','420600','南漳县',NULL),(5050,'120114','120100','武清区',NULL),(5051,'120113','120100','北辰区',NULL),(5052,'371602','371600','滨城区',NULL),(5053,'610428','610400','长武县',NULL),(5054,'610427','610400','彬县',NULL),(5055,'610429','610400','旬邑县',NULL),(5056,'610424','610400','乾县',NULL),(5057,'610423','610400','泾阳县',NULL),(5058,'610426','610400','永寿县',NULL),(5059,'610425','610400','礼泉县',NULL),(5060,'620621','620600','民勤县',NULL),(5061,'620622','620600','古浪县',NULL),(5062,'620623','620600','天祝藏族自治县',NULL),(5063,'360203','360200','珠山区',NULL),(5064,'210700','210000','锦州市',NULL),(5065,'360200','360000','景德镇市',NULL),(5066,'360202','360200','昌江区',NULL),(5067,'210703','210700','凌河区',NULL),(5068,'210702','210700','古塔区',NULL),(5069,'210711','210700','太和区',NULL),(5070,'420607','420600','襄州区',NULL),(5071,'420606','420600','樊城区',NULL),(5072,'420602','420600','襄城区',NULL),(5073,'220000','0','吉林省',NULL),(5074,'420600','420000','襄阳市',NULL),(5075,'460105','460100','秀英区',NULL),(5076,'460106','460100','龙华区',NULL),(5077,'460107','460100','琼山区',NULL),(5078,'460108','460100','美兰区',NULL),(5079,'532801','532800','景洪市',NULL),(5080,'532800','530000','西双版纳傣族自治州',NULL),(5081,'441284','441200','四会市',NULL),(5082,'441283','441200','高要市',NULL),(5083,'460100','460000','海口市',NULL),(5084,'430000','0','湖南省',NULL),(5085,'320381','320300','新沂市',NULL),(5086,'320382','320300','邳州市',NULL),(5087,'431127','431100','蓝山县',NULL),(5088,'431128','431100','新田县',NULL),(5089,'431129','431100','江华瑶族自治县',NULL),(5090,'431123','431100','双牌县',NULL),(5091,'431124','431100','道县',NULL),(5092,'431125','431100','江永县',NULL),(5093,'431126','431100','宁远县',NULL),(5094,'511800','510000','雅安市',NULL),(5095,'511802','511800','雨城区',NULL),(5096,'431122','431100','东安县',NULL),(5097,'341222','341200','太和县',NULL),(5098,'431121','431100','祁阳县',NULL),(5099,'341221','341200','临泉县',NULL),(5100,'340621','340600','濉溪县',NULL),(5101,'341226','341200','颍上县',NULL),(5102,'341225','341200','阜南县',NULL),(5103,'350724','350700','松溪县',NULL),(5104,'350723','350700','光泽县',NULL),(5105,'350722','350700','浦城县',NULL),(5106,'350721','350700','顺昌县',NULL),(5107,'360403','360400','浔阳区',NULL),(5108,'360402','360400','庐山区',NULL),(5109,'350725','350700','政和县',NULL),(5110,'360400','360000','九江市',NULL),(5111,'330483','330400','桐乡市',NULL),(5112,'330482','330400','平湖市',NULL),(5113,'330481','330400','海宁市',NULL),(5114,'140430','140400','沁县',NULL),(5115,'140431','140400','沁源县',NULL),(5116,'431102','431100','零陵区',NULL),(5117,'431103','431100','冷水滩区',NULL),(5118,'420703','420700','华容区',NULL),(5119,'420704','420700','鄂城区',NULL),(5120,'420700','420000','鄂州市',NULL),(5121,'420702','420700','梁子湖区',NULL),(5122,'511824','511800','石棉县',NULL),(5123,'511823','511800','汉源县',NULL),(5124,'511826','511800','芦山县',NULL),(5125,'511825','511800','天全县',NULL),(5126,'511822','511800','荥经县',NULL),(5127,'511821','511800','名山县',NULL),(5128,'431100','430000','永州市',NULL),(5129,'511827','511800','宝兴县',NULL),(5130,'350702','350700','延平区',NULL),(5131,'350700','350000','南平市',NULL),(5132,'450881','450800','桂平市',NULL),(5133,'230708','230700','美溪区',NULL),(5134,'230709','230700','金山屯区',NULL),(5135,'210681','210600','东港市',NULL),(5136,'150200','150000','包头市',NULL),(5137,'210682','210600','凤城市',NULL),(5138,'150205','150200','石拐区',NULL),(5139,'150204','150200','青山区',NULL),(5140,'150203','150200','昆都仑区',NULL),(5141,'150202','150200','东河区',NULL),(5142,'150207','150200','九原区',NULL),(5143,'150206','150200','白云矿区',NULL),(5144,'231102','231100','爱辉区',NULL),(5145,'231100','230000','黑河市',NULL),(5146,'430903','430900','赫山区',NULL),(5147,'510181','510100','都江堰市',NULL),(5148,'430902','430900','资阳区',NULL),(5149,'510182','510100','彭州市',NULL),(5150,'430900','430000','益阳市',NULL),(5151,'230703','230700','南岔区',NULL),(5152,'230702','230700','伊春区',NULL),(5153,'510183','510100','邛崃市',NULL),(5154,'230700','230000','伊春市',NULL),(5155,'510184','510100','崇州市',NULL),(5156,'230707','230700','新青区',NULL),(5157,'341282','341200','界首市',NULL),(5158,'230706','230700','翠峦区',NULL),(5159,'230705','230700','西林区',NULL),(5160,'230704','230700','友好区',NULL),(5161,'230710','230700','五营区',NULL),(5162,'230712','230700','汤旺河区',NULL),(5163,'230711','230700','乌马河区',NULL),(5164,'230714','230700','乌伊岭区',NULL),(5165,'230713','230700','带岭区',NULL),(5166,'230716','230700','上甘岭区',NULL),(5167,'230715','230700','红星区',NULL),(5168,'533300','530000','怒江傈僳族自治州',NULL),(5169,'150223','150200','达尔罕茂明安联合旗',NULL),(5170,'150222','150200','固阳县',NULL),(5171,'150221','150200','土默特右旗',NULL),(5172,'230722','230700','嘉荫县',NULL),(5173,'340600','340000','淮北市',NULL),(5174,'140482','140400','城区',NULL),(5175,'140481','140400','潞城市',NULL),(5176,'140484','140400','高新区',NULL),(5177,'140483','140400','郊区',NULL),(5178,'340604','340600','烈山区',NULL),(5179,'340603','340600','相山区',NULL),(5180,'340602','340600','杜集区',NULL),(5181,'370602','370600','芝罘区',NULL),(5182,'540000','0','西藏自治区',NULL),(5183,'370600','370000','烟台市',NULL),(5184,'340191','340100','中区',NULL),(5185,'542221','542200','乃东县',NULL),(5186,'542222','542200','扎囊县',NULL),(5187,'370611','370600','福山区',NULL),(5188,'370612','370600','牟平区',NULL),(5189,'370613','370600','莱山区',NULL),(5190,'410200','410000','开封市',NULL),(5191,'320300','320000','徐州市',NULL),(5192,'320303','320300','云龙区',NULL),(5193,'320302','320300','鼓楼区',NULL),(5194,'450821','450800','平南县',NULL),(5195,'320305','320300','贾汪区',NULL),(5196,'320304','320300','九里区',NULL),(5197,'542231','542200','隆子县',NULL),(5198,'542232','542200','错那县',NULL),(5199,'542233','542200','浪卡子县',NULL),(5200,'542228','542200','洛扎县',NULL),(5201,'542227','542200','措美县',NULL),(5202,'542229','542200','加查县',NULL),(5203,'542224','542200','桑日县',NULL),(5204,'411729','411700','新蔡县',NULL),(5205,'542223','542200','贡嘎县',NULL),(5206,'411728','411700','遂平县',NULL),(5207,'542226','542200','曲松县',NULL),(5208,'411727','411700','汝南县',NULL),(5209,'542225','542200','琼结县',NULL),(5210,'411726','411700','泌阳县',NULL),(5211,'411725','411700','确山县',NULL),(5212,'411724','411700','正阳县',NULL),(5213,'411723','411700','平舆县',NULL),(5214,'411722','411700','上蔡县',NULL),(5215,'411721','411700','西平县',NULL),(5216,'510122','510100','双流县',NULL),(5217,'510121','510100','金堂县',NULL),(5218,'510124','510100','郫县',NULL),(5219,'320311','320300','泉山区',NULL),(5220,'430921','430900','南县',NULL),(5221,'430922','430900','桃江县',NULL),(5222,'430923','430900','安化县',NULL),(5223,'370634','370600','长岛县',NULL),(5224,'510114','510100','新都区',NULL),(5225,'510115','510100','温江区',NULL),(5226,'450800','450000','贵港市',NULL),(5227,'320324','320300','睢宁县',NULL),(5228,'450802','450800','港北区',NULL),(5229,'510132','510100','新津县',NULL),(5230,'320321','320300','丰县',NULL),(5231,'450804','450800','覃塘区',NULL),(5232,'510131','510100','蒲江县',NULL),(5233,'450803','450800','港南区',NULL),(5234,'320323','320300','铜山县',NULL),(5235,'320322','320300','沛县',NULL),(5236,'411700','410000','驻马店市',NULL),(5237,'510129','510100','大邑县',NULL),(5238,'530700','530000','丽江市',NULL),(5239,'411702','411700','驿城区',NULL),(5240,'530702','530700','古城区',NULL),(5241,'230781','230700','铁力市',NULL),(5242,'421003','421000','荆州区',NULL),(5243,'430981','430900','沅江市',NULL),(5244,'510100','510000','成都市',NULL),(5245,'340151','340100','高新区',NULL),(5246,'410225','410200','兰考县',NULL),(5247,'410224','410200','开封县',NULL),(5248,'410223','410200','尉氏县',NULL),(5249,'451481','451400','凭祥市',NULL),(5250,'440487','440400','南湾区',NULL),(5251,'440486','440400','金唐区',NULL),(5252,'510112','510100','龙泉驿区',NULL),(5253,'510113','510100','青白江区',NULL),(5254,'510106','510100','金牛区',NULL),(5255,'510105','510100','青羊区',NULL),(5256,'510104','510100','锦江区',NULL),(5257,'510108','510100','成华区',NULL),(5258,'510107','510100','武侯区',NULL),(5259,'421002','421000','沙市区',NULL),(5260,'421000','420000','荆州市',NULL),(5261,'542200','540000','山南地区',NULL),(5262,'410211','410200','金明区',NULL),(5263,'410204','410200','鼓楼区',NULL),(5264,'410203','410200','顺河回族区',NULL),(5265,'410202','410200','龙亭区',NULL),(5266,'410205','410200','禹王台区',NULL),(5267,'370686','370600','海阳市',NULL),(5268,'370686','370600','栖霞市',NULL),(5269,'370685','370600','招远市',NULL),(5270,'370684','370600','蓬莱市',NULL),(5271,'370683','370600','莱州市',NULL),(5272,'370682','370600','莱阳市',NULL),(5273,'370681','370600','龙口市',NULL),(5274,'410221','410200','杞县',NULL),(5275,'410222','410200','通许县',NULL),(5276,'370589','370500','西城区',NULL),(5277,'340104','340100','蜀山区',NULL),(5278,'340102','340100','瑶海区',NULL),(5279,'141102','141100','离石区',NULL),(5280,'340103','340100','庐阳区',NULL),(5281,'340100','340000','合肥市',NULL),(5282,'141100','140000','吕梁市',NULL),(5283,'211381','211300','北票市',NULL),(5284,'211382','211300','凌源市',NULL),(5285,'130283','130200','迁安市',NULL),(5286,'130281','130200','遵化市',NULL),(5287,'441900','440000','东莞市',NULL),(5288,'340111','340100','包河区',NULL),(5289,'622901','622900','临夏市',NULL),(5290,'622900','620000','临夏回族自治州',NULL),(5291,'451424','451400','大新县',NULL),(5292,'451425','451400','天等县',NULL),(5293,'451422','451400','宁明县',NULL),(5294,'451423','451400','龙州县',NULL),(5295,'451421','451400','扶绥县',NULL),(5296,'340122','340100','肥东县',NULL),(5297,'340123','340100','肥西县',NULL),(5298,'522732','522700','三都水族自治县',NULL),(5299,'340121','340100','长丰县',NULL),(5300,'522731','522700','惠水县',NULL),(5301,'370590','370500','东城区',NULL),(5302,'622921','622900','临夏县',NULL),(5303,'622922','622900','康乐县',NULL),(5304,'522725','522700','瓮安县',NULL),(5305,'522726','522700','独山县',NULL),(5306,'522727','522700','平塘县',NULL),(5307,'622925','622900','和政县',NULL),(5308,'530724','530700','宁蒗彝族自治县',NULL),(5309,'622926','622900','东乡族自治县',NULL),(5310,'530723','530700','华坪县',NULL),(5311,'622923','622900','永靖县',NULL),(5312,'522722','522700','荔波县',NULL),(5313,'530722','530700','永胜县',NULL),(5314,'622924','622900','广河县',NULL),(5315,'522723','522700','贵定县',NULL),(5316,'530721','530700','玉龙纳西族自治县',NULL),(5317,'622927','622900','积石山保安族东乡族撒拉族自治县',NULL),(5318,'522728','522700','罗甸县',NULL),(5319,'522729','522700','长顺县',NULL),(5320,'440404','440400','金湾区',NULL),(5321,'451402','451400','江洲区',NULL),(5322,'451400','450000','崇左市',NULL),(5323,'450900','450000','玉林市',NULL),(5324,'440400','440000','珠海市',NULL),(5325,'440403','440400','斗门区',NULL),(5326,'522730','522700','龙里县',NULL),(5327,'440402','440400','香洲区',NULL),(5328,'450902','450900','玉州区',NULL),(5329,'341700','340000','池州市',NULL),(5330,'331181','331100','龙泉市',NULL),(5331,'341702','341700','贵池区',NULL),(5332,'130230','130200','唐海县',NULL),(5333,'522700','520000','黔南布依族苗族自治州',NULL),(5334,'522701','522700','都匀市',NULL),(5335,'522702','522700','福泉市',NULL),(5336,'410181','410100','巩义市',NULL),(5337,'410186','410100','郑东新区',NULL),(5338,'410187','410100','高新区',NULL),(5339,'410184','410100','新郑市',NULL),(5340,'410185','410100','登封市',NULL),(5341,'410182','410100','荥阳市',NULL),(5342,'410183','410100','新密市',NULL),(5343,'341721','341700','东至县',NULL),(5344,'341722','341700','石台县',NULL),(5345,'341723','341700','青阳县',NULL),(5346,'220187','220000','净月旅游开发区',NULL),(5347,'210624','210600','宽甸满族自治县',NULL),(5348,'211303','211300','龙城区',NULL),(5349,'211300','210000','朝阳市',NULL),(5350,'211302','211300','双塔区',NULL),(5351,'331123','331100','遂昌县',NULL),(5352,'331122','331100','缙云县',NULL),(5353,'331125','331100','云和县',NULL),(5354,'331124','331100','松阳县',NULL),(5355,'350681','350600','龙海市',NULL),(5356,'331127','331100','景宁畲族自治县',NULL),(5357,'331126','331100','庆元县',NULL),(5358,'610300','610000','宝鸡市',NULL),(5359,'140502','140500','城区',NULL),(5360,'130202','130200','路南区',NULL),(5361,'130203','130200','路北区',NULL),(5362,'140500','140000','晋城市',NULL),(5363,'130200','130000','唐山市',NULL),(5364,'220181','220000','九台市',NULL),(5365,'220182','220000','榆树市',NULL),(5366,'220183','220000','德惠市',NULL),(5367,'220184','220000','高新技术产业开发区',NULL),(5368,'220185','220000','汽车产业开发区',NULL),(5369,'431081','431000','资兴市',NULL),(5370,'220186','220000','经济技术开发区',NULL),(5371,'130208','130200','丰润区',NULL),(5372,'130207','130200','丰南区',NULL),(5373,'130204','130200','古冶区',NULL),(5374,'130205','130200','开平区',NULL),(5375,'511781','511700','万源市',NULL),(5376,'150125','150100','武川县',NULL),(5377,'150121','150100','土默特左旗',NULL),(5378,'620724','620700','高台县',NULL),(5379,'150122','150100','托克托县',NULL),(5380,'620723','620700','临泽县',NULL),(5381,'150123','150100','和林格尔县',NULL),(5382,'150124','150100','清水河县',NULL),(5383,'620725','620700','山丹县',NULL),(5384,'620722','620700','民乐县',NULL),(5385,'620721','620700','肃南裕固族自治县',NULL),(5386,'230811','230800','郊区',NULL),(5387,'141181','141100','孝义市',NULL),(5388,'141182','141100','汾阳市',NULL),(5389,'330402','330400','南湖区',NULL),(5390,'330400','330000','嘉兴市',NULL),(5391,'331100','330000','丽水市',NULL),(5392,'331102','331100','莲都区',NULL),(5393,'632726','632700','曲麻莱县',NULL),(5394,'632725','632700','囊谦县',NULL),(5395,'632724','632700','治多县',NULL),(5396,'632723','632700','称多县',NULL),(5397,'130224','130200','滦南县',NULL),(5398,'632722','632700','杂多县',NULL),(5399,'130225','130200','乐亭县',NULL),(5400,'632721','632700','玉树县',NULL),(5401,'130223','130200','滦县',NULL),(5402,'532930','532900','洱源县',NULL),(5403,'130229','130200','玉田县',NULL),(5404,'532931','532900','剑川县',NULL),(5405,'130227','130200','迁西县',NULL),(5406,'532932','532900','鹤庆县',NULL),(5407,'230800','230000','佳木斯市',NULL),(5408,'230802','230800','永红区',NULL),(5409,'230803','230800','向阳区',NULL),(5410,'230804','230800','前进区',NULL),(5411,'230805','230800','东风区',NULL),(5412,'231121','231100','嫩江县',NULL),(5413,'231124','231100','孙吴县',NULL),(5414,'231123','231100','逊克县',NULL),(5415,'331121','331100','青田县',NULL),(5416,'620700','620000','张掖市',NULL),(5417,'620702','620700','甘州区',NULL),(5418,'460000','0','海南省',NULL),(5419,'330421','330400','嘉善县',NULL),(5420,'360321','360300','莲花县',NULL),(5421,'330424','330400','海盐县',NULL),(5422,'360323','360300','芦溪县',NULL),(5423,'360322','360300','上栗县',NULL),(5424,'632700','630000','玉树藏族自治州',NULL),(5425,'231182','231100','五大连池市',NULL),(5426,'231181','231100','北安市',NULL),(5427,'371700','370000','荷泽市',NULL),(5428,'220122','220000','农安县',NULL),(5429,'610330','610300','凤县',NULL),(5430,'371702','371700','牡丹区',NULL),(5431,'610331','610300','太白县',NULL),(5432,'330411','330400','秀洲区',NULL),(5433,'360313','360300','湘东区',NULL),(5434,'532922','532900','漾濞彝族自治县',NULL),(5435,'532924','532900','宾川县',NULL),(5436,'532923','532900','祥云县',NULL),(5437,'532929','532900','云龙县',NULL),(5438,'610324','610300','扶风县',NULL),(5439,'610327','610300','陇县',NULL),(5440,'610326','610300','眉县',NULL),(5441,'532926','532900','南涧彝族自治县',NULL),(5442,'610329','610300','麟游县',NULL),(5443,'532925','532900','弥渡县',NULL),(5444,'610328','610300','千阳县',NULL),(5445,'532928','532900','永平县',NULL),(5446,'532927','532900','巍山彝族回族自治县',NULL),(5447,'120000','0','天津',NULL),(5448,'610322','610300','凤翔县',NULL),(5449,'610323','610300','岐山县',NULL),(5450,'210604','210600','振安区',NULL),(5451,'360300','360000','萍乡市',NULL),(5452,'210603','210600','振兴区',NULL),(5453,'220112','220000','双阳区',NULL),(5454,'350622','350600','云霄县',NULL),(5455,'211321','211300','朝阳县',NULL),(5456,'350623','350600','漳浦县',NULL),(5457,'211322','211300','建平县',NULL),(5458,'350624','350600','诏安县',NULL),(5459,'350625','350600','长泰县',NULL),(5460,'211324','211300','喀喇沁左翼蒙古族自治县',NULL),(5461,'350626','350600','东山县',NULL),(5462,'210602','210600','元宝区',NULL),(5463,'360302','360300','安源区',NULL),(5464,'350627','350600','南靖县',NULL),(5465,'350628','350600','平和县',NULL),(5466,'210600','210000','丹东市',NULL),(5467,'350629','350600','华安县',NULL),(5468,'140521','140500','沁水县',NULL),(5469,'341200','340000','阜阳市',NULL),(5470,'141130','141100','交口县',NULL),(5471,'341202','341200','颍州区',NULL),(5472,'341203','341200','颍东区',NULL),(5473,'341204','341200','颍泉区',NULL),(5474,'140525','140500','泽州县',NULL),(5475,'140524','140500','陵川县',NULL),(5476,'140522','140500','阳城县',NULL),(5477,'220105','220000','二道区',NULL),(5478,'371724','371700','巨野县',NULL),(5479,'220106','220000','绿园区',NULL),(5480,'371725','371700','郓城县',NULL),(5481,'220103','220000','宽城区',NULL),(5482,'371726','371700','鄄城县',NULL),(5483,'220104','220000','朝阳区',NULL),(5484,'371727','371700','定陶县',NULL),(5485,'220102','220000','南关区',NULL),(5486,'371721','371700','曹县',NULL),(5487,'371722','371700','单县',NULL),(5488,'500000','0','重庆',NULL),(5489,'220100','220000','长春市',NULL),(5490,'371723','371700','成武县',NULL),(5491,'141121','141100','文水县',NULL),(5492,'141122','141100','交城县',NULL),(5493,'141123','141100','兴县',NULL),(5494,'532900','530000','大理白族自治州',NULL),(5495,'141124','141100','临县',NULL),(5496,'141125','141100','柳林县',NULL),(5497,'141126','141100','石楼县',NULL),(5498,'532901','532900','大理市',NULL),(5499,'141127','141100','岚县',NULL),(5500,'141128','141100','方山县',NULL),(5501,'141129','141100','中阳县',NULL),(5502,'610303','610300','金台区',NULL),(5503,'371728','371700','东明县',NULL),(5504,'610302','610300','渭滨区',NULL),(5505,'610304','610300','陈仓区',NULL),(5506,'371322','371300','郯城县',NULL),(5507,'371323','371300','沂水县',NULL),(5508,'371321','371300','沂南县',NULL),(5509,'371326','371300','平邑县',NULL),(5510,'371327','371300','莒南县',NULL),(5511,'371324','371300','苍山县',NULL),(5512,'371325','371300','费县',NULL),(5513,'632300','630000','黄南藏族自治州',NULL),(5514,'371328','371300','蒙阴县',NULL),(5515,'371329','371300','临沭县',NULL),(5516,'370724','370700','临朐县',NULL),(5517,'370725','370700','昌乐县',NULL),(5518,'411628','411600','鹿邑县',NULL),(5519,'411621','411600','扶沟县',NULL),(5520,'411622','411600','西华县',NULL),(5521,'411623','411600','商水县',NULL),(5522,'411624','411600','沈丘县',NULL),(5523,'411625','411600','郸城县',NULL),(5524,'411626','411600','淮阳县',NULL),(5525,'411627','411600','太康县',NULL),(5526,'371300','370000','临沂市',NULL),(5527,'230822','230800','桦南县',NULL),(5528,'230828','230800','汤原县',NULL),(5529,'230826','230800','桦川县',NULL),(5530,'632323','632300','泽库县',NULL),(5531,'632322','632300','尖扎县',NULL),(5532,'632321','632300','同仁县',NULL),(5533,'371302','371300','兰山区',NULL),(5534,'410506','410500','龙安区',NULL),(5535,'410503','410500','北关区',NULL),(5536,'410502','410500','文峰区',NULL),(5537,'410505','410500','殷都区',NULL),(5538,'410500','410000','安阳市',NULL),(5539,'230833','230800','抚远县',NULL),(5540,'371311','371300','罗庄区',NULL),(5541,'371312','371300','河东区',NULL),(5542,'370700','370000','潍坊市',NULL),(5543,'370702','370700','潍城区',NULL),(5544,'370704','370700','坊子区',NULL),(5545,'370703','370700','寒亭区',NULL),(5546,'370705','370700','奎文区',NULL),(5547,'370786','370700','昌邑市',NULL),(5548,'361181','361100','德兴市',NULL),(5549,'361102','361100','信州区',NULL),(5550,'450000','0','广西壮族自治区',NULL),(5551,'230881','230800','同江市',NULL),(5552,'230882','230800','富锦市',NULL),(5553,'511011','511000','东兴区',NULL),(5554,'361100','360000','上饶市',NULL),(5555,'150300','150000','乌海市',NULL),(5556,'445121','445100','潮安县',NULL),(5557,'140311','140300','郊区',NULL),(5558,'445122','445100','饶平县',NULL),(5559,'620302','620300','金川区',NULL),(5560,'150303','150300','海南区',NULL),(5561,'150304','150300','乌达区',NULL),(5562,'150302','150300','海勃湾区',NULL),(5563,'511024','511000','威远县',NULL),(5564,'511025','511000','资中县',NULL),(5565,'360502','360500','渝水区',NULL),(5566,'360500','360000','新余市',NULL),(5567,'620321','620300','永昌县',NULL),(5568,'140321','140300','平定县',NULL),(5569,'140322','140300','盂县',NULL),(5570,'632324','632300','河南蒙古族自治县',NULL),(5571,'220203','220200','龙潭区',NULL),(5572,'220202','220200','昌邑区',NULL),(5573,'361122','361100','广丰县',NULL),(5574,'361121','361100','上饶县',NULL),(5575,'220204','220200','船营区',NULL),(5576,'361124','361100','铅山县',NULL),(5577,'361123','361100','玉山县',NULL),(5578,'361126','361100','弋阳县',NULL),(5579,'361125','361100','横峰县',NULL),(5580,'220200','220000','吉林市',NULL),(5581,'361128','361100','鄱阳县',NULL),(5582,'361127','361100','余干县',NULL),(5583,'361129','361100','万年县',NULL),(5584,'411681','411600','项城市',NULL),(5585,'520100','520000','贵阳市',NULL),(5586,'445100','440000','潮州市',NULL),(5587,'445102','445100','湘桥区',NULL),(5588,'511028','511000','隆昌县',NULL),(5589,'360521','360500','分宜县',NULL),(5590,'361130','361100','婺源县',NULL),(5591,'220211','220200','丰满区',NULL),(5592,'350603','350600','龙文区',NULL),(5593,'350602','350600','芗城区',NULL),(5594,'350600','350000','漳州市',NULL),(5595,'520111','520100','花溪区',NULL),(5596,'520112','520100','乌当区',NULL),(5597,'520103','520100','云岩区',NULL),(5598,'520102','520100','南明区',NULL),(5599,'511921','511900','通江县',NULL),(5600,'511923','511900','平昌县',NULL),(5601,'511922','511900','南江县',NULL),(5602,'320482','320400','金坛市',NULL),(5603,'320481','320400','溧阳市',NULL),(5604,'522301','522300','兴义市',NULL),(5605,'522300','520000','黔西南布依族苗族自治州',NULL),(5606,'430600','430000','岳阳市',NULL),(5607,'430602','430600','岳阳楼区',NULL),(5608,'430603','430600','云溪区',NULL),(5609,'421102','421100','黄州区',NULL),(5610,'152502','152500','锡林浩特市',NULL),(5611,'511902','511900','巴州区',NULL),(5612,'152501','152500','二连浩特市',NULL),(5613,'421100','420000','黄冈市',NULL),(5614,'511900','510000','巴中市',NULL),(5615,'152500','150000','锡林郭勒盟',NULL),(5616,'450722','450700','浦北县',NULL),(5617,'410581','410500','林州市',NULL),(5618,'430611','430600','君山区',NULL),(5619,'451100','450000','贺州市',NULL),(5620,'451102','451100','八步区',NULL),(5621,'450721','450700','灵山县',NULL),(5622,'430621','430600','岳阳县',NULL),(5623,'430624','430600','湘阴县',NULL),(5624,'430623','430600','华容县',NULL),(5625,'522323','522300','普安县',NULL),(5626,'522322','522300','兴仁县',NULL),(5627,'421124','421100','英山县',NULL),(5628,'421125','421100','浠水县',NULL),(5629,'421126','421100','蕲春县',NULL),(5630,'421127','421100','黄梅县',NULL),(5631,'430626','430600','平江县',NULL),(5632,'152528','152500','镶黄旗',NULL),(5633,'152527','152500','太仆寺旗',NULL),(5634,'152529','152500','正镶白旗',NULL),(5635,'152524','152500','苏尼特右旗',NULL),(5636,'421123','421100','罗田县',NULL),(5637,'152523','152500','苏尼特左旗',NULL),(5638,'421122','421100','红安县',NULL),(5639,'152526','152500','西乌珠穆沁旗',NULL),(5640,'421121','421100','团风县',NULL),(5641,'152525','152500','东乌珠穆沁旗',NULL),(5642,'522326','522300','望谟县',NULL),(5643,'522327','522300','册亨县',NULL),(5644,'152522','152500','阿巴嘎旗',NULL),(5645,'522324','522300','晴隆县',NULL),(5646,'522325','522300','贞丰县',NULL),(5647,'522328','522300','安龙县',NULL),(5648,'370784','370700','安丘市',NULL),(5649,'370783','370700','寿光市',NULL),(5650,'370782','370700','诸城市',NULL),(5651,'370781','370700','青州市',NULL),(5652,'511000','510000','内江市',NULL),(5653,'370785','370700','高密市',NULL),(5654,'451122','451100','钟山县',NULL),(5655,'451121','451100','昭平县',NULL),(5656,'511002','511000','市中区',NULL),(5657,'451123','451100','富川瑶族自治县',NULL),(5658,'410522','410500','安阳县',NULL),(5659,'410523','410500','汤阴县',NULL),(5660,'410526','410500','滑县',NULL),(5661,'410527','410500','内黄县',NULL),(5662,'542122','542100','江达县',NULL),(5663,'542123','542100','贡觉县',NULL),(5664,'542121','542100','昌都县',NULL),(5665,'510000','0','四川省',NULL),(5666,'370751','370700','开发区',NULL),(5667,'542125','542100','丁青县',NULL),(5668,'542124','542100','类乌齐县',NULL),(5669,'542127','542100','八宿县',NULL),(5670,'542126','542100','察雅县',NULL),(5671,'542129','542100','芒康县',NULL),(5672,'542128','542100','左贡县',NULL),(5673,'542132','542100','洛隆县',NULL),(5674,'542133','542100','边坝县',NULL),(5675,'445185','445100','枫溪区',NULL),(5676,'542100','540000','昌都地区',NULL),(5677,'320411','320400','新北区',NULL),(5678,'320412','320400','武进区',NULL),(5679,'411602','411600','川汇区',NULL),(5680,'411600','410000','周口市',NULL),(5681,'450700','450000','钦州市',NULL),(5682,'450703','450700','钦北区',NULL),(5683,'450702','450700','钦南区',NULL),(5684,'330727','330700','磐安县',NULL),(5685,'320400','320000','常州市',NULL),(5686,'440781','440700','台山市',NULL),(5687,'440784','440700','鹤山市',NULL),(5688,'440783','440700','开平市',NULL),(5689,'330723','330700','武义县',NULL),(5690,'320404','320400','钟楼区',NULL),(5691,'440785','440700','恩平市',NULL),(5692,'330726','330700','浦江县',NULL),(5693,'320402','320400','天宁区',NULL),(5694,'350583','350500','南安市',NULL),(5695,'350581','350500','石狮市',NULL),(5696,'320405','320400','戚墅堰区',NULL),(5697,'350582','350500','晋江市',NULL),(5698,'331023','331000','天台县',NULL),(5699,'331024','331000','仙居县',NULL),(5700,'130133','130100','赵县',NULL),(5701,'130132','130100','元氏县',NULL),(5702,'130131','130100','平山县',NULL),(5703,'130130','130100','无极县',NULL),(5704,'532628','532600','富宁县',NULL),(5705,'341602','341600','谯城区',NULL),(5706,'130983','130900','黄骅市',NULL),(5707,'130984','130900','河间市',NULL),(5708,'130981','130900','泊头市',NULL),(5709,'130982','130900','任丘市',NULL),(5710,'211281','211200','调兵山市',NULL),(5711,'532623','532600','西畴县',NULL),(5712,'532622','532600','砚山县',NULL),(5713,'341600','340000','亳州市',NULL),(5714,'532621','532600','文山县',NULL),(5715,'211282','211200','开原市',NULL),(5716,'532627','532600','广南县',NULL),(5717,'532626','532600','丘北县',NULL),(5718,'532625','532600','马关县',NULL),(5719,'532624','532600','麻栗坡县',NULL),(5720,'330702','330700','婺城区',NULL),(5721,'330703','330700','金东区',NULL),(5722,'330700','330000','金华市',NULL),(5723,'130124','130100','栾城县',NULL),(5724,'130123','130100','正定县',NULL),(5725,'421087','421000','松滋市',NULL),(5726,'130126','130100','灵寿县',NULL),(5727,'130125','130100','行唐县',NULL),(5728,'421083','421000','洪湖市',NULL),(5729,'130121','130100','井陉县',NULL),(5730,'421081','421000','石首市',NULL),(5731,'130128','130100','深泽县',NULL),(5732,'130127','130100','高邑县',NULL),(5733,'130129','130100','赞皇县',NULL),(5734,'210922','210900','彰武县',NULL),(5735,'210111','210100','苏家屯区',NULL),(5736,'210112','210100','东陵区',NULL),(5737,'210113','210100','新城子区',NULL),(5738,'210114','210100','于洪区',NULL),(5739,'210921','210900','阜新蒙古族自治县',NULL),(5740,'530426','530400','峨山彝族自治县',NULL),(5741,'130930','130900','孟村回族自治县',NULL),(5742,'530427','530400','新平彝族傣族自治县',NULL),(5743,'530424','530400','华宁县',NULL),(5744,'530425','530400','易门县',NULL),(5745,'530422','530400','澄江县',NULL),(5746,'530423','530400','通海县',NULL),(5747,'530421','530400','江川县',NULL),(5748,'130185','130100','鹿泉市',NULL),(5749,'421022','421000','公安县',NULL),(5750,'421023','421000','监利县',NULL),(5751,'530428','530400','元江哈尼族彝族傣族自治县',NULL),(5752,'421024','421000','江陵县',NULL),(5753,'441802','441800','清城区',NULL),(5754,'130184','130100','新乐市',NULL),(5755,'130183','130100','晋州市',NULL),(5756,'130182','130100','藁城市',NULL),(5757,'130121','130100','辛集市',NULL),(5758,'210102','210100','和平区',NULL),(5759,'210103','210100','沈河区',NULL),(5760,'210100','210000','沈阳市',NULL),(5761,'210106','210100','铁西区',NULL),(5762,'429021','420000','神农架林区',NULL),(5763,'210104','210100','大东区',NULL),(5764,'441800','440000','清远市',NULL),(5765,'210105','210100','皇姑区',NULL),(5766,'331081','331000','温岭市',NULL),(5767,'331082','331000','临海市',NULL),(5768,'210904','210900','太平区',NULL),(5769,'210905','210900','清河门区',NULL),(5770,'210900','210000','阜新市',NULL),(5771,'210902','210900','海州区',NULL),(5772,'210903','210900','新邱区',NULL),(5773,'530400','530000','玉溪市',NULL),(5774,'522401','522400','毕节市',NULL),(5775,'430682','430600','临湘市',NULL),(5776,'530402','530400','红塔区',NULL),(5777,'430681','430600','汨罗市',NULL),(5778,'210911','210900','细河区',NULL),(5779,'522400','520000','毕节地区',NULL),(5780,'130929','130900','献县',NULL),(5781,'210124','210100','法库县',NULL),(5782,'130927','130900','南皮县',NULL),(5783,'210122','210100','辽中县',NULL),(5784,'130928','130900','吴桥县',NULL),(5785,'210123','210100','康平县',NULL),(5786,'130926','130900','肃宁县',NULL),(5787,'130925','130900','盐山县',NULL),(5788,'130924','130900','海兴县',NULL),(5789,'130923','130900','东光县',NULL),(5790,'130922','130900','青县',NULL),(5791,'130921','130900','沧县',NULL),(5792,'630102','630100','城东区',NULL),(5793,'630103','630100','城中区',NULL),(5794,'630104','630100','城西区',NULL),(5795,'630105','630100','城北区',NULL),(5796,'140400','140000','长治市',NULL),(5797,'341321','341300','砀山县',NULL),(5798,'341322','341300','萧县',NULL),(5799,'341323','341300','灵璧县',NULL),(5800,'341324','341300','泗县',NULL),(5801,'360428','360400','都昌县',NULL),(5802,'211200','210000','铁岭市',NULL),(5803,'360427','360400','星子县',NULL),(5804,'350502','350500','鲤城区',NULL),(5805,'350503','350500','丰泽区',NULL),(5806,'211202','211200','银州区',NULL),(5807,'360429','360400','湖口县',NULL),(5808,'350504','350500','洛江区',NULL),(5809,'360424','360400','修水县',NULL),(5810,'350505','350500','泉港区',NULL),(5811,'211204','211200','清河区',NULL),(5812,'440700','440000','江门市',NULL),(5813,'360423','360400','武宁县',NULL),(5814,'533124','533100','陇川县',NULL),(5815,'360426','360400','德安县',NULL),(5816,'533123','533100','盈江县',NULL),(5817,'360425','360400','永修县',NULL),(5818,'533122','533100','梁河县',NULL),(5819,'440704','440700','江海区',NULL),(5820,'440703','440700','蓬江区',NULL),(5821,'610202','610200','王益区',NULL),(5822,'360421','360400','九江县',NULL),(5823,'610200','610000','铜川市',NULL),(5824,'350500','350000','泉州市',NULL),(5825,'440705','440700','新会区',NULL),(5826,'513229','513200','马尔康县',NULL),(5827,'513227','513200','小金县',NULL),(5828,'513228','513200','黑水县',NULL),(5829,'445202','445200','榕城区',NULL),(5830,'445200','440000','揭阳市',NULL),(5831,'130900','130000','沧州市',NULL),(5832,'130902','130900','新华区',NULL),(5833,'130903','130900','运河区',NULL),(5834,'520000','0','贵州省',NULL),(5835,'630123','630100','湟源县',NULL),(5836,'513233','513200','红原县',NULL),(5837,'630122','630100','湟中县',NULL),(5838,'513232','513200','若尔盖县',NULL),(5839,'630121','630100','大通回族土族自治县',NULL),(5840,'513231','513200','阿坝县',NULL),(5841,'220221','220200','永吉县',NULL),(5842,'513230','513200','壤塘县',NULL),(5843,'140426','140400','黎城县',NULL),(5844,'140425','140400','平顺县',NULL),(5845,'140424','140400','屯留县',NULL),(5846,'140423','140400','襄垣县',NULL),(5847,'140429','140400','武乡县',NULL),(5848,'140428','140400','长子县',NULL),(5849,'140427','140400','壶关县',NULL),(5850,'341302','341300','埇桥区',NULL),(5851,'210184','210100','沈北新区',NULL),(5852,'210182','210100','浑南新区',NULL),(5853,'140421','140400','长治县',NULL),(5854,'210183','210100','张士开发区',NULL),(5855,'341300','340000','宿州市',NULL),(5856,'210181','210100','新民市',NULL),(5857,'350527','350500','金门县',NULL),(5858,'620421','620400','靖远县',NULL),(5859,'350524','350500','安溪县',NULL),(5860,'211223','211200','西丰县',NULL),(5861,'350525','350500','永春县',NULL),(5862,'211224','211200','昌图县',NULL),(5863,'350526','350500','德化县',NULL),(5864,'330784','330700','永康市',NULL),(5865,'330783','330700','东阳市',NULL),(5866,'350521','350500','惠安县',NULL),(5867,'330782','330700','义乌市',NULL),(5868,'330781','330700','兰溪市',NULL),(5869,'610222','610200','宜君县',NULL),(5870,'610204','610200','耀州区',NULL),(5871,'610203','610200','印台区',NULL),(5872,'211221','211200','铁岭县',NULL),(5873,'620400','620000','白银市',NULL),(5874,'620402','620400','白银区',NULL),(5875,'620403','620400','平川区',NULL),(5876,'441821','441800','佛冈县',NULL),(5877,'441827','441800','清新县',NULL),(5878,'429006','420000','天门市',NULL),(5879,'441825','441800','连山壮族瑶族自治县',NULL),(5880,'429005','420000','潜江市',NULL),(5881,'441826','441800','连南瑶族自治县',NULL),(5882,'429004','420000','仙桃市',NULL),(5883,'441823','441800','阳山县',NULL),(5884,'360430','360400','彭泽县',NULL),(5885,'130107','130100','井陉矿区',NULL),(5886,'130108','130100','裕华区',NULL),(5887,'130105','130100','新华区',NULL),(5888,'220282','220200','桦甸市',NULL),(5889,'130100','130000','石家庄市',NULL),(5890,'220283','220200','舒兰市',NULL),(5891,'220284','220200','磐石市',NULL),(5892,'130103','130100','桥东区',NULL),(5893,'130104','130100','桥西区',NULL),(5894,'130102','130100','长安区',NULL),(5895,'220281','220200','蛟河市',NULL),(5896,'513200','510000','阿坝藏族羌族自治州',NULL),(5897,'331000','330000','台州市',NULL),(5898,'371402','371400','德城区',NULL),(5899,'230921','230900','勃利县',NULL),(5900,'371400','370000','德州市',NULL),(5901,'441882','441800','连州市',NULL),(5902,'441881','441800','英德市',NULL),(5903,'360481','360400','瑞昌市',NULL),(5904,'331002','331000','椒江区',NULL),(5905,'331004','331000','路桥区',NULL),(5906,'513221','513200','汶川县',NULL),(5907,'331003','331000','黄岩区',NULL),(5908,'513222','513200','理县',NULL),(5909,'513223','513200','茂县',NULL),(5910,'513224','513200','松潘县',NULL),(5911,'513225','513200','九寨沟县',NULL),(5912,'230000','0','黑龙江省',NULL),(5913,'513226','513200','金川县',NULL),(5914,'533102','533100','瑞丽市',NULL),(5915,'533103','533100','潞西市',NULL),(5916,'533100','530000','德宏傣族景颇族自治州',NULL),(5917,'341623','341600','利辛县',NULL),(5918,'341622','341600','蒙城县',NULL),(5919,'341621','341600','涡阳县',NULL),(5920,'532600','530000','文山壮族苗族自治州',NULL),(5921,'331021','331000','玉环县',NULL),(5922,'331022','331000','三门县',NULL),(5923,'230902','230900','新兴区',NULL),(5924,'230903','230900','桃山区',NULL),(5925,'230904','230900','茄子河区',NULL),(5926,'230900','230000','七台河市',NULL),(5927,'371427','371400','夏津县',NULL),(5928,'371428','371400','武城县',NULL),(5929,'371425','371400','齐河县',NULL),(5930,'371426','371400','平原县',NULL),(5931,'371423','371400','庆云县',NULL),(5932,'371424','371400','临邑县',NULL),(5933,'370811','370800','任城区',NULL),(5934,'371421','371400','陵县',NULL),(5935,'371422','371400','宁津县',NULL),(5936,'131128','131100','阜城县',NULL),(5937,'340811','340800','宜秀区',NULL),(5938,'131126','131100','故城县',NULL),(5939,'131127','131100','景县',NULL),(5940,'230181','230100','阿城市',NULL),(5941,'131124','131100','饶阳县',NULL),(5942,'131125','131100','安平县',NULL),(5943,'131122','131100','武邑县',NULL),(5944,'230184','230100','五常市',NULL),(5945,'131123','131100','武强县',NULL),(5946,'230185','230100','阿城市',NULL),(5947,'230182','230100','双城市',NULL),(5948,'131121','131100','枣强县',NULL),(5949,'230183','230100','尚志市',NULL),(5950,'360602','360600','月湖区',NULL),(5951,'360600','360000','鹰潭市',NULL),(5952,'411525','411500','固始县',NULL),(5953,'411526','411500','潢川县',NULL),(5954,'411527','411500','淮滨县',NULL),(5955,'411528','411500','息县',NULL),(5956,'150430','150400','敖汉旗',NULL),(5957,'411521','411500','罗山县',NULL),(5958,'422822','422800','建始县',NULL),(5959,'441781','441700','阳春市',NULL),(5960,'411522','411500','光山县',NULL),(5961,'422823','422800','巴东县',NULL),(5962,'411523','411500','新县',NULL),(5963,'411524','411500','商城县',NULL),(5964,'422825','422800','宣恩县',NULL),(5965,'370826','370800','微山县',NULL),(5966,'340824','340800','潜山县',NULL),(5967,'422826','422800','咸丰县',NULL),(5968,'370827','370800','鱼台县',NULL),(5969,'340823','340800','枞阳县',NULL),(5970,'422827','422800','来凤县',NULL),(5971,'370828','370800','金乡县',NULL),(5972,'340822','340800','怀宁县',NULL),(5973,'422828','422800','鹤峰县',NULL),(5974,'370829','370800','嘉祥县',NULL),(5975,'340828','340800','岳西县',NULL),(5976,'340827','340800','望江县',NULL),(5977,'340826','340800','宿松县',NULL),(5978,'340825','340800','太湖县',NULL),(5979,'370832','370800','梁山县',NULL),(5980,'370831','370800','泗水县',NULL),(5981,'370830','370800','汶上县',NULL),(5982,'511181','511100','峨眉山市',NULL),(5983,'371451','371400','开发区',NULL),(5984,'431381','431300','冷水江市',NULL),(5985,'411500','410000','信阳市',NULL),(5986,'431382','431300','涟源市',NULL),(5987,'411502','411500','浉河区',NULL),(5988,'411503','411500','平桥区',NULL),(5989,'220323','220300','伊通满族自治县',NULL),(5990,'220322','220300','梨树县',NULL),(5991,'150402','150400','红山区',NULL),(5992,'150403','150400','元宝山区',NULL),(5993,'150400','150000','赤峰市',NULL),(5994,'150404','150400','松山区',NULL),(5995,'140212','140200','新荣区',NULL),(5996,'140211','140200','南郊区',NULL),(5997,'140225','140200','浑源县',NULL),(5998,'140226','140200','左云县',NULL),(5999,'140227','140200','大同县',NULL),(6000,'140221','140200','阳高县',NULL),(6001,'140222','140200','天镇县',NULL),(6002,'140223','140200','广灵县',NULL),(6003,'140224','140200','灵丘县',NULL),(6004,'371482','371400','禹城市',NULL),(6005,'371481','371400','乐陵市',NULL),(6006,'450123','450100','隆安县',NULL),(6007,'450122','450100','武鸣县',NULL),(6008,'220300','220000','四平市',NULL),(6009,'511133','511100','马边彝族自治县',NULL),(6010,'220302','220300','铁西区',NULL),(6011,'450127','450100','横县',NULL),(6012,'450126','450100','宾阳县',NULL),(6013,'511132','511100','峨边彝族自治县',NULL),(6014,'450125','450100','上林县',NULL),(6015,'220303','220300','铁东区',NULL),(6016,'450124','450100','马山县',NULL),(6017,'150428','150400','喀喇沁旗',NULL),(6018,'131100','130000','衡水市',NULL),(6019,'150429','150400','宁城县',NULL),(6020,'150426','150400','翁牛特旗',NULL),(6021,'150424','150400','林西县',NULL),(6022,'511129','511100','沐川县',NULL),(6023,'150425','150400','克什克腾旗',NULL),(6024,'150422','150400','巴林左旗',NULL),(6025,'131102','131100','桃城区',NULL),(6026,'150423','150400','巴林右旗',NULL),(6027,'511126','511100','夹江县',NULL),(6028,'150421','150400','阿鲁科尔沁旗',NULL),(6029,'620423','620400','景泰县',NULL),(6030,'620422','620400','会宁县',NULL),(6031,'360622','360600','余江县',NULL),(6032,'370800','370000','济宁市',NULL),(6033,'370802','370800','市中区',NULL),(6034,'140203','140200','矿区',NULL),(6035,'422801','422800','恩施市',NULL),(6036,'422800','420000','恩施土家族苗族自治州',NULL),(6037,'422802','422800','利川市',NULL),(6038,'340881','340800','桐城市',NULL),(6039,'140200','140000','大同市',NULL),(6040,'140202','140200','城区',NULL),(6041,'320583','320500','昆山市',NULL),(6042,'320582','320500','张家港市',NULL),(6043,'320581','320500','常熟市',NULL),(6044,'511112','511100','五通桥区',NULL),(6045,'511111','511100','沙湾区',NULL),(6046,'511113','511100','金口河区',NULL),(6047,'431322','431300','新化县',NULL),(6048,'431321','431300','双峰县',NULL),(6049,'320594','320500','新区',NULL),(6050,'450621','450600','东兴市',NULL),(6051,'511124','511100','井研县',NULL),(6052,'511123','511100','犍为县',NULL),(6053,'320584','320500','吴江市',NULL),(6054,'320585','320500','太仓市',NULL),(6055,'410481','410400','舞钢市',NULL),(6056,'410482','410400','汝州市',NULL),(6057,'430725','430700','桃源县',NULL),(6058,'430724','430700','临澧县',NULL),(6059,'430726','430700','石门县',NULL),(6060,'421223','421200','崇阳县',NULL),(6061,'421224','421200','通山县',NULL),(6062,'431302','431300','娄星区',NULL),(6063,'431300','430000','娄底市',NULL),(6064,'450612','450600','上思县',NULL),(6065,'522422','522400','大方县',NULL),(6066,'430721','430700','安乡县',NULL),(6067,'320595','320500','园区',NULL),(6068,'430723','430700','澧县',NULL),(6069,'430722','430700','汉寿县',NULL),(6070,'522427','522400','威宁彝族回族苗族自治县',NULL),(6071,'522428','522400','赫章县',NULL),(6072,'522425','522400','织金县',NULL),(6073,'522426','522400','纳雍县',NULL),(6074,'522423','522400','黔西县',NULL),(6075,'522424','522400','金沙县',NULL),(6076,'421222','421200','通城县',NULL),(6077,'421221','421200','嘉鱼县',NULL),(6078,'451221','451200','南丹县',NULL),(6079,'511102','511100','市中区',NULL),(6080,'451223','451200','凤山县',NULL),(6081,'451222','451200','天峨县',NULL),(6082,'511100','510000','乐山市',NULL),(6083,'451225','451200','罗城仫佬族自治县',NULL),(6084,'451224','451200','东兰县',NULL),(6085,'451227','451200','巴马瑶族自治县',NULL),(6086,'450600','450000','防城港市',NULL),(6087,'451226','451200','环江毛南族自治县',NULL),(6088,'451229','451200','大化瑶族自治县',NULL),(6089,'450602','450600','港口区',NULL),(6090,'451228','451200','都安瑶族自治县',NULL),(6091,'450603','450600','防城区',NULL),(6092,'451281','451200','宜州市',NULL),(6093,'410425','410400','郏县',NULL),(6094,'410423','410400','鲁山县',NULL),(6095,'410421','410400','宝丰县',NULL),(6096,'410422','410400','叶县',NULL),(6097,'430700','430000','常德市',NULL),(6098,'421202','421200','咸安区',NULL),(6099,'430702','430700','武陵区',NULL),(6100,'430703','430700','鼎城区',NULL),(6101,'421200','420000','咸宁市',NULL),(6102,'211081','211000','灯塔市',NULL),(6103,'410402','410400','新华区',NULL),(6104,'410400','410000','平顶山市',NULL),(6105,'410403','410400','卫东区',NULL),(6106,'410404','410400','石龙区',NULL),(6107,'410411','410400','湛河区',NULL),(6108,'370882','370800','兖州市',NULL),(6109,'370883','370800','邹城市',NULL),(6110,'370881','370800','曲阜市',NULL),(6111,'320506','320500','吴中区',NULL),(6112,'320507','320500','相城区',NULL),(6113,'320504','320500','金阊区',NULL),(6114,'320505','320500','虎丘区',NULL),(6115,'513300','510000','甘孜藏族自治州',NULL),(6116,'320502','320500','沧浪区',NULL),(6117,'220800','220000','白城市',NULL),(6118,'320503','320500','平江区',NULL),(6119,'320500','320000','苏州市',NULL),(6120,'220802','220800','洮北区',NULL),(6121,'420583','420500','枝江市',NULL),(6122,'420581','420500','宜都市',NULL),(6123,'420582','420500','当阳市',NULL),(6124,'130000','0','河北省',NULL),(6125,'350481','350400','永安市',NULL),(6126,'330600','330000','绍兴市',NULL),(6127,'330602','330600','越城区',NULL),(6128,'530502','530500','隆阳区',NULL),(6129,'530500','530000','保山市',NULL),(6130,'421181','421100','麻城市',NULL),(6131,'421182','421100','武穴市',NULL),(6132,'440600','440000','佛山市',NULL),(6133,'440606','440600','顺德区',NULL),(6134,'451200','450000','河池市',NULL),(6135,'440607','440600','三水区',NULL),(6136,'440608','440600','高明区',NULL),(6137,'440604','440600','禅城区',NULL),(6138,'451202','451200','金城江区',NULL),(6139,'440605','440600','南海区',NULL),(6140,'530521','530500','施甸县',NULL),(6141,'530522','530500','腾冲县',NULL),(6142,'530523','530500','龙陵县',NULL),(6143,'530524','530500','昌宁县',NULL),(6144,'610126','610100','高陵县',NULL),(6145,'220822','220800','通榆县',NULL),(6146,'410381','410300','偃师市',NULL),(6147,'210800','210000','营口市',NULL),(6148,'210802','210800','站前区',NULL),(6149,'610122','610100','蓝田县',NULL),(6150,'210803','210800','西市区',NULL),(6151,'220821','220800','镇赉县',NULL),(6152,'610125','610100','户县',NULL),(6153,'210804','210800','鲅鱼圈区',NULL),(6154,'610124','610100','周至县',NULL),(6155,'610115','610100','临潼区',NULL),(6156,'610116','610100','长安区',NULL),(6157,'430781','430700','津市市',NULL),(6158,'210000','0','辽宁省',NULL),(6159,'210811','210800','老边区',NULL),(6160,'610114','610100','阎良区',NULL),(6161,'610113','610100','雁塔区',NULL),(6162,'610112','610100','未央区',NULL),(6163,'610111','610100','灞桥区',NULL),(6164,'610104','610100','莲湖区',NULL),(6165,'152530','152500','正蓝旗',NULL),(6166,'152531','152500','多伦县',NULL),(6167,'211121','211100','大洼县',NULL),(6168,'211122','211100','盘山县',NULL),(6169,'341422','340200','无为县',NULL),(6170,'140300','140000','阳泉市',NULL),(6171,'341421','340100','庐江县',NULL),(6172,'140303','140300','矿区',NULL),(6173,'140302','140300','城区',NULL),(6174,'220382','220300','双辽市',NULL),(6175,'220381','220300','公主岭市',NULL),(6176,'220882','220800','大安市',NULL),(6177,'350400','350000','三明市',NULL),(6178,'220881','220800','洮南市',NULL),(6179,'610102','610100','新城区',NULL),(6180,'610103','610100','碑林区',NULL),(6181,'610100','610000','西安市',NULL),(6182,'350402','350400','梅列区',NULL),(6183,'350403','350400','三元区',NULL),(6184,'211102','211100','双台子区',NULL),(6185,'211103','211100','兴隆台区',NULL),(6186,'211100','210000','盘锦市',NULL),(6187,'620525','620500','张家川回族自治县',NULL),(6188,'620521','620500','清水县',NULL),(6189,'620522','620500','秦安县',NULL),(6190,'620523','620500','甘谷县',NULL),(6191,'620524','620500','武山县',NULL),(6192,'450100','450000','南宁市',NULL),(6193,'450102','450100','兴宁区',NULL),(6194,'450103','450100','青秀区',NULL),(6195,'441702','441700','江城区',NULL),(6196,'450105','450100','江南区',NULL),(6197,'411481','411400','永城市',NULL),(6198,'441700','440000','阳江市',NULL),(6199,'450107','450100','西乡塘区',NULL),(6200,'450108','450100','良庆区',NULL),(6201,'450109','450100','邕宁区',NULL),(6202,'3306083','330600','嵊州市',NULL),(6203,'330682','330600','上虞市',NULL),(6204,'460200','460000','三亚市',NULL),(6205,'620500','620000','天水市',NULL),(6206,'620502','620500','秦州区',NULL),(6207,'620503','620500','麦积区',NULL),(6208,'330681','330600','诸暨市',NULL),(6209,'420500','420000','宜昌市',NULL),(6210,'420504','420500','点军区',NULL),(6211,'420503','420500','伍家岗区',NULL),(6212,'420502','420500','西陵区',NULL),(6213,'420506','420500','夷陵区',NULL),(6214,'420505','420500','猇亭区',NULL),(6215,'441723','441700','阳东县',NULL),(6216,'441721','441700','阳西县',NULL),(6217,'513338','513300','得荣县',NULL),(6218,'513337','513300','稻城县',NULL),(6219,'632500','630000','海南藏族自治州',NULL),(6220,'330624','330600','新昌县',NULL),(6221,'230128','230100','通河县',NULL),(6222,'230129','230100','延寿县',NULL),(6223,'230126','230100','巴彦县',NULL),(6224,'131181','131100','冀州市',NULL),(6225,'230127','230100','木兰县',NULL),(6226,'230124','230100','方正县',NULL),(6227,'230125','230100','宾县',NULL),(6228,'230123','230100','依兰县',NULL),(6229,'131182','131100','深州市',NULL),(6230,'330621','330600','绍兴县',NULL),(6231,'513329','513300','新龙县',NULL),(6232,'513328','513300','甘孜县',NULL),(6233,'513327','513300','炉霍县',NULL),(6234,'341503','341500','裕安区',NULL),(6235,'513326','513300','道孚县',NULL),(6236,'341502','341500','金安区',NULL),(6237,'341500','340000','六安市',NULL),(6238,'420529','420500','五峰土家族自治县',NULL),(6239,'420527','420500','秭归县',NULL),(6240,'420528','420500','长阳土家族自治县',NULL),(6241,'420525','420500','远安县',NULL),(6242,'513331','513300','白玉县',NULL),(6243,'371500','370000','聊城市',NULL),(6244,'420526','420500','兴山县',NULL),(6245,'513332','513300','石渠县',NULL),(6246,'371502','371500','东昌府区',NULL),(6247,'513330','513300','德格县',NULL),(6248,'350430','350400','建宁县',NULL),(6249,'513335','513300','巴塘县',NULL),(6250,'513336','513300','乡城县',NULL),(6251,'513333','513300','色达县',NULL),(6252,'632521','632500','共和县',NULL),(6253,'513334','513300','理塘县',NULL),(6254,'341400','340100','巢湖市',NULL),(6255,'341402','340100','居巢区',NULL),(6256,'350425','350400','大田县',NULL),(6257,'230108','230100','平房区',NULL),(6258,'350424','350400','宁化县',NULL),(6259,'230109','230100','松北区',NULL),(6260,'350427','350400','沙县',NULL),(6261,'210881','210800','盖州市',NULL),(6262,'230106','230100','香坊区',NULL),(6263,'350426','350400','尤溪县',NULL),(6264,'210882','210800','大石桥市',NULL),(6265,'230107','230100','动力区',NULL),(6266,'350429','350400','泰宁县',NULL),(6267,'350428','350400','将乐县',NULL),(6268,'230100','230000','哈尔滨市',NULL),(6269,'420552','420500','开发区',NULL),(6270,'513322','513300','泸定县',NULL),(6271,'513323','513300','丹巴县',NULL),(6272,'513324','513300','九龙县',NULL),(6273,'513325','513300','雅江县',NULL),(6274,'350421','350400','明溪县',NULL),(6275,'230104','230100','道外区',NULL),(6276,'350423','350400','清流县',NULL),(6277,'230102','230100','道里区',NULL),(6278,'230103','230100','南岗区',NULL),(6279,'513321','513300','康定县',NULL),(6280,'420551','420500','葛洲坝区',NULL),(6281,'341525','341500','霍山县',NULL),(6282,'341524','341500','金寨县',NULL),(6283,'341523','341500','舒城县',NULL),(6284,'341522','341500','霍邱县',NULL),(6285,'341521','341500','寿县',NULL),(6286,'371521','371500','阳谷县',NULL),(6287,'371526','371500','高唐县',NULL),(6288,'230111','230100','呼兰区',NULL),(6289,'371523','371500','茌平县',NULL),(6290,'371522','371500','莘县',NULL),(6291,'371525','371500','冠县',NULL),(6292,'371524','371500','东阿县',NULL),(6293,'441625','441600','东源县',NULL),(6294,'441621','441600','紫金县',NULL),(6295,'441622','441600','龙川县',NULL),(6296,'441623','441600','连平县',NULL),(6297,'520321','520300','遵义县',NULL),(6298,'441624','441600','和平县',NULL),(6299,'360781','360700','瑞金市',NULL),(6300,'350322','350300','仙游县',NULL),(6301,'360782','360700','南康市',NULL),(6302,'520330','520300','习水县',NULL),(6303,'520328','520300','湄潭县',NULL),(6304,'520329','520300','余庆县',NULL),(6305,'520326','520300','务川仡佬族苗族自治县',NULL),(6306,'520327','520300','凤冈县',NULL),(6307,'520324','520300','正安县',NULL),(6308,'520325','520300','道真仡佬族苗族自治县',NULL),(6309,'520322','520300','桐梓县',NULL),(6310,'520323','520300','绥阳县',NULL),(6311,'130635','130600','蠡县',NULL),(6312,'130636','130600','顺平县',NULL),(6313,'130633','130600','易县',NULL),(6314,'130634','130600','曲阳县',NULL),(6315,'130637','130600','博野县',NULL),(6316,'130638','130600','雄县',NULL),(6317,'130631','130600','望都县',NULL),(6318,'130632','130600','安新县',NULL),(6319,'130630','130600','涞源县',NULL),(6320,'350302','350300','城厢区',NULL),(6321,'350300','350000','莆田市',NULL),(6322,'350305','350300','秀屿区',NULL),(6323,'140181','140100','古交市',NULL),(6324,'350303','350300','涵江区',NULL),(6325,'350304','350300','荔城区',NULL),(6326,'330183','330100','富阳市',NULL),(6327,'330185','330100','临安市',NULL),(6328,'330182','330100','建德市',NULL),(6329,'130698','130600','高开区',NULL),(6330,'340322','340300','五河县',NULL),(6331,'340323','340300','固镇县',NULL),(6332,'340321','340300','怀远县',NULL),(6333,'510683','510600','绵竹市',NULL),(6334,'510682','510600','什邡市',NULL),(6335,'510681','510600','广汉市',NULL),(6336,'150500','150000','通辽市',NULL),(6337,'150502','150500','科尔沁区',NULL),(6338,'340311','340300','淮上区',NULL),(6339,'441600','440000','河源市',NULL),(6340,'441602','441600','源城区',NULL),(6341,'340304','340300','禹会区',NULL),(6342,'340300','340000','蚌埠市',NULL),(6343,'340302','340300','龙子湖区',NULL),(6344,'340303','340300','蚌山区',NULL),(6345,'130681','130600','涿州市',NULL),(6346,'130683','130600','安国市',NULL),(6347,'130682','130600','定州市',NULL),(6348,'130684','130600','高碑店市',NULL),(6349,'520303','520300','汇川区',NULL),(6350,'520302','520300','红花岗区',NULL),(6351,'520300','520000','遵义市',NULL),(6352,'411422','411400','睢县',NULL),(6353,'411423','411400','宁陵县',NULL),(6354,'411424','411400','柘城县',NULL),(6355,'411425','411400','虞城县',NULL),(6356,'411426','411400','夏邑县',NULL),(6357,'533423','533400','维西傈僳族自治县',NULL),(6358,'330122','330100','桐庐县',NULL),(6359,'330127','330100','淳安县',NULL),(6360,'210381','210300','海城市',NULL),(6361,'610902','610900','汉滨区',NULL),(6362,'421282','421200','温泉城区',NULL),(6363,'421281','421200','赤壁市',NULL),(6364,'610900','610000','安康市',NULL),(6365,'330110','330100','余杭区',NULL),(6366,'321324','321300','泗洪县',NULL),(6367,'411421','411400','民权县',NULL),(6368,'321323','321300','泗阳县',NULL),(6369,'321322','321300','沭阳县',NULL),(6370,'140100','140000','太原市',NULL),(6371,'210351','210300','高新区',NULL),(6372,'140109','140100','万柏林区',NULL),(6373,'140108','140100','尖草坪区',NULL),(6374,'140105','140100','小店区',NULL),(6375,'140107','140100','杏花岭区',NULL),(6376,'140106','140100','迎泽区',NULL),(6377,'330104','330100','江干区',NULL),(6378,'330103','330100','下城区',NULL),(6379,'330106','330100','西湖区',NULL),(6380,'330105','330100','拱墅区',NULL),(6381,'330100','330000','杭州市',NULL),(6382,'330102','330100','上城区',NULL),(6383,'321311','321300','宿豫区',NULL),(6384,'330108','330100','滨江区',NULL),(6385,'330109','330100','萧山区',NULL),(6386,'610929','610900','白河县',NULL),(6387,'610928','610900','旬阳县',NULL),(6388,'610927','610900','镇坪县',NULL),(6389,'610926','610900','平利县',NULL),(6390,'150524','150500','库伦旗',NULL),(6391,'610925','610900','岚皋县',NULL),(6392,'150523','150500','开鲁县',NULL),(6393,'610924','610900','紫阳县',NULL),(6394,'150522','150500','科尔沁左翼后旗',NULL),(6395,'610923','610900','宁陕县',NULL),(6396,'150521','150500','科尔沁左翼中旗',NULL),(6397,'610922','610900','石泉县',NULL),(6398,'610921','610900','汉阴县',NULL),(6399,'150526','150500','扎鲁特旗',NULL),(6400,'150525','150500','奈曼旗',NULL),(6401,'321302','321300','宿城区',NULL),(6402,'321300','320000','宿迁市',NULL),(6403,'320600','320000','南通市',NULL),(6404,'320602','320600','崇川区',NULL),(6405,'140121','140100','清徐县',NULL),(6406,'140122','140100','阳曲县',NULL),(6407,'140123','140100','娄烦县',NULL),(6408,'320612','320600','通州区',NULL),(6409,'320611','320600','港闸区',NULL),(6410,'210321','210300','台安县',NULL),(6411,'210323','210300','岫岩满族自治县',NULL),(6412,'230291','230200','讷河市',NULL),(6413,'140110','140100','晋源区',NULL),(6414,'150581','150500','霍林郭勒市',NULL),(6415,'320621','320600','海安县',NULL),(6416,'320623','320600','如东县',NULL),(6417,'411400','410000','商丘市',NULL),(6418,'411403','411400','睢阳区',NULL),(6419,'411402','411400','梁园区',NULL),(6420,'210300','210000','鞍山市',NULL),(6421,'210302','210300','铁东区',NULL),(6422,'210303','210300','铁西区',NULL),(6423,'210304','210300','立山区',NULL),(6424,'623001','623000','合作市',NULL),(6425,'623000','620000','甘南藏族自治州',NULL),(6426,'210311','210300','千山区',NULL),(6427,'230231','230200','拜泉县',NULL),(6428,'513435','513400','甘洛县',NULL),(6429,'370983','370900','肥城市',NULL),(6430,'230230','230200','克东县',NULL),(6431,'513434','513400','越西县',NULL),(6432,'513433','513400','冕宁县',NULL),(6433,'513432','513400','喜德县',NULL),(6434,'513431','513400','昭觉县',NULL),(6435,'513430','513400','金阳县',NULL),(6436,'411381','411300','邓州市',NULL),(6437,'370982','370900','新泰市',NULL),(6438,'513429','513400','布拖县',NULL),(6439,'513427','513400','宁南县',NULL),(6440,'513428','513400','普格县',NULL),(6441,'421321','421300','随县',NULL),(6442,'513425','513400','会理县',NULL),(6443,'513426','513400','会东县',NULL),(6444,'623026','623000','碌曲县',NULL),(6445,'440902','440900','茂南区',NULL),(6446,'623025','623000','玛曲县',NULL),(6447,'230221','230200','龙江县',NULL),(6448,'440900','440000','茂名市',NULL),(6449,'623027','623000','夏河县',NULL),(6450,'623022','623000','卓尼县',NULL),(6451,'623021','623000','临潭县',NULL),(6452,'230225','230200','甘南县',NULL),(6453,'623024','623000','迭部县',NULL),(6454,'230224','230200','泰来县',NULL),(6455,'623023','623000','舟曲县',NULL),(6456,'230223','230200','依安县',NULL),(6457,'440903','440900','茂港区',NULL),(6458,'230229','230200','克山县',NULL),(6459,'230227','230200','富裕县',NULL),(6460,'513436','513400','美姑县',NULL),(6461,'513437','513400','雷波县',NULL),(6462,'440104','440100','越秀区',NULL),(6463,'440103','440100','荔湾区',NULL),(6464,'440106','440100','天河区',NULL),(6465,'440105','440100','海珠区',NULL),(6466,'410782','410700','辉县市',NULL),(6467,'440100','440000','广州市',NULL),(6468,'320683','320600','通州市',NULL),(6469,'320684','320600','海门市',NULL),(6470,'410781','410700','卫辉市',NULL),(6471,'320693','320600','开发区',NULL),(6472,'421302','421300','曾都区',NULL),(6473,'421300','420000','随州市',NULL),(6474,'440116','440100','萝岗区',NULL),(6475,'440115','440100','南沙区',NULL),(6476,'440114','440100','花都区',NULL),(6477,'440113','440100','番禺区',NULL),(6478,'440112','440100','黄埔区',NULL),(6479,'440111','440100','白云区',NULL),(6480,'510704','510700','游仙区',NULL),(6481,'510703','510700','涪城区',NULL),(6482,'320682','320600','如皋市',NULL),(6483,'320681','320600','启东市',NULL),(6484,'510700','510000','绵阳市',NULL),(6485,'510923','510900','大英县',NULL),(6486,'510922','510900','射洪县',NULL),(6487,'510921','510900','蓬溪县',NULL),(6488,'224026','224000','安图县',NULL),(6489,'450205','450200','柳北区',NULL),(6490,'450202','450200','城中区',NULL),(6491,'450204','450200','柳南区',NULL),(6492,'450203','450200','鱼峰区',NULL),(6493,'450200','450000','柳州市',NULL),(6494,'510900','510000','遂宁市',NULL),(6495,'510903','510900','船山区',NULL),(6496,'510904','510900','安居区',NULL),(6497,'360800','360000','吉安市',NULL),(6498,'360803','360800','青原区',NULL),(6499,'360802','360800','吉州区',NULL),(6500,'450222','450200','柳城县',NULL),(6501,'450221','450200','柳江县',NULL),(6502,'450224','450200','融安县',NULL),(6503,'450223','450200','鹿寨县',NULL),(6504,'450226','450200','三江侗族自治县',NULL),(6505,'450225','450200','融水苗族自治县',NULL),(6506,'632127','632100','化隆回族自治县',NULL),(6507,'632126','632100','互助土族自治县',NULL),(6508,'632128','632100','循化撒拉族自治县',NULL),(6509,'310230','310100','崇明县',NULL),(6510,'230207','230200','碾子山区',NULL),(6511,'230208','230200','梅里斯达斡尔族区',NULL),(6512,'230205','230200','昂昂溪区',NULL),(6513,'230206','230200','富拉尔基区',NULL),(6514,'230203','230200','建华区',NULL),(6515,'230204','230200','铁锋区',NULL),(6516,'230202','230200','龙沙区',NULL),(6517,'440923','440900','电白县',NULL),(6518,'230200','230000','齐齐哈尔市',NULL),(6519,'130702','130700','桥东区',NULL),(6520,'410711','410700','牧野区',NULL),(6521,'130700','130000','张家口市',NULL),(6522,'360828','360800','万安县',NULL),(6523,'130705','130700','宣化区',NULL),(6524,'360827','360800','遂川县',NULL),(6525,'130706','130700','下花园区',NULL),(6526,'130703','130700','桥西区',NULL),(6527,'360829','360800','安福县',NULL),(6528,'211000','210000','辽阳市',NULL),(6529,'370903','370900','岱岳区',NULL),(6530,'370902','370900','泰山区',NULL),(6531,'430408','430400','蒸湘区',NULL),(6532,'430407','430400','石鼓区',NULL),(6533,'370900','370000','泰安市',NULL),(6534,'430406','430400','雁峰区',NULL),(6535,'430405','430400','珠晖区',NULL),(6536,'360823','360800','峡江县',NULL),(6537,'360824','360800','新干县',NULL),(6538,'360825','360800','永丰县',NULL),(6539,'360826','360800','泰和县',NULL),(6540,'430400','430000','衡阳市',NULL),(6541,'620102','620100','城关区',NULL),(6542,'360821','360800','吉安县',NULL),(6543,'620100','620000','兰州市',NULL),(6544,'360822','360800','吉水县',NULL),(6545,'410703','410700','卫滨区',NULL),(6546,'410702','410700','红旗区',NULL),(6547,'410700','410000','新乡市',NULL),(6548,'440183','440100','增城市',NULL),(6549,'211011','211000','太子河区',NULL),(6550,'440184','440100','从化市',NULL),(6551,'420281','420200','大冶市',NULL),(6552,'410704','410700','凤泉区',NULL),(6553,'632123','632100','乐都县',NULL),(6554,'632122','632100','民和回族土族自治县',NULL),(6555,'220700','220000','松原市',NULL),(6556,'371203','371200','钢城区',NULL),(6557,'632121','632100','平安县',NULL),(6558,'371200','370000','莱芜市',NULL),(6559,'211004','211000','宏伟区',NULL),(6560,'211005','211000','弓长岭区',NULL),(6561,'430412','430400','南岳区',NULL),(6562,'371202','371200','莱城区',NULL),(6563,'211002','211000','白塔区',NULL),(6564,'440982','440900','化州市',NULL),(6565,'211003','211000','文圣区',NULL),(6566,'440981','440900','高州市',NULL),(6567,'370000','0','山东省',NULL),(6568,'220702','220700','宁江区',NULL),(6569,'440983','440900','信宜市',NULL),(6570,'211021','211000','辽阳县',NULL),(6571,'370923','370900','东平县',NULL),(6572,'370921','370900','宁阳县',NULL),(6573,'430422','430400','衡南县',NULL),(6574,'430421','430400','衡阳县',NULL),(6575,'510781','510700','江油市',NULL),(6576,'430426','430400','祁东县',NULL),(6577,'430424','430400','衡东县',NULL),(6578,'440188','440100','东山区',NULL),(6579,'430423','430400','衡山县',NULL),(6580,'632100','630000','海东地区',NULL),(6581,'220721','220700','前郭尔罗斯蒙古族自治县',NULL),(6582,'220722','220700','长岭县',NULL),(6583,'220723','220700','乾安县',NULL),(6584,'220724','220700','扶余县',NULL),(6585,'360830','360800','永新县',NULL),(6586,'420222','420200','阳新县',NULL),(6587,'510727','510700','平武县',NULL),(6588,'445381','445300','罗定市',NULL),(6589,'130731','130700','涿鹿县',NULL),(6590,'130730','130700','怀来县',NULL),(6591,'130733','130700','崇礼县',NULL),(6592,'130732','130700','赤城县',NULL),(6593,'510722','510700','三台县',NULL),(6594,'510723','510700','盐亭县',NULL),(6595,'510724','510700','安县',NULL),(6596,'510725','510700','梓潼县',NULL),(6597,'510726','510700','北川羌族自治县',NULL),(6598,'513401','513400','西昌市',NULL),(6599,'513400','510000','凉山彝族自治州',NULL),(6600,'130728','130700','怀安县',NULL),(6601,'130727','130700','阳原县',NULL),(6602,'130726','130700','蔚县',NULL),(6603,'130725','130700','尚义县',NULL),(6604,'130724','130700','沽源县',NULL),(6605,'130723','130700','康保县',NULL),(6606,'130722','130700','张北县',NULL),(6607,'130721','130700','宣化县',NULL),(6608,'620123','620100','榆中县',NULL),(6609,'620121','620100','永登县',NULL),(6610,'620122','620100','皋兰县',NULL),(6611,'130729','130700','万全县',NULL),(6612,'420204','420200','下陆区',NULL),(6613,'420205','420200','铁山区',NULL),(6614,'420200','420000','黄石市',NULL),(6615,'360881','360800','井冈山市',NULL),(6616,'420202','420200','黄石港区',NULL),(6617,'420203','420200','西塞山区',NULL),(6618,'410728','410700','长垣县',NULL),(6619,'410726','410700','延津县',NULL),(6620,'410727','410700','封丘县',NULL),(6621,'410721','410700','新乡县',NULL),(6622,'410724','410700','获嘉县',NULL),(6623,'430482','430400','常宁市',NULL),(6624,'620104','620100','西固区',NULL),(6625,'410725','410700','原阳县',NULL),(6626,'430481','430400','耒阳市',NULL),(6627,'620103','620100','七里河区',NULL),(6628,'620105','620100','安宁区',NULL),(6629,'620111','620100','红古区',NULL),(6630,'510751','510700','高新区',NULL),(6631,'530181','530100','安宁市',NULL),(6632,'513423','513400','盐源县',NULL),(6633,'513424','513400','德昌县',NULL),(6634,'513422','513400','木里藏族自治县',NULL),(6635,'441521','441500','海丰县',NULL),(6636,'441523','441500','陆河县',NULL),(6637,'520222','520200','盘县',NULL),(6638,'530381','530300','宣威市',NULL),(6639,'520221','520200','水城县',NULL),(6640,'340222','340200','繁昌县',NULL),(6641,'340221','340200','芜湖县',NULL),(6642,'340223','340200','南陵县',NULL),(6643,'360681','360600','贵溪市',NULL),(6644,'441500','440000','汕尾市',NULL),(6645,'441502','441500','城区',NULL),(6646,'520200','520000','六盘水市',NULL),(6647,'522230','522200','万山特区',NULL),(6648,'522229','522200','松桃苗族自治县',NULL),(6649,'522227','522200','德江县',NULL),(6650,'522228','522200','沿河土家族自治县',NULL),(6651,'522225','522200','思南县',NULL),(6652,'522226','522200','印江土家族苗族自治县',NULL),(6653,'522222','522200','江口县',NULL),(6654,'522224','522200','石阡县',NULL),(6655,'522223','522200','玉屏侗族自治县',NULL),(6656,'350206','350200','湖里区',NULL),(6657,'350205','350200','海沧区',NULL),(6658,'350203','350200','思明区',NULL),(6659,'350200','350000','厦门市',NULL),(6660,'512022','512000','乐至县',NULL),(6661,'512021','512000','安岳县',NULL),(6662,'140981','140900','原平市',NULL),(6663,'520203','520200','六枝特区',NULL),(6664,'520201','520200','钟山区',NULL),(6665,'430511','430500','北塔区',NULL),(6666,'445321','445300','新兴县',NULL),(6667,'445322','445300','郁南县',NULL),(6668,'445323','445300','云安县',NULL),(6669,'512000','510000','资阳市',NULL),(6670,'512002','512000','雁江区',NULL),(6671,'430500','430000','邵阳市',NULL),(6672,'430502','430500','双清区',NULL),(6673,'430503','430500','大祥区',NULL),(6674,'522200','520000','铜仁地区',NULL),(6675,'522201','522200','铜仁市',NULL),(6676,'210282','210200','普兰店市',NULL),(6677,'210281','210200','瓦房店市',NULL),(6678,'210283','210200','庄河市',NULL),(6679,'150600','150000','鄂尔多斯市',NULL),(6680,'150602','150600','东胜区',NULL),(6681,'370205','370200','四方区',NULL),(6682,'370202','370200','市南区',NULL),(6683,'370203','370200','市北区',NULL),(6684,'370200','370000','青岛市',NULL),(6685,'210297','210200','岭前区',NULL),(6686,'340202','340200','镜湖区',NULL),(6687,'340203','340200','弋江区',NULL),(6688,'445300','440000','云浮市',NULL),(6689,'340200','340000','芜湖市',NULL),(6690,'340207','340200','鸠江区',NULL),(6691,'340208','340200','三山区',NULL),(6692,'445302','445300','云城区',NULL),(6693,'620300','620000','金昌市',NULL),(6694,'530323','530300','师宗县',NULL),(6695,'530324','530300','罗平县',NULL),(6696,'530321','530300','马龙县',NULL),(6697,'530322','530300','陆良县',NULL),(6698,'530328','530300','沾益县',NULL),(6699,'530325','530300','富源县',NULL),(6700,'530326','530300','会泽县',NULL),(6701,'150624','150600','鄂托克旗',NULL),(6702,'150625','150600','杭锦旗',NULL),(6703,'150626','150600','乌审旗',NULL),(6704,'150627','150600','伊金霍洛旗',NULL),(6705,'150621','150600','达拉特旗',NULL),(6706,'150622','150600','准格尔旗',NULL),(6707,'150623','150600','鄂托克前旗',NULL),(6708,'411327','411300','社旗县',NULL),(6709,'411328','411300','唐河县',NULL),(6710,'411329','411300','新野县',NULL),(6711,'411323','411300','西峡县',NULL),(6712,'224024','224000','汪清县',NULL),(6713,'411324','411300','镇平县',NULL),(6714,'411325','411300','内乡县',NULL),(6715,'411326','411300','淅川县',NULL),(6716,'411330','411300','桐柏县',NULL),(6717,'210224','210200','长海县',NULL),(6718,'421381','421300','广水市',NULL),(6719,'610802','610800','榆阳区',NULL),(6720,'610800','610000','榆林市',NULL),(6721,'530300','530000','曲靖市',NULL),(6722,'530302','530300','麒麟区',NULL),(6723,'224004','224000','珲春市',NULL),(6724,'411322','411300','方城县',NULL),(6725,'224005','224000','龙井市',NULL),(6726,'411321','411300','南召县',NULL),(6727,'224006','224000','和龙市',NULL),(6728,'320721','320700','赣榆县',NULL),(6729,'320722','320700','东海县',NULL),(6730,'320723','320700','灌云县',NULL),(6731,'320724','320700','灌南县',NULL),(6732,'630100','630000','西宁市',NULL),(6733,'224003','224000','敦化市',NULL),(6734,'210251','210200','开发区',NULL),(6735,'224002','224000','图们市',NULL),(6736,'411302','411300','宛城区',NULL),(6737,'224001','224000','延吉市',NULL),(6738,'411303','411300','卧龙区',NULL),(6739,'224000','220000','延边朝鲜族自治州',NULL),(6740,'330000','0','浙江省',NULL),(6741,'140902','140900','忻府区',NULL),(6742,'140900','140000','忻州市',NULL),(6743,'320700','320000','连云港市',NULL),(6744,'411300','410000','南阳市',NULL),(6745,'320706','320700','海州区',NULL),(6746,'320703','320700','连云区',NULL),(6747,'320705','320700','新浦区',NULL),(6748,'350213','350200','翔安区',NULL),(6749,'350212','350200','同安区',NULL),(6750,'350211','350200','集美区',NULL),(6751,'140924','140900','繁峙县',NULL),(6752,'140925','140900','宁武县',NULL),(6753,'140922','140900','五台县',NULL),(6754,'140923','140900','代县',NULL),(6755,'140921','140900','定襄县',NULL),(6756,'140929','140900','岢岚县',NULL),(6757,'140928','140900','五寨县',NULL),(6758,'140927','140900','神池县',NULL),(6759,'140926','140900','静乐县',NULL),(6760,'140000','0','山西省',NULL),(6761,'610831','610800','清涧县',NULL),(6762,'140930','140900','河曲县',NULL),(6763,'610832','610800','子洲县',NULL),(6764,'140931','140900','保德县',NULL),(6765,'140932','140900','偏关县',NULL),(6766,'210203','210200','西岗区',NULL),(6767,'210204','210200','沙河口区',NULL),(6768,'210200','210000','大连市',NULL),(6769,'210202','210200','中山区',NULL),(6770,'610829','610800','吴堡县',NULL),(6771,'610827','610800','米脂县',NULL),(6772,'610828','610800','佳县',NULL),(6773,'610821','610800','神木县',NULL),(6774,'610822','610800','府谷县',NULL),(6775,'610825','610800','定边县',NULL),(6776,'610826','610800','绥德县',NULL),(6777,'610823','610800','横山县',NULL),(6778,'610824','610800','靖边县',NULL),(6779,'511400','510000','眉山市',NULL),(6780,'610000','0','陕西省',NULL),(6781,'210212','210200','旅顺口区',NULL),(6782,'210213','210200','金州区',NULL),(6783,'210211','210200','甘井子区',NULL),(6784,'450304','450300','象山区',NULL),(6785,'411282','411200','灵宝市',NULL),(6786,'450305','450300','七星区',NULL),(6787,'451025','451000','靖西县',NULL),(6788,'451024','451000','德保县',NULL),(6789,'451023','451000','平果县',NULL),(6790,'451022','451000','田东县',NULL),(6791,'511300','510000','南充市',NULL),(6792,'450300','450000','桂林市',NULL),(6793,'451029','451000','田林县',NULL),(6794,'451028','451000','乐业县',NULL),(6795,'411281','411200','义马市',NULL),(6796,'450302','450300','秀峰区',NULL),(6797,'451027','451000','凌云县',NULL),(6798,'450303','450300','叠彩区',NULL),(6799,'451026','451000','那坡县',NULL),(6800,'230381','230300','虎林市',NULL),(6801,'230382','230300','密山市',NULL),(6802,'451031','451000','隆林各族自治县',NULL),(6803,'451030','451000','西林县',NULL),(6804,'370181','370100','章丘市',NULL),(6805,'469025','460000','定安县',NULL),(6806,'469026','460000','屯昌县',NULL),(6807,'469027','460000','澄迈县',NULL),(6808,'469028','460000','临高县',NULL),(6809,'450311','450300','雁山区',NULL),(6810,'510802','510800','利州区',NULL),(6811,'510800','510000','广元市',NULL),(6812,'469030','460000','白沙黎族自治县',NULL),(6813,'469031','460000','昌江黎族自治县',NULL),(6814,'451021','451000','田阳县',NULL),(6815,'469034','460000','陵水黎族自治县',NULL),(6816,'469035','460000','保亭黎族苗族自治县',NULL),(6817,'469033','460000','乐东黎族自治县',NULL),(6818,'469038','460000','南沙群岛',NULL),(6819,'469039','460000','中沙群岛的岛礁及其海域',NULL),(6820,'469036','460000','琼中黎族苗族自治县',NULL),(6821,'469037','460000','西沙群岛',NULL),(6822,'420302','420300','茅箭区',NULL),(6823,'420300','420000','十堰市',NULL),(6824,'511321','511300','南部县',NULL),(6825,'511323','511300','蓬安县',NULL),(6826,'420303','420300','张湾区',NULL),(6827,'511322','511300','营山县',NULL),(6828,'220681','220600','临江市',NULL),(6829,'510812','510800','朝天区',NULL),(6830,'510811','510800','元坝区',NULL),(6831,'510821','510800','旺苍县',NULL),(6832,'511304','511300','嘉陵区',NULL),(6833,'511302','511300','顺庆区',NULL),(6834,'511303','511300','高坪区',NULL),(6835,'510824','510800','苍溪县',NULL),(6836,'510823','510800','剑阁县',NULL),(6837,'510822','510800','青川县',NULL),(6838,'440811','440800','麻章区',NULL),(6839,'440804','440800','坡头区',NULL),(6840,'440802','440800','赤坎区',NULL),(6841,'230321','230300','鸡东县',NULL),(6842,'440803','440800','霞山区',NULL),(6843,'440800','440000','湛江市',NULL),(6844,'511325','511300','西充县',NULL),(6845,'511324','511300','仪陇县',NULL),(6846,'450323','450300','灵川县',NULL),(6847,'450322','450300','临桂县',NULL),(6848,'450325','450300','兴安县',NULL),(6849,'450324','450300','全州县',NULL),(6850,'451002','451000','右江区',NULL),(6851,'450321','450300','阳朔县',NULL),(6852,'451000','450000','百色市',NULL),(6853,'630000','0','青海省',NULL),(6854,'440000','0','广东省',NULL),(6855,'411221','411200','渑池县',NULL),(6856,'411222','411200','陕县',NULL),(6857,'450327','450300','灌阳县',NULL),(6858,'450326','450300','永福县',NULL),(6859,'450329','450300','资源县',NULL),(6860,'450328','450300','龙胜各族自治县',NULL),(6861,'442000','440000','中山市',NULL),(6862,'220623','220600','长白朝鲜族自治县',NULL),(6863,'220622','220600','靖宇县',NULL),(6864,'440825','440800','徐闻县',NULL),(6865,'220621','220600','抚松县',NULL),(6866,'440823','440800','遂溪县',NULL),(6867,'230302','230300','鸡冠区',NULL),(6868,'450332','450300','恭城瑶族自治县',NULL),(6869,'230303','230300','恒山区',NULL),(6870,'450331','450300','荔浦县',NULL),(6871,'230300','230000','鸡西市',NULL),(6872,'450330','450300','平乐县',NULL),(6873,'230306','230300','城子河区',NULL),(6874,'230307','230300','麻山区',NULL),(6875,'230304','230300','滴道区',NULL),(6876,'230305','230300','梨树区',NULL),(6877,'220625','220600','江源市',NULL),(6878,'411224','411200','卢氏县',NULL),(6879,'360729','360700','全南县',NULL),(6880,'130804','130800','鹰手营子矿区',NULL),(6881,'360728','360700','定南县',NULL),(6882,'130802','130800','双桥区',NULL),(6883,'130803','130800','双滦区',NULL),(6884,'130800','130000','承德市',NULL),(6885,'511381','511300','阆中市',NULL),(6886,'360721','360700','赣县',NULL),(6887,'620200','620000','嘉峪关市',NULL),(6888,'360722','360700','信丰县',NULL),(6889,'360723','360700','大余县',NULL),(6890,'360724','360700','上犹县',NULL),(6891,'360725','360700','崇义县',NULL),(6892,'360726','360700','安远县',NULL),(6893,'360727','360700','龙南县',NULL),(6894,'420381','420300','丹江口市',NULL),(6895,'420382','420300','城区',NULL),(6896,'370100','370000','济南市',NULL),(6897,'220602','220600','八道江区',NULL),(6898,'370102','370100','历下区',NULL),(6899,'520181','520100','清镇市',NULL),(6900,'632222','632200','祁连县',NULL),(6901,'370104','370100','槐荫区',NULL),(6902,'632221','632200','门源回族自治县',NULL),(6903,'370103','370100','市中区',NULL),(6904,'632224','632200','刚察县',NULL),(6905,'220600','220000','白山市',NULL),(6906,'632223','632200','海晏县',NULL),(6907,'370105','370100','天桥区',NULL),(6908,'542623','542600','米林县',NULL),(6909,'542624','542600','墨脱县',NULL),(6910,'542625','542600','波密县',NULL),(6911,'542626','542600','察隅县',NULL),(6912,'542621','542600','林芝县',NULL),(6913,'542622','542600','工布江达县',NULL),(6914,'130822','130800','兴隆县',NULL),(6915,'130823','130800','平泉县',NULL),(6916,'130821','130800','承德县',NULL),(6917,'130826','130800','丰宁满族自治县',NULL),(6918,'441581','441500','陆丰市',NULL),(6919,'542627','542600','朗县',NULL),(6920,'130827','130800','宽城满族自治县',NULL),(6921,'130824','130800','滦平县',NULL),(6922,'130825','130800','隆化县',NULL),(6923,'360702','360700','章贡区',NULL),(6924,'430525','430500','洞口县',NULL),(6925,'430524','430500','隆回县',NULL),(6926,'430523','430500','邵阳县',NULL),(6927,'130828','130800','围场满族蒙古族自治县',NULL),(6928,'430522','430500','新邵县',NULL),(6929,'370113','370100','长清区',NULL),(6930,'430521','430500','邵东县',NULL),(6931,'370112','370100','历城区',NULL),(6932,'360700','360000','赣州市',NULL),(6933,'430529','430500','城步苗族自治县',NULL),(6934,'430528','430500','新宁县',NULL),(6935,'430527','430500','绥宁县',NULL),(6936,'445224','445200','惠来县',NULL),(6937,'532532','532500','河口瑶族自治县',NULL),(6938,'445222','445200','揭西县',NULL),(6939,'445221','445200','揭东县',NULL),(6940,'370124','370100','平阴县',NULL),(6941,'370126','370100','商河县',NULL),(6942,'361000','360000','抚州市',NULL),(6943,'370125','370100','济阳县',NULL),(6944,'361002','361000','临川区',NULL),(6945,'532527','532500','泸西县',NULL),(6946,'532528','532500','元阳县',NULL),(6947,'532525','532500','石屏县',NULL),(6948,'410611','410600','淇滨区',NULL),(6949,'532526','532500','弥勒县',NULL),(6950,'532523','532500','屏边苗族自治县',NULL),(6951,'532524','532500','建水县',NULL),(6952,'532522','532500','蒙自县',NULL),(6953,'542600','540000','林芝地区',NULL),(6954,'532529','532500','红河县',NULL),(6955,'420325','420300','房县',NULL),(6956,'420321','420300','郧县',NULL),(6957,'420322','420300','郧西县',NULL),(6958,'420323','420300','竹山县',NULL),(6959,'420324','420300','竹溪县',NULL),(6960,'532531','532500','绿春县',NULL),(6961,'532530','532500','金平苗族瑶族傣族自治县',NULL),(6962,'512081','512000','简阳市',NULL),(6963,'520151','520100','金阳开发区',NULL),(6964,'410600','410000','鹤壁市',NULL),(6965,'510626','510600','罗江县',NULL),(6966,'445284','445200','东山区',NULL),(6967,'410603','410600','山城区',NULL),(6968,'410602','410600','鹤山区',NULL),(6969,'510623','510600','中江县',NULL),(6970,'361030','361000','广昌县',NULL),(6971,'445281','445200','普宁市',NULL),(6972,'361027','361000','金溪县',NULL),(6973,'361026','361000','宜黄县',NULL),(6974,'361025','361000','乐安县',NULL),(6975,'361024','361000','崇仁县',NULL),(6976,'361023','361000','南丰县',NULL),(6977,'361022','361000','黎川县',NULL),(6978,'360751','360700','黄金区',NULL),(6979,'361021','361000','南城县',NULL),(6980,'371100','370000','日照市',NULL),(6981,'440881','440800','廉江市',NULL),(6982,'371102','371100','东港区',NULL),(6983,'361029','361000','东乡县',NULL),(6984,'440882','440800','雷州市',NULL),(6985,'371103','371100','岚山区',NULL),(6986,'361028','361000','资溪县',NULL),(6987,'440883','440800','吴川市',NULL),(6988,'469006','460000','万宁市',NULL),(6989,'532501','532500','个旧市',NULL),(6990,'469005','460000','文昌市',NULL),(6991,'532502','532500','开远市',NULL),(6992,'469003','460000','儋州市',NULL),(6993,'532500','530000','红河哈尼族彝族自治州',NULL),(6994,'469002','460000','琼海市',NULL),(6995,'469001','460000','五指山市',NULL),(6996,'430581','430500','武冈市',NULL),(6997,'510600','510000','德阳市',NULL),(6998,'520114','520100','小河区',NULL),(6999,'520113','520100','白云区',NULL),(7000,'410621','410600','浚县',NULL),(7001,'410622','410600','淇县',NULL),(7002,'510603','510600','旌阳区',NULL),(7003,'360730','360700','宁都县',NULL),(7004,'632200','630000','海北藏族自治州',NULL),(7005,'371122','371100','莒县',NULL),(7006,'360735','360700','石城县',NULL),(7007,'360734','360700','寻乌县',NULL),(7008,'469007','460000','东方市',NULL),(7009,'520122','520100','息烽县',NULL),(7010,'360733','360700','会昌县',NULL),(7011,'520123','520100','修文县',NULL),(7012,'360732','360700','兴国县',NULL),(7013,'371121','371100','五莲县',NULL),(7014,'360731','360700','于都县',NULL),(7015,'520121','520100','开阳县',NULL),(7016,'410902','410900','华龙区',NULL),(7017,'410900','410000','濮阳市',NULL),(7018,'370321','370300','桓台县',NULL),(7019,'621022','621000','环县',NULL),(7020,'370322','370300','高青县',NULL),(7021,'621021','621000','庆城县',NULL),(7022,'621026','621000','宁县',NULL),(7023,'621025','621000','正宁县',NULL),(7024,'621024','621000','合水县',NULL),(7025,'410100','410000','郑州市',NULL),(7026,'621023','621000','华池县',NULL),(7027,'370323','370300','沂源县',NULL),(7028,'621027','621000','镇原县',NULL),(7029,'320000','0','江苏省',NULL),(7030,'130430','130400','邱县',NULL),(7031,'433101','433100','吉首市',NULL),(7032,'433100','430000','湘西土家族苗族自治州',NULL),(7033,'130434','130400','魏县',NULL),(7034,'130433','130400','馆陶县',NULL),(7035,'130432','130400','广平县',NULL),(7036,'130431','130400','鸡泽县',NULL),(7037,'130435','130400','曲周县',NULL),(7038,'321112','321100','丹徒区',NULL),(7039,'621002','621000','西峰区',NULL),(7040,'410122','410100','中牟县',NULL),(7041,'621000','620000','庆阳市',NULL),(7042,'370300','370000','淄博市',NULL),(7043,'370303','370300','张店区',NULL),(7044,'370304','370300','博山区',NULL),(7045,'370302','370300','淄川区',NULL),(7046,'370305','370300','临淄区',NULL),(7047,'370306','370300','周村区',NULL),(7048,'150721','150700','阿荣旗',NULL),(7049,'150722','150700','莫力达瓦达斡尔族自治旗',NULL),(7050,'150723','150700','鄂伦春自治旗',NULL),(7051,'150724','150700','鄂温克族自治旗',NULL),(7052,'150725','150700','陈巴尔虎旗',NULL),(7053,'150726','150700','新巴尔虎左旗',NULL),(7054,'140881','140800','永济市',NULL),(7055,'410108','410100','惠济区',NULL),(7056,'140882','140800','河津市',NULL),(7057,'410106','410100','上街区',NULL),(7058,'410104','410100','管城回族区',NULL),(7059,'410105','410100','金水区',NULL),(7060,'321111','321100','润州区',NULL),(7061,'410102','410100','中原区',NULL),(7062,'410103','410100','二七区',NULL),(7063,'321102','321100','京口区',NULL),(7064,'330824','330800','开化县',NULL),(7065,'320800','320000','淮安市',NULL),(7066,'330825','330800','龙游县',NULL),(7067,'330822','330800','常山县',NULL),(7068,'320804','320800','淮阴区',NULL),(7069,'320803','320800','楚州区',NULL),(7070,'150727','150700','新巴尔虎右旗',NULL),(7071,'320802','320800','清河区',NULL),(7072,'321183','321100','句容市',NULL),(7073,'530821','530800','宁洱哈尼族彝族自治县',NULL),(7074,'321181','321100','丹阳市',NULL),(7075,'530823','530800','景东彝族自治县',NULL),(7076,'321182','321100','扬中市',NULL),(7077,'530822','530800','墨江哈尼族自治县',NULL),(7078,'530825','530800','镇沅彝族哈尼族拉祜族自治县',NULL),(7079,'530824','530800','景谷傣族彝族自治县',NULL),(7080,'530827','530800','孟连傣族拉祜族佤族自治县',NULL),(7081,'530826','530800','江城哈尼族彝族自治县',NULL),(7082,'530829','530800','西盟佤族自治县',NULL),(7083,'530828','530800','澜沧拉祜族自治县',NULL),(7084,'420981','420900','应城市',NULL),(7085,'420982','420900','安陆市',NULL),(7086,'420984','420900','汉川市',NULL),(7087,'530000','0','云南省',NULL),(7088,'130428','130400','肥乡县',NULL),(7089,'130429','130400','永年县',NULL),(7090,'130424','130400','成安县',NULL),(7091,'130425','130400','大名县',NULL),(7092,'130426','130400','涉县',NULL),(7093,'130427','130400','磁县',NULL),(7094,'150702','150700','海拉尔区',NULL),(7095,'130421','130400','邯郸县',NULL),(7096,'130423','130400','临漳县',NULL),(7097,'150700','150000','呼伦贝尔市',NULL),(7098,'330803','330800','衢江区',NULL),(7099,'330802','330800','柯城区',NULL),(7100,'330800','330000','衢州市',NULL),(7101,'530800','530000','普洱市',NULL),(7102,'530802','530800','思茅区',NULL),(7103,'140830','140800','芮城县',NULL),(7104,'441400','440000','梅州市',NULL),(7105,'441402','441400','梅江区',NULL),(7106,'130402','130400','邯山区',NULL),(7107,'130403','130400','丛台区',NULL),(7108,'130404','130400','复兴区',NULL),(7109,'130406','130400','峰峰矿区',NULL),(7110,'130400','130000','邯郸市',NULL),(7111,'110000','0','北京',NULL),(7112,'350111','350100','晋安区',NULL),(7113,'511500','510000','宜宾市',NULL),(7114,'511502','511500','翠屏区',NULL),(7115,'431023','431000','永兴县',NULL),(7116,'431022','431000','宜章县',NULL),(7117,'431021','431000','桂阳县',NULL),(7118,'431024','431000','嘉禾县',NULL),(7119,'431025','431000','临武县',NULL),(7120,'431026','431000','汝城县',NULL),(7121,'431027','431000','桂东县',NULL),(7122,'350128','350100','平潭县',NULL),(7123,'431028','431000','安仁县',NULL),(7124,'350124','350100','闽清县',NULL),(7125,'350123','350100','罗源县',NULL),(7126,'140829','140800','平陆县',NULL),(7127,'511521','511500','宜宾县',NULL),(7128,'140828','140800','夏县',NULL),(7129,'350125','350100','永泰县',NULL),(7130,'140827','140800','垣曲县',NULL),(7131,'350122','350100','连江县',NULL),(7132,'350121','350100','闽侯县',NULL),(7133,'140821','140800','临猗县',NULL),(7134,'610700','610000','汉中市',NULL),(7135,'140822','140800','万荣县',NULL),(7136,'140825','140800','新绛县',NULL),(7137,'140826','140800','绛县',NULL),(7138,'140823','140800','闻喜县',NULL),(7139,'610702','610700','汉台区',NULL),(7140,'140824','140800','稷山县',NULL),(7141,'350105','350100','马尾区',NULL),(7142,'440300','440000','深圳市',NULL),(7143,'440303','440300','罗湖区',NULL),(7144,'440304','440300','福田区',NULL),(7145,'440307','440300','龙岗区',NULL),(7146,'610730','610700','佛坪县',NULL),(7147,'440308','440300','盐田区',NULL),(7148,'350100','350000','福州市',NULL),(7149,'440305','440300','南山区',NULL),(7150,'440306','440300','宝安区',NULL),(7151,'350102','350100','鼓楼区',NULL),(7152,'350104','350100','仓山区',NULL),(7153,'350103','350100','台江区',NULL),(7154,'610726','610700','宁强县',NULL),(7155,'610727','610700','略阳县',NULL),(7156,'330382','330300','乐清市',NULL),(7157,'610724','610700','西乡县',NULL),(7158,'330381','330300','瑞安市',NULL),(7159,'140802','140800','盐湖区',NULL),(7160,'610725','610700','勉县',NULL),(7161,'610722','610700','城固县',NULL),(7162,'140800','140000','运城市',NULL),(7163,'610723','610700','洋县',NULL),(7164,'610721','610700','南郑县',NULL),(7165,'610728','610700','镇巴县',NULL),(7166,'610729','610700','留坝县',NULL),(7167,'320811','320800','清浦区',NULL),(7168,'340523','340500','含山县',NULL),(7169,'340521','340500','当涂县',NULL),(7170,'321100','320000','镇江市',NULL),(7171,'340524','340500','和县',NULL),(7172,'330881','330800','江山市',NULL),(7173,'320829','320800','洪泽县',NULL),(7174,'320826','320800','涟水县',NULL),(7175,'150784','150700','额尔古纳市',NULL),(7176,'150783','150700','扎兰屯市',NULL),(7177,'150782','150700','牙克石市',NULL),(7178,'150781','150700','满洲里市',NULL),(7179,'150785','150700','根河市',NULL),(7180,'130481','130400','武安市',NULL),(7181,'320830','320800','盱眙县',NULL),(7182,'320831','320800','金湖县',NULL),(7183,'431000','430000','郴州市',NULL),(7184,'411202','411200','湖滨区',NULL),(7185,'340500','340000','马鞍山市',NULL),(7186,'340504','340500','雨山区',NULL),(7187,'340503','340500','花山区',NULL),(7188,'340502','340500','金家庄区',NULL),(7189,'411200','410000','三门峡市',NULL),(7190,'431003','431000','苏仙区',NULL),(7191,'431002','431000','北湖区',NULL),(7192,'500115','500100','长寿区',NULL),(7193,'411100','410000','漯河市',NULL),(7194,'411102','411100','源汇区',NULL),(7195,'500122','500100','綦江县',NULL),(7196,'500123','500100','潼南县',NULL),(7197,'500124','500100','铜梁县',NULL),(7198,'500125','500100','大足县',NULL),(7199,'632802','632800','德令哈市',NULL),(7200,'632801','632800','格尔木市',NULL),(7201,'632800','630000','海西蒙古族藏族自治州',NULL),(7202,'500129','500100','城口县',NULL),(7203,'500128','500100','梁平县',NULL),(7204,'500127','500100','璧山县',NULL),(7205,'500126','500100','荣昌县',NULL),(7206,'310000','0','上海',NULL),(7207,'411104','411100','召陵区',NULL),(7208,'411103','411100','郾城区',NULL),(7209,'330329','330300','泰顺县',NULL),(7210,'330327','330300','苍南县',NULL),(7211,'330328','330300','文成县',NULL),(7212,'500135','500100','云阳县',NULL),(7213,'330326','330300','平阳县',NULL),(7214,'500136','500100','奉节县',NULL),(7215,'220500','220500','集安市',NULL),(7216,'500133','500100','忠县',NULL),(7217,'330324','330300','永嘉县',NULL),(7218,'500134','500100','开县',NULL),(7219,'350982','350900','福鼎市',NULL),(7220,'500131','500100','垫江县',NULL),(7221,'350981','350900','福安市',NULL),(7222,'330322','330300','洞头县',NULL),(7223,'500132','500100','武隆县',NULL),(7224,'230421','230400','萝北县',NULL),(7225,'230422','230400','绥滨县',NULL),(7226,'500130','500100','丰都县',NULL),(7227,'500138','500100','巫溪县',NULL),(7228,'500137','500100','巫山县',NULL),(7229,'371082','371000','荣成市',NULL),(7230,'371081','371000','文登市',NULL),(7231,'371083','371000','乳山市',NULL),(7232,'411121','411100','舞阳县',NULL),(7233,'411122','411100','临颍县',NULL),(7234,'500140','500100','石柱土家族自治县',NULL),(7235,'500141','500100','秀山土家族苗族自治县',NULL),(7236,'500142','500100','酉阳土家族苗族自治县',NULL),(7237,'500143','500100','彭水苗族土家族自治县',NULL),(7238,'632822','632800','都兰县',NULL),(7239,'350181','350100','福清市',NULL),(7240,'632821','632800','乌兰县',NULL),(7241,'350182','350100','长乐市',NULL),(7242,'450481','450400','岑溪市',NULL),(7243,'632823','632800','天峻县',NULL),(7244,'330300','330000','温州市',NULL),(7245,'330303','330300','龙湾区',NULL),(7246,'330304','330300','瓯海区',NULL),(7247,'330302','330300','鹿城区',NULL),(7248,'620821','620800','泾川县',NULL),(7249,'620822','620800','灵台县',NULL),(7250,'610629','610600','洛川县',NULL),(7251,'620823','620800','崇信县',NULL),(7252,'620824','620800','华亭县',NULL),(7253,'620825','620800','庄浪县',NULL),(7254,'231081','231000','绥芬河市',NULL),(7255,'610626','610600','吴起县',NULL),(7256,'620826','620800','静宁县',NULL),(7257,'610625','610600','志丹县',NULL),(7258,'231083','231000','海林市',NULL),(7259,'610628','610600','富县',NULL),(7260,'610627','610600','甘泉县',NULL),(7261,'231085','231000','穆棱市',NULL),(7262,'610622','610600','延川县',NULL),(7263,'231084','231000','宁安市',NULL),(7264,'610621','610600','延长县',NULL),(7265,'610624','610600','安塞县',NULL),(7266,'610623','610600','子长县',NULL),(7267,'450400','450000','梧州市',NULL),(7268,'610630','610600','宜川县',NULL),(7269,'610631','610600','黄龙县',NULL),(7270,'440320','440300','光明新区',NULL),(7271,'440322','440300','大鹏新区',NULL),(7272,'440321','440300','坪山新区',NULL),(7273,'450403','450400','万秀区',NULL),(7274,'440323','440300','龙华新区',NULL),(7275,'450404','450400','蝶山区',NULL),(7276,'450405','450400','长洲区',NULL),(7277,'511425','511400','青神县',NULL),(7278,'511423','511400','洪雅县',NULL),(7279,'511424','511400','丹棱县',NULL),(7280,'610632','610600','黄陵县',NULL),(7281,'210521','210500','本溪满族自治县',NULL),(7282,'210522','210500','桓仁满族自治县',NULL),(7283,'500184','500100','南川区',NULL),(7284,'511422','511400','彭山县',NULL),(7285,'511421','511400','仁寿县',NULL),(7286,'450421','450400','苍梧县',NULL),(7287,'450422','450400','藤县',NULL),(7288,'450423','450400','蒙山县',NULL),(7289,'500181','500100','江津区',NULL),(7290,'500183','500100','永川区',NULL),(7291,'500182','500100','合川区',NULL),(7292,'430281','430200','醴陵市',NULL),(7293,'511402','511400','东坡区',NULL),(7294,'360000','0','江西省',NULL),(7295,'210505','210500','南芬区',NULL),(7296,'210504','210500','明山区',NULL),(7297,'210503','210500','溪湖区',NULL),(7298,'210502','210500','平山区',NULL),(7299,'210500','210000','本溪市',NULL),(7300,'430203','430200','芦淞区',NULL),(7301,'430204','430200','石峰区',NULL),(7302,'430202','430200','荷塘区',NULL),(7303,'430200','430000','株洲市',NULL),(7304,'152923','152900','额济纳旗',NULL),(7305,'321092','321000','经济开发区',NULL),(7306,'130500','130000','邢台市',NULL),(7307,'152921','152900','阿拉善左旗',NULL),(7308,'152922','152900','阿拉善右旗',NULL),(7309,'130503','130500','桥西区',NULL),(7310,'130502','130500','桥东区',NULL),(7311,'370281','370200','胶州市',NULL),(7312,'370282','370200','即墨市',NULL),(7313,'441422','441400','大埔县',NULL),(7314,'371002','371000','环翠区',NULL),(7315,'370283','370200','平度市',NULL),(7316,'441421','441400','梅县',NULL),(7317,'370284','370200','胶南市',NULL),(7318,'370285','370200','莱西市',NULL),(7319,'441426','441400','平远县',NULL),(7320,'430211','430200','天元区',NULL),(7321,'441424','441400','五华县',NULL),(7322,'371000','370000','威海市',NULL),(7323,'441423','441400','丰顺县',NULL),(7324,'441427','441400','蕉岭县',NULL),(7325,'420000','0','湖北省',NULL),(7326,'430223','430200','攸县',NULL),(7327,'430224','430200','茶陵县',NULL),(7328,'430221','430200','株洲县',NULL),(7329,'370251','370200','开发区',NULL),(7330,'430225','430200','炎陵县',NULL),(7331,'152900','150000','阿拉善盟',NULL),(7332,'620802','620800','崆峒区',NULL),(7333,'620800','620000','平凉市',NULL),(7334,'420923','420900','云梦县',NULL),(7335,'420922','420900','大悟县',NULL),(7336,'420921','420900','孝昌县',NULL),(7337,'321081','321000','仪征市',NULL),(7338,'510503','510500','纳溪区',NULL),(7339,'510504','510500','龙马潭区',NULL),(7340,'321088','321000','江都市',NULL),(7341,'510500','510000','泸州市',NULL),(7342,'321084','321000','高邮市',NULL),(7343,'510502','510500','江阳区',NULL),(7344,'410004','410300','高新区',NULL),(7345,'542500','540000','阿里地区',NULL),(7346,'231000','230000','牡丹江市',NULL),(7347,'231002','231000','东安区',NULL),(7348,'231003','231000','阳明区',NULL),(7349,'231004','231000','爱民区',NULL),(7350,'231005','231000','西安区',NULL),(7351,'420900','420000','孝感市',NULL),(7352,'420902','420900','孝南区',NULL),(7353,'510522','510500','合江县',NULL),(7354,'510521','510500','泸县',NULL),(7355,'510524','510500','叙永县',NULL),(7356,'510525','510500','古蔺县',NULL),(7357,'500103','500100','渝中区',NULL),(7358,'500102','500100','涪陵区',NULL),(7359,'370214','370200','城阳区',NULL),(7360,'500101','500100','万州区',NULL),(7361,'370213','370200','李沧区',NULL),(7362,'500100','500000','重庆市',NULL),(7363,'370212','370200','崂山区',NULL),(7364,'370211','370200','黄岛区',NULL),(7365,'441481','441400','兴宁市',NULL),(7366,'542521','542500','普兰县',NULL),(7367,'542522','542500','札达县',NULL),(7368,'542523','542500','噶尔县',NULL),(7369,'542524','542500','日土县',NULL),(7370,'542525','542500','革吉县',NULL),(7371,'542526','542500','改则县',NULL),(7372,'542527','542500','措勤县',NULL),(7373,'230400','230000','鹤岗市',NULL),(7374,'230402','230400','向阳区',NULL),(7375,'500110','500100','万盛区',NULL),(7376,'500112','500100','渝北区',NULL),(7377,'500111','500100','双桥区',NULL),(7378,'231024','231000','东宁县',NULL),(7379,'500114','500100','黔江区',NULL),(7380,'231025','231000','林口县',NULL),(7381,'500113','500100','巴南区',NULL),(7382,'230407','230400','兴山区',NULL),(7383,'230404','230400','南山区',NULL),(7384,'230403','230400','工农区',NULL),(7385,'230406','230400','东山区',NULL),(7386,'230405','230400','兴安区',NULL),(7387,'410923','410900','南乐县',NULL),(7388,'410922','410900','清丰县',NULL),(7389,'410927','410900','台前县',NULL),(7390,'500104','500100','大渡口区',NULL),(7391,'410926','410900','范县',NULL),(7392,'500105','500100','江北区',NULL),(7393,'500106','500100','沙坪坝区',NULL),(7394,'500107','500100','九龙坡区',NULL),(7395,'500108','500100','南岸区',NULL),(7396,'500109','500100','北碚区',NULL),(7397,'410928','410900','濮阳县',NULL),(7398,'340421','340400','凤台县',NULL),(7399,'410000','0','河南省',NULL),(7400,'621125','621100','漳县',NULL),(7401,'320100','320000','南京市',NULL),(7402,'621124','621100','临洮县',NULL),(7403,'320103','320100','白下区',NULL),(7404,'530100','530000','昆明市',NULL),(7405,'621123','621100','渭源县',NULL),(7406,'320102','320100','玄武区',NULL),(7407,'621122','621100','陇西县',NULL),(7408,'320105','320100','建邺区',NULL),(7409,'621121','621100','通渭县',NULL),(7410,'320104','320100','秦淮区',NULL),(7411,'320107','320100','下关区',NULL),(7412,'320106','320100','鼓楼区',NULL),(7413,'520424','520400','关岭布依族苗族自治县',NULL),(7414,'520423','520400','镇宁布依族苗族自治县',NULL),(7415,'520422','520400','普定县',NULL),(7416,'520421','520400','平坝县',NULL),(7417,'530103','530100','盘龙区',NULL),(7418,'621126','621100','岷县',NULL),(7419,'520425','520400','紫云苗族布依族自治县',NULL),(7420,'530102','530100','五华区',NULL),(7421,'320925','320900','建湖县',NULL),(7422,'320924','320900','射阳县',NULL),(7423,'320923','320900','阜宁县',NULL),(7424,'320922','320900','滨海县',NULL),(7425,'530111','530100','官渡区',NULL),(7426,'141081','141000','侯马市',NULL),(7427,'320921','320900','响水县',NULL),(7428,'141082','141000','霍州市',NULL),(7429,'150981','150900','丰镇市',NULL),(7430,'530900','530000','临沧市',NULL),(7431,'530902','530900','临翔区',NULL),(7432,'320125','320100','高淳县',NULL),(7433,'320124','320100','溧水县',NULL),(7434,'140781','140700','介休市',NULL),(7435,'520402','520400','西秀区',NULL),(7436,'520400','520000','安顺市',NULL),(7437,'130582','130500','沙河市',NULL),(7438,'130581','130500','南宫市',NULL),(7439,'320903','320900','盐都区',NULL),(7440,'320902','320900','亭湖区',NULL),(7441,'320900','320000','盐城市',NULL),(7442,'320116','320100','六合区',NULL),(7443,'510322','510300','富顺县',NULL),(7444,'320115','320100','江宁区',NULL),(7445,'510321','510300','荣县',NULL),(7446,'320114','320100','雨花台区',NULL),(7447,'320113','320100','栖霞区',NULL),(7448,'320111','320100','浦口区',NULL),(7449,'150924','150900','兴和县',NULL),(7450,'150923','150900','商都县',NULL),(7451,'530927','530900','沧源佤族自治县',NULL),(7452,'141029','141000','乡宁县',NULL),(7453,'150922','150900','化德县',NULL),(7454,'141028','141000','吉县',NULL),(7455,'150921','150900','卓资县',NULL),(7456,'530924','530900','镇康县',NULL),(7457,'530923','530900','永德县',NULL),(7458,'530926','530900','耿马傣族佤族自治县',NULL),(7459,'530925','530900','双江拉祜族佤族布朗族傣族自治县',NULL),(7460,'321282','321200','靖江市',NULL),(7461,'141023','141000','襄汾县',NULL),(7462,'321283','321200','泰兴市',NULL),(7463,'141022','141000','翼城县',NULL),(7464,'141021','141000','曲沃县',NULL),(7465,'530922','530900','云县',NULL),(7466,'321281','321200','兴化市',NULL),(7467,'530921','530900','凤庆县',NULL),(7468,'141027','141000','浮山县',NULL),(7469,'141026','141000','安泽县',NULL),(7470,'321284','321200','姜堰市',NULL),(7471,'141025','141000','古县',NULL),(7472,'141024','141000','洪洞县',NULL),(7473,'110114','110100','昌平区',NULL),(7474,'110115','110100','大兴区',NULL),(7475,'110116','110100','怀柔区',NULL),(7476,'110117','110100','平谷区',NULL),(7477,'141030','141000','大宁县',NULL),(7478,'110111','110100','房山区',NULL),(7479,'110112','110100','通州区',NULL),(7480,'110113','110100','顺义区',NULL),(7481,'150929','150900','四子王旗',NULL),(7482,'150927','150900','察哈尔右翼中旗',NULL),(7483,'150928','150900','察哈尔右翼后旗',NULL),(7484,'150925','150900','凉城县',NULL),(7485,'150926','150900','察哈尔右翼前旗',NULL),(7486,'140725','140700','寿阳县',NULL),(7487,'140724','140700','昔阳县',NULL),(7488,'140727','140700','祁县',NULL),(7489,'140726','140700','太谷县',NULL),(7490,'140721','140700','榆社县',NULL),(7491,'150800','150000','巴彦淖尔市',NULL),(7492,'140723','140700','和顺县',NULL),(7493,'130521','130500','邢台县',NULL),(7494,'140722','140700','左权县',NULL),(7495,'130522','130500','临城县',NULL),(7496,'150802','150800','临河区',NULL),(7497,'141032','141000','永和县',NULL),(7498,'130523','130500','内丘县',NULL),(7499,'141031','141000','隰县',NULL),(7500,'130524','130500','柏乡县',NULL),(7501,'141034','141000','汾西县',NULL),(7502,'130525','130500','隆尧县',NULL),(7503,'141033','141000','蒲县',NULL),(7504,'130526','130500','任县',NULL),(7505,'130527','130500','南和县',NULL),(7506,'130528','130500','宁晋县',NULL),(7507,'130529','130500','巨鹿县',NULL),(7508,'110128','110100','密云县',NULL),(7509,'330903','330900','普陀区',NULL),(7510,'330902','330900','定海区',NULL),(7511,'330900','330000','舟山市',NULL),(7512,'140728','140700','平遥县',NULL),(7513,'140729','140700','灵石县',NULL),(7514,'110129','110100','延庆县',NULL),(7515,'130532','130500','平乡县',NULL),(7516,'130533','130500','威县',NULL),(7517,'130530','130500','新河县',NULL),(7518,'130531','130500','广宗县',NULL),(7519,'530113','530100','东川区',NULL),(7520,'530112','530100','西山区',NULL),(7521,'141002','141000','尧都区',NULL),(7522,'141000','140000','临汾市',NULL),(7523,'130534','130500','清河县',NULL),(7524,'130535','130500','临西县',NULL),(7525,'530121','530100','呈贡县',NULL),(7526,'530122','530100','晋宁县',NULL),(7527,'370406','370400','山亭区',NULL),(7528,'370405','370400','台儿庄区',NULL),(7529,'370404','370400','峄城区',NULL),(7530,'370403','370400','薛城区',NULL),(7531,'370402','370400','市中区',NULL),(7532,'370400','370000','枣庄市',NULL),(7533,'150823','150800','乌拉特前旗',NULL),(7534,'420881','420800','钟祥市',NULL),(7535,'150822','150800','磴口县',NULL),(7536,'150825','150800','乌拉特后旗',NULL),(7537,'150824','150800','乌拉特中旗',NULL),(7538,'150821','150800','五原县',NULL),(7539,'530126','530100','石林彝族自治县',NULL),(7540,'530125','530100','宜良县',NULL),(7541,'530124','530100','富民县',NULL),(7542,'530129','530100','寻甸回族彝族自治县',NULL),(7543,'530128','530100','禄劝彝族苗族自治县',NULL),(7544,'530127','530100','嵩明县',NULL),(7545,'330922','330900','嵊泗县',NULL),(7546,'330921','330900','岱山县',NULL),(7547,'150826','150800','杭锦后旗',NULL),(7548,'350922','350900','古田县',NULL),(7549,'350921','350900','霞浦县',NULL),(7550,'210421','210400','抚顺县',NULL),(7551,'210422','210400','新宾满族自治县',NULL),(7552,'350926','350900','柘荣县',NULL),(7553,'210423','210400','清原满族自治县',NULL),(7554,'350925','350900','周宁县',NULL),(7555,'350924','350900','寿宁县',NULL),(7556,'350923','350900','屏南县',NULL),(7557,'341024','341000','祁门县',NULL),(7558,'341023','341000','黟县',NULL),(7559,'341022','341000','休宁县',NULL),(7560,'511600','510000','广安市',NULL),(7561,'511602','511600','广安区',NULL),(7562,'610602','610600','宝塔区',NULL),(7563,'610600','610000','延安市',NULL),(7564,'350902','350900','蕉城区',NULL),(7565,'350900','350000','宁德市',NULL),(7566,'511622','511600','武胜县',NULL),(7567,'511621','511600','岳池县',NULL),(7568,'511623','511600','邻水县',NULL),(7569,'350000','0','福建省',NULL),(7570,'320981','320900','东台市',NULL),(7571,'320982','320900','大丰市',NULL),(7572,'330281','330200','余姚市',NULL),(7573,'140700','140000','晋中市',NULL),(7574,'330283','330200','奉化市',NULL),(7575,'140702','140700','榆次区',NULL),(7576,'330282','330200','慈溪市',NULL),(7577,'330225','330200','象山县',NULL),(7578,'330226','330200','宁海县',NULL),(7579,'330212','330200','鄞州区',NULL),(7580,'330211','330200','镇海区',NULL),(7581,'621100','620000','定西市',NULL),(7582,'621102','621100','安定区',NULL),(7583,'340406','340400','潘集区',NULL),(7584,'340405','340400','八公山区',NULL),(7585,'340404','340400','谢家集区',NULL),(7586,'340403','340400','田家庵区',NULL),(7587,'340402','340400','大通区',NULL),(7588,'341004','341000','徽州区',NULL),(7589,'340400','340000','淮南市',NULL),(7590,'341002','341000','屯溪区',NULL),(7591,'341003','341000','黄山区',NULL),(7592,'341000','340000','黄山市',NULL),(7593,'341021','341000','歙县',NULL),(7594,'321203','321200','高港区',NULL),(7595,'321202','321200','海陵区',NULL),(7596,'321200','320000','泰州市',NULL),(7597,'360926','360900','铜鼓县',NULL),(7598,'310110','310100','杨浦区',NULL),(7599,'310109','310100','虹口区',NULL),(7600,'360921','360900','奉新县',NULL),(7601,'310103','310100','卢湾区',NULL),(7602,'310104','310100','徐汇区',NULL),(7603,'310101','310100','黄浦区',NULL),(7604,'360925','360900','靖安县',NULL),(7605,'310107','310100','普陀区',NULL),(7606,'411000','410000','许昌市',NULL),(7607,'360924','360900','宜丰县',NULL),(7608,'310108','310100','闸北区',NULL),(7609,'360923','360900','上高县',NULL),(7610,'310105','310100','长宁区',NULL),(7611,'411002','411000','魏都区',NULL),(7612,'360922','360900','万载县',NULL),(7613,'310106','310100','静安区',NULL),(7614,'411003','411000','许昌县',NULL),(7615,'411005','411000','襄城县',NULL),(7616,'411004','411000','鄢陵县',NULL),(7617,'440282','440200','南雄市',NULL),(7618,'440281','440200','乐昌市',NULL),(7619,'310100','310000','上海市',NULL),(7620,'610582','610500','华阴市',NULL),(7621,'610581','610500','韩城市',NULL),(7622,'220403','220400','西安区',NULL),(7623,'220402','220400','龙山区',NULL),(7624,'350881','350800','漳平市',NULL),(7625,'220400','220000','辽源市',NULL),(7626,'542429','542400','巴青县',NULL),(7627,'542428','542400','班戈县',NULL),(7628,'542427','542400','索县',NULL),(7629,'542426','542400','申扎县',NULL),(7630,'542425','542400','安多县',NULL),(7631,'542424','542400','聂荣县',NULL),(7632,'542423','542400','比如县',NULL),(7633,'542422','542400','嘉黎县',NULL),(7634,'542421','542400','那曲县',NULL),(7635,'542430','542400','尼玛县',NULL),(7636,'360902','360900','袁州区',NULL),(7637,'360900','360000','宜春市',NULL),(7638,'310120','310100','奉贤区',NULL),(7639,'330204','330200','江东区',NULL),(7640,'330205','330200','江北区',NULL),(7641,'330203','330200','海曙区',NULL),(7642,'330200','330000','宁波市',NULL),(7643,'310116','310100','金山区',NULL),(7644,'310117','310100','松江区',NULL),(7645,'310118','310100','青浦区',NULL),(7646,'310119','310100','南汇区',NULL),(7647,'310112','310100','闵行区',NULL),(7648,'310113','310100','宝山区',NULL),(7649,'330206','330200','北仑区',NULL),(7650,'310114','310100','嘉定区',NULL),(7651,'310115','310100','浦东新区',NULL),(7652,'610523','610500','大荔县',NULL),(7653,'610522','610500','潼关县',NULL),(7654,'610525','610500','澄城县',NULL),(7655,'610524','610500','合阳县',NULL),(7656,'610527','610500','白水县',NULL),(7657,'610526','610500','蒲城县',NULL),(7658,'610528','610500','富平县',NULL),(7659,'310152','310100','川沙区',NULL),(7660,'440224','440200','仁化县',NULL),(7661,'440222','440200','始兴县',NULL),(7662,'440229','440200','翁源县',NULL),(7663,'360111','360100','青山湖区',NULL),(7664,'511528','511500','兴文县',NULL),(7665,'511529','511500','屏山县',NULL),(7666,'511526','511500','珙县',NULL),(7667,'511527','511500','筠连县',NULL),(7668,'511524','511500','长宁县',NULL),(7669,'511525','511500','高县',NULL),(7670,'511522','511500','南溪县',NULL),(7671,'511523','511500','江安县',NULL),(7672,'410883','410800','孟州市',NULL),(7673,'360127','360100','昌北区',NULL),(7674,'620982','620900','敦煌市',NULL),(7675,'360126','360100','经济技术开发区',NULL),(7676,'620981','620900','玉门市',NULL),(7677,'440233','440200','新丰县',NULL),(7678,'440232','440200','乳源瑶族自治县',NULL),(7679,'360121','360100','南昌县',NULL),(7680,'360123','360100','安义县',NULL),(7681,'360122','360100','新建县',NULL),(7682,'360125','360100','红谷滩新区',NULL),(7683,'360124','360100','进贤县',NULL),(7684,'610500','610000','渭南市',NULL),(7685,'610502','610500','临渭区',NULL),(7686,'210411','210400','顺城区',NULL),(7687,'440200','440000','韶关市',NULL),(7688,'440203','440200','武江区',NULL),(7689,'440205','440200','曲江区',NULL),(7690,'440204','440200','浈江区',NULL),(7691,'450521','450500','合浦县',NULL),(7692,'430382','430300','韶山市',NULL),(7693,'430381','430300','湘乡市',NULL),(7694,'210400','210000','抚顺市',NULL),(7695,'360105','360100','湾里区',NULL),(7696,'210404','210400','望花区',NULL),(7697,'360104','360100','青云谱区',NULL),(7698,'210403','210400','东洲区',NULL),(7699,'210402','210400','新抚区',NULL),(7700,'360100','360000','南昌市',NULL),(7701,'610521','610500','华县',NULL),(7702,'360103','360100','西湖区',NULL),(7703,'220422','220400','东辽县',NULL),(7704,'360102','360100','东湖区',NULL),(7705,'220421','220400','东丰县',NULL),(7706,'411082','411000','长葛市',NULL),(7707,'450500','450000','北海市',NULL),(7708,'411081','411000','禹州市',NULL),(7709,'450503','450500','银海区',NULL),(7710,'620000','0','甘肃省',NULL),(7711,'450502','450500','海城区',NULL),(7712,'620924','620900','阿克塞哈萨克族自治县',NULL),(7713,'620923','620900','肃北蒙古族自治县',NULL),(7714,'620922','620900','安西县',NULL),(7715,'130604','130600','南市区',NULL),(7716,'620921','620900','金塔县',NULL),(7717,'130603','130600','北市区',NULL),(7718,'130602','130600','新市区',NULL),(7719,'130600','130000','保定市',NULL),(7720,'420800','420000','荆门市',NULL),(7721,'450512','450500','铁山港区',NULL),(7722,'441324','441300','龙门县',NULL),(7723,'441323','441300','惠东县',NULL),(7724,'520382','520300','仁怀市',NULL),(7725,'420804','420800','掇刀区',NULL),(7726,'441322','441300','博罗县',NULL),(7727,'420802','420800','东宝区',NULL),(7728,'520381','520300','赤水市',NULL),(7729,'420100','420000','武汉市',NULL),(7730,'360981','360900','丰城市',NULL),(7731,'420102','420100','江岸区',NULL),(7732,'360983','360900','高安市',NULL),(7733,'420103','420100','江汉区',NULL),(7734,'360982','360900','樟树市',NULL),(7735,'420104','420100','硚口区',NULL),(7736,'110108','110100','海淀区',NULL),(7737,'420105','420100','汉阳区',NULL),(7738,'110107','110100','石景山区',NULL),(7739,'420106','420100','武昌区',NULL),(7740,'420107','420100','青山区',NULL),(7741,'110109','110100','门头沟区',NULL),(7742,'110104','110100','宣武区',NULL),(7743,'110103','110100','崇文区',NULL),(7744,'110106','110100','丰台区',NULL),(7745,'410882','410800','沁阳市',NULL),(7746,'110105','110100','朝阳区',NULL),(7747,'410881','410000','济源市',NULL),(7748,'110100','110000','北京市',NULL),(7749,'110102','110100','西城区',NULL),(7750,'110101','110100','东城区',NULL),(7751,'430321','430300','湘潭县',NULL),(7752,'130625','130600','徐水县',NULL),(7753,'130624','130600','阜平县',NULL),(7754,'130623','130600','涞水县',NULL),(7755,'130622','130600','清苑县',NULL),(7756,'130629','130600','容城县',NULL),(7757,'620902','620900','肃州区',NULL),(7758,'130628','130600','高阳县',NULL),(7759,'130627','130600','唐县',NULL),(7760,'620900','620000','酒泉市',NULL),(7761,'130626','130600','定兴县',NULL),(7762,'130621','130600','满城县',NULL),(7763,'420111','420100','洪山区',NULL),(7764,'420114','420100','蔡甸区',NULL),(7765,'420115','420100','江夏区',NULL),(7766,'420112','420100','东西湖区',NULL),(7767,'420113','420100','汉南区',NULL),(7768,'420822','420800','沙洋县',NULL),(7769,'420116','420100','黄陂区',NULL),(7770,'420821','420800','京山县',NULL),(7771,'420117','420100','新洲区',NULL),(7772,'441300','440000','惠州市',NULL),(7773,'441303','441300','惠阳区',NULL),(7774,'441302','441300','惠城区',NULL),(7775,'150900','150000','乌兰察布市',NULL),(7776,'150902','150900','集宁区',NULL),(7777,'430300','430000','湘潭市',NULL),(7778,'510421','510400','米易县',NULL),(7779,'532331','532300','禄丰县',NULL),(7780,'430304','430300','岳塘区',NULL),(7781,'430302','430300','雨湖区',NULL),(7782,'542400','540000','那曲地区',NULL),(7783,'532329','532300','武定县',NULL),(7784,'532328','532300','元谋县',NULL),(7785,'532327','532300','永仁县',NULL),(7786,'410811','410800','山阳区',NULL),(7787,'532326','532300','大姚县',NULL),(7788,'532325','532300','姚安县',NULL),(7789,'532324','532300','南华县',NULL),(7790,'510411','510400','仁和区',NULL),(7791,'532323','532300','牟定县',NULL),(7792,'532322','532300','双柏县',NULL),(7793,'230524','230500','饶河县',NULL),(7794,'230521','230500','集贤县',NULL),(7795,'230523','230500','宝清县',NULL),(7796,'230522','230500','友谊县',NULL),(7797,'410804','410800','马村区',NULL),(7798,'410803','410800','中站区',NULL),(7799,'410802','410800','解放区',NULL),(7800,'510422','510400','盐边县',NULL),(7801,'410800','410000','焦作市',NULL),(7802,'433127','433100','永顺县',NULL),(7803,'433126','433100','古丈县',NULL),(7804,'433125','433100','保靖县',NULL),(7805,'433130','433100','龙山县',NULL),(7806,'532301','532300','楚雄市',NULL),(7807,'230503','230500','岭东区',NULL),(7808,'230502','230500','尖山区',NULL),(7809,'230505','230500','四方台区',NULL),(7810,'230506','230500','宝山区',NULL),(7811,'532300','530000','楚雄彝族自治州',NULL),(7812,'230500','230000','双鸭山市',NULL),(7813,'433122','433100','泸溪县',NULL),(7814,'433123','433100','凤凰县',NULL),(7815,'433124','433100','花垣县',NULL),(7816,'410825','410800','温县',NULL),(7817,'410823','410800','武陟县',NULL),(7818,'510400','510000','攀枝花市',NULL),(7819,'410822','410800','博爱县',NULL),(7820,'510403','510400','西区',NULL),(7821,'410821','410800','修武县',NULL),(7822,'510402','510400','东区',NULL);
/*!40000 ALTER TABLE `t_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_spec`
--

DROP TABLE IF EXISTS `t_spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productID` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `specColor` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specSize` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specStock` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specPrice` decimal(8,2) DEFAULT NULL,
  `specStatus` char(1) COLLATE utf8_unicode_ci DEFAULT 'n',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_spec`
--

LOCK TABLES `t_spec` WRITE;
/*!40000 ALTER TABLE `t_spec` DISABLE KEYS */;
INSERT INTO `t_spec` VALUES (10000,'10320','红色','XXL','33',333.00,'y'),(10001,'10320','黑色','XX','22',222.00,'y'),(10002,'10320','黑色','X','11',111.00,'y'),(10003,'10320','黑色','ML','44',444.00,'y');
/*!40000 ALTER TABLE `t_spec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_emailnotifyproduct`
--

DROP TABLE IF EXISTS `t_emailnotifyproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_emailnotifyproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `receiveEmail` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `productID` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime DEFAULT NULL,
  `notifydate` datetime DEFAULT NULL,
  `status` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sendFailureCount` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_emailnotifyproduct`
--

LOCK TABLES `t_emailnotifyproduct` WRITE;
/*!40000 ALTER TABLE `t_emailnotifyproduct` DISABLE KEYS */;
INSERT INTO `t_emailnotifyproduct` VALUES (1,'test1002','543089122@qq.com','10267','Acer/宏基 P3-171-3322Y2G06as 11.6英寸 超极本 Win8 6','2014-04-08 09:06:46','2014-04-08 09:57:28','y',1);
/*!40000 ALTER TABLE `t_emailnotifyproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_email`
--

DROP TABLE IF EXISTS `t_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sign` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `account` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(245) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `starttime` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `endtime` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newEmail` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'n',
  `sendStatus` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_email`
--

LOCK TABLES `t_email` WRITE;
/*!40000 ALTER TABLE `t_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sessioncount`
--

DROP TABLE IF EXISTS `t_sessioncount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sessioncount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1105 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sessioncount`
--

LOCK TABLES `t_sessioncount` WRITE;
/*!40000 ALTER TABLE `t_sessioncount` DISABLE KEYS */;
INSERT INTO `t_sessioncount` VALUES (1,'127.0.0.1',NULL,'2013-08-06 23:46:36'),(2,'127.0.0.1',NULL,'2013-08-06 23:49:02'),(3,'127.0.0.1',NULL,'2013-08-06 23:49:29'),(4,'127.0.0.1',NULL,'2013-08-06 23:49:35'),(5,'127.0.0.1',NULL,'2013-08-06 23:50:22'),(6,'127.0.0.1',NULL,'2013-08-10 23:05:47'),(7,'127.0.0.1',NULL,'2013-08-10 23:36:58'),(8,'127.0.0.1',NULL,'2013-08-11 10:02:35'),(9,'127.0.0.1',NULL,'2013-08-12 11:17:30'),(10,'127.0.0.1',NULL,'2013-08-12 11:18:13'),(11,'127.0.0.1',NULL,'2013-08-12 11:18:46'),(12,'127.0.0.1',NULL,'2013-08-12 11:19:33'),(13,'127.0.0.1',NULL,'2013-08-12 11:20:16'),(14,'127.0.0.1',NULL,'2013-07-18 11:35:39'),(15,'127.0.0.1',NULL,'2013-07-18 11:41:45'),(16,'127.0.0.1',NULL,'2013-07-18 11:46:17'),(17,'127.0.0.1',NULL,'2013-07-18 11:47:19'),(18,'127.0.0.1',NULL,'2013-07-18 12:02:13'),(19,'127.0.0.1',NULL,'2013-07-18 12:05:28'),(20,'127.0.0.1',NULL,'2013-07-18 12:06:43'),(21,'127.0.0.1',NULL,'2013-08-14 21:23:49'),(22,'127.0.0.1',NULL,'2013-08-18 15:16:55'),(23,'127.0.0.1',NULL,'2013-08-24 12:21:56'),(24,'127.0.0.1',NULL,'2013-08-25 20:28:49'),(25,'127.0.0.1',NULL,'2013-08-25 21:00:24'),(26,'127.0.0.1',NULL,'2013-08-25 21:02:10'),(27,'127.0.0.1',NULL,'2013-08-25 21:19:57'),(28,'127.0.0.1',NULL,'2013-08-25 21:22:52'),(29,'127.0.0.1',NULL,'2013-08-25 21:27:46'),(30,'0:0:0:0:0:0:0:1',NULL,'2013-08-25 21:38:28'),(31,'127.0.0.1',NULL,'2013-08-25 21:43:30'),(32,'127.0.0.1',NULL,'2013-08-25 21:48:08'),(33,'127.0.0.1',NULL,'2013-08-25 21:52:02'),(34,'127.0.0.1',NULL,'2013-08-25 22:08:16'),(35,'127.0.0.1',NULL,'2013-08-25 22:13:12'),(36,'127.0.0.1',NULL,'2013-08-25 22:15:38'),(37,'127.0.0.1',NULL,'2013-08-25 22:25:40'),(38,'127.0.0.1',NULL,'2013-08-25 22:30:05'),(39,'127.0.0.1',NULL,'2013-08-25 22:35:03'),(40,'127.0.0.1',NULL,'2013-08-25 23:05:12'),(41,'127.0.0.1',NULL,'2013-08-25 23:29:09'),(42,'127.0.0.1',NULL,'2013-08-25 23:32:29'),(43,'127.0.0.1',NULL,'2013-08-25 23:35:36'),(44,'127.0.0.1',NULL,'2013-08-25 23:40:34'),(45,'127.0.0.1',NULL,'2013-08-25 23:47:33'),(46,'127.0.0.1',NULL,'2013-08-26 20:26:55'),(47,'127.0.0.1',NULL,'2013-08-26 20:57:14'),(48,'127.0.0.1',NULL,'2013-08-26 21:15:41'),(49,'127.0.0.1',NULL,'2013-08-26 21:54:42'),(50,'127.0.0.1',NULL,'2013-08-26 21:55:48'),(51,'127.0.0.1',NULL,'2013-08-29 22:18:34'),(52,'127.0.0.1',NULL,'2013-08-29 23:36:34'),(53,'127.0.0.1',NULL,'2013-08-29 23:45:05'),(54,'127.0.0.1',NULL,'2013-08-29 23:49:10'),(55,'127.0.0.1',NULL,'2013-08-29 23:54:46'),(56,'127.0.0.1',NULL,'2013-08-29 23:58:35'),(57,'127.0.0.1',NULL,'2013-08-30 00:14:32'),(58,'127.0.0.1',NULL,'2013-08-30 00:17:28'),(59,'127.0.0.1',NULL,'2013-08-30 00:27:26'),(60,'127.0.0.1',NULL,'2013-08-30 00:33:35'),(61,'127.0.0.1',NULL,'2013-08-30 00:35:44'),(62,'127.0.0.1',NULL,'2013-08-30 20:55:45'),(63,'127.0.0.1',NULL,'2013-08-30 21:39:33'),(64,'127.0.0.1',NULL,'2013-08-30 21:43:23'),(65,'127.0.0.1',NULL,'2013-08-30 21:44:00'),(66,'127.0.0.1',NULL,'2013-08-30 21:46:05'),(67,'127.0.0.1',NULL,'2013-08-30 21:54:26'),(68,'127.0.0.1',NULL,'2013-08-30 22:01:47'),(69,'127.0.0.1',NULL,'2013-08-30 22:03:52'),(70,'127.0.0.1',NULL,'2013-08-30 22:04:57'),(71,'127.0.0.1',NULL,'2013-08-30 22:10:01'),(72,'127.0.0.1',NULL,'2013-08-30 22:11:51'),(73,'127.0.0.1',NULL,'2013-08-30 22:12:59'),(74,'127.0.0.1',NULL,'2013-08-30 22:18:55'),(75,'127.0.0.1',NULL,'2013-08-30 22:22:43'),(76,'127.0.0.1',NULL,'2013-08-30 22:27:38'),(77,'127.0.0.1',NULL,'2013-08-30 22:30:15'),(78,'127.0.0.1',NULL,'2013-08-30 22:47:40'),(79,'127.0.0.1',NULL,'2013-08-31 07:19:06'),(80,'127.0.0.1',NULL,'2013-08-31 19:29:27'),(81,'127.0.0.1',NULL,'2013-09-08 19:21:47'),(82,'127.0.0.1',NULL,'2013-09-08 19:48:42'),(83,'127.0.0.1',NULL,'2013-09-08 20:36:39'),(84,'127.0.0.1',NULL,'2013-09-08 20:58:34'),(85,'127.0.0.1',NULL,'2013-09-08 21:31:17'),(86,'127.0.0.1',NULL,'2013-09-08 21:33:25'),(87,'127.0.0.1',NULL,'2013-09-08 21:37:37'),(88,'127.0.0.1',NULL,'2013-09-08 22:02:59'),(89,'127.0.0.1',NULL,'2013-09-08 22:17:10'),(90,'127.0.0.1',NULL,'2013-09-08 22:35:52'),(91,'127.0.0.1',NULL,'2013-09-08 22:35:53'),(92,'127.0.0.1',NULL,'2013-09-08 22:57:22'),(93,'127.0.0.1',NULL,'2013-09-08 23:14:57'),(94,'127.0.0.1',NULL,'2013-09-08 23:24:22'),(95,'127.0.0.1',NULL,'2013-09-08 23:31:40'),(96,'127.0.0.1',NULL,'2013-09-08 23:40:37'),(97,'127.0.0.1',NULL,'2013-09-09 07:01:29'),(98,'127.0.0.1',NULL,'2013-09-09 07:01:34'),(99,'127.0.0.1',NULL,'2013-09-09 07:29:09'),(100,'127.0.0.1',NULL,'2013-09-09 07:49:26'),(101,'127.0.0.1',NULL,'2013-09-09 07:51:23'),(102,'127.0.0.1',NULL,'2013-09-10 06:42:59'),(103,'127.0.0.1',NULL,'2013-09-10 06:43:04'),(104,'127.0.0.1',NULL,'2013-09-10 19:41:27'),(105,'127.0.0.1',NULL,'2013-09-10 19:48:13'),(106,'127.0.0.1',NULL,'2013-09-10 20:26:10'),(107,'127.0.0.1',NULL,'2013-09-10 21:04:43'),(108,'127.0.0.1',NULL,'2013-09-10 21:29:14'),(109,'127.0.0.1',NULL,'2013-09-10 21:30:35'),(110,'127.0.0.1',NULL,'2013-09-10 21:33:25'),(111,'127.0.0.1',NULL,'2013-09-10 21:34:56'),(112,'127.0.0.1',NULL,'2013-09-10 21:39:15'),(113,'127.0.0.1',NULL,'2013-09-10 21:48:41'),(114,'127.0.0.1',NULL,'2013-09-10 22:09:36'),(115,'127.0.0.1',NULL,'2013-09-10 22:17:34'),(116,'127.0.0.1',NULL,'2013-09-10 22:21:47'),(117,'127.0.0.1',NULL,'2013-09-10 22:23:49'),(118,'127.0.0.1',NULL,'2013-09-10 22:30:26'),(119,'127.0.0.1',NULL,'2013-09-10 23:14:35'),(120,'127.0.0.1',NULL,'2013-09-10 23:17:07'),(121,'127.0.0.1',NULL,'2013-09-10 23:17:43'),(122,'127.0.0.1',NULL,'2013-09-10 23:19:24'),(123,'127.0.0.1',NULL,'2013-09-10 23:21:34'),(124,'127.0.0.1',NULL,'2013-09-10 23:23:11'),(125,'127.0.0.1',NULL,'2013-09-10 23:23:20'),(126,'127.0.0.1',NULL,'2013-09-10 23:24:09'),(127,'127.0.0.1',NULL,'2013-09-10 23:30:17'),(128,'127.0.0.1',NULL,'2013-09-10 23:33:57'),(129,'127.0.0.1',NULL,'2013-09-10 23:34:32'),(130,'127.0.0.1',NULL,'2013-09-10 23:54:58'),(131,'127.0.0.1',NULL,'2013-09-10 23:57:13'),(132,'127.0.0.1',NULL,'2013-09-11 07:21:40'),(133,'127.0.0.1',NULL,'2013-09-11 07:28:22'),(134,'127.0.0.1',NULL,'2013-09-11 07:29:18'),(135,'127.0.0.1',NULL,'2013-09-11 07:29:31'),(136,'127.0.0.1',NULL,'2013-09-11 07:30:22'),(137,'127.0.0.1',NULL,'2013-09-11 07:33:14'),(138,'127.0.0.1',NULL,'2013-09-11 07:43:50'),(139,'127.0.0.1',NULL,'2013-09-11 07:44:35'),(140,'127.0.0.1',NULL,'2013-09-11 07:48:49'),(141,'127.0.0.1',NULL,'2013-09-11 07:54:59'),(142,'127.0.0.1',NULL,'2013-09-11 08:00:01'),(143,'127.0.0.1',NULL,'2013-09-11 08:00:48'),(144,'127.0.0.1',NULL,'2013-09-11 08:02:24'),(145,'127.0.0.1',NULL,'2013-09-11 20:54:57'),(146,'127.0.0.1',NULL,'2013-09-11 21:24:53'),(147,'127.0.0.1',NULL,'2013-09-11 21:39:06'),(148,'127.0.0.1',NULL,'2013-09-11 21:40:20'),(149,'127.0.0.1',NULL,'2013-09-11 22:32:31'),(150,'127.0.0.1',NULL,'2013-09-11 22:53:18'),(151,'127.0.0.1',NULL,'2013-09-11 23:00:52'),(152,'127.0.0.1',NULL,'2013-09-11 23:12:07'),(153,'127.0.0.1',NULL,'2013-09-13 22:38:15'),(154,'127.0.0.1',NULL,'2013-09-13 22:44:14'),(155,'127.0.0.1',NULL,'2013-09-13 23:25:54'),(156,'127.0.0.1',NULL,'2013-09-13 23:42:09'),(157,'127.0.0.1',NULL,'2013-09-13 23:44:30'),(158,'127.0.0.1',NULL,'2013-09-13 23:46:39'),(159,'127.0.0.1',NULL,'2013-09-13 23:53:45'),(160,'127.0.0.1',NULL,'2013-09-13 23:59:54'),(161,'127.0.0.1',NULL,'2013-09-14 07:44:03'),(162,'127.0.0.1',NULL,'2013-09-18 22:05:23'),(163,'127.0.0.1',NULL,'2013-09-24 22:43:17'),(164,'127.0.0.1',NULL,'2013-09-24 22:59:30'),(165,'127.0.0.1',NULL,'2013-09-24 22:59:30'),(166,'127.0.0.1',NULL,'2013-09-24 23:12:15'),(167,'127.0.0.1',NULL,'2013-09-24 23:12:26'),(168,'127.0.0.1',NULL,'2013-09-24 23:41:54'),(169,'127.0.0.1',NULL,'2013-09-24 23:41:59'),(170,'127.0.0.1',NULL,'2013-09-24 23:43:52'),(171,'127.0.0.1',NULL,'2013-09-25 00:36:14'),(172,'127.0.0.1',NULL,'2013-09-25 07:05:52'),(173,'127.0.0.1',NULL,'2013-09-25 07:16:29'),(174,'127.0.0.1',NULL,'2013-09-25 07:17:20'),(175,'127.0.0.1',NULL,'2013-09-25 07:24:43'),(176,'127.0.0.1',NULL,'2013-09-25 07:26:01'),(177,'127.0.0.1',NULL,'2013-09-25 07:26:01'),(178,'127.0.0.1',NULL,'2013-09-25 07:26:01'),(179,'127.0.0.1',NULL,'2013-09-25 07:26:01'),(180,'127.0.0.1',NULL,'2013-09-25 07:26:01'),(181,'127.0.0.1',NULL,'2013-09-25 07:26:01'),(182,'127.0.0.1',NULL,'2013-09-25 07:26:02'),(183,'127.0.0.1',NULL,'2013-09-25 07:26:02'),(184,'127.0.0.1',NULL,'2013-09-25 07:26:02'),(185,'127.0.0.1',NULL,'2013-09-25 07:26:02'),(186,'127.0.0.1',NULL,'2013-09-25 07:39:08'),(187,'127.0.0.1',NULL,'2013-09-25 21:54:20'),(188,'127.0.0.1',NULL,'2013-09-25 22:12:12'),(189,'127.0.0.1',NULL,'2013-09-25 22:12:17'),(190,'127.0.0.1',NULL,'2013-09-25 22:18:47'),(191,'127.0.0.1',NULL,'2013-09-25 22:42:01'),(192,'127.0.0.1',NULL,'2013-09-25 22:52:14'),(193,'127.0.0.1',NULL,'2013-09-25 23:49:18'),(194,'127.0.0.1',NULL,'2013-09-25 23:55:38'),(195,'127.0.0.1',NULL,'2013-09-26 00:02:12'),(196,'127.0.0.1',NULL,'2013-09-26 00:18:10'),(197,'127.0.0.1',NULL,'2013-09-26 00:37:32'),(198,'127.0.0.1',NULL,'2013-09-26 00:39:28'),(199,'127.0.0.1',NULL,'2013-09-26 00:44:26'),(200,'127.0.0.1',NULL,'2013-09-26 00:49:10'),(201,'127.0.0.1',NULL,'2013-09-26 21:13:09'),(202,'127.0.0.1',NULL,'2013-09-26 21:31:06'),(203,'127.0.0.1',NULL,'2013-09-26 21:55:24'),(204,'127.0.0.1',NULL,'2013-09-26 21:55:28'),(205,'127.0.0.1',NULL,'2013-09-26 22:04:25'),(206,'127.0.0.1',NULL,'2013-09-26 22:34:41'),(207,'127.0.0.1',NULL,'2013-09-26 22:34:46'),(208,'127.0.0.1',NULL,'2013-09-26 23:07:44'),(209,'127.0.0.1',NULL,'2013-09-26 23:13:19'),(210,'127.0.0.1',NULL,'2013-09-26 23:17:41'),(211,'127.0.0.1',NULL,'2013-09-26 23:22:56'),(212,'127.0.0.1',NULL,'2013-09-26 23:30:36'),(213,'127.0.0.1',NULL,'2013-09-26 23:30:59'),(214,'127.0.0.1',NULL,'2013-09-26 23:47:11'),(215,'127.0.0.1',NULL,'2013-09-26 23:50:10'),(216,'127.0.0.1',NULL,'2013-09-26 23:57:46'),(217,'127.0.0.1',NULL,'2013-09-26 23:59:52'),(218,'127.0.0.1',NULL,'2013-09-27 00:03:17'),(219,'127.0.0.1',NULL,'2013-09-27 00:04:06'),(220,'127.0.0.1',NULL,'2013-09-27 00:15:32'),(221,'127.0.0.1',NULL,'2013-09-27 00:49:51'),(222,'127.0.0.1',NULL,'2013-09-27 00:49:55'),(223,'127.0.0.1',NULL,'2013-09-27 06:30:25'),(224,'127.0.0.1',NULL,'2013-09-27 06:30:35'),(225,'127.0.0.1',NULL,'2013-09-27 22:23:33'),(226,'127.0.0.1',NULL,'2013-09-27 23:21:17'),(227,'127.0.0.1',NULL,'2013-09-28 00:28:47'),(228,'127.0.0.1',NULL,'2013-09-28 00:35:00'),(229,'127.0.0.1',NULL,'2013-09-28 00:43:52'),(230,'127.0.0.1',NULL,'2013-09-28 00:46:22'),(231,'127.0.0.1',NULL,'2013-09-28 00:46:29'),(232,'127.0.0.1',NULL,'2013-09-28 09:13:14'),(233,'127.0.0.1',NULL,'2013-09-28 10:45:09'),(234,'127.0.0.1',NULL,'2013-09-28 10:47:14'),(235,'127.0.0.1',NULL,'2013-09-28 10:53:06'),(236,'127.0.0.1',NULL,'2013-09-28 11:00:48'),(237,'127.0.0.1',NULL,'2013-09-28 16:18:48'),(238,'127.0.0.1',NULL,'2013-09-28 16:42:39'),(239,'127.0.0.1',NULL,'2013-09-28 17:21:24'),(240,'127.0.0.1',NULL,'2013-09-28 22:08:09'),(241,'127.0.0.1',NULL,'2013-09-28 22:11:12'),(242,'127.0.0.1',NULL,'2013-09-28 22:28:41'),(243,'127.0.0.1',NULL,'2013-09-28 22:38:50'),(244,'127.0.0.1',NULL,'2013-09-28 22:50:51'),(245,'127.0.0.1',NULL,'2013-09-29 00:05:52'),(246,'127.0.0.1',NULL,'2013-09-29 00:11:49'),(247,'127.0.0.1',NULL,'2013-10-01 12:13:35'),(248,'127.0.0.1',NULL,'2013-10-01 12:57:47'),(249,'127.0.0.1',NULL,'2013-10-01 12:59:30'),(250,'127.0.0.1',NULL,'2013-10-01 15:04:13'),(251,'127.0.0.1',NULL,'2013-10-01 15:07:16'),(252,'127.0.0.1',NULL,'2013-10-01 15:39:37'),(253,'127.0.0.1',NULL,'2013-10-01 15:43:32'),(254,'127.0.0.1',NULL,'2013-10-01 15:45:09'),(255,'127.0.0.1',NULL,'2013-10-01 15:49:51'),(256,'127.0.0.1',NULL,'2013-10-01 15:52:40'),(257,'127.0.0.1',NULL,'2013-10-01 16:42:00'),(258,'127.0.0.1',NULL,'2013-10-01 16:44:44'),(259,'127.0.0.1',NULL,'2013-10-01 17:03:01'),(260,'127.0.0.1',NULL,'2013-10-01 17:10:21'),(261,'127.0.0.1',NULL,'2013-10-01 17:34:19'),(262,'127.0.0.1',NULL,'2013-10-01 17:38:54'),(263,'127.0.0.1',NULL,'2013-10-01 17:43:20'),(264,'127.0.0.1',NULL,'2013-10-01 17:54:12'),(265,'127.0.0.1',NULL,'2013-10-01 17:56:26'),(266,'127.0.0.1',NULL,'2013-10-01 18:01:50'),(267,'127.0.0.1',NULL,'2013-10-01 18:13:19'),(268,'127.0.0.1',NULL,'2013-10-01 20:41:08'),(269,'127.0.0.1',NULL,'2013-10-01 20:42:36'),(270,'127.0.0.1',NULL,'2013-10-01 21:12:03'),(271,'127.0.0.1',NULL,'2013-10-01 21:44:56'),(272,'127.0.0.1',NULL,'2013-10-01 21:46:18'),(273,'127.0.0.1',NULL,'2013-10-01 22:01:16'),(274,'127.0.0.1',NULL,'2013-10-01 22:15:47'),(275,'127.0.0.1',NULL,'2013-10-01 22:17:36'),(276,'127.0.0.1',NULL,'2013-10-01 22:21:08'),(277,'127.0.0.1',NULL,'2013-10-01 22:35:26'),(278,'127.0.0.1',NULL,'2013-10-01 22:45:52'),(279,'127.0.0.1',NULL,'2013-10-01 22:45:52'),(280,'127.0.0.1',NULL,'2013-10-01 22:52:31'),(281,'127.0.0.1',NULL,'2013-10-01 23:00:39'),(282,'127.0.0.1',NULL,'2013-10-01 23:01:13'),(283,'127.0.0.1',NULL,'2013-10-02 07:26:57'),(284,'127.0.0.1',NULL,'2013-10-02 08:27:09'),(285,'127.0.0.1',NULL,'2013-10-02 08:28:26'),(286,'127.0.0.1',NULL,'2013-10-02 08:37:05'),(287,'127.0.0.1',NULL,'2013-10-02 08:43:56'),(288,'127.0.0.1',NULL,'2013-10-02 08:54:34'),(289,'127.0.0.1',NULL,'2013-10-02 08:54:40'),(290,'127.0.0.1',NULL,'2013-10-02 08:55:00'),(291,'127.0.0.1',NULL,'2013-10-02 08:55:00'),(292,'127.0.0.1',NULL,'2013-10-02 09:00:34'),(293,'127.0.0.1',NULL,'2013-10-02 09:05:24'),(294,'127.0.0.1',NULL,'2013-10-02 09:48:34'),(295,'127.0.0.1',NULL,'2013-10-02 09:50:54'),(296,'127.0.0.1',NULL,'2013-10-02 09:56:36'),(297,'127.0.0.1',NULL,'2013-10-02 10:04:18'),(298,'127.0.0.1',NULL,'2013-10-02 10:06:53'),(299,'127.0.0.1',NULL,'2013-10-02 10:12:01'),(300,'127.0.0.1',NULL,'2013-10-02 10:13:42'),(301,'127.0.0.1',NULL,'2013-10-02 10:20:32'),(302,'127.0.0.1',NULL,'2013-10-02 10:32:19'),(303,'127.0.0.1',NULL,'2013-10-02 10:38:49'),(304,'127.0.0.1',NULL,'2013-10-02 10:39:48'),(305,'127.0.0.1',NULL,'2013-10-02 10:41:28'),(306,'127.0.0.1',NULL,'2013-10-02 10:42:27'),(307,'127.0.0.1',NULL,'2013-10-02 10:47:58'),(308,'127.0.0.1',NULL,'2013-10-02 11:02:53'),(309,'127.0.0.1',NULL,'2013-10-02 11:28:32'),(310,'127.0.0.1',NULL,'2013-10-02 11:29:59'),(311,'127.0.0.1',NULL,'2013-10-02 11:31:34'),(312,'127.0.0.1',NULL,'2013-10-02 11:34:16'),(313,'127.0.0.1',NULL,'2013-10-02 11:35:28'),(314,'0:0:0:0:0:0:0:1',NULL,'2013-10-02 12:08:53'),(315,'127.0.0.1',NULL,'2013-10-02 12:12:04'),(316,'127.0.0.1',NULL,'2013-10-02 12:13:37'),(317,'127.0.0.1',NULL,'2013-10-02 12:18:20'),(318,'127.0.0.1',NULL,'2013-10-02 12:19:20'),(319,'127.0.0.1',NULL,'2013-10-02 12:26:38'),(320,'127.0.0.1',NULL,'2013-10-02 12:35:46'),(321,'127.0.0.1',NULL,'2013-10-02 12:37:00'),(322,'127.0.0.1',NULL,'2013-10-02 13:01:19'),(323,'127.0.0.1',NULL,'2013-10-02 13:03:09'),(324,'127.0.0.1',NULL,'2013-10-02 13:55:32'),(325,'127.0.0.1',NULL,'2013-10-02 14:16:58'),(326,'127.0.0.1',NULL,'2013-10-02 15:46:18'),(327,'127.0.0.1',NULL,'2013-10-02 16:02:47'),(328,'127.0.0.1',NULL,'2013-10-02 16:25:54'),(329,'127.0.0.1',NULL,'2013-10-02 16:32:23'),(330,'127.0.0.1',NULL,'2013-10-02 16:34:28'),(331,'127.0.0.1',NULL,'2013-10-02 16:39:06'),(332,'127.0.0.1',NULL,'2013-10-02 16:41:33'),(333,'127.0.0.1',NULL,'2013-10-02 16:43:04'),(334,'127.0.0.1',NULL,'2013-10-02 16:44:42'),(335,'127.0.0.1',NULL,'2013-10-02 16:45:41'),(336,'127.0.0.1',NULL,'2013-10-02 16:53:46'),(337,'127.0.0.1',NULL,'2013-10-02 16:57:05'),(338,'127.0.0.1',NULL,'2013-10-02 17:06:54'),(339,'127.0.0.1',NULL,'2013-10-02 17:07:13'),(340,'127.0.0.1',NULL,'2013-10-02 19:53:41'),(341,'127.0.0.1',NULL,'2013-10-02 19:55:59'),(342,'127.0.0.1',NULL,'2013-10-02 20:05:21'),(343,'127.0.0.1',NULL,'2013-10-02 20:19:29'),(344,'127.0.0.1',NULL,'2013-10-02 20:42:03'),(345,'127.0.0.1',NULL,'2013-10-02 20:43:53'),(346,'127.0.0.1',NULL,'2013-10-02 20:58:04'),(347,'127.0.0.1',NULL,'2013-10-02 21:04:12'),(348,'127.0.0.1',NULL,'2013-10-02 21:09:22'),(349,'127.0.0.1',NULL,'2013-10-02 21:09:23'),(350,'127.0.0.1',NULL,'2013-10-02 21:09:23'),(351,'127.0.0.1',NULL,'2013-10-02 21:09:23'),(352,'127.0.0.1',NULL,'2013-10-02 21:09:23'),(353,'127.0.0.1',NULL,'2013-10-02 21:09:52'),(354,'127.0.0.1',NULL,'2013-10-02 21:30:37'),(355,'127.0.0.1',NULL,'2013-10-02 21:35:56'),(356,'127.0.0.1',NULL,'2013-10-02 21:43:09'),(357,'127.0.0.1',NULL,'2013-10-02 21:52:29'),(358,'127.0.0.1',NULL,'2013-10-03 06:56:57'),(359,'127.0.0.1',NULL,'2013-10-03 06:57:05'),(360,'127.0.0.1',NULL,'2013-10-03 07:04:48'),(361,'127.0.0.1',NULL,'2013-10-03 17:44:25'),(362,'127.0.0.1',NULL,'2013-10-03 17:48:43'),(363,'127.0.0.1',NULL,'2013-10-03 17:50:00'),(364,'127.0.0.1',NULL,'2013-10-03 18:01:48'),(365,'127.0.0.1',NULL,'2013-10-03 19:05:39'),(366,'127.0.0.1',NULL,'2013-10-03 19:09:59'),(367,'127.0.0.1',NULL,'2013-10-03 19:11:44'),(368,'127.0.0.1',NULL,'2013-10-03 19:13:15'),(369,'127.0.0.1',NULL,'2013-10-03 19:35:59'),(370,'127.0.0.1',NULL,'2013-10-03 19:43:13'),(371,'127.0.0.1',NULL,'2013-10-03 19:43:35'),(372,'127.0.0.1',NULL,'2013-10-03 19:49:14'),(373,'127.0.0.1',NULL,'2013-10-03 19:49:32'),(374,'127.0.0.1',NULL,'2013-10-03 19:52:26'),(375,'127.0.0.1',NULL,'2013-10-03 19:52:26'),(376,'127.0.0.1',NULL,'2013-10-03 19:52:26'),(377,'127.0.0.1',NULL,'2013-10-03 19:52:26'),(378,'127.0.0.1',NULL,'2013-10-03 19:52:26'),(379,'127.0.0.1',NULL,'2013-10-03 19:52:26'),(380,'127.0.0.1',NULL,'2013-10-03 19:52:26'),(381,'127.0.0.1',NULL,'2013-10-03 19:56:08'),(382,'127.0.0.1',NULL,'2013-10-03 19:56:08'),(383,'127.0.0.1',NULL,'2013-10-03 19:56:08'),(384,'127.0.0.1',NULL,'2013-10-03 19:56:08'),(385,'127.0.0.1',NULL,'2013-10-03 19:56:08'),(386,'127.0.0.1',NULL,'2013-10-03 19:56:08'),(387,'127.0.0.1',NULL,'2013-10-03 19:56:08'),(388,'127.0.0.1',NULL,'2013-10-03 20:18:02'),(389,'127.0.0.1',NULL,'2013-10-03 20:31:17'),(390,'127.0.0.1',NULL,'2013-10-03 20:42:47'),(391,'127.0.0.1',NULL,'2013-10-04 07:08:29'),(392,'127.0.0.1',NULL,'2013-10-04 07:12:05'),(393,'127.0.0.1',NULL,'2013-10-04 08:45:06'),(394,'127.0.0.1',NULL,'2013-10-04 09:01:05'),(395,'127.0.0.1',NULL,'2013-10-04 09:58:44'),(396,'127.0.0.1',NULL,'2013-10-04 10:05:17'),(397,'127.0.0.1',NULL,'2013-10-04 11:24:10'),(398,'127.0.0.1',NULL,'2013-10-04 11:26:54'),(399,'127.0.0.1',NULL,'2013-10-04 11:28:12'),(400,'127.0.0.1',NULL,'2013-10-04 11:29:34'),(401,'127.0.0.1',NULL,'2013-10-04 11:36:01'),(402,'127.0.0.1',NULL,'2013-10-04 11:38:46'),(403,'127.0.0.1',NULL,'2013-10-04 11:50:05'),(404,'127.0.0.1',NULL,'2013-10-04 12:10:01'),(405,'127.0.0.1',NULL,'2013-10-04 12:29:10'),(406,'127.0.0.1',NULL,'2013-10-04 13:03:25'),(407,'127.0.0.1',NULL,'2013-10-04 13:06:13'),(408,'127.0.0.1',NULL,'2013-10-04 13:08:02'),(409,'127.0.0.1',NULL,'2013-10-04 13:09:09'),(410,'127.0.0.1',NULL,'2013-10-04 13:10:51'),(411,'127.0.0.1',NULL,'2013-10-04 13:13:48'),(412,'127.0.0.1',NULL,'2013-10-04 13:15:02'),(413,'127.0.0.1',NULL,'2013-10-04 13:20:02'),(414,'127.0.0.1',NULL,'2013-10-04 14:07:21'),(415,'127.0.0.1',NULL,'2013-10-04 14:21:29'),(416,'127.0.0.1',NULL,'2013-10-04 14:35:16'),(417,'127.0.0.1',NULL,'2013-10-04 14:35:38'),(418,'127.0.0.1',NULL,'2013-10-04 14:35:38'),(419,'127.0.0.1',NULL,'2013-10-04 14:35:38'),(420,'127.0.0.1',NULL,'2013-10-04 14:35:38'),(421,'127.0.0.1',NULL,'2013-10-04 14:35:38'),(422,'127.0.0.1',NULL,'2013-10-04 14:35:38'),(423,'127.0.0.1',NULL,'2013-10-04 14:35:38'),(424,'127.0.0.1',NULL,'2013-10-04 14:35:38'),(425,'127.0.0.1',NULL,'2013-10-04 14:41:46'),(426,'127.0.0.1',NULL,'2013-10-04 14:48:19'),(427,'127.0.0.1',NULL,'2013-10-04 14:48:24'),(428,'127.0.0.1',NULL,'2013-10-04 14:48:24'),(429,'127.0.0.1',NULL,'2013-10-04 14:48:24'),(430,'127.0.0.1',NULL,'2013-10-04 14:48:24'),(431,'127.0.0.1',NULL,'2013-10-04 14:48:24'),(432,'127.0.0.1',NULL,'2013-10-04 14:48:24'),(433,'127.0.0.1',NULL,'2013-10-04 14:48:26'),(434,'127.0.0.1',NULL,'2013-10-04 14:58:49'),(435,'127.0.0.1',NULL,'2013-10-04 15:04:06'),(436,'127.0.0.1',NULL,'2013-10-04 15:05:58'),(437,'127.0.0.1',NULL,'2013-10-04 15:25:31'),(438,'127.0.0.1',NULL,'2013-10-04 15:25:35'),(439,'127.0.0.1',NULL,'2013-10-04 15:25:35'),(440,'127.0.0.1',NULL,'2013-10-04 15:25:35'),(441,'127.0.0.1',NULL,'2013-10-04 15:25:35'),(442,'127.0.0.1',NULL,'2013-10-04 15:25:35'),(443,'127.0.0.1',NULL,'2013-10-04 15:25:35'),(444,'127.0.0.1',NULL,'2013-10-04 15:25:36'),(445,'127.0.0.1',NULL,'2013-10-04 15:55:41'),(446,'127.0.0.1',NULL,'2013-10-04 16:04:37'),(447,'127.0.0.1',NULL,'2013-10-04 16:21:32'),(448,'127.0.0.1',NULL,'2013-10-04 16:22:19'),(449,'127.0.0.1',NULL,'2013-10-04 16:24:51'),(450,'127.0.0.1',NULL,'2013-10-04 16:27:33'),(451,'127.0.0.1',NULL,'2013-10-04 17:25:09'),(452,'127.0.0.1',NULL,'2013-10-05 08:29:51'),(453,'127.0.0.1',NULL,'2013-10-05 08:40:15'),(454,'127.0.0.1',NULL,'2013-10-05 09:16:00'),(455,'127.0.0.1',NULL,'2013-10-05 09:16:00'),(456,'127.0.0.1',NULL,'2013-10-05 09:16:00'),(457,'127.0.0.1',NULL,'2013-10-05 09:16:00'),(458,'127.0.0.1',NULL,'2013-10-05 09:16:00'),(459,'127.0.0.1',NULL,'2013-10-05 09:16:00'),(460,'127.0.0.1',NULL,'2013-10-05 09:16:00'),(461,'127.0.0.1',NULL,'2013-10-05 09:16:00'),(462,'127.0.0.1',NULL,'2013-10-05 10:24:30'),(463,'127.0.0.1',NULL,'2013-10-05 13:07:52'),(464,'127.0.0.1',NULL,'2013-10-05 13:42:04'),(465,'127.0.0.1',NULL,'2013-10-05 13:51:29'),(466,'127.0.0.1',NULL,'2013-10-05 14:34:58'),(467,'127.0.0.1',NULL,'2013-10-05 14:44:02'),(468,'127.0.0.1',NULL,'2013-10-05 14:45:20'),(469,'127.0.0.1',NULL,'2013-10-05 14:47:46'),(470,'127.0.0.1',NULL,'2013-10-05 14:48:35'),(471,'127.0.0.1',NULL,'2013-10-05 16:26:08'),(472,'127.0.0.1',NULL,'2013-10-06 21:11:44'),(473,'127.0.0.1',NULL,'2013-10-06 21:11:44'),(474,'127.0.0.1',NULL,'2013-10-06 21:11:44'),(475,'127.0.0.1',NULL,'2013-10-06 21:40:07'),(476,'127.0.0.1',NULL,'2013-10-07 23:37:26'),(477,'127.0.0.1',NULL,'2013-10-08 21:03:37'),(478,'127.0.0.1',NULL,'2013-10-08 21:58:08'),(479,'127.0.0.1',NULL,'2013-10-08 22:02:16'),(480,'127.0.0.1',NULL,'2013-10-08 22:11:17'),(481,'127.0.0.1',NULL,'2013-10-08 22:15:28'),(482,'127.0.0.1',NULL,'2013-10-08 22:19:02'),(483,'127.0.0.1',NULL,'2013-10-08 22:23:17'),(484,'127.0.0.1',NULL,'2013-10-08 22:28:06'),(485,'127.0.0.1',NULL,'2013-10-08 22:48:02'),(486,'127.0.0.1',NULL,'2013-10-08 22:48:57'),(487,'127.0.0.1',NULL,'2013-10-08 22:49:39'),(488,'127.0.0.1',NULL,'2013-10-08 23:51:09'),(489,'127.0.0.1',NULL,'2013-10-08 23:53:16'),(490,'127.0.0.1',NULL,'2013-10-08 23:58:29'),(491,'127.0.0.1',NULL,'2013-10-09 00:06:10'),(492,'127.0.0.1',NULL,'2013-10-09 06:56:22'),(493,'127.0.0.1',NULL,'2013-10-09 07:15:36'),(494,'127.0.0.1',NULL,'2013-10-20 00:08:40'),(495,'127.0.0.1',NULL,'2013-10-20 00:15:46'),(496,'127.0.0.1',NULL,'2013-10-20 00:15:46'),(497,'127.0.0.1',NULL,'2013-10-20 00:15:46'),(498,'127.0.0.1',NULL,'2013-10-20 00:44:56'),(499,'127.0.0.1',NULL,'2013-10-20 00:44:56'),(500,'127.0.0.1',NULL,'2013-10-20 00:44:56'),(501,'127.0.0.1',NULL,'2013-10-20 09:31:10'),(502,'127.0.0.1',NULL,'2013-10-20 09:35:43'),(503,'127.0.0.1',NULL,'2013-10-20 09:44:21'),(504,'127.0.0.1',NULL,'2013-10-20 09:46:45'),(505,'127.0.0.1',NULL,'2013-10-20 09:51:29'),(506,'127.0.0.1',NULL,'2013-10-20 09:52:32'),(507,'127.0.0.1',NULL,'2013-10-20 09:55:45'),(508,'127.0.0.1',NULL,'2013-10-20 10:01:27'),(509,'127.0.0.1',NULL,'2013-10-20 10:05:00'),(510,'127.0.0.1',NULL,'2013-10-20 10:09:29'),(511,'127.0.0.1',NULL,'2013-10-20 10:37:51'),(512,'127.0.0.1',NULL,'2013-10-20 10:37:51'),(513,'127.0.0.1',NULL,'2013-10-20 10:37:51'),(514,'127.0.0.1',NULL,'2013-10-20 11:11:34'),(515,'127.0.0.1',NULL,'2013-10-20 11:11:34'),(516,'127.0.0.1',NULL,'2013-10-20 11:52:56'),(517,'127.0.0.1',NULL,'2013-10-20 11:52:56'),(518,'127.0.0.1',NULL,'2013-10-20 11:52:56'),(519,'127.0.0.1',NULL,'2013-10-20 11:52:56'),(520,'127.0.0.1',NULL,'2013-10-20 14:33:32'),(521,'127.0.0.1',NULL,'2013-10-20 15:44:49'),(522,'127.0.0.1',NULL,'2013-10-20 16:52:12'),(523,'127.0.0.1',NULL,'2013-10-20 16:56:39'),(524,'127.0.0.1',NULL,'2013-10-20 17:05:01'),(525,'127.0.0.1',NULL,'2013-10-20 17:18:59'),(526,'127.0.0.1',NULL,'2013-10-20 17:21:44'),(527,'127.0.0.1',NULL,'2013-10-20 17:50:02'),(528,'127.0.0.1',NULL,'2013-10-20 18:01:47'),(529,'127.0.0.1',NULL,'2013-10-20 18:03:32'),(530,'127.0.0.1',NULL,'2013-10-20 18:07:52'),(531,'127.0.0.1',NULL,'2013-10-20 18:13:50'),(532,'127.0.0.1',NULL,'2013-10-20 18:18:46'),(533,'127.0.0.1',NULL,'2013-10-20 19:46:34'),(534,'127.0.0.1',NULL,'2013-10-20 20:22:51'),(535,'127.0.0.1',NULL,'2013-10-20 21:14:20'),(536,'127.0.0.1',NULL,'2013-10-20 21:27:55'),(537,'127.0.0.1',NULL,'2013-10-20 22:33:06'),(538,'127.0.0.1',NULL,'2013-10-20 22:41:25'),(539,'127.0.0.1',NULL,'2013-10-20 22:53:31'),(540,'127.0.0.1',NULL,'2013-10-20 22:55:19'),(541,'127.0.0.1',NULL,'2013-10-20 23:02:32'),(542,'127.0.0.1',NULL,'2013-10-20 23:04:37'),(543,'127.0.0.1',NULL,'2013-10-20 23:06:30'),(544,'127.0.0.1',NULL,'2013-10-20 23:08:34'),(545,'127.0.0.1',NULL,'2013-10-20 23:11:44'),(546,'127.0.0.1',NULL,'2013-10-20 23:19:09'),(547,'127.0.0.1',NULL,'2013-10-21 21:45:44'),(548,'127.0.0.1',NULL,'2013-10-22 00:14:03'),(549,'127.0.0.1',NULL,'2013-10-22 00:14:32'),(550,'127.0.0.1',NULL,'2013-10-22 07:41:33'),(551,'127.0.0.1',NULL,'2013-10-22 07:55:46'),(552,'127.0.0.1',NULL,'2013-10-22 22:35:53'),(553,'127.0.0.1',NULL,'2013-10-22 22:48:01'),(554,'127.0.0.1',NULL,'2013-10-22 22:53:32'),(555,'127.0.0.1',NULL,'2013-10-22 22:58:06'),(556,'127.0.0.1',NULL,'2013-10-22 23:11:08'),(557,'0:0:0:0:0:0:0:1',NULL,'2013-10-22 23:18:23'),(558,'127.0.0.1',NULL,'2013-10-22 23:18:36'),(559,'127.0.0.1',NULL,'2013-10-22 23:23:35'),(560,'127.0.0.1',NULL,'2013-10-22 23:29:23'),(561,'127.0.0.1',NULL,'2013-10-22 23:49:31'),(562,'127.0.0.1',NULL,'2013-10-23 00:04:46'),(563,'127.0.0.1',NULL,'2013-10-23 00:07:54'),(564,'127.0.0.1',NULL,'2013-10-23 00:10:45'),(565,'127.0.0.1',NULL,'2013-10-23 00:12:59'),(566,'127.0.0.1',NULL,'2013-10-23 00:16:38'),(567,'127.0.0.1',NULL,'2013-10-23 20:29:52'),(568,'127.0.0.1',NULL,'2013-10-23 20:52:34'),(569,'127.0.0.1',NULL,'2013-10-23 21:34:00'),(570,'127.0.0.1',NULL,'2013-10-23 21:35:43'),(571,'127.0.0.1',NULL,'2013-10-23 21:36:51'),(572,'127.0.0.1',NULL,'2013-10-23 21:59:15'),(573,'127.0.0.1',NULL,'2013-10-23 22:07:25'),(574,'127.0.0.1',NULL,'2013-10-23 22:10:20'),(575,'127.0.0.1',NULL,'2013-10-23 22:21:35'),(576,'127.0.0.1',NULL,'2013-10-23 22:43:22'),(577,'127.0.0.1',NULL,'2013-10-23 22:50:16'),(578,'127.0.0.1',NULL,'2013-10-23 22:53:00'),(579,'127.0.0.1',NULL,'2013-10-23 22:54:51'),(580,'127.0.0.1',NULL,'2013-10-23 23:17:34'),(581,'127.0.0.1',NULL,'2013-10-23 23:24:08'),(582,'127.0.0.1',NULL,'2013-10-23 23:26:00'),(583,'127.0.0.1',NULL,'2013-10-23 23:27:47'),(584,'127.0.0.1',NULL,'2013-10-23 23:37:49'),(585,'127.0.0.1',NULL,'2013-10-23 23:44:12'),(586,'127.0.0.1',NULL,'2013-10-23 23:51:38'),(587,'127.0.0.1',NULL,'2013-10-23 23:54:36'),(588,'127.0.0.1',NULL,'2013-10-23 23:58:10'),(589,'127.0.0.1',NULL,'2013-10-23 23:59:35'),(590,'127.0.0.1',NULL,'2013-10-24 00:02:33'),(591,'127.0.0.1',NULL,'2013-10-24 00:04:48'),(592,'127.0.0.1',NULL,'2013-10-24 00:06:32'),(593,'127.0.0.1',NULL,'2013-10-24 23:35:30'),(594,'127.0.0.1',NULL,'2013-10-25 00:31:40'),(595,'127.0.0.1',NULL,'2013-10-25 00:52:46'),(596,'127.0.0.1',NULL,'2013-10-25 00:57:48'),(597,'127.0.0.1',NULL,'2013-10-25 00:59:09'),(598,'127.0.0.1',NULL,'2013-10-25 01:15:36'),(599,'127.0.0.1',NULL,'2013-10-25 01:17:33'),(600,'127.0.0.1',NULL,'2013-10-26 11:13:59'),(601,'127.0.0.1',NULL,'2013-10-26 12:27:39'),(602,'127.0.0.1',NULL,'2013-10-26 12:30:43'),(603,'0:0:0:0:0:0:0:1',NULL,'2013-10-26 12:43:04'),(604,'127.0.0.1',NULL,'2013-10-26 12:44:59'),(605,'127.0.0.1',NULL,'2013-10-26 12:56:32'),(606,'127.0.0.1',NULL,'2013-10-26 13:04:35'),(607,'127.0.0.1',NULL,'2013-10-26 19:37:57'),(608,'127.0.0.1',NULL,'2013-10-26 20:12:08'),(609,'127.0.0.1',NULL,'2013-10-26 20:45:02'),(610,'127.0.0.1',NULL,'2013-10-26 20:55:49'),(611,'127.0.0.1',NULL,'2013-10-26 20:57:49'),(612,'127.0.0.1',NULL,'2013-10-26 22:06:31'),(613,'127.0.0.1',NULL,'2013-10-26 22:17:21'),(614,'127.0.0.1',NULL,'2013-10-26 22:26:55'),(615,'127.0.0.1',NULL,'2013-10-26 23:33:05'),(616,'127.0.0.1',NULL,'2013-10-26 23:36:09'),(617,'127.0.0.1',NULL,'2013-10-26 23:42:56'),(618,'127.0.0.1',NULL,'2013-10-27 00:00:40'),(619,'127.0.0.1',NULL,'2013-10-27 00:01:52'),(620,'127.0.0.1',NULL,'2013-10-27 00:04:14'),(621,'127.0.0.1',NULL,'2013-10-27 00:08:25'),(622,'127.0.0.1',NULL,'2013-10-27 00:16:45'),(623,'127.0.0.1',NULL,'2013-10-27 00:17:56'),(624,'127.0.0.1',NULL,'2013-10-27 00:35:31'),(625,'127.0.0.1',NULL,'2013-10-27 00:38:00'),(626,'127.0.0.1',NULL,'2013-10-27 00:47:56'),(627,'127.0.0.1',NULL,'2013-10-27 00:58:44'),(628,'127.0.0.1',NULL,'2013-10-27 01:04:07'),(629,'127.0.0.1',NULL,'2013-10-27 01:05:27'),(630,'127.0.0.1',NULL,'2013-10-27 11:06:35'),(631,'127.0.0.1',NULL,'2013-10-27 11:16:01'),(632,'127.0.0.1',NULL,'2013-10-27 11:17:59'),(633,'127.0.0.1',NULL,'2013-10-27 11:20:55'),(634,'127.0.0.1',NULL,'2013-10-27 13:32:47'),(635,'127.0.0.1',NULL,'2013-10-27 13:32:47'),(636,'127.0.0.1',NULL,'2013-10-27 13:32:47'),(637,'127.0.0.1',NULL,'2013-10-27 13:32:47'),(638,'127.0.0.1',NULL,'2013-10-27 13:32:47'),(639,'127.0.0.1',NULL,'2013-10-27 13:32:47'),(640,'127.0.0.1',NULL,'2013-10-27 13:32:47'),(641,'127.0.0.1',NULL,'2013-10-27 13:32:47'),(642,'127.0.0.1',NULL,'2013-10-27 13:32:47'),(643,'127.0.0.1',NULL,'2013-10-27 13:32:47'),(644,'127.0.0.1',NULL,'2013-10-27 13:32:47'),(645,'127.0.0.1',NULL,'2013-10-27 13:36:32'),(646,'127.0.0.1',NULL,'2013-10-27 13:36:32'),(647,'127.0.0.1',NULL,'2013-10-27 13:36:32'),(648,'127.0.0.1',NULL,'2013-10-27 13:36:32'),(649,'127.0.0.1',NULL,'2013-10-27 13:36:32'),(650,'127.0.0.1',NULL,'2013-10-27 13:36:32'),(651,'127.0.0.1',NULL,'2013-10-27 13:36:32'),(652,'127.0.0.1',NULL,'2013-10-27 16:22:03'),(653,'127.0.0.1',NULL,'2013-10-27 16:26:45'),(654,'127.0.0.1',NULL,'2013-10-27 16:26:46'),(655,'127.0.0.1',NULL,'2013-10-27 16:26:46'),(656,'127.0.0.1',NULL,'2013-10-27 16:26:46'),(657,'127.0.0.1',NULL,'2013-10-27 16:26:46'),(658,'127.0.0.1',NULL,'2013-10-27 16:26:46'),(659,'127.0.0.1',NULL,'2013-10-27 16:26:46'),(660,'127.0.0.1',NULL,'2013-10-27 16:26:46'),(661,'127.0.0.1',NULL,'2013-10-27 16:26:46'),(662,'127.0.0.1',NULL,'2013-10-27 16:26:46'),(663,'127.0.0.1',NULL,'2013-10-27 16:26:46'),(664,'127.0.0.1',NULL,'2013-10-27 20:15:27'),(665,'127.0.0.1',NULL,'2013-10-27 20:15:35'),(666,'127.0.0.1',NULL,'2013-10-27 20:15:35'),(667,'127.0.0.1',NULL,'2013-10-27 20:15:35'),(668,'127.0.0.1',NULL,'2013-10-27 20:15:35'),(669,'127.0.0.1',NULL,'2013-10-27 20:15:35'),(670,'127.0.0.1',NULL,'2013-10-27 20:15:35'),(671,'127.0.0.1',NULL,'2013-10-27 20:20:12'),(672,'127.0.0.1',NULL,'2013-10-27 20:24:50'),(673,'127.0.0.1',NULL,'2013-10-31 23:12:06'),(674,'127.0.0.1',NULL,'2013-10-31 23:12:06'),(675,'127.0.0.1',NULL,'2013-10-31 23:12:06'),(676,'127.0.0.1',NULL,'2013-10-31 23:12:06'),(677,'127.0.0.1',NULL,'2013-10-31 23:12:06'),(678,'127.0.0.1',NULL,'2013-10-31 23:12:06'),(679,'127.0.0.1',NULL,'2013-10-31 23:12:06'),(680,'127.0.0.1',NULL,'2013-10-31 23:12:06'),(681,'127.0.0.1',NULL,'2013-10-31 23:12:06'),(682,'127.0.0.1',NULL,'2013-10-31 23:12:06'),(683,'127.0.0.1',NULL,'2013-10-31 23:12:06'),(684,'127.0.0.1',NULL,'2013-11-09 22:44:23'),(685,'127.0.0.1',NULL,'2013-11-09 23:15:43'),(686,'127.0.0.1',NULL,'2013-11-09 23:39:04'),(687,'127.0.0.1',NULL,'2013-11-09 23:39:04'),(688,'127.0.0.1',NULL,'2013-11-09 23:39:04'),(689,'127.0.0.1',NULL,'2013-11-09 23:39:04'),(690,'127.0.0.1',NULL,'2013-11-09 23:39:04'),(691,'127.0.0.1',NULL,'2013-11-09 23:39:04'),(692,'127.0.0.1',NULL,'2013-11-09 23:39:04'),(693,'127.0.0.1',NULL,'2013-11-09 23:39:04'),(694,'127.0.0.1',NULL,'2013-11-09 23:39:04'),(695,'127.0.0.1',NULL,'2013-11-09 23:39:04'),(696,'127.0.0.1',NULL,'2013-11-09 23:39:04'),(697,'127.0.0.1',NULL,'2013-11-23 14:18:34'),(698,'127.0.0.1',NULL,'2013-11-23 14:18:34'),(699,'127.0.0.1',NULL,'2013-11-23 14:18:34'),(700,'127.0.0.1',NULL,'2013-11-23 14:18:34'),(701,'127.0.0.1',NULL,'2013-11-23 14:18:34'),(702,'127.0.0.1',NULL,'2013-11-23 14:18:34'),(703,'127.0.0.1',NULL,'2013-11-23 14:18:34'),(704,'127.0.0.1',NULL,'2013-11-23 14:18:34'),(705,'127.0.0.1',NULL,'2013-11-23 14:18:34'),(706,'127.0.0.1',NULL,'2013-11-23 14:18:34'),(707,'127.0.0.1',NULL,'2013-11-23 14:18:34'),(708,'127.0.0.1',NULL,'2013-11-23 19:23:08'),(709,'127.0.0.1',NULL,'2013-11-23 19:23:08'),(710,'127.0.0.1',NULL,'2013-11-23 19:23:08'),(711,'127.0.0.1',NULL,'2013-11-23 19:23:08'),(712,'127.0.0.1',NULL,'2013-11-23 19:23:08'),(713,'127.0.0.1',NULL,'2013-11-23 19:23:08'),(714,'127.0.0.1',NULL,'2013-11-23 19:23:08'),(715,'127.0.0.1',NULL,'2013-11-23 19:23:08'),(716,'127.0.0.1',NULL,'2013-11-23 19:23:08'),(717,'127.0.0.1',NULL,'2013-11-23 19:23:08'),(718,'127.0.0.1',NULL,'2013-11-23 23:35:26'),(719,'127.0.0.1',NULL,'2013-11-23 23:47:37'),(720,'127.0.0.1',NULL,'2013-11-24 00:05:56'),(721,'127.0.0.1',NULL,'2013-11-24 00:08:56'),(722,'127.0.0.1',NULL,'2013-11-24 00:36:31'),(723,'127.0.0.1',NULL,'2013-11-28 22:57:13'),(724,'127.0.0.1',NULL,'2013-11-28 23:19:50'),(725,'127.0.0.1',NULL,'2013-11-29 00:09:09'),(726,'127.0.0.1',NULL,'2013-11-29 22:25:50'),(727,'127.0.0.1',NULL,'2013-11-29 22:32:27'),(728,'127.0.0.1',NULL,'2013-11-29 23:04:30'),(729,'127.0.0.1',NULL,'2013-11-29 23:05:13'),(730,'127.0.0.1',NULL,'2013-11-29 23:05:45'),(731,'127.0.0.1',NULL,'2013-11-29 23:11:55'),(732,'127.0.0.1',NULL,'2013-11-29 23:22:19'),(733,'127.0.0.1',NULL,'2013-11-29 23:24:18'),(734,'127.0.0.1',NULL,'2013-11-30 00:16:31'),(735,'127.0.0.1',NULL,'2013-11-30 00:20:29'),(736,'127.0.0.1',NULL,'2013-11-30 00:22:09'),(737,'127.0.0.1',NULL,'2013-11-30 00:28:40'),(738,'127.0.0.1',NULL,'2013-11-30 00:30:25'),(739,'127.0.0.1',NULL,'2013-11-30 00:32:34'),(740,'127.0.0.1',NULL,'2013-11-30 00:55:34'),(741,'127.0.0.1',NULL,'2013-11-30 01:23:38'),(742,'127.0.0.1',NULL,'2013-11-30 01:28:14'),(743,'127.0.0.1',NULL,'2013-11-30 16:36:52'),(744,'127.0.0.1',NULL,'2013-11-30 17:04:05'),(745,'127.0.0.1',NULL,'2013-11-30 17:19:53'),(746,'127.0.0.1',NULL,'2013-11-30 17:35:08'),(747,'127.0.0.1',NULL,'2013-11-30 17:39:43'),(748,'127.0.0.1',NULL,'2013-11-30 17:48:13'),(749,'127.0.0.1',NULL,'2013-11-30 17:48:13'),(750,'127.0.0.1',NULL,'2013-11-30 17:48:13'),(751,'127.0.0.1',NULL,'2013-11-30 17:48:13'),(752,'127.0.0.1',NULL,'2013-11-30 17:48:13'),(753,'127.0.0.1',NULL,'2013-11-30 17:48:13'),(754,'127.0.0.1',NULL,'2013-11-30 17:48:13'),(755,'127.0.0.1',NULL,'2013-11-30 17:48:13'),(756,'127.0.0.1',NULL,'2013-11-30 17:48:13'),(757,'127.0.0.1',NULL,'2013-11-30 17:48:13'),(758,'127.0.0.1',NULL,'2013-11-30 19:13:18'),(759,'127.0.0.1',NULL,'2013-11-30 19:13:18'),(760,'127.0.0.1',NULL,'2013-11-30 19:13:18'),(761,'127.0.0.1',NULL,'2013-11-30 19:13:18'),(762,'127.0.0.1',NULL,'2013-11-30 19:13:18'),(763,'127.0.0.1',NULL,'2013-11-30 19:13:18'),(764,'127.0.0.1',NULL,'2013-11-30 19:47:23'),(765,'127.0.0.1',NULL,'2013-11-30 19:47:23'),(766,'127.0.0.1',NULL,'2013-11-30 19:47:23'),(767,'127.0.0.1',NULL,'2013-11-30 19:47:23'),(768,'127.0.0.1',NULL,'2013-11-30 19:47:23'),(769,'127.0.0.1',NULL,'2013-11-30 19:47:23'),(770,'127.0.0.1',NULL,'2013-11-30 19:47:23'),(771,'127.0.0.1',NULL,'2013-11-30 19:47:23'),(772,'127.0.0.1',NULL,'2013-11-30 19:47:23'),(773,'127.0.0.1',NULL,'2013-11-30 19:47:23'),(774,'127.0.0.1',NULL,'2013-11-30 19:47:23'),(775,'127.0.0.1',NULL,'2013-11-30 19:47:24'),(776,'127.0.0.1',NULL,'2013-11-30 20:26:14'),(777,'127.0.0.1',NULL,'2013-11-30 20:26:14'),(778,'127.0.0.1',NULL,'2013-11-30 21:07:36'),(779,'127.0.0.1',NULL,'2013-11-30 21:10:43'),(780,'127.0.0.1',NULL,'2013-11-30 21:13:42'),(781,'127.0.0.1',NULL,'2013-11-30 21:13:42'),(782,'127.0.0.1',NULL,'2013-11-30 21:13:42'),(783,'127.0.0.1',NULL,'2013-11-30 21:13:42'),(784,'127.0.0.1',NULL,'2013-11-30 21:13:42'),(785,'127.0.0.1',NULL,'2013-11-30 21:25:41'),(786,'127.0.0.1',NULL,'2013-11-30 21:25:41'),(787,'127.0.0.1',NULL,'2013-11-30 21:25:41'),(788,'127.0.0.1',NULL,'2013-11-30 21:25:41'),(789,'127.0.0.1',NULL,'2013-11-30 21:25:41'),(790,'127.0.0.1',NULL,'2013-11-30 21:25:41'),(791,'127.0.0.1',NULL,'2013-11-30 21:25:41'),(792,'127.0.0.1',NULL,'2013-11-30 21:41:59'),(793,'127.0.0.1',NULL,'2013-11-30 21:41:59'),(794,'127.0.0.1',NULL,'2013-11-30 21:49:57'),(795,'127.0.0.1',NULL,'2013-11-30 21:49:57'),(796,'127.0.0.1',NULL,'2013-11-30 22:05:04'),(797,'127.0.0.1',NULL,'2013-11-30 22:15:27'),(798,'127.0.0.1',NULL,'2013-12-01 00:10:42'),(799,'127.0.0.1',NULL,'2013-12-01 00:40:52'),(800,'127.0.0.1',NULL,'2013-12-01 00:46:50'),(801,'127.0.0.1',NULL,'2013-12-01 00:46:50'),(802,'127.0.0.1',NULL,'2013-12-01 00:46:50'),(803,'127.0.0.1',NULL,'2013-12-01 00:46:50'),(804,'127.0.0.1',NULL,'2013-12-01 00:46:50'),(805,'127.0.0.1',NULL,'2013-12-01 00:46:50'),(806,'127.0.0.1',NULL,'2013-12-01 00:46:50'),(807,'127.0.0.1',NULL,'2013-12-01 00:57:41'),(808,'127.0.0.1',NULL,'2013-12-01 01:19:04'),(809,'127.0.0.1',NULL,'2013-12-01 01:22:14'),(810,'127.0.0.1',NULL,'2013-12-01 01:24:19'),(811,'127.0.0.1',NULL,'2013-12-01 13:45:13'),(812,'127.0.0.1',NULL,'2013-12-01 17:01:21'),(813,'127.0.0.1',NULL,'2013-12-01 17:27:25'),(814,'127.0.0.1',NULL,'2013-12-01 17:27:25'),(815,'127.0.0.1',NULL,'2013-12-01 17:45:58'),(816,'127.0.0.1',NULL,'2013-12-01 20:13:29'),(817,'127.0.0.1',NULL,'2013-12-01 20:13:29'),(818,'127.0.0.1',NULL,'2013-12-01 20:22:25'),(819,'127.0.0.1',NULL,'2013-12-01 21:20:46'),(820,'127.0.0.1',NULL,'2013-12-01 21:22:20'),(821,'127.0.0.1',NULL,'2013-12-01 21:23:27'),(822,'127.0.0.1',NULL,'2013-12-01 21:30:06'),(823,'127.0.0.1',NULL,'2013-12-01 22:11:50'),(824,'127.0.0.1',NULL,'2013-12-01 22:12:43'),(825,'127.0.0.1',NULL,'2013-12-01 22:14:49'),(826,'127.0.0.1',NULL,'2013-12-01 22:41:57'),(827,'127.0.0.1',NULL,'2013-12-01 22:46:37'),(828,'127.0.0.1',NULL,'2013-12-01 23:15:04'),(829,'127.0.0.1',NULL,'2013-12-01 23:26:10'),(830,'127.0.0.1',NULL,'2013-12-06 21:22:41'),(831,'127.0.0.1',NULL,'2013-12-06 22:26:01'),(832,'127.0.0.1',NULL,'2013-12-06 22:26:01'),(833,'127.0.0.1',NULL,'2013-12-07 19:07:40'),(834,'127.0.0.1',NULL,'2013-12-08 10:35:09'),(835,'127.0.0.1',NULL,'2013-12-08 10:35:09'),(836,'127.0.0.1',NULL,'2013-12-08 10:35:09'),(837,'127.0.0.1',NULL,'2013-12-08 10:35:09'),(838,'127.0.0.1',NULL,'2013-12-08 10:35:09'),(839,'127.0.0.1',NULL,'2013-12-08 10:35:09'),(840,'127.0.0.1',NULL,'2013-12-08 10:35:09'),(841,'127.0.0.1',NULL,'2013-12-08 10:35:09'),(842,'127.0.0.1',NULL,'2013-12-08 10:48:42'),(843,'127.0.0.1',NULL,'2013-12-08 10:48:42'),(844,'127.0.0.1',NULL,'2013-12-08 10:48:42'),(845,'127.0.0.1',NULL,'2013-12-08 11:22:44'),(846,'127.0.0.1',NULL,'2013-12-08 11:22:44'),(847,'127.0.0.1',NULL,'2013-12-08 11:22:44'),(848,'127.0.0.1',NULL,'2013-12-08 11:22:44'),(849,'127.0.0.1',NULL,'2013-12-08 11:22:44'),(850,'127.0.0.1',NULL,'2013-12-08 11:22:44'),(851,'127.0.0.1',NULL,'2013-12-08 13:12:41'),(852,'127.0.0.1',NULL,'2013-12-08 13:12:41'),(853,'127.0.0.1',NULL,'2013-12-08 18:45:41'),(854,'127.0.0.1',NULL,'2013-12-08 20:16:57'),(855,'127.0.0.1',NULL,'2013-12-08 20:16:57'),(856,'127.0.0.1',NULL,'2013-12-08 20:16:58'),(857,'127.0.0.1',NULL,'2013-12-08 20:16:58'),(858,'127.0.0.1',NULL,'2013-12-08 20:16:58'),(859,'127.0.0.1',NULL,'2013-12-08 20:16:58'),(860,'127.0.0.1',NULL,'2013-12-08 20:16:58'),(861,'127.0.0.1',NULL,'2013-12-08 20:16:58'),(862,'127.0.0.1',NULL,'2013-12-16 23:45:13'),(863,'127.0.0.1',NULL,'2013-12-16 23:45:13'),(864,'127.0.0.1',NULL,'2013-12-16 23:45:14'),(865,'127.0.0.1',NULL,'2013-12-16 23:45:14'),(866,'127.0.0.1',NULL,'2013-12-16 23:45:14'),(867,'127.0.0.1',NULL,'2013-12-16 23:45:14'),(868,'127.0.0.1',NULL,'2013-12-16 23:45:14'),(869,'127.0.0.1',NULL,'2013-12-16 23:45:14'),(870,'127.0.0.1',NULL,'2013-12-18 22:05:22'),(871,'127.0.0.1',NULL,'2013-12-18 22:05:22'),(872,'127.0.0.1',NULL,'2013-12-18 22:05:22'),(873,'127.0.0.1',NULL,'2013-12-18 22:05:23'),(874,'127.0.0.1',NULL,'2013-12-18 22:05:22'),(875,'127.0.0.1',NULL,'2013-12-18 22:05:22'),(876,'127.0.0.1',NULL,'2013-12-18 22:05:23'),(877,'127.0.0.1',NULL,'2013-12-18 22:05:23'),(878,'127.0.0.1',NULL,'2013-12-18 22:05:23'),(879,'127.0.0.1',NULL,'2013-12-18 22:05:23'),(880,'127.0.0.1',NULL,'2013-12-18 22:05:23'),(881,'127.0.0.1',NULL,'2013-12-19 23:08:46'),(882,'127.0.0.1',NULL,'2013-12-19 23:08:46'),(883,'127.0.0.1',NULL,'2013-12-19 23:08:46'),(884,'127.0.0.1',NULL,'2013-12-19 23:08:46'),(885,'127.0.0.1',NULL,'2013-12-19 23:08:46'),(886,'127.0.0.1',NULL,'2013-12-19 23:08:46'),(887,'127.0.0.1',NULL,'2013-12-19 23:08:47'),(888,'127.0.0.1',NULL,'2013-12-19 23:08:47'),(889,'127.0.0.1',NULL,'2013-12-19 23:08:47'),(890,'127.0.0.1',NULL,'2013-12-19 23:08:47'),(891,'127.0.0.1',NULL,'2013-12-21 14:30:36'),(892,'127.0.0.1',NULL,'2013-12-21 14:38:16'),(893,'127.0.0.1',NULL,'2013-12-21 14:54:49'),(894,'127.0.0.1',NULL,'2013-12-21 15:07:30'),(895,'127.0.0.1',NULL,'2013-12-21 15:07:30'),(896,'127.0.0.1',NULL,'2013-12-21 15:07:30'),(897,'127.0.0.1',NULL,'2013-12-21 15:07:30'),(898,'127.0.0.1',NULL,'2013-12-21 15:17:12'),(899,'127.0.0.1',NULL,'2013-12-21 15:17:12'),(900,'127.0.0.1',NULL,'2013-12-21 15:17:12'),(901,'127.0.0.1',NULL,'2013-12-21 15:17:12'),(902,'127.0.0.1',NULL,'2013-12-21 15:17:12'),(903,'127.0.0.1',NULL,'2013-12-21 15:17:12'),(904,'127.0.0.1',NULL,'2013-12-21 15:17:12'),(905,'127.0.0.1',NULL,'2013-12-21 15:17:12'),(906,'127.0.0.1',NULL,'2013-12-21 15:17:13'),(907,'127.0.0.1',NULL,'2013-12-21 15:17:13'),(908,'127.0.0.1',NULL,'2013-12-21 15:17:13'),(909,'127.0.0.1',NULL,'2013-12-21 15:17:13'),(910,'127.0.0.1',NULL,'2013-12-21 15:17:13'),(911,'127.0.0.1',NULL,'2013-12-21 15:17:13'),(912,'127.0.0.1',NULL,'2013-12-21 15:17:13'),(913,'127.0.0.1',NULL,'2013-12-21 15:43:48'),(914,'127.0.0.1',NULL,'2013-12-21 15:58:44'),(915,'127.0.0.1',NULL,'2013-12-21 15:58:44'),(916,'127.0.0.1',NULL,'2013-12-21 15:58:44'),(917,'127.0.0.1',NULL,'2013-12-22 10:55:40'),(918,'127.0.0.1',NULL,'2013-12-22 11:06:49'),(919,'127.0.0.1',NULL,'2013-12-22 11:12:25'),(920,'127.0.0.1',NULL,'2013-12-22 11:24:14'),(921,'127.0.0.1',NULL,'2013-12-22 11:46:07'),(922,'127.0.0.1',NULL,'2013-12-22 11:46:07'),(923,'127.0.0.1',NULL,'2013-12-22 12:22:19'),(924,'127.0.0.1',NULL,'2013-12-22 12:35:00'),(925,'127.0.0.1',NULL,'2013-12-22 12:49:19'),(926,'127.0.0.1',NULL,'2013-12-22 13:01:48'),(927,'127.0.0.1',NULL,'2013-12-22 13:23:25'),(928,'127.0.0.1',NULL,'2013-12-22 15:11:17'),(929,'127.0.0.1',NULL,'2013-12-22 15:14:17'),(930,'127.0.0.1',NULL,'2013-12-22 15:18:27'),(931,'127.0.0.1',NULL,'2013-12-22 15:21:01'),(932,'127.0.0.1',NULL,'2013-12-22 16:02:23'),(933,'127.0.0.1',NULL,'2013-12-22 16:06:54'),(934,'127.0.0.1',NULL,'2013-12-22 16:13:03'),(935,'127.0.0.1',NULL,'2013-12-22 16:42:34'),(936,'127.0.0.1',NULL,'2013-12-22 16:57:48'),(937,'127.0.0.1',NULL,'2013-12-22 16:59:10'),(938,'127.0.0.1',NULL,'2013-12-22 17:04:46'),(939,'127.0.0.1',NULL,'2013-12-22 17:11:45'),(940,'127.0.0.1',NULL,'2013-12-22 17:45:54'),(941,'127.0.0.1',NULL,'2013-12-22 17:47:49'),(942,'127.0.0.1',NULL,'2013-12-22 17:50:45'),(943,'127.0.0.1',NULL,'2013-12-22 17:52:08'),(944,'127.0.0.1',NULL,'2013-12-22 17:56:16'),(945,'127.0.0.1',NULL,'2013-12-22 17:57:38'),(946,'127.0.0.1',NULL,'2013-12-22 18:01:14'),(947,'127.0.0.1',NULL,'2013-12-22 19:23:49'),(948,'127.0.0.1',NULL,'2013-12-22 19:43:05'),(949,'127.0.0.1',NULL,'2013-12-22 19:44:40'),(950,'127.0.0.1',NULL,'2013-12-22 19:45:25'),(951,'127.0.0.1',NULL,'2013-12-22 20:15:13'),(952,'127.0.0.1',NULL,'2013-12-22 20:19:35'),(953,'127.0.0.1',NULL,'2013-12-22 20:24:23'),(954,'127.0.0.1',NULL,'2013-12-22 20:52:38'),(955,'127.0.0.1',NULL,'2013-12-22 21:22:10'),(956,'127.0.0.1',NULL,'2013-12-22 21:24:40'),(957,'127.0.0.1',NULL,'2013-12-22 21:31:35'),(958,'127.0.0.1',NULL,'2013-12-22 21:33:35'),(959,'127.0.0.1',NULL,'2013-12-22 21:36:06'),(960,'127.0.0.1',NULL,'2013-12-22 21:59:30'),(961,'127.0.0.1',NULL,'2013-12-22 22:17:45'),(962,'127.0.0.1',NULL,'2013-12-23 22:03:27'),(963,'127.0.0.1',NULL,'2013-12-23 22:30:22'),(964,'127.0.0.1',NULL,'2013-12-23 22:30:22'),(965,'127.0.0.1',NULL,'2013-12-28 01:31:36'),(966,'127.0.0.1',NULL,'2013-12-28 02:03:49'),(967,'127.0.0.1',NULL,'2013-12-28 02:11:30'),(968,'127.0.0.1',NULL,'2013-12-29 02:08:14'),(969,'127.0.0.1',NULL,'2013-12-29 20:07:12'),(970,'127.0.0.1',NULL,'2013-12-29 20:07:12'),(971,'127.0.0.1',NULL,'2013-12-29 20:07:12'),(972,'127.0.0.1',NULL,'2013-12-29 20:07:12'),(973,'127.0.0.1',NULL,'2013-12-29 20:07:12'),(974,'127.0.0.1',NULL,'2013-12-29 20:07:12'),(975,'127.0.0.1',NULL,'2013-12-29 20:07:12'),(976,'127.0.0.1',NULL,'2013-12-29 20:07:12'),(977,'127.0.0.1',NULL,'2013-12-29 20:07:12'),(978,'127.0.0.1',NULL,'2013-12-29 20:07:12'),(979,'127.0.0.1',NULL,'2013-12-30 00:16:07'),(980,'127.0.0.1',NULL,'2013-12-30 00:16:07'),(981,'127.0.0.1',NULL,'2013-12-30 00:16:07'),(982,'127.0.0.1',NULL,'2013-12-30 00:16:07'),(983,'127.0.0.1',NULL,'2013-12-30 00:16:07'),(984,'127.0.0.1',NULL,'2013-12-30 00:16:07'),(985,'127.0.0.1',NULL,'2013-12-30 00:16:08'),(986,'127.0.0.1',NULL,'2013-12-30 00:16:08'),(987,'127.0.0.1',NULL,'2014-01-03 15:46:02'),(988,'127.0.0.1',NULL,'2014-01-05 14:39:33'),(989,'127.0.0.1',NULL,'2014-01-05 14:43:14'),(990,'127.0.0.1',NULL,'2014-01-05 14:43:14'),(991,'127.0.0.1',NULL,'2014-01-05 14:43:14'),(992,'127.0.0.1',NULL,'2014-01-05 14:43:14'),(993,'127.0.0.1',NULL,'2014-01-05 14:43:14'),(994,'127.0.0.1',NULL,'2014-01-05 14:43:14'),(995,'127.0.0.1',NULL,'2014-01-05 14:43:14'),(996,'127.0.0.1',NULL,'2014-01-05 14:43:14'),(997,'127.0.0.1',NULL,'2014-01-05 14:43:14'),(998,'127.0.0.1',NULL,'2014-01-05 14:43:14'),(999,'127.0.0.1',NULL,'2014-01-05 14:45:45'),(1000,'127.0.0.1',NULL,'2014-01-05 16:52:31'),(1001,'127.0.0.1',NULL,'2014-01-05 17:08:30'),(1002,'127.0.0.1',NULL,'2014-01-05 17:20:15'),(1003,'127.0.0.1',NULL,'2014-01-05 17:20:15'),(1004,'127.0.0.1',NULL,'2014-01-05 17:50:50'),(1005,'127.0.0.1',NULL,'2014-01-07 20:17:34'),(1006,'127.0.0.1',NULL,'2014-01-16 20:17:12'),(1007,'127.0.0.1',NULL,'2014-01-16 20:53:57'),(1008,'127.0.0.1',NULL,'2014-01-16 22:58:50'),(1009,'127.0.0.1',NULL,'2014-01-16 23:05:30'),(1010,'127.0.0.1',NULL,'2014-01-16 23:08:19'),(1011,'127.0.0.1',NULL,'2014-01-16 23:21:08'),(1012,'127.0.0.1',NULL,'2014-01-17 00:16:59'),(1013,'127.0.0.1',NULL,'2014-01-17 07:45:13'),(1014,'127.0.0.1',NULL,'2014-01-17 08:14:10'),(1015,'127.0.0.1',NULL,'2014-01-17 08:35:28'),(1016,'127.0.0.1',NULL,'2014-01-17 08:52:06'),(1017,'127.0.0.1',NULL,'2014-01-17 09:10:40'),(1018,'127.0.0.1',NULL,'2014-01-17 09:10:40'),(1019,'127.0.0.1',NULL,'2014-01-17 09:10:40'),(1020,'127.0.0.1',NULL,'2014-01-17 09:10:40'),(1021,'127.0.0.1',NULL,'2014-01-17 09:10:40'),(1022,'127.0.0.1',NULL,'2014-01-17 09:10:41'),(1023,'127.0.0.1',NULL,'2014-01-17 12:51:16'),(1024,'127.0.0.1',NULL,'2014-01-17 12:56:33'),(1025,'127.0.0.1',NULL,'2014-01-17 13:27:50'),(1026,'127.0.0.1',NULL,'2014-01-17 13:41:19'),(1027,'127.0.0.1',NULL,'2014-01-17 15:15:48'),(1028,'127.0.0.1',NULL,'2014-01-17 15:58:08'),(1029,'127.0.0.1',NULL,'2014-01-17 16:54:39'),(1030,'127.0.0.1',NULL,'2014-01-17 17:00:34'),(1031,'127.0.0.1',NULL,'2014-01-19 11:52:19'),(1032,'127.0.0.1',NULL,'2014-01-19 12:09:27'),(1033,'127.0.0.1',NULL,'2014-01-19 12:19:47'),(1034,'127.0.0.1',NULL,'2014-01-19 12:42:19'),(1035,'127.0.0.1',NULL,'2014-01-19 13:31:59'),(1036,'127.0.0.1',NULL,'2014-01-19 13:38:07'),(1037,'127.0.0.1',NULL,'2014-01-19 13:45:31'),(1038,'127.0.0.1',NULL,'2014-01-19 16:17:31'),(1039,'127.0.0.1',NULL,'2014-01-19 16:27:20'),(1040,'127.0.0.1',NULL,'2014-01-19 16:32:34'),(1041,'127.0.0.1',NULL,'2014-01-19 16:47:11'),(1042,'127.0.0.1',NULL,'2014-01-19 16:56:38'),(1043,'127.0.0.1',NULL,'2014-01-19 17:00:23'),(1044,'127.0.0.1',NULL,'2014-01-19 17:02:42'),(1045,'127.0.0.1',NULL,'2014-01-19 17:07:09'),(1046,'127.0.0.1',NULL,'2014-01-19 17:08:18'),(1047,'127.0.0.1',NULL,'2014-01-19 18:06:40'),(1048,'127.0.0.1',NULL,'2014-01-19 18:14:19'),(1049,'127.0.0.1',NULL,'2014-01-19 18:17:12'),(1050,'127.0.0.1',NULL,'2014-01-19 18:30:22'),(1051,'127.0.0.1',NULL,'2014-01-19 19:05:33'),(1052,'127.0.0.1',NULL,'2014-01-19 19:08:15'),(1053,'127.0.0.1',NULL,'2014-01-19 19:10:49'),(1054,'127.0.0.1',NULL,'2014-01-19 19:23:01'),(1055,'127.0.0.1',NULL,'2014-01-19 21:48:15'),(1056,'127.0.0.1',NULL,'2014-01-20 08:21:46'),(1057,'127.0.0.1',NULL,'2014-01-20 09:03:09'),(1058,'127.0.0.1',NULL,'2014-01-20 09:04:52'),(1059,'127.0.0.1',NULL,'2014-01-20 09:05:46'),(1060,'127.0.0.1',NULL,'2014-01-20 09:10:58'),(1061,'127.0.0.1',NULL,'2014-01-20 09:50:37'),(1062,'127.0.0.1',NULL,'2014-01-20 16:10:00'),(1063,'127.0.0.1',NULL,'2014-01-20 21:26:52'),(1064,'127.0.0.1',NULL,'2014-01-20 21:45:47'),(1065,'127.0.0.1',NULL,'2014-01-20 21:51:34'),(1066,'127.0.0.1',NULL,'2014-01-20 21:54:31'),(1067,'127.0.0.1',NULL,'2014-01-21 19:18:43'),(1068,'127.0.0.1',NULL,'2014-01-22 14:41:14'),(1069,'127.0.0.1',NULL,'2014-01-22 16:46:29'),(1070,'127.0.0.1',NULL,'2014-01-22 16:54:11'),(1071,'127.0.0.1',NULL,'2014-01-22 17:17:30'),(1072,'127.0.0.1',NULL,'2014-01-22 17:29:45'),(1073,'127.0.0.1',NULL,'2014-01-22 19:01:28'),(1074,'127.0.0.1',NULL,'2014-01-25 13:20:00'),(1075,'127.0.0.1',NULL,'2014-01-25 16:23:08'),(1076,'127.0.0.1',NULL,'2014-01-25 16:38:19'),(1077,'127.0.0.1',NULL,'2014-01-25 16:47:30'),(1078,'127.0.0.1',NULL,'2014-01-25 17:23:31'),(1079,'127.0.0.1',NULL,'2014-01-25 17:27:40'),(1080,'127.0.0.1',NULL,'2014-01-25 17:44:40'),(1081,'127.0.0.1',NULL,'2014-01-25 17:46:12'),(1082,'127.0.0.1',NULL,'2014-01-25 17:47:57'),(1083,'127.0.0.1',NULL,'2014-01-25 17:49:03'),(1084,'127.0.0.1',NULL,'2014-01-25 19:51:39'),(1085,'127.0.0.1',NULL,'2014-01-25 20:12:22'),(1086,'127.0.0.1',NULL,'2014-01-25 20:19:04'),(1087,'127.0.0.1',NULL,'2014-01-26 14:28:37'),(1088,'127.0.0.1',NULL,'2014-01-26 17:55:45'),(1089,'127.0.0.1',NULL,'2014-01-26 19:37:10'),(1090,'127.0.0.1',NULL,'2014-01-26 20:31:12'),(1091,'127.0.0.1',NULL,'2014-01-26 21:12:10'),(1092,'127.0.0.1',NULL,'2014-01-27 10:28:34'),(1093,'127.0.0.1',NULL,'2014-01-27 10:53:30'),(1094,'127.0.0.1',NULL,'2014-01-27 13:34:57'),(1095,'127.0.0.1',NULL,'2014-01-27 14:51:41'),(1096,'127.0.0.1',NULL,'2014-01-27 15:06:11'),(1097,'127.0.0.1',NULL,'2014-01-27 15:07:05'),(1098,'127.0.0.1',NULL,'2014-01-27 15:08:14'),(1099,'127.0.0.1',NULL,'2014-01-27 15:20:29'),(1100,'127.0.0.1',NULL,'2014-01-27 15:26:02'),(1101,'127.0.0.1',NULL,'2014-01-27 15:40:31'),(1102,'127.0.0.1',NULL,'2014-01-27 15:42:07'),(1103,'127.0.0.1',NULL,'2014-01-27 15:43:32'),(1104,'127.0.0.1',NULL,'2014-01-27 15:45:20');
/*!40000 ALTER TABLE `t_sessioncount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_account`
--

DROP TABLE IF EXISTS `t_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cardType` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cardNO` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade` int(11) DEFAULT '1',
  `amount` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailIsActive` varchar(2) COLLATE utf8_unicode_ci DEFAULT 'n',
  `freeze` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'n',
  `lastLoginTime` datetime DEFAULT NULL,
  `lastLoginIp` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastLoginArea` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diffAreaLogin` char(1) COLLATE utf8_unicode_ci DEFAULT 'n',
  `regeistDate` datetime DEFAULT NULL,
  `freezeStartdate` date DEFAULT NULL,
  `freezeEnddate` date DEFAULT NULL,
  `openId` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accessToken` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alipayUseId` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sinaWeiboID` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(2) COLLATE utf8_unicode_ci DEFAULT 's',
  `trueName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `province` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accountType` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank` varchar(5) COLLATE utf8_unicode_ci DEFAULT 'R1',
  `score` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_UNIQUE` (`account`),
  UNIQUE KEY `nickname_UNIQUE` (`nickname`),
  UNIQUE KEY `alipayUseId_UNIQUE` (`alipayUseId`),
  UNIQUE KEY `openId_UNIQUE` (`openId`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `sinaWeiboID_UNIQUE` (`sinaWeiboID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_account`
--

LOCK TABLES `t_account` WRITE;
/*!40000 ALTER TABLE `t_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pay`
--

DROP TABLE IF EXISTS `t_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `seller` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `order1` int(11) DEFAULT NULL,
  `status` varchar(2) COLLATE utf8_unicode_ci DEFAULT 'y',
  `partner` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key1` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pay`
--

LOCK TABLES `t_pay` WRITE;
/*!40000 ALTER TABLE `t_pay` DISABLE KEYS */;
INSERT INTO `t_pay` VALUES (1,'支付宝支付','alipay','xxx',1,'y','xxx','xxx');
/*!40000 ALTER TABLE `t_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_reply`
--

DROP TABLE IF EXISTS `t_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentID` int(11) NOT NULL,
  `content` varchar(140) NOT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_reply`
--

LOCK TABLES `t_reply` WRITE;
/*!40000 ALTER TABLE `t_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order`
--

DROP TABLE IF EXISTS `t_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `payType` int(11) DEFAULT NULL,
  `carry` int(11) DEFAULT NULL,
  `rebate` decimal(10,2) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'init',
  `refundStatus` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT '0.00',
  `fee` decimal(20,2) DEFAULT '0.00',
  `ptotal` decimal(20,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `paystatus` varchar(2) COLLATE utf8_unicode_ci DEFAULT 'n',
  `updateAmount` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'n',
  `expressCode` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expressName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otherRequirement` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(545) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expressNo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expressCompanyName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lowStocks` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'n',
  `confirmSendProductRemark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `closedComment` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `amountExchangeScore` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order`
--

LOCK TABLES `t_order` WRITE;
/*!40000 ALTER TABLE `t_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_orderpay`
--

DROP TABLE IF EXISTS `t_orderpay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_orderpay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `paystatus` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'n',
  `payamount` decimal(20,2) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `paymethod` varchar(22) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmdate` datetime DEFAULT NULL,
  `confirmuser` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tradeNo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11207 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_orderpay`
--

LOCK TABLES `t_orderpay` WRITE;
/*!40000 ALTER TABLE `t_orderpay` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_orderpay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_task`
--

DROP TABLE IF EXISTS `t_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `sleep` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `nextWorkTime` datetime NOT NULL,
  `currentStatus` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `clz` varchar(145) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_task`
--

LOCK TABLES `t_task` WRITE;
/*!40000 ALTER TABLE `t_task` DISABLE KEYS */;
INSERT INTO `t_task` VALUES (1,'SystemAutoNotifyTask','系统自动到货通知定时器','1','HOURS','2012-10-11 00:00:00','wait','net.jeeshop.core.task.SystemAutoNotifyTask'),(2,'ManageIndexReportTask','后台首页统计数据定时器','15','MINUTES','2012-10-11 00:00:00','wait','net.jeeshop.core.task.ManageIndexReportTask');
/*!40000 ALTER TABLE `t_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_questionnaireitem`
--

DROP TABLE IF EXISTS `t_questionnaireitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_questionnaireitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qid` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `option1` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `order1` int(11) DEFAULT '0',
  `display` varchar(15) COLLATE utf8_unicode_ci DEFAULT 'lines',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_questionnaireitem`
--

LOCK TABLES `t_questionnaireitem` WRITE;
/*!40000 ALTER TABLE `t_questionnaireitem` DISABLE KEYS */;
INSERT INTO `t_questionnaireitem` VALUES (13,'2','4234','423','radio',0,'lines'),(14,'2','4234','423','radio',0,'lines'),(15,'2','4234','423','radio',0,'lines'),(16,'2','4234','23423423','radio',0,'lines'),(19,'2','fdgfd','gfdgdf','radio',0,'lines'),(20,'2','fdgfd','gfdgfgfgf','radio',0,'lines'),(66,'1','456','64646','radio',0,'lines'),(67,'1','456','46','radio',0,'lines'),(114,'1','海阔天空是哪位歌星唱的？','刘德华','radio',0,'inline'),(115,'1','海阔天空是哪位歌星唱的？','张学友','radio',0,'inline'),(116,'1','海阔天空是哪位歌星唱的？','beyang','radio',0,'inline'),(117,'1','海阔天空是哪位歌星唱的？','张卫健','radio',0,'inline'),(118,'1','新中国是哪一年成立的？','1994','checkbox',0,'inline'),(119,'1','新中国是哪一年成立的？','2008','checkbox',0,'inline'),(120,'1','新中国是哪一年成立的？','2014','checkbox',0,'inline'),(121,'1','新中国是哪一年成立的？','2002','checkbox',0,'inline'),(122,'1','2222222222222222','1111','radio',0,'lines'),(123,'1','2222222222222222','撒大大','radio',0,'lines'),(124,'1','2222222222222222','dasdasdada','radio',0,'lines'),(126,'1','2112121','-','text',10,'inline'),(134,'1','世界经济危机爆发于哪一年？','哈哈哈哈哈哈哈哈哈哈','radio',1,'inline'),(135,'1','世界经济危机爆发于哪一年？','嘿嘿俄方的十分的十分上的发生','radio',1,'inline'),(136,'1','世界经济危机爆发于哪一年？','范德萨发放松放松的方式费','radio',1,'inline'),(137,'1','世界经济危机爆发于哪一年？','的撒的发的方式53453是非得失方式的方式的费法','radio',1,'inline'),(138,'1','世界经济危机爆发于哪一年？','43534','radio',1,'inline'),(139,'1','世界经济危机爆发于哪一年？','5555555','radio',1,'inline'),(140,'1','世界经济危机爆发于哪一年？','1111','radio',1,'inline');
/*!40000 ALTER TABLE `t_questionnaireitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sms`
--

DROP TABLE IF EXISTS `t_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sendTime` datetime DEFAULT NULL,
  `type` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `returnCode` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sendStatus` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sms`
--

LOCK TABLES `t_sms` WRITE;
/*!40000 ALTER TABLE `t_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_sms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-22 11:21:43
