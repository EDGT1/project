-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: localhost    Database: user
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `addr_book`
--

DROP TABLE IF EXISTS `addr_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addr_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `shu` varchar(2000) NOT NULL,
  `author` varchar(2000) NOT NULL,
  `bookdate` varchar(2000) NOT NULL,
  `publisher` varchar(2000) NOT NULL,
  `count` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addr_book`
--

LOCK TABLES `addr_book` WRITE;
/*!40000 ALTER TABLE `addr_book` DISABLE KEYS */;
INSERT INTO `addr_book` VALUES (11,'gao','2323','321321','21321','123213123','3'),(12,'gao','23210','dsad','dasdsa','','4');
/*!40000 ALTER TABLE `addr_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addr_dat`
--

DROP TABLE IF EXISTS `addr_dat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addr_dat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `numberweek` varchar(100) NOT NULL,
  `weeknumber` varchar(100) NOT NULL,
  `weekonefirst` varchar(100) NOT NULL,
  `weektwofirst` varchar(100) NOT NULL,
  `weekthreefirst` varchar(100) NOT NULL,
  `weekfourfirst` varchar(100) NOT NULL,
  `weekfivefirst` varchar(100) NOT NULL,
  `weeksixfirst` varchar(100) NOT NULL,
  `weeksevenfirst` varchar(100) NOT NULL,
  `weekonesecond` varchar(100) NOT NULL,
  `weektwosecond` varchar(100) NOT NULL,
  `weekthreesecond` varchar(100) NOT NULL,
  `weekfoursecond` varchar(100) NOT NULL,
  `weekfivesecond` varchar(100) NOT NULL,
  `weeksixsecond` varchar(100) NOT NULL,
  `weeksevensecond` varchar(100) NOT NULL,
  `weekonethird` varchar(100) NOT NULL,
  `weektwothird` varchar(100) NOT NULL,
  `weekthreethird` varchar(100) NOT NULL,
  `weekfourthird` varchar(100) NOT NULL,
  `weekfivethird` varchar(100) NOT NULL,
  `weeksixthird` varchar(100) NOT NULL,
  `weekseventhird` varchar(100) NOT NULL,
  `weekonefifth` varchar(100) NOT NULL,
  `weektwofifth` varchar(100) NOT NULL,
  `weekthreefifth` varchar(100) NOT NULL,
  `weekfourfifth` varchar(100) NOT NULL,
  `weekfivefifth` varchar(100) NOT NULL,
  `weeksixfifth` varchar(100) NOT NULL,
  `weeksevenfifth` varchar(100) NOT NULL,
  `weekonefourth` varchar(100) NOT NULL,
  `weektwofourth` varchar(100) NOT NULL,
  `weekthreefourth` varchar(100) NOT NULL,
  `weekfourfourth` varchar(100) NOT NULL,
  `weekfivefourth` varchar(100) NOT NULL,
  `weeksixfourth` varchar(100) NOT NULL,
  `weeksevenfourth` varchar(100) NOT NULL,
  `week11` varchar(100) NOT NULL,
  `week21` varchar(100) NOT NULL,
  `week31` varchar(100) NOT NULL,
  `week41` varchar(100) NOT NULL,
  `week51` varchar(100) NOT NULL,
  `week61` varchar(100) NOT NULL,
  `week71` varchar(100) NOT NULL,
  `week12` varchar(100) NOT NULL,
  `week22` varchar(100) NOT NULL,
  `week32` varchar(100) NOT NULL,
  `week42` varchar(100) NOT NULL,
  `week52` varchar(100) NOT NULL,
  `week62` varchar(100) NOT NULL,
  `week72` varchar(100) NOT NULL,
  `week13` varchar(100) NOT NULL,
  `week23` varchar(100) NOT NULL,
  `week33` varchar(100) NOT NULL,
  `week43` varchar(100) NOT NULL,
  `week53` varchar(100) NOT NULL,
  `week63` varchar(100) NOT NULL,
  `week73` varchar(100) NOT NULL,
  `week14` varchar(100) NOT NULL,
  `week24` varchar(100) NOT NULL,
  `week34` varchar(100) NOT NULL,
  `week44` varchar(100) NOT NULL,
  `week54` varchar(100) NOT NULL,
  `week64` varchar(100) NOT NULL,
  `week74` varchar(100) NOT NULL,
  `week15` varchar(100) NOT NULL,
  `week25` varchar(100) NOT NULL,
  `week35` varchar(100) NOT NULL,
  `week45` varchar(100) NOT NULL,
  `week55` varchar(100) NOT NULL,
  `week65` varchar(100) NOT NULL,
  `week75` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addr_dat`
--

LOCK TABLES `addr_dat` WRITE;
/*!40000 ALTER TABLE `addr_dat` DISABLE KEYS */;
INSERT INTO `addr_dat` VALUES (1,'gao','','1','学习','hahah','2333333333','23333333333','','','','23','','','','','','','','','','','','','','','','','','','','','','','','','','','','忙','忙','不忙','不忙','忙','不忙','不忙','忙','不忙','不忙','忙','忙','忙','忙','不忙','忙','不忙','不忙','不忙','不忙','不忙','不忙','不忙','不忙','不忙','不忙','不忙','不忙','不忙','不忙','不忙','不忙','不忙','不忙','不忙'),(2,'gao','','11','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','不忙','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(3,'gao','','2','23232','32323','13123','321321','','','','','','','21331','','','','','','','','','','','','','','','','','','','','','','','','','忙','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(4,'gao','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `addr_dat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addr_order`
--

DROP TABLE IF EXISTS `addr_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addr_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderusername` varchar(30) NOT NULL,
  `daoshi` varchar(30) NOT NULL,
  `xingming` varchar(30) NOT NULL,
  `week` varchar(200) NOT NULL,
  `day` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `where` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `shenghe` varchar(30) NOT NULL,
  `count` varchar(30) NOT NULL,
  `biaoji` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addr_order`
--

LOCK TABLES `addr_order` WRITE;
/*!40000 ALTER TABLE `addr_order` DISABLE KEYS */;
INSERT INTO `addr_order` VALUES (6,'guan','高宏','管志成','1','四','10:00-12:00','正心楼13','15636025738','同意','4','忙'),(7,'guan','高宏','管志成','1','六','16:00-18:00','正心楼13eqweqwe','15636025738','拒绝','5','不忙'),(8,'guan','高宏','管志成','1','六','16:00-18:00','正心楼13哈哈哈','15636025738','拒绝','6','不忙'),(9,'guan','高宏','管志成','1','一','8:00-10:00','正心楼13预约搞定','15636025738','拒绝','7','忙'),(13,'guan','高宏','管志成','1','日','19:00-21:00','正心楼13dsadas','15636025738','未审核','11','不忙'),(14,'ggg','高宏','哈哈','1','四','10:00-12:00','正心楼13dsadas','1122121212','未审核','12','忙');
/*!40000 ALTER TABLE `addr_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addr_user`
--

DROP TABLE IF EXISTS `addr_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addr_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `college` varchar(30) NOT NULL,
  `teachlive` varchar(2000) NOT NULL,
  `Study` varchar(30) NOT NULL,
  `Labroom` varchar(100) NOT NULL,
  `Workroom` varchar(100) NOT NULL,
  `Achievement` varchar(3000) NOT NULL,
  `yanjiufield` varchar(3000) NOT NULL,
  `keyanfield` varchar(3000) NOT NULL,
  `patent` varchar(3000) NOT NULL,
  `question` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Leixing` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addr_user`
--

LOCK TABLES `addr_user` WRITE;
/*!40000 ALTER TABLE `addr_user` DISABLE KEYS */;
INSERT INTO `addr_user` VALUES (1,'高宏','asa','156360257382333333','计算机','lailalalalaallala2333333333333\r\n\r\nasas\r\n哈哈哈哈哈哈哈\r\n\r\n2312321321312\r\n哈哈哈哈哈小米\r\n2321321321\r\nsadasdasdsa\r\n\r\ndddddddddd\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','模电','','正心楼13dsadas','\r\n学习dsadsa\r\n\r\n2312312321','哈哈\r\n\r\n\r\n','\r\n步步哦\r\n\r\n','\r\n\r\nwqewqeqweqwewq\r\ndsadsadas\r\n\r\nhahahahah\r\n哈哈\r\n23333333\r\n45656456\r\n13sdasdsadas\r\nghhsdfsdfsdf\r\nhhahahaa\r\nxiaomi\r\n\r\nhahahah','在哪？','哈尔滨哈哈','gao','root','teacher'),(2,'管志成','','15636025738','','','','','','','','','','在哪儿','5106','guan','root','student'),(3,'','','','','','','','','','','','','','','','','student'),(4,'管炸天','','123123','','','','','','','','','','哈哈','哈哈','gg','root','student'),(5,'哈哈','','1122121212','','','','','','','','','','2333','2333','ggg','root','student');
/*!40000 ALTER TABLE `addr_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addr_work`
--

DROP TABLE IF EXISTS `addr_work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addr_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `count` varchar(30) NOT NULL,
  `time` varchar(2000) NOT NULL,
  `worktravel` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addr_work`
--

LOCK TABLES `addr_work` WRITE;
/*!40000 ALTER TABLE `addr_work` DISABLE KEYS */;
INSERT INTO `addr_work` VALUES (13,'gao','3','','dsadasd');
/*!40000 ALTER TABLE `addr_work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_5886d21f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add user',7,'add_user'),(20,'Can change user',7,'change_user'),(21,'Can delete user',7,'delete_user'),(22,'Can add order',8,'add_order'),(23,'Can change order',8,'change_order'),(24,'Can delete order',8,'delete_order'),(25,'Can add work',9,'add_work'),(26,'Can change work',9,'change_work'),(27,'Can delete work',9,'delete_work'),(28,'Can add book',10,'add_book'),(29,'Can change book',10,'change_book'),(30,'Can delete book',10,'delete_book'),(31,'Can add dat',11,'add_dat'),(32,'Can change dat',11,'change_dat'),(33,'Can delete dat',11,'delete_dat');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`),
  CONSTRAINT `group_id_refs_id_f116770` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_7ceef80f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_dfbab7d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'user','addr','user'),(8,'order','addr','order'),(9,'work','addr','work'),(10,'book','addr','book'),(11,'dat','addr','dat');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('cd2e2827143f8f628e2acd74cca0f23d','MGU1NGNkYjAwOWYxZDZmODU2NGUyYWEzNzM3MGQxYWUwMGJiZDVmNjqAAn1xAS4=\n','2016-01-06 06:56:49');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-23 15:10:30
