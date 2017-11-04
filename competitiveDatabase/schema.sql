-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: competitiveDatabase
-- ------------------------------------------------------
-- Server version	5.7.20

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session');
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
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$2qBfAafrt722$hKufi/IrP2cYA3yzSt3siSWvarAJsyPDeFqMnhW+LGM=','2017-10-31 06:23:24.179865',1,'rahilhastu','','','rahilhastu@gmail.com',1,1,'2017-10-30 18:06:15.777081');
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
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details` (
  `site_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `rank` int(11) NOT NULL,
  `institute` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  UNIQUE KEY `site_id` (`site_id`,`username`),
  CONSTRAINT `details_ibfk_1` FOREIGN KEY (`site_id`, `username`) REFERENCES `users` (`site_id`, `username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details`
--

LOCK TABLES `details` WRITE;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
INSERT INTO `details` VALUES (1,'aawisong','Wisong',13,'Sciences','North Korea'),(1,'abhi_rao','Abhijith Rao',841,'PES Institute of Technology, Bangalore','India'),(1,'ACRush','Tiancheng Lou',16,'Baidu.Inc','China'),(1,'adithya123','Adithya Rao',6301,'PES Institute of Technology, Bangalore','India'),(1,'alex_2oo8','Alexey Zayakin',5,'whiteCryption','Latvia'),(1,'ccz181078','ccz',18,'Shantou Jinshan High School','China'),(1,'ceilks','Carsten Eilks',2,'FernUniversitat Hagen','Germany'),(1,'chemthan','Trung Nguyen',19,'FPT University, Vietnam','Vietnam'),(1,'coder_h','Harsh',5615,'International Institute of Information Technology, Hyderabad','India'),(1,'cueball','Mohit Mayank',1348,'PES Institute of Technology, Bangalore','India'),(1,'devansh7','Devansh ',1273,'PES Institute of Technology, Bangalore','India'),(1,'dj3500','Jakub Tarnawski',19,'Ecole polytechnique federale de Lausanne','Poland'),(1,'Fdg','Dmytro Ihnatenko',12,'Google','Ukraine'),(1,'gennady.korotkevich','Gennady Korotkevich',1,'Saint Petersburg National Research University of Information Technologies, Mechanics and Optics','Belarus'),(1,'imperfectboy','Bhaskar Kumar',1115,'PES Institute of Technology, Bangalore','India'),(1,'kewl_akshat','Akshat Maheshwari',1527,'PES Institute of Technology, Bangalore','India'),(1,'kgcstar','Korean Glorious Coding STAR',17,'Kim II-sung University','North Korea'),(1,'kollarevanth','kolla mohan subhash revanth',5650,'Gayatri Vidya Parishad college of Engineering, Visakhapatnam','India'),(1,'kutengine','SongChol Ryu',6,'Kim Chaek University of Technology','North Korea'),(1,'lebron','Bohdan',15,'Unemployed','Ukraine'),(1,'lhic','Mikhail Ipatov',8,'Lomonosov Moscow State University','Russia'),(1,'liouzhou_101','Tiny Wong',14,'Tsinghua University','China'),(1,'long10024070','NoCodeNoLife',5541,'High School for Gifted Students, Hanoi National University of Education Hanoi, Vietnam','Vietnam'),(1,'lzelos','Andr&eacute; Luiz Bittencourt',5541,'University of Brasilia','Brazil'),(1,'mmaxio','Mikhail M.',9,'Perm State University National Research','Russia'),(1,'mugurelionut','Mugurel Ionut Andreica',3,'Google Switzerland','Romania'),(1,'newbie786','newbie',1447,'PES Institute of Technology, Bangalore','India'),(1,'raagz','raghunandan sharma',1447,'PES Institute of Technology, Bangalore','India'),(1,'rahilhastu','Rahil Hastu',1088,'PES Institute of Technology, Bangalore','India'),(1,'shreesha_s','Shreesha S',1030,'PES Institute of Technology, Bangalore','India'),(1,'skyfire','Alexey Prokopnev',7,'Self Employed','Belarus'),(1,'sonysust','Shahriar',5541,'Shahjalal University of Science & Technology','Bangladesh'),(1,'uwi','uwi',4,'Recruit Communications Co., Ltd.','Japan'),(1,'waterfalls','Daniel Chiu',11,'Catlin Gabel School','United States'),(1,'zhouyuchen','Zhou, Yuchen',10,'Zhejiang University','China');
/*!40000 ALTER TABLE `details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-10-25 18:26:19.569261'),(2,'auth','0001_initial','2017-10-25 18:26:27.181284'),(3,'admin','0001_initial','2017-10-25 18:26:29.116594'),(4,'admin','0002_logentry_remove_auto_add','2017-10-25 18:26:29.249619'),(5,'contenttypes','0002_remove_content_type_name','2017-10-25 18:26:30.456938'),(6,'auth','0002_alter_permission_name_max_length','2017-10-25 18:26:30.602492'),(7,'auth','0003_alter_user_email_max_length','2017-10-25 18:26:30.714529'),(8,'auth','0004_alter_user_username_opts','2017-10-25 18:26:30.757354'),(9,'auth','0005_alter_user_last_login_null','2017-10-25 18:26:31.417679'),(10,'auth','0006_require_contenttypes_0002','2017-10-25 18:26:31.462548'),(11,'auth','0007_alter_validators_add_error_messages','2017-10-25 18:26:31.516421'),(12,'auth','0008_alter_user_username_max_length','2017-10-25 18:26:32.008797'),(13,'sessions','0001_initial','2017-10-25 18:26:32.911440');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('zygepz8aabm6zrc5mcv78233282v1jyb','OGZkYjFjY2EyZDQ4MzhjMzNmM2I0N2ViYmVhNWU2ZDAyOGJiYmJlODp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg4ZmRkOGNmZDNkZjliZjQ3ZjI3MTRkNzQ2ODJjZGE3M2JiZjkyM2UiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-11-14 06:23:24.247068');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `site_id` int(11) NOT NULL,
  `contest_code` varchar(100) NOT NULL,
  `question_code` varchar(100) NOT NULL,
  PRIMARY KEY (`site_id`,`contest_code`,`question_code`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`site_id`) REFERENCES `sites` (`site_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'ADYN2012','PRAYAS01'),(1,'APRIL11','NUMGAME2'),(1,'APRIL15','BROKPHON'),(1,'APRIL16','COLOR'),(1,'AUG10','COURSE'),(1,'AUG10','ECODE'),(1,'AUG10','STEPNUMS'),(1,'AUG12','LEBOMBS'),(1,'AUG13','SPCANDY'),(1,'AUG15','COOKMACH'),(1,'BTBT2014','COG14A'),(1,'CDBR2015','CDBSTR7'),(1,'CDMR2014','JMI02'),(1,'CDWR2013','FACTCN'),(1,'COOK01','BUILDING'),(1,'COOK01','BWKNIGHT'),(1,'COOK01','RIPPLE'),(1,'COOK02','CLEANUP'),(1,'COOK04','RECIPE'),(1,'COOK05','PAIRING'),(1,'COOK06','HOLES'),(1,'COOK07','COMM3'),(1,'COOK08','MONTRANS'),(1,'COOK08','SNAKY'),(1,'COOK26','CARVANS'),(1,'COOK27','BUYING2'),(1,'COOK28','LEDIV'),(1,'COOK29','MUFFINS3'),(1,'COOK44','DIVIDING'),(1,'COOK46','ANUDTC'),(1,'COOK56','DIVGOLD'),(1,'COOK61','TWOSTR'),(1,'COOK62','FRGTNLNG'),(1,'COOK63','STEM'),(1,'COOK64','SEAARASU'),(1,'COOK66','DESTROY'),(1,'COOK66','FRUITS'),(1,'COOK67','PPSUM'),(1,'COOK70','P1Z2S'),(1,'COOK81','CANDY123'),(1,'COOK86','LIKECS01'),(1,'DEC12','GRANAMA'),(1,'DEC13','ALEXNUMB'),(1,'DEC14','CAPPLE'),(1,'DEC15','CHEFST'),(1,'DEC16','ANKTRAIN'),(1,'DMNT2015','AUSCRIC'),(1,'GOC2014','GOC01'),(1,'HCKATHON','FLOOR'),(1,'INSOMNIA','AX05'),(1,'JAN10','LX'),(1,'JAN13','SALARY'),(1,'JAN17','CATSDOGS'),(1,'JULY10','ARRANGE2'),(1,'JULY15','ADDMUL'),(1,'JULY16','EGRANDR'),(1,'JUNE13','LAPIN'),(1,'JUNE14','CHEFZOT'),(1,'KJCC1501','KJCC02'),(1,'LTIME21','LUCKFOUR'),(1,'LTIME26','GDOG'),(1,'LTIME27','MNMX'),(1,'LTIME29','EMITL'),(1,'LTIME31','DISTCODE'),(1,'LTIME32','TRIANGCL'),(1,'LTIME44','NOTINCOM'),(1,'LTIME46','BRLADDER'),(1,'LTIME53','BUGCAL'),(1,'MARCH10','N3'),(1,'MARCH14','SSTORY'),(1,'MARCH15','CNOTE'),(1,'MARCH17','XENTASK'),(1,'MAY10','NICEQUAD'),(1,'MAY11','TPRODUCT'),(1,'MAY14','OJUMPS'),(1,'MAY15','CHEFRP'),(1,'MAY16','LADDU'),(1,'MAY17','CHEFROUT'),(1,'NCDRN13','UVHST'),(1,'NOV10','BOMBING'),(1,'NOV12','CONFLIP'),(1,'NOV15','EGRCAKE'),(1,'NOV16','URBANDEV'),(1,'OCT09','H1'),(1,'OCT12','MAXCOMP'),(1,'OCT13','CAOS3'),(1,'OCT13','HELPLIRA'),(1,'OCT14','CHEFGR'),(1,'OCT15','SUBINC'),(1,'OCT16','CHEFKEY'),(1,'Practice','A2'),(1,'Practice','ADACRA'),(1,'Practice','BUY1GET1'),(1,'Practice','CHEFVOTE'),(1,'Practice','CNTWAYS'),(1,'Practice','CSTRIKE5'),(1,'Practice','FLOW009'),(1,'Practice','FRGTNLNG'),(1,'Practice','INTEST'),(1,'Practice','IOPC15O'),(1,'Practice','JUNONGF'),(1,'Practice','MAXCOUNT'),(1,'Practice','RESN02'),(1,'Practice','SEASORT2'),(1,'Practice','SEAVEC'),(1,'Practice','SOCIAL'),(1,'Practice','SRTX16B'),(1,'Practice','SUBGRAPH'),(1,'Practice','TERM'),(1,'Practice','TEST'),(1,'PRCD1701','COD417'),(1,'PRDM2012','IITI00'),(1,'RCSN2015','RECMSG'),(1,'SEPT10','FIRE'),(1,'SEPT13','TWOROADS'),(1,'SEPT14','ROTATION'),(1,'SEPT15','MSTEP'),(1,'SEPT16','LONGSEQ');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `contest_code` varchar(100) NOT NULL,
  `question_code` varchar(100) NOT NULL,
  `result` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`,`username`),
  KEY `site_id_2` (`site_id`,`contest_code`,`question_code`),
  CONSTRAINT `result_ibfk_1` FOREIGN KEY (`site_id`, `username`) REFERENCES `users` (`site_id`, `username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `result_ibfk_2` FOREIGN KEY (`site_id`, `contest_code`, `question_code`) REFERENCES `questions` (`site_id`, `contest_code`, `question_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,1,'gennady.korotkevich','Practice','INTEST','time limit exceeded','JAVA'),(2,1,'gennady.korotkevich','Practice','INTEST','accepted','JAVA'),(3,1,'gennady.korotkevich','JAN10','LX','accepted','PAS fpc'),(4,1,'gennady.korotkevich','JAN10','LX','accepted','PAS fpc'),(5,1,'gennady.korotkevich','JAN10','LX','accepted','PAS fpc'),(6,1,'gennady.korotkevich','JULY10','ARRANGE2','accepted','C++ 4.3.2'),(7,1,'gennady.korotkevich','JULY10','ARRANGE2','accepted','C++ 4.3.2'),(8,1,'gennady.korotkevich','JULY10','ARRANGE2','accepted','C++ 4.3.2'),(9,1,'gennady.korotkevich','COOK01','RIPPLE','accepted','PAS fpc'),(10,1,'gennady.korotkevich','AUG10','STEPNUMS','accepted','C++ 4.3.2'),(11,1,'gennady.korotkevich','AUG10','STEPNUMS','accepted','C++ 4.0.0-8'),(12,1,'gennady.korotkevich','AUG10','STEPNUMS','wrong answer','C++ 4.0.0-8'),(13,1,'ceilks','Practice','CSTRIKE5','accepted','C++14'),(14,1,'ceilks','Practice','CSTRIKE5','accepted','C++14'),(15,1,'ceilks','Practice','CSTRIKE5','accepted','C++14'),(16,1,'ceilks','AUG15','COOKMACH','accepted','C++14'),(17,1,'ceilks','COOK61','TWOSTR','accepted','C++14'),(18,1,'ceilks','LTIME27','MNMX','accepted','C++14'),(19,1,'ceilks','LTIME27','MNMX','compilation error','C++ 4.9.2'),(20,1,'ceilks','SEPT15','MSTEP','accepted','C++14'),(21,1,'mugurelionut','Practice','TEST','accepted','C++ 4.3.2'),(22,1,'mugurelionut','COOK26','CARVANS','accepted','C++ 4.3.2'),(23,1,'mugurelionut','COOK26','CARVANS','accepted','C++ 4.3.2'),(24,1,'mugurelionut','OCT12','MAXCOMP','accepted','C++ 4.3.2'),(25,1,'mugurelionut','COOK27','BUYING2','accepted','C++ 4.3.2'),(26,1,'mugurelionut','NOV12','CONFLIP','accepted','C++ 4.3.2'),(27,1,'uwi','Practice','TEST','runtime error(NZEC)','JAR'),(28,1,'uwi','Practice','TEST','runtime error(NZEC)','JAR'),(29,1,'uwi','Practice','TEST','runtime error(NZEC)','JAVA'),(30,1,'uwi','COOK04','RECIPE','accepted','JAVA'),(31,1,'uwi','COOK05','PAIRING','accepted','JAVA'),(32,1,'uwi','COOK06','HOLES','accepted','JAVA'),(33,1,'uwi','COOK06','HOLES','compilation error','JAVA'),(34,1,'uwi','COOK06','HOLES','compilation error','JAVA'),(35,1,'uwi','COOK07','COMM3','accepted','JAVA'),(36,1,'alex_2oo8','Practice','CNTWAYS','accepted','PAS fpc'),(37,1,'alex_2oo8','Practice','CNTWAYS','wrong answer','PAS fpc'),(38,1,'alex_2oo8','NOV12','CONFLIP','accepted','PAS fpc'),(39,1,'alex_2oo8','COOK28','LEDIV','accepted','PAS fpc'),(40,1,'alex_2oo8','DEC12','GRANAMA','accepted','PAS fpc'),(41,1,'alex_2oo8','COOK29','MUFFINS3','accepted','PAS fpc'),(42,1,'kutengine','Practice','TERM','accepted','C++ 4.3.2'),(43,1,'kutengine','Practice','TERM','accepted','C++ 4.3.2'),(44,1,'kutengine','Practice','TERM','wrong answer','C++ 4.3.2'),(45,1,'kutengine','JUNE13','LAPIN','accepted','C++ 4.3.2'),(46,1,'kutengine','SEPT13','TWOROADS','wrong answer','C++ 4.3.2'),(47,1,'kutengine','SEPT13','TWOROADS','accepted','C++ 4.3.2'),(48,1,'kutengine','SEPT13','TWOROADS','time limit exceeded','C++ 4.3.2'),(49,1,'kutengine','OCT13','CAOS3','accepted','C++ 4.3.2'),(50,1,'kutengine','OCT13','CAOS3','wrong answer','C++ 4.3.2'),(51,1,'kutengine','OCT13','CAOS3','wrong answer','C++ 4.3.2'),(52,1,'kutengine','GOC2014','GOC01','accepted','C++ 4.3.2'),(53,1,'skyfire','Practice','TEST','compilation error','C++14'),(54,1,'skyfire','Practice','TEST','accepted','C++14'),(55,1,'skyfire','Practice','TEST','time limit exceeded','C++14'),(56,1,'skyfire','APRIL11','NUMGAME2','accepted','JAVA'),(57,1,'skyfire','APRIL11','NUMGAME2','accepted','JAVA'),(58,1,'skyfire','APRIL11','NUMGAME2','runtime error(NZEC)','JAVA'),(59,1,'skyfire','MAY11','TPRODUCT','accepted','JAVA'),(60,1,'skyfire','CDWR2013','FACTCN','accepted','JAVA'),(61,1,'skyfire','CDWR2013','FACTCN','runtime error(NZEC)','JAVA'),(62,1,'skyfire','CDWR2013','FACTCN','runtime error(NZEC)','JAVA'),(63,1,'skyfire','JULY15','ADDMUL','accepted','C++14'),(64,1,'lhic','Practice','SUBGRAPH','accepted','C++14'),(65,1,'lhic','Practice','SUBGRAPH','wrong answer','C++14'),(66,1,'lhic','Practice','SUBGRAPH','wrong answer','C++14'),(67,1,'lhic','COOK62','FRGTNLNG','accepted','C++14'),(68,1,'lhic','COOK63','STEM','accepted','C++14'),(69,1,'lhic','COOK64','SEAARASU','accepted','C++14'),(70,1,'lhic','COOK64','SEAARASU','wrong answer','C++14'),(71,1,'lhic','COOK66','DESTROY','accepted','C++14'),(72,1,'mmaxio','Practice','SOCIAL','accepted','C++ 4.3.2'),(73,1,'mmaxio','COOK01','BWKNIGHT','accepted','PYTH'),(74,1,'mmaxio','AUG10','COURSE','wrong answer','C++ 4.3.2'),(75,1,'mmaxio','AUG10','COURSE','accepted','C++ 4.3.2'),(76,1,'mmaxio','AUG10','COURSE','accepted','C++ 4.3.2'),(77,1,'mmaxio','COOK02','CLEANUP','accepted','C++ 4.3.2'),(78,1,'mmaxio','SEPT10','FIRE','accepted','C++ 4.3.2'),(79,1,'zhouyuchen','Practice','JUNONGF','accepted','C++ 4.3.2'),(80,1,'zhouyuchen','Practice','JUNONGF','wrong answer','C++ 4.3.2'),(81,1,'zhouyuchen','Practice','JUNONGF','wrong answer','C++ 4.3.2'),(82,1,'zhouyuchen','AUG12','LEBOMBS','accepted','C'),(83,1,'zhouyuchen','AUG12','LEBOMBS','runtime error(NZEC)','C'),(84,1,'zhouyuchen','OCT12','MAXCOMP','accepted','C++ 4.3.2'),(85,1,'zhouyuchen','DEC12','GRANAMA','accepted','C++ 4.3.2'),(86,1,'zhouyuchen','DEC12','GRANAMA','runtime error(NZEC)','C'),(87,1,'zhouyuchen','DEC12','GRANAMA','runtime error(NZEC)','C'),(88,1,'zhouyuchen','JAN13','SALARY','accepted','C++ 4.3.2'),(89,1,'waterfalls','Practice','IOPC15O','accepted','C++ 4.9.2'),(90,1,'waterfalls','MARCH15','CNOTE','accepted','C++ 4.9.2'),(91,1,'waterfalls','COOK56','DIVGOLD','accepted','C++ 4.9.2'),(92,1,'waterfalls','COOK56','DIVGOLD','wrong answer','C++ 4.9.2'),(93,1,'waterfalls','APRIL15','BROKPHON','accepted','C++ 4.9.2'),(94,1,'waterfalls','MAY15','CHEFRP','accepted','C++14'),(95,1,'Fdg','Practice','TEST','wrong answer','JAVA'),(96,1,'Fdg','Practice','TEST','accepted','C++ 4.3.2'),(97,1,'Fdg','Practice','TEST','accepted','C++ 4.3.2'),(98,1,'Fdg','COOK01','BUILDING','accepted','C++ 4.3.2'),(99,1,'Fdg','COOK01','BUILDING','time limit exceeded','C++ 4.3.2'),(100,1,'Fdg','COOK01','BUILDING','time limit exceeded','C++ 4.3.2'),(101,1,'Fdg','SEPT10','FIRE','accepted','C++ 4.3.2'),(102,1,'Fdg','SEPT10','FIRE','wrong answer','C++ 4.3.2'),(103,1,'Fdg','SEPT10','FIRE','wrong answer','C++ 4.0.0-8'),(104,1,'Fdg','INSOMNIA','AX05','accepted','C++ 4.3.2'),(105,1,'Fdg','NOV10','BOMBING','accepted','C++ 4.3.2'),(106,1,'aawisong','Practice','SEASORT2','accepted','C++ 4.8.1'),(107,1,'aawisong','Practice','SEASORT2','accepted','C++ 4.8.1'),(108,1,'aawisong','Practice','SEASORT2','accepted','C++ 4.8.1'),(109,1,'aawisong','MARCH14','SSTORY','accepted','C++ 4.8.1'),(110,1,'aawisong','CDMR2014','JMI02','accepted','C++ 4.8.1'),(111,1,'aawisong','BTBT2014','COG14A','accepted','C++ 4.8.1'),(112,1,'aawisong','COOK44','DIVIDING','accepted','C++ 4.8.1'),(113,1,'liouzhou_101','Practice','SEAVEC','accepted','C++11'),(114,1,'liouzhou_101','DEC12','GRANAMA','accepted','C++ 4.3.2'),(115,1,'liouzhou_101','JUNE13','LAPIN','accepted','C++ 4.3.2'),(116,1,'liouzhou_101','AUG13','SPCANDY','accepted','C++ 4.3.2'),(117,1,'liouzhou_101','AUG13','SPCANDY','runtime error(SIGFPE)','C++ 4.3.2'),(118,1,'liouzhou_101','OCT13','HELPLIRA','accepted','C++ 4.3.2'),(119,1,'liouzhou_101','OCT13','HELPLIRA','wrong answer','C++ 4.3.2'),(120,1,'lebron','Practice','TEST','accepted','C++ 4.3.2'),(121,1,'lebron','Practice','TEST','accepted','C++ 4.3.2'),(122,1,'lebron','COOK06','HOLES','accepted','C++ 4.3.2'),(123,1,'lebron','COOK08','MONTRANS','accepted','C++ 4.3.2'),(124,1,'lebron','ADYN2012','PRAYAS01','accepted','C++ 4.3.2'),(125,1,'lebron','ADYN2012','PRAYAS01','runtime error(SIGSEGV)','C++ 4.3.2'),(126,1,'lebron','PRDM2012','IITI00','accepted','C++ 4.3.2'),(127,1,'lebron','PRDM2012','IITI00','wrong answer','C++ 4.3.2'),(128,1,'ACRush','Practice','TEST','accepted','C++ 4.3.2'),(129,1,'ACRush','Practice','TEST','accepted','C++ 4.0.0-8'),(130,1,'ACRush','OCT09','H1','accepted','C++'),(131,1,'ACRush','OCT09','H1','time limit exceeded','C++'),(132,1,'ACRush','MARCH10','N3','accepted','C++ 4.0.0-8'),(133,1,'ACRush','MARCH10','N3','accepted','C++ 4.0.0-8'),(134,1,'ACRush','MARCH10','N3','time limit exceeded','C++ 4.0.0-8'),(135,1,'ACRush','MAY10','NICEQUAD','accepted','C++ 4.3.2'),(136,1,'ACRush','MAY10','NICEQUAD','compilation error','C++ 4.3.2'),(137,1,'ACRush','AUG10','ECODE','accepted','C++ 4.0.0-8'),(138,1,'ccz181078','OCT16','CHEFKEY','accepted','C++ 4.9.2'),(139,1,'ccz181078','NOV16','URBANDEV','accepted','C++14'),(140,1,'ccz181078','NOV16','URBANDEV','accepted','C++14'),(141,1,'ccz181078','DEC16','ANKTRAIN','accepted','C++14'),(142,1,'ccz181078','JAN17','CATSDOGS','accepted','C++14'),(143,1,'ccz181078','LTIME44','NOTINCOM','accepted','C++14'),(144,1,'dj3500','Practice','RESN02','accepted','C++ 4.3.2'),(145,1,'dj3500','COOK06','HOLES','accepted','C++ 4.3.2'),(146,1,'dj3500','COOK07','COMM3','accepted','C++ 4.3.2'),(147,1,'dj3500','COOK08','SNAKY','accepted','C++ 4.3.2'),(148,1,'dj3500','HCKATHON','FLOOR','accepted','C++ 4.3.2'),(149,1,'dj3500','HCKATHON','FLOOR','wrong answer','C++ 4.3.2'),(150,1,'chemthan','Practice','CHEFVOTE','wrong answer','PYTH 3.1.2'),(151,1,'chemthan','Practice','CHEFVOTE','accepted','C++ 4.9.2'),(152,1,'chemthan','Practice','CHEFVOTE','wrong answer','C++ 4.9.2'),(153,1,'chemthan','LTIME26','GDOG','accepted','C++ 4.9.2'),(154,1,'chemthan','LTIME26','GDOG','wrong answer','C++ 4.9.2'),(155,1,'chemthan','LTIME26','GDOG','wrong answer','C++ 4.9.2'),(156,1,'chemthan','AUG15','COOKMACH','accepted','C++ 4.9.2'),(157,1,'chemthan','AUG15','COOKMACH','wrong answer','C++ 4.9.2'),(158,1,'chemthan','AUG15','COOKMACH','wrong answer','C++ 4.9.2'),(159,1,'chemthan','DEC15','CHEFST','accepted','C++ 4.9.2'),(160,1,'chemthan','LTIME31','DISTCODE','accepted','C++ 4.9.2'),(161,1,'sonysust','LTIME53','BUGCAL','accepted','C++14'),(162,1,'sonysust','LTIME53','BUGCAL','wrong answer','C++14'),(163,1,'sonysust','LTIME53','BUGCAL','wrong answer','C++14'),(164,1,'abhi_rao','Practice','TEST','accepted','C'),(165,1,'abhi_rao','Practice','TEST','compilation error','C'),(166,1,'abhi_rao','Practice','TEST','compilation error','C'),(167,1,'abhi_rao','RCSN2015','RECMSG','accepted','JAVA'),(168,1,'abhi_rao','RCSN2015','RECMSG','compilation error','JAVA'),(169,1,'abhi_rao','RCSN2015','RECMSG','runtime error(SIGSEGV)','C'),(170,1,'abhi_rao','CDBR2015','CDBSTR7','runtime error(SIGSEGV)','C'),(171,1,'abhi_rao','CDBR2015','CDBSTR7','runtime error(SIGSEGV)','C'),(172,1,'abhi_rao','CDBR2015','CDBSTR7','accepted','JAVA'),(173,1,'abhi_rao','LTIME21','LUCKFOUR','accepted','C'),(174,1,'abhi_rao','DMNT2015','AUSCRIC','accepted','JAVA'),(175,1,'adithya123','Practice','TEST','accepted','JAVA'),(176,1,'adithya123','Practice','TEST','compilation error','JAVA'),(177,1,'adithya123','MARCH15','CNOTE','accepted','JAVA'),(178,1,'adithya123','MARCH15','CNOTE','accepted','JAVA'),(179,1,'adithya123','MARCH15','CNOTE','accepted','JAVA'),(180,1,'adithya123','KJCC1501','KJCC02','accepted','JAVA'),(181,1,'adithya123','KJCC1501','KJCC02','compilation error','JAVA'),(182,1,'adithya123','APRIL15','BROKPHON','accepted','JAVA'),(183,1,'adithya123','MAY15','CHEFRP','accepted','JAVA'),(184,1,'shreesha_s','Practice','INTEST','accepted','C'),(185,1,'shreesha_s','Practice','INTEST','runtime error(SIGSEGV)','C'),(186,1,'shreesha_s','DEC13','ALEXNUMB','accepted','C'),(187,1,'shreesha_s','DEC13','ALEXNUMB','wrong answer','C'),(188,1,'shreesha_s','DEC13','ALEXNUMB','wrong answer','C'),(189,1,'shreesha_s','SEPT14','ROTATION','accepted','C'),(190,1,'shreesha_s','SEPT14','ROTATION','wrong answer','C'),(191,1,'shreesha_s','SEPT14','ROTATION','wrong answer','C'),(192,1,'shreesha_s','OCT14','CHEFGR','accepted','C'),(193,1,'shreesha_s','DEC14','CAPPLE','accepted','C'),(194,1,'shreesha_s','DEC14','CAPPLE','accepted','C++ 4.8.1'),(195,1,'shreesha_s','DEC14','CAPPLE','compilation error','C'),(196,1,'imperfectboy','Practice','TEST','accepted','C++ 4.9.2'),(197,1,'imperfectboy','Practice','TEST','time limit exceeded','C++ 4.9.2'),(198,1,'imperfectboy','MARCH17','XENTASK','wrong answer','C'),(199,1,'imperfectboy','MARCH17','XENTASK','accepted','C'),(200,1,'imperfectboy','COOK86','LIKECS01','accepted','C++14'),(201,1,'devansh7','Practice','A2','accepted','C'),(202,1,'devansh7','Practice','A2','wrong answer','C'),(203,1,'devansh7','Practice','A2','wrong answer','C'),(204,1,'devansh7','NCDRN13','UVHST','accepted','C'),(205,1,'devansh7','MAY14','OJUMPS','accepted','C'),(206,1,'devansh7','MAY14','OJUMPS','wrong answer','C'),(207,1,'devansh7','MAY14','OJUMPS','wrong answer','C'),(208,1,'devansh7','COOK46','ANUDTC','accepted','C'),(209,1,'devansh7','COOK46','ANUDTC','wrong answer','C'),(210,1,'devansh7','JUNE14','CHEFZOT','accepted','C'),(211,1,'devansh7','JUNE14','CHEFZOT','wrong answer','C'),(212,1,'devansh7','JUNE14','CHEFZOT','wrong answer','C'),(213,1,'cueball','Practice','FRGTNLNG','accepted','PYTH 3.1.2'),(214,1,'cueball','MAY16','LADDU','accepted','PYTH 3.1.2'),(215,1,'cueball','MAY16','LADDU','wrong answer','PYTH 3.1.2'),(216,1,'cueball','MAY16','LADDU','wrong answer','PYTH 3.1.2'),(217,1,'cueball','COOK70','P1Z2S','accepted','PYTH 3.1.2'),(218,1,'cueball','JULY16','EGRANDR','accepted','PYTH 3.1.2'),(219,1,'cueball','SEPT16','LONGSEQ','accepted','PYTH 3.4'),(220,1,'cueball','SEPT16','LONGSEQ','runtime error(NZEC)','PYTH 3.4'),(221,1,'cueball','SEPT16','LONGSEQ','accepted','PYTH 3.4'),(222,1,'raagz','Practice','MAXCOUNT','accepted','C++ 4.3.2'),(223,1,'raagz','Practice','MAXCOUNT','wrong answer','C++ 4.3.2'),(224,1,'raagz','Practice','MAXCOUNT','runtime error(SIGSEGV)','C++ 4.3.2'),(225,1,'raagz','SEPT15','MSTEP','accepted','C++ 4.9.2'),(226,1,'raagz','SEPT15','MSTEP','wrong answer','C++ 4.9.2'),(227,1,'raagz','SEPT15','MSTEP','wrong answer','C++ 4.9.2'),(228,1,'raagz','OCT15','SUBINC','accepted','C++ 4.9.2'),(229,1,'raagz','OCT15','SUBINC','accepted','C++ 4.9.2'),(230,1,'raagz','OCT15','SUBINC','accepted','C++ 4.9.2'),(231,1,'raagz','LTIME29','EMITL','accepted','C++ 4.9.2'),(232,1,'raagz','LTIME29','EMITL','accepted','C++ 4.9.2'),(233,1,'raagz','LTIME29','EMITL','wrong answer','C++ 4.9.2'),(234,1,'raagz','NOV15','EGRCAKE','accepted','C++ 4.9.2'),(235,1,'raagz','NOV15','EGRCAKE','accepted','C++ 4.9.2'),(236,1,'raagz','NOV15','EGRCAKE','compilation error','C++ 4.9.2'),(237,1,'newbie786','Practice','BUY1GET1','accepted','C++ 4.3.2'),(238,1,'newbie786','COOK67','PPSUM','accepted','C++14'),(239,1,'newbie786','APRIL16','COLOR','accepted','C++ 4.9.2'),(240,1,'kewl_akshat','Practice','TEST','accepted','JAVA'),(241,1,'kewl_akshat','Practice','TEST','accepted','JAVA'),(242,1,'kewl_akshat','Practice','TEST','accepted','JAVA'),(243,1,'kewl_akshat','OCT15','SUBINC','accepted','JAVA'),(244,1,'kewl_akshat','OCT15','SUBINC','accepted','JAVA'),(245,1,'kewl_akshat','OCT15','SUBINC','accepted','JAVA'),(246,1,'kewl_akshat','LTIME29','EMITL','accepted','JAVA'),(247,1,'kewl_akshat','LTIME29','EMITL','wrong answer','JAVA'),(248,1,'kewl_akshat','LTIME29','EMITL','wrong answer','PYTH'),(249,1,'kewl_akshat','COOK66','FRUITS','accepted','JAVA'),(250,1,'kewl_akshat','COOK66','FRUITS','compilation error','JAVA'),(251,1,'kewl_akshat','LTIME32','TRIANGCL','accepted','JAVA'),(252,1,'lzelos','Practice','ADACRA','accepted','C++14'),(253,1,'lzelos','Practice','ADACRA','wrong answer','C++14'),(254,1,'long10024070','LTIME53','BUGCAL','accepted','C++14'),(255,1,'long10024070','LTIME53','BUGCAL','accepted','C++14'),(256,1,'rahilhastu','Practice','FLOW009','accepted','C'),(257,1,'rahilhastu','Practice','FLOW009','wrong answer','C'),(258,1,'rahilhastu','Practice','FLOW009','compilation error','ADA'),(259,1,'rahilhastu','PRCD1701','COD417','accepted','PYTH'),(260,1,'rahilhastu','LTIME46','BRLADDER','accepted','PYTH'),(261,1,'rahilhastu','LTIME46','BRLADDER','wrong answer','PYTH'),(262,1,'rahilhastu','COOK81','CANDY123','accepted','PYTH'),(263,1,'rahilhastu','COOK81','CANDY123','wrong answer','PYTH'),(264,1,'rahilhastu','MAY17','CHEFROUT','accepted','PYTH'),(265,1,'rahilhastu','MAY17','CHEFROUT','wrong answer','PYTH'),(266,1,'rahilhastu','MAY17','CHEFROUT','wrong answer','PYTH'),(267,1,'coder_h','Practice','SRTX16B','accepted','C'),(268,1,'coder_h','Practice','SRTX16B','compilation error','C'),(269,1,'coder_h','Practice','SRTX16B','compilation error','C'),(270,1,'kollarevanth','LTIME53','BUGCAL','compilation error','C'),(271,1,'kollarevanth','LTIME53','BUGCAL','accepted','C'),(272,1,'kollarevanth','LTIME53','BUGCAL','accepted','C');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `site_id` int(11) NOT NULL AUTO_INCREMENT,
  `site` varchar(50) NOT NULL,
  PRIMARY KEY (`site_id`,`site`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (1,'Codechef'),(2,'Spoj'),(3,'Coderbyte');
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `site_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  PRIMARY KEY (`site_id`,`username`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`site_id`) REFERENCES `sites` (`site_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'aawisong'),(1,'abhi_rao'),(1,'ACRush'),(1,'adithya123'),(1,'alex_2oo8'),(1,'ccz181078'),(1,'ceilks'),(1,'chemthan'),(1,'coder_h'),(1,'cueball'),(1,'devansh7'),(1,'dj3500'),(1,'Fdg'),(1,'gennady.korotkevich'),(1,'imperfectboy'),(1,'kewl_akshat'),(1,'kgcstar'),(1,'kollarevanth'),(1,'kutengine'),(1,'lebron'),(1,'lhic'),(1,'liouzhou_101'),(1,'long10024070'),(1,'lzelos'),(1,'mmaxio'),(1,'mugurelionut'),(1,'newbie786'),(1,'raagz'),(1,'rahilhastu'),(1,'shreesha_s'),(1,'skyfire'),(1,'sonysust'),(1,'uwi'),(1,'waterfalls'),(1,'zhouyuchen');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-04 23:45:07
