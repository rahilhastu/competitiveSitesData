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
INSERT INTO `details` VALUES (1,'aawisong','Wisong',13,'Sciences','North Korea'),(1,'abhi_rao','Abhijith Rao',841,'PES Institute of Technology, Bangalore','India'),(1,'ACRush','Tiancheng Lou',16,'Baidu.Inc','China'),(1,'adithya123','Adithya Rao',6301,'PES Institute of Technology, Bangalore','India'),(1,'alex_2oo8','Alexey Zayakin',5,'whiteCryption','Latvia'),(1,'ccz181078','ccz',18,'Shantou Jinshan High School','China'),(1,'ceilks','Carsten Eilks',2,'FernUniversitat Hagen','Germany'),(1,'chemthan','Trung Nguyen',19,'FPT University, Vietnam','Vietnam'),(1,'coder_h','Harsh',5615,'International Institute of Information Technology, Hyderabad','India'),(1,'cueball','Mohit Mayank',1348,'PES Institute of Technology, Bangalore','India'),(1,'devansh7','Devansh ',1273,'PES Institute of Technology, Bangalore','India'),(1,'dj3500','Jakub Tarnawski',19,'Ecole polytechnique federale de Lausanne','Poland'),(1,'Fdg','Dmytro Ihnatenko',12,'Google','Ukraine'),(1,'gennady.korotkevich','Gennady Korotkevich',1,'Saint Petersburg National Research University of Information Technologies, Mechanics and Optics','Belarus'),(1,'imperfectboy','Bhaskar Kumar',1115,'PES Institute of Technology, Bangalore','India'),(1,'kewl_akshat','Akshat Maheshwari',1527,'PES Institute of Technology, Bangalore','India'),(1,'kgcstar','Korean Glorious Coding STAR',17,'Kim II-sung University','North Korea'),(1,'kollarevanth','kolla mohan subhash revanth',5650,'Gayatri Vidya Parishad college of Engineering, Visakhapatnam','India'),(1,'kutengine','SongChol Ryu',6,'Kim Chaek University of Technology','North Korea'),(1,'lebron','Bohdan',15,'Unemployed','Ukraine'),(1,'lhic','Mikhail Ipatov',8,'Lomonosov Moscow State University','Russia'),(1,'liouzhou_101','Tiny Wong',14,'Tsinghua University','China'),(1,'long10024070','NoCodeNoLife',5541,'High School for Gifted Students, Hanoi National University of Education Hanoi, Vietnam','Vietnam'),(1,'lzelos','Andr&eacute; Luiz Bittencourt',5541,'University of Brasilia','Brazil'),(1,'mmaxio','Mikhail M.',9,'Perm State University National Research','Russia'),(1,'mugurelionut','Mugurel Ionut Andreica',3,'Google Switzerland','Romania'),(1,'newbie786','newbie',1447,'PES Institute of Technology, Bangalore','India'),(1,'raagz','raghunandan sharma',1447,'PES Institute of Technology, Bangalore','India'),(1,'rahilhastu','Rahil Hastu',1088,'PES Institute of Technology, Bangalore','India'),(1,'shreesha_s','Shreesha S',1030,'PES Institute of Technology, Bangalore','India'),(1,'skyfire','Alexey Prokopnev',7,'Self Employed','Belarus'),(1,'sonysust','Shahriar',5541,'Shahjalal University of Science & Technology','Bangladesh'),(1,'uwi','uwi',4,'Recruit Communications Co., Ltd.','Japan'),(1,'waterfalls','Daniel Chiu',11,'Catlin Gabel School','United States'),(1,'zhouyuchen','Zhou, Yuchen',10,'Zhejiang University','China'),(2,'abdou_93','abdou_93',30,' Faculty of science Cairo university',' Egypt'),(2,'alex_the_great','Aleksandar Kostadinov',25,' Gimnazija Krusevac',' Serbia'),(2,'andypertamax','Andy',32,' Institut Teknologi Sepuluh Nopember',' Indonesia'),(2,'anton_lunyov','Anton Lunyov',22,' IAMM Donetsk',' Ukraine'),(2,'azneye','Andy Y.F. Huang',36,' University of Waterloo',' Canada'),(2,'balroginfire','Erjin Zhou',19,' Shaoxing No.1 High School',' China'),(2,'bd1916','ebd',16,' Rocket Fuel Inc.',' United States'),(2,'cyclops','Mitch Schwartz',9,' -',' Holy See (vatican City State)'),(2,'damians','Damian Straszak',33,' University of WrocÅ‚aw',' Poland'),(2,'defrager','Oleg',4,' Google Inc.',' Russian Federation'),(2,'devilwolverine','Vipul Srivastava',35,' VIT University ,Vellore',' India'),(2,'gaurav_agarval','Gaurav Agarwal',31,' IIIT Hyderabad',' United States'),(2,'gerrob','Robert Gerbicz',5,' ELTE',' Hungary'),(2,'gingkgo','shihanyuan',10,' Shaoxing No.1 High School',' China'),(2,'hodobox','Hodobox',6,' Comenius University',' Slovakia'),(2,'ikatanic','Ivan Katanic',12,' FER Zagreb',' Croatia'),(2,'mehmetinal','Mehmet Inal',11,' Hacettepe University Computer Engineering',' Turkey'),(2,'morass','Morass',29,' CTU Prague',' Czech Republic'),(2,'sergej_t','Sergej',24,' private',' Germany'),(2,'sgtlaugh','sgtlaugh',23,' Â ',' South Georgia And The South Sandwich Islands'),(2,'sherlock_holms','Rishav Goyal',20,' IIIT Hyderabad',' India'),(2,'sourspinach','SourSpinach',3,' Facebook',' United States'),(2,'stjepang','Stjepan Glavina',15,' GLAVINA-MANDURA j.d.o.o.',' Croatia'),(2,'thanatipanonda','Thotsaphon Thanatipanonda',13,' Chulalongkorn University',' Thailand'),(2,'tjandra','Tjandra Satria Gunawan',14,' Matematika UI',' Indonesia'),(2,'tourist','Gennady Korotkevich',37,' School #56',' Belarus'),(2,'uci_015','Shaka Shadows',26,' Google Inc.',' Cuba'),(2,'xilinx','[Rampage] Blue.Mary',1,' Fudan University',' China'),(2,'xujie','Eternal Answer',27,' Shaoxing No.1 High School',' China'),(2,'zukow',':D',2,' Gdansk University of Technology',' Poland'),(3,'beeboop19','Chris D',22,'School',' United States '),(3,'cdms0','Claudio Sousa',24,'School',' Switzerland '),(3,'cjordanball','NA',2,' Looking! ',' United States '),(3,'Corinto','NA',10,' Looking ',' Mexico '),(3,'EmperorDuny','Greg',13,'School',' United States '),(3,'emuchynski','Eugene',7,'School',' United States '),(3,'escapiststupor','Phyllis Yen',27,'School',' Taiwan '),(3,'gutty333','NA',19,'School',' United States '),(3,'gzamfire','NA',15,'School',' United States '),(3,'hunsoo','Hunsoo',3,'School',' United States '),(3,'hurgadion','NA',30,'School',' Poland '),(3,'hyuil','JÃ©rÃ´me Vernet',1,' Alteca ',' France '),(3,'jackgeek','Jack Allan',26,'School',' Ireland '),(3,'jrorsini','Jean-Roger Orsini',14,'School',' France '),(3,'junjunparkpark','JP',9,'School',' United States '),(3,'kalgima','Alain T.',4,'School',' Canada '),(3,'KlaraKathrina','NA',6,'School',' Germany '),(3,'kmosier','NA',29,'School',' United States '),(3,'leot75','NA',16,'School',' United States '),(3,'lesian','Lesian Lengare',11,' none ',' United States '),(3,'lokeshmogra','Lokesh Mogra',23,' lprokat ',' India '),(3,'mattlarsh','Matt Larsh',20,'School',' United States '),(3,'memyselfandhai','NA',28,'School',' United States '),(3,'mmalkavian','NA',17,' none ',' Italy '),(3,'nulln','NA',21,'School',' United States '),(3,'Qlogin','Roman',5,' Transas ',' Russian Federation '),(3,'rnelson082','NA',25,'School',' United States '),(3,'Ryanm1234','NA',18,'School',' United States '),(3,'Ryantimjohn','Tim Ryan',12,' UIC Dept of Psychiatry ',' United States '),(3,'Sabin','Sabu Nadarajan',8,'School',' United States ');
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
INSERT INTO `questions` VALUES (1,'ADYN2012','PRAYAS01'),(1,'APRIL11','NUMGAME2'),(1,'APRIL15','BROKPHON'),(1,'APRIL16','COLOR'),(1,'AUG10','COURSE'),(1,'AUG10','ECODE'),(1,'AUG10','STEPNUMS'),(1,'AUG12','LEBOMBS'),(1,'AUG13','SPCANDY'),(1,'AUG15','COOKMACH'),(1,'BTBT2014','COG14A'),(1,'CDBR2015','CDBSTR7'),(1,'CDMR2014','JMI02'),(1,'CDWR2013','FACTCN'),(1,'COOK01','BUILDING'),(1,'COOK01','BWKNIGHT'),(1,'COOK01','RIPPLE'),(1,'COOK02','CLEANUP'),(1,'COOK04','RECIPE'),(1,'COOK05','PAIRING'),(1,'COOK06','HOLES'),(1,'COOK07','COMM3'),(1,'COOK08','MONTRANS'),(1,'COOK08','SNAKY'),(1,'COOK26','CARVANS'),(1,'COOK27','BUYING2'),(1,'COOK28','LEDIV'),(1,'COOK29','MUFFINS3'),(1,'COOK44','DIVIDING'),(1,'COOK46','ANUDTC'),(1,'COOK56','DIVGOLD'),(1,'COOK61','TWOSTR'),(1,'COOK62','FRGTNLNG'),(1,'COOK63','STEM'),(1,'COOK64','SEAARASU'),(1,'COOK66','DESTROY'),(1,'COOK66','FRUITS'),(1,'COOK67','PPSUM'),(1,'COOK70','P1Z2S'),(1,'COOK81','CANDY123'),(1,'COOK86','LIKECS01'),(1,'DEC12','GRANAMA'),(1,'DEC13','ALEXNUMB'),(1,'DEC14','CAPPLE'),(1,'DEC15','CHEFST'),(1,'DEC16','ANKTRAIN'),(1,'DMNT2015','AUSCRIC'),(1,'GOC2014','GOC01'),(1,'HCKATHON','FLOOR'),(1,'INSOMNIA','AX05'),(1,'JAN10','LX'),(1,'JAN13','SALARY'),(1,'JAN17','CATSDOGS'),(1,'JULY10','ARRANGE2'),(1,'JULY15','ADDMUL'),(1,'JULY16','EGRANDR'),(1,'JUNE13','LAPIN'),(1,'JUNE14','CHEFZOT'),(1,'KJCC1501','KJCC02'),(1,'LTIME21','LUCKFOUR'),(1,'LTIME26','GDOG'),(1,'LTIME27','MNMX'),(1,'LTIME29','EMITL'),(1,'LTIME31','DISTCODE'),(1,'LTIME32','TRIANGCL'),(1,'LTIME44','NOTINCOM'),(1,'LTIME46','BRLADDER'),(1,'LTIME53','BUGCAL'),(1,'MARCH10','N3'),(1,'MARCH14','SSTORY'),(1,'MARCH15','CNOTE'),(1,'MARCH17','XENTASK'),(1,'MAY10','NICEQUAD'),(1,'MAY11','TPRODUCT'),(1,'MAY14','OJUMPS'),(1,'MAY15','CHEFRP'),(1,'MAY16','LADDU'),(1,'MAY17','CHEFROUT'),(1,'NCDRN13','UVHST'),(1,'NOV10','BOMBING'),(1,'NOV12','CONFLIP'),(1,'NOV15','EGRCAKE'),(1,'NOV16','URBANDEV'),(1,'OCT09','H1'),(1,'OCT12','MAXCOMP'),(1,'OCT13','CAOS3'),(1,'OCT13','HELPLIRA'),(1,'OCT14','CHEFGR'),(1,'OCT15','SUBINC'),(1,'OCT16','CHEFKEY'),(1,'Practice','A2'),(1,'Practice','ADACRA'),(1,'Practice','BUY1GET1'),(1,'Practice','CHEFVOTE'),(1,'Practice','CNTWAYS'),(1,'Practice','CSTRIKE5'),(1,'Practice','FLOW009'),(1,'Practice','FRGTNLNG'),(1,'Practice','INTEST'),(1,'Practice','IOPC15O'),(1,'Practice','JUNONGF'),(1,'Practice','MAXCOUNT'),(1,'Practice','RESN02'),(1,'Practice','SEASORT2'),(1,'Practice','SEAVEC'),(1,'Practice','SOCIAL'),(1,'Practice','SRTX16B'),(1,'Practice','SUBGRAPH'),(1,'Practice','TERM'),(1,'Practice','TEST'),(1,'PRCD1701','COD417'),(1,'PRDM2012','IITI00'),(1,'RCSN2015','RECMSG'),(1,'SEPT10','FIRE'),(1,'SEPT13','TWOROADS'),(1,'SEPT14','ROTATION'),(1,'SEPT15','MSTEP'),(1,'SEPT16','LONGSEQ'),(2,'Practice','AAC2'),(2,'Practice','ABA12B'),(2,'Practice','ABA12C'),(2,'Practice','ABA12D'),(2,'Practice','ABA12E'),(2,'Practice','ABCD'),(2,'Practice','ABCDEF'),(2,'Practice','ABCPATH'),(2,'Practice','ABSHIP'),(2,'Practice','ABSP1'),(2,'Practice','ABSURD'),(2,'Practice','ABSYS'),(2,'Practice','ACAB'),(2,'Practice','ACANVAS'),(2,'Practice','ACARGO'),(2,'Practice','ACMAKER'),(2,'Practice','ACMT'),(2,'Practice','ACODE'),(2,'Practice','ACPC10A'),(2,'Practice','ACPC10B'),(2,'Practice','ACPC10C'),(2,'Practice','ACPC10D'),(2,'Practice','ADV04B1'),(2,'Practice','AE00'),(2,'Practice','AE2A'),(2,'Practice','AE2B'),(3,'Practice',' Alphabet Soup '),(3,'Practice',' Binary Reversal '),(3,'Practice',' Check Nums '),(3,'Practice',' Closest Enemy II '),(3,'Practice',' Correct Path '),(3,'Practice',' First Factorial '),(3,'Practice',' First Reverse '),(3,'Practice',' GCF '),(3,'Practice',' Largest Four '),(3,'Practice',' Letter Capitalize '),(3,'Practice',' Letter Changes '),(3,'Practice',' Longest Increasing Sequence '),(3,'Practice',' Longest Word '),(3,'Practice',' Questions Marks '),(3,'Practice',' Simple Adding '),(3,'Practice',' Simple Symbols '),(3,'Practice',' Superincreasing '),(3,'Practice',' Vowel Count '),(3,'Practice',' Vowel Square '),(3,'Practice',' Word Count ');
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
) ENGINE=InnoDB AUTO_INCREMENT=1073 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,1,'gennady.korotkevich','Practice','INTEST','time limit exceeded','JAVA'),(2,1,'gennady.korotkevich','Practice','INTEST','accepted','JAVA'),(3,1,'gennady.korotkevich','JAN10','LX','accepted','PAS fpc'),(4,1,'gennady.korotkevich','JAN10','LX','accepted','PAS fpc'),(5,1,'gennady.korotkevich','JAN10','LX','accepted','PAS fpc'),(6,1,'gennady.korotkevich','JULY10','ARRANGE2','accepted','C++ 4.3.2'),(7,1,'gennady.korotkevich','JULY10','ARRANGE2','accepted','C++ 4.3.2'),(8,1,'gennady.korotkevich','JULY10','ARRANGE2','accepted','C++ 4.3.2'),(9,1,'gennady.korotkevich','COOK01','RIPPLE','accepted','PAS fpc'),(10,1,'gennady.korotkevich','AUG10','STEPNUMS','accepted','C++ 4.3.2'),(11,1,'gennady.korotkevich','AUG10','STEPNUMS','accepted','C++ 4.0.0-8'),(12,1,'gennady.korotkevich','AUG10','STEPNUMS','wrong answer','C++ 4.0.0-8'),(13,1,'ceilks','Practice','CSTRIKE5','accepted','C++14'),(14,1,'ceilks','Practice','CSTRIKE5','accepted','C++14'),(15,1,'ceilks','Practice','CSTRIKE5','accepted','C++14'),(16,1,'ceilks','AUG15','COOKMACH','accepted','C++14'),(17,1,'ceilks','COOK61','TWOSTR','accepted','C++14'),(18,1,'ceilks','LTIME27','MNMX','accepted','C++14'),(19,1,'ceilks','LTIME27','MNMX','compilation error','C++ 4.9.2'),(20,1,'ceilks','SEPT15','MSTEP','accepted','C++14'),(21,1,'mugurelionut','Practice','TEST','accepted','C++ 4.3.2'),(22,1,'mugurelionut','COOK26','CARVANS','accepted','C++ 4.3.2'),(23,1,'mugurelionut','COOK26','CARVANS','accepted','C++ 4.3.2'),(24,1,'mugurelionut','OCT12','MAXCOMP','accepted','C++ 4.3.2'),(25,1,'mugurelionut','COOK27','BUYING2','accepted','C++ 4.3.2'),(26,1,'mugurelionut','NOV12','CONFLIP','accepted','C++ 4.3.2'),(27,1,'uwi','Practice','TEST','runtime error(NZEC)','JAR'),(28,1,'uwi','Practice','TEST','runtime error(NZEC)','JAR'),(29,1,'uwi','Practice','TEST','runtime error(NZEC)','JAVA'),(30,1,'uwi','COOK04','RECIPE','accepted','JAVA'),(31,1,'uwi','COOK05','PAIRING','accepted','JAVA'),(32,1,'uwi','COOK06','HOLES','accepted','JAVA'),(33,1,'uwi','COOK06','HOLES','compilation error','JAVA'),(34,1,'uwi','COOK06','HOLES','compilation error','JAVA'),(35,1,'uwi','COOK07','COMM3','accepted','JAVA'),(36,1,'alex_2oo8','Practice','CNTWAYS','accepted','PAS fpc'),(37,1,'alex_2oo8','Practice','CNTWAYS','wrong answer','PAS fpc'),(38,1,'alex_2oo8','NOV12','CONFLIP','accepted','PAS fpc'),(39,1,'alex_2oo8','COOK28','LEDIV','accepted','PAS fpc'),(40,1,'alex_2oo8','DEC12','GRANAMA','accepted','PAS fpc'),(41,1,'alex_2oo8','COOK29','MUFFINS3','accepted','PAS fpc'),(42,1,'kutengine','Practice','TERM','accepted','C++ 4.3.2'),(43,1,'kutengine','Practice','TERM','accepted','C++ 4.3.2'),(44,1,'kutengine','Practice','TERM','wrong answer','C++ 4.3.2'),(45,1,'kutengine','JUNE13','LAPIN','accepted','C++ 4.3.2'),(46,1,'kutengine','SEPT13','TWOROADS','wrong answer','C++ 4.3.2'),(47,1,'kutengine','SEPT13','TWOROADS','accepted','C++ 4.3.2'),(48,1,'kutengine','SEPT13','TWOROADS','time limit exceeded','C++ 4.3.2'),(49,1,'kutengine','OCT13','CAOS3','accepted','C++ 4.3.2'),(50,1,'kutengine','OCT13','CAOS3','wrong answer','C++ 4.3.2'),(51,1,'kutengine','OCT13','CAOS3','wrong answer','C++ 4.3.2'),(52,1,'kutengine','GOC2014','GOC01','accepted','C++ 4.3.2'),(53,1,'skyfire','Practice','TEST','compilation error','C++14'),(54,1,'skyfire','Practice','TEST','accepted','C++14'),(55,1,'skyfire','Practice','TEST','time limit exceeded','C++14'),(56,1,'skyfire','APRIL11','NUMGAME2','accepted','JAVA'),(57,1,'skyfire','APRIL11','NUMGAME2','accepted','JAVA'),(58,1,'skyfire','APRIL11','NUMGAME2','runtime error(NZEC)','JAVA'),(59,1,'skyfire','MAY11','TPRODUCT','accepted','JAVA'),(60,1,'skyfire','CDWR2013','FACTCN','accepted','JAVA'),(61,1,'skyfire','CDWR2013','FACTCN','runtime error(NZEC)','JAVA'),(62,1,'skyfire','CDWR2013','FACTCN','runtime error(NZEC)','JAVA'),(63,1,'skyfire','JULY15','ADDMUL','accepted','C++14'),(64,1,'lhic','Practice','SUBGRAPH','accepted','C++14'),(65,1,'lhic','Practice','SUBGRAPH','wrong answer','C++14'),(66,1,'lhic','Practice','SUBGRAPH','wrong answer','C++14'),(67,1,'lhic','COOK62','FRGTNLNG','accepted','C++14'),(68,1,'lhic','COOK63','STEM','accepted','C++14'),(69,1,'lhic','COOK64','SEAARASU','accepted','C++14'),(70,1,'lhic','COOK64','SEAARASU','wrong answer','C++14'),(71,1,'lhic','COOK66','DESTROY','accepted','C++14'),(72,1,'mmaxio','Practice','SOCIAL','accepted','C++ 4.3.2'),(73,1,'mmaxio','COOK01','BWKNIGHT','accepted','PYTH'),(74,1,'mmaxio','AUG10','COURSE','wrong answer','C++ 4.3.2'),(75,1,'mmaxio','AUG10','COURSE','accepted','C++ 4.3.2'),(76,1,'mmaxio','AUG10','COURSE','accepted','C++ 4.3.2'),(77,1,'mmaxio','COOK02','CLEANUP','accepted','C++ 4.3.2'),(78,1,'mmaxio','SEPT10','FIRE','accepted','C++ 4.3.2'),(79,1,'zhouyuchen','Practice','JUNONGF','accepted','C++ 4.3.2'),(80,1,'zhouyuchen','Practice','JUNONGF','wrong answer','C++ 4.3.2'),(81,1,'zhouyuchen','Practice','JUNONGF','wrong answer','C++ 4.3.2'),(82,1,'zhouyuchen','AUG12','LEBOMBS','accepted','C'),(83,1,'zhouyuchen','AUG12','LEBOMBS','runtime error(NZEC)','C'),(84,1,'zhouyuchen','OCT12','MAXCOMP','accepted','C++ 4.3.2'),(85,1,'zhouyuchen','DEC12','GRANAMA','accepted','C++ 4.3.2'),(86,1,'zhouyuchen','DEC12','GRANAMA','runtime error(NZEC)','C'),(87,1,'zhouyuchen','DEC12','GRANAMA','runtime error(NZEC)','C'),(88,1,'zhouyuchen','JAN13','SALARY','accepted','C++ 4.3.2'),(89,1,'waterfalls','Practice','IOPC15O','accepted','C++ 4.9.2'),(90,1,'waterfalls','MARCH15','CNOTE','accepted','C++ 4.9.2'),(91,1,'waterfalls','COOK56','DIVGOLD','accepted','C++ 4.9.2'),(92,1,'waterfalls','COOK56','DIVGOLD','wrong answer','C++ 4.9.2'),(93,1,'waterfalls','APRIL15','BROKPHON','accepted','C++ 4.9.2'),(94,1,'waterfalls','MAY15','CHEFRP','accepted','C++14'),(95,1,'Fdg','Practice','TEST','wrong answer','JAVA'),(96,1,'Fdg','Practice','TEST','accepted','C++ 4.3.2'),(97,1,'Fdg','Practice','TEST','accepted','C++ 4.3.2'),(98,1,'Fdg','COOK01','BUILDING','accepted','C++ 4.3.2'),(99,1,'Fdg','COOK01','BUILDING','time limit exceeded','C++ 4.3.2'),(100,1,'Fdg','COOK01','BUILDING','time limit exceeded','C++ 4.3.2'),(101,1,'Fdg','SEPT10','FIRE','accepted','C++ 4.3.2'),(102,1,'Fdg','SEPT10','FIRE','wrong answer','C++ 4.3.2'),(103,1,'Fdg','SEPT10','FIRE','wrong answer','C++ 4.0.0-8'),(104,1,'Fdg','INSOMNIA','AX05','accepted','C++ 4.3.2'),(105,1,'Fdg','NOV10','BOMBING','accepted','C++ 4.3.2'),(106,1,'aawisong','Practice','SEASORT2','accepted','C++ 4.8.1'),(107,1,'aawisong','Practice','SEASORT2','accepted','C++ 4.8.1'),(108,1,'aawisong','Practice','SEASORT2','accepted','C++ 4.8.1'),(109,1,'aawisong','MARCH14','SSTORY','accepted','C++ 4.8.1'),(110,1,'aawisong','CDMR2014','JMI02','accepted','C++ 4.8.1'),(111,1,'aawisong','BTBT2014','COG14A','accepted','C++ 4.8.1'),(112,1,'aawisong','COOK44','DIVIDING','accepted','C++ 4.8.1'),(113,1,'liouzhou_101','Practice','SEAVEC','accepted','C++11'),(114,1,'liouzhou_101','DEC12','GRANAMA','accepted','C++ 4.3.2'),(115,1,'liouzhou_101','JUNE13','LAPIN','accepted','C++ 4.3.2'),(116,1,'liouzhou_101','AUG13','SPCANDY','accepted','C++ 4.3.2'),(117,1,'liouzhou_101','AUG13','SPCANDY','runtime error(SIGFPE)','C++ 4.3.2'),(118,1,'liouzhou_101','OCT13','HELPLIRA','accepted','C++ 4.3.2'),(119,1,'liouzhou_101','OCT13','HELPLIRA','wrong answer','C++ 4.3.2'),(120,1,'lebron','Practice','TEST','accepted','C++ 4.3.2'),(121,1,'lebron','Practice','TEST','accepted','C++ 4.3.2'),(122,1,'lebron','COOK06','HOLES','accepted','C++ 4.3.2'),(123,1,'lebron','COOK08','MONTRANS','accepted','C++ 4.3.2'),(124,1,'lebron','ADYN2012','PRAYAS01','accepted','C++ 4.3.2'),(125,1,'lebron','ADYN2012','PRAYAS01','runtime error(SIGSEGV)','C++ 4.3.2'),(126,1,'lebron','PRDM2012','IITI00','accepted','C++ 4.3.2'),(127,1,'lebron','PRDM2012','IITI00','wrong answer','C++ 4.3.2'),(128,1,'ACRush','Practice','TEST','accepted','C++ 4.3.2'),(129,1,'ACRush','Practice','TEST','accepted','C++ 4.0.0-8'),(130,1,'ACRush','OCT09','H1','accepted','C++'),(131,1,'ACRush','OCT09','H1','time limit exceeded','C++'),(132,1,'ACRush','MARCH10','N3','accepted','C++ 4.0.0-8'),(133,1,'ACRush','MARCH10','N3','accepted','C++ 4.0.0-8'),(134,1,'ACRush','MARCH10','N3','time limit exceeded','C++ 4.0.0-8'),(135,1,'ACRush','MAY10','NICEQUAD','accepted','C++ 4.3.2'),(136,1,'ACRush','MAY10','NICEQUAD','compilation error','C++ 4.3.2'),(137,1,'ACRush','AUG10','ECODE','accepted','C++ 4.0.0-8'),(138,1,'ccz181078','OCT16','CHEFKEY','accepted','C++ 4.9.2'),(139,1,'ccz181078','NOV16','URBANDEV','accepted','C++14'),(140,1,'ccz181078','NOV16','URBANDEV','accepted','C++14'),(141,1,'ccz181078','DEC16','ANKTRAIN','accepted','C++14'),(142,1,'ccz181078','JAN17','CATSDOGS','accepted','C++14'),(143,1,'ccz181078','LTIME44','NOTINCOM','accepted','C++14'),(144,1,'dj3500','Practice','RESN02','accepted','C++ 4.3.2'),(145,1,'dj3500','COOK06','HOLES','accepted','C++ 4.3.2'),(146,1,'dj3500','COOK07','COMM3','accepted','C++ 4.3.2'),(147,1,'dj3500','COOK08','SNAKY','accepted','C++ 4.3.2'),(148,1,'dj3500','HCKATHON','FLOOR','accepted','C++ 4.3.2'),(149,1,'dj3500','HCKATHON','FLOOR','wrong answer','C++ 4.3.2'),(150,1,'chemthan','Practice','CHEFVOTE','wrong answer','PYTH 3.1.2'),(151,1,'chemthan','Practice','CHEFVOTE','accepted','C++ 4.9.2'),(152,1,'chemthan','Practice','CHEFVOTE','wrong answer','C++ 4.9.2'),(153,1,'chemthan','LTIME26','GDOG','accepted','C++ 4.9.2'),(154,1,'chemthan','LTIME26','GDOG','wrong answer','C++ 4.9.2'),(155,1,'chemthan','LTIME26','GDOG','wrong answer','C++ 4.9.2'),(156,1,'chemthan','AUG15','COOKMACH','accepted','C++ 4.9.2'),(157,1,'chemthan','AUG15','COOKMACH','wrong answer','C++ 4.9.2'),(158,1,'chemthan','AUG15','COOKMACH','wrong answer','C++ 4.9.2'),(159,1,'chemthan','DEC15','CHEFST','accepted','C++ 4.9.2'),(160,1,'chemthan','LTIME31','DISTCODE','accepted','C++ 4.9.2'),(161,1,'sonysust','LTIME53','BUGCAL','accepted','C++14'),(162,1,'sonysust','LTIME53','BUGCAL','wrong answer','C++14'),(163,1,'sonysust','LTIME53','BUGCAL','wrong answer','C++14'),(164,1,'abhi_rao','Practice','TEST','accepted','C'),(165,1,'abhi_rao','Practice','TEST','compilation error','C'),(166,1,'abhi_rao','Practice','TEST','compilation error','C'),(167,1,'abhi_rao','RCSN2015','RECMSG','accepted','JAVA'),(168,1,'abhi_rao','RCSN2015','RECMSG','compilation error','JAVA'),(169,1,'abhi_rao','RCSN2015','RECMSG','runtime error(SIGSEGV)','C'),(170,1,'abhi_rao','CDBR2015','CDBSTR7','runtime error(SIGSEGV)','C'),(171,1,'abhi_rao','CDBR2015','CDBSTR7','runtime error(SIGSEGV)','C'),(172,1,'abhi_rao','CDBR2015','CDBSTR7','accepted','JAVA'),(173,1,'abhi_rao','LTIME21','LUCKFOUR','accepted','C'),(174,1,'abhi_rao','DMNT2015','AUSCRIC','accepted','JAVA'),(175,1,'adithya123','Practice','TEST','accepted','JAVA'),(176,1,'adithya123','Practice','TEST','compilation error','JAVA'),(177,1,'adithya123','MARCH15','CNOTE','accepted','JAVA'),(178,1,'adithya123','MARCH15','CNOTE','accepted','JAVA'),(179,1,'adithya123','MARCH15','CNOTE','accepted','JAVA'),(180,1,'adithya123','KJCC1501','KJCC02','accepted','JAVA'),(181,1,'adithya123','KJCC1501','KJCC02','compilation error','JAVA'),(182,1,'adithya123','APRIL15','BROKPHON','accepted','JAVA'),(183,1,'adithya123','MAY15','CHEFRP','accepted','JAVA'),(184,1,'shreesha_s','Practice','INTEST','accepted','C'),(185,1,'shreesha_s','Practice','INTEST','runtime error(SIGSEGV)','C'),(186,1,'shreesha_s','DEC13','ALEXNUMB','accepted','C'),(187,1,'shreesha_s','DEC13','ALEXNUMB','wrong answer','C'),(188,1,'shreesha_s','DEC13','ALEXNUMB','wrong answer','C'),(189,1,'shreesha_s','SEPT14','ROTATION','accepted','C'),(190,1,'shreesha_s','SEPT14','ROTATION','wrong answer','C'),(191,1,'shreesha_s','SEPT14','ROTATION','wrong answer','C'),(192,1,'shreesha_s','OCT14','CHEFGR','accepted','C'),(193,1,'shreesha_s','DEC14','CAPPLE','accepted','C'),(194,1,'shreesha_s','DEC14','CAPPLE','accepted','C++ 4.8.1'),(195,1,'shreesha_s','DEC14','CAPPLE','compilation error','C'),(196,1,'imperfectboy','Practice','TEST','accepted','C++ 4.9.2'),(197,1,'imperfectboy','Practice','TEST','time limit exceeded','C++ 4.9.2'),(198,1,'imperfectboy','MARCH17','XENTASK','wrong answer','C'),(199,1,'imperfectboy','MARCH17','XENTASK','accepted','C'),(200,1,'imperfectboy','COOK86','LIKECS01','accepted','C++14'),(201,1,'devansh7','Practice','A2','accepted','C'),(202,1,'devansh7','Practice','A2','wrong answer','C'),(203,1,'devansh7','Practice','A2','wrong answer','C'),(204,1,'devansh7','NCDRN13','UVHST','accepted','C'),(205,1,'devansh7','MAY14','OJUMPS','accepted','C'),(206,1,'devansh7','MAY14','OJUMPS','wrong answer','C'),(207,1,'devansh7','MAY14','OJUMPS','wrong answer','C'),(208,1,'devansh7','COOK46','ANUDTC','accepted','C'),(209,1,'devansh7','COOK46','ANUDTC','wrong answer','C'),(210,1,'devansh7','JUNE14','CHEFZOT','accepted','C'),(211,1,'devansh7','JUNE14','CHEFZOT','wrong answer','C'),(212,1,'devansh7','JUNE14','CHEFZOT','wrong answer','C'),(213,1,'cueball','Practice','FRGTNLNG','accepted','PYTH 3.1.2'),(214,1,'cueball','MAY16','LADDU','accepted','PYTH 3.1.2'),(215,1,'cueball','MAY16','LADDU','wrong answer','PYTH 3.1.2'),(216,1,'cueball','MAY16','LADDU','wrong answer','PYTH 3.1.2'),(217,1,'cueball','COOK70','P1Z2S','accepted','PYTH 3.1.2'),(218,1,'cueball','JULY16','EGRANDR','accepted','PYTH 3.1.2'),(219,1,'cueball','SEPT16','LONGSEQ','accepted','PYTH 3.4'),(220,1,'cueball','SEPT16','LONGSEQ','runtime error(NZEC)','PYTH 3.4'),(221,1,'cueball','SEPT16','LONGSEQ','accepted','PYTH 3.4'),(222,1,'raagz','Practice','MAXCOUNT','accepted','C++ 4.3.2'),(223,1,'raagz','Practice','MAXCOUNT','wrong answer','C++ 4.3.2'),(224,1,'raagz','Practice','MAXCOUNT','runtime error(SIGSEGV)','C++ 4.3.2'),(225,1,'raagz','SEPT15','MSTEP','accepted','C++ 4.9.2'),(226,1,'raagz','SEPT15','MSTEP','wrong answer','C++ 4.9.2'),(227,1,'raagz','SEPT15','MSTEP','wrong answer','C++ 4.9.2'),(228,1,'raagz','OCT15','SUBINC','accepted','C++ 4.9.2'),(229,1,'raagz','OCT15','SUBINC','accepted','C++ 4.9.2'),(230,1,'raagz','OCT15','SUBINC','accepted','C++ 4.9.2'),(231,1,'raagz','LTIME29','EMITL','accepted','C++ 4.9.2'),(232,1,'raagz','LTIME29','EMITL','accepted','C++ 4.9.2'),(233,1,'raagz','LTIME29','EMITL','wrong answer','C++ 4.9.2'),(234,1,'raagz','NOV15','EGRCAKE','accepted','C++ 4.9.2'),(235,1,'raagz','NOV15','EGRCAKE','accepted','C++ 4.9.2'),(236,1,'raagz','NOV15','EGRCAKE','compilation error','C++ 4.9.2'),(237,1,'newbie786','Practice','BUY1GET1','accepted','C++ 4.3.2'),(238,1,'newbie786','COOK67','PPSUM','accepted','C++14'),(239,1,'newbie786','APRIL16','COLOR','accepted','C++ 4.9.2'),(240,1,'kewl_akshat','Practice','TEST','accepted','JAVA'),(241,1,'kewl_akshat','Practice','TEST','accepted','JAVA'),(242,1,'kewl_akshat','Practice','TEST','accepted','JAVA'),(243,1,'kewl_akshat','OCT15','SUBINC','accepted','JAVA'),(244,1,'kewl_akshat','OCT15','SUBINC','accepted','JAVA'),(245,1,'kewl_akshat','OCT15','SUBINC','accepted','JAVA'),(246,1,'kewl_akshat','LTIME29','EMITL','accepted','JAVA'),(247,1,'kewl_akshat','LTIME29','EMITL','wrong answer','JAVA'),(248,1,'kewl_akshat','LTIME29','EMITL','wrong answer','PYTH'),(249,1,'kewl_akshat','COOK66','FRUITS','accepted','JAVA'),(250,1,'kewl_akshat','COOK66','FRUITS','compilation error','JAVA'),(251,1,'kewl_akshat','LTIME32','TRIANGCL','accepted','JAVA'),(252,1,'lzelos','Practice','ADACRA','accepted','C++14'),(253,1,'lzelos','Practice','ADACRA','wrong answer','C++14'),(254,1,'long10024070','LTIME53','BUGCAL','accepted','C++14'),(255,1,'long10024070','LTIME53','BUGCAL','accepted','C++14'),(256,1,'rahilhastu','Practice','FLOW009','accepted','C'),(257,1,'rahilhastu','Practice','FLOW009','wrong answer','C'),(258,1,'rahilhastu','Practice','FLOW009','compilation error','ADA'),(259,1,'rahilhastu','PRCD1701','COD417','accepted','PYTH'),(260,1,'rahilhastu','LTIME46','BRLADDER','accepted','PYTH'),(261,1,'rahilhastu','LTIME46','BRLADDER','wrong answer','PYTH'),(262,1,'rahilhastu','COOK81','CANDY123','accepted','PYTH'),(263,1,'rahilhastu','COOK81','CANDY123','wrong answer','PYTH'),(264,1,'rahilhastu','MAY17','CHEFROUT','accepted','PYTH'),(265,1,'rahilhastu','MAY17','CHEFROUT','wrong answer','PYTH'),(266,1,'rahilhastu','MAY17','CHEFROUT','wrong answer','PYTH'),(267,1,'coder_h','Practice','SRTX16B','accepted','C'),(268,1,'coder_h','Practice','SRTX16B','compilation error','C'),(269,1,'coder_h','Practice','SRTX16B','compilation error','C'),(270,1,'kollarevanth','LTIME53','BUGCAL','compilation error','C'),(271,1,'kollarevanth','LTIME53','BUGCAL','accepted','C'),(272,1,'kollarevanth','LTIME53','BUGCAL','accepted','C'),(435,2,'xilinx','Practice','AAC2','accepted','C++'),(436,2,'xilinx','Practice','ABA12B','time limit exceeded','CPP'),(437,2,'xilinx','Practice','ABA12B','accepted','CPP'),(438,2,'xilinx','Practice','ABA12C','wrong answer','C'),(439,2,'xilinx','Practice','ABA12C','wrong answer','C'),(440,2,'xilinx','Practice','ABA12C','accepted','C'),(441,2,'xilinx','Practice','ABA12D','wrong answer','C++'),(442,2,'xilinx','Practice','ABA12D','accepted','C++'),(443,2,'xilinx','Practice','ABA12E','accepted','C'),(444,2,'zukow','Practice','ABA12C','accepted','C++'),(445,2,'zukow','Practice','ABA12D','accepted','C++'),(446,2,'zukow','Practice','ABA12E','accepted','C++'),(447,2,'zukow','Practice','ABA12E','accepted','C++'),(448,2,'zukow','Practice','ABCDEF','wrong answer','C++'),(449,2,'zukow','Practice','ABCDEF','accepted','C++'),(450,2,'zukow','Practice','ABSHIP','accepted','C++'),(451,2,'sourspinach','Practice','AAC2','wrong answer','C++'),(452,2,'sourspinach','Practice','AAC2','accepted','C++'),(453,2,'sourspinach','Practice','ABA12C','wrong answer','C++'),(454,2,'sourspinach','Practice','ABA12C','accepted','C++'),(455,2,'sourspinach','Practice','ABA12D','time limit exceeded','C++'),(456,2,'sourspinach','Practice','ABA12D','accepted','C++'),(457,2,'sourspinach','Practice','ABCD','time limit exceeded','C++'),(458,2,'sourspinach','Practice','ABCD','wrong answer','C++'),(459,2,'sourspinach','Practice','ABCD','wrong answer','C++'),(460,2,'sourspinach','Practice','ABCD','time limit exceeded','C++'),(461,2,'sourspinach','Practice','ABCD','wrong answer','C++'),(462,2,'sourspinach','Practice','ABCD','wrong answer','C++'),(463,2,'sourspinach','Practice','ABCD','compilation error','PYTHON3'),(464,2,'sourspinach','Practice','ABCD','accepted','C++'),(465,2,'sourspinach','Practice','ABCDEF','wrong answer','C++'),(466,2,'sourspinach','Practice','ABCDEF','runtime error (SIGSEGV)','C++'),(467,2,'sourspinach','Practice','ABCDEF','time limit exceeded','C++'),(468,2,'sourspinach','Practice','ABCDEF','time limit exceeded','CPP'),(469,2,'sourspinach','Practice','ABCDEF','time limit exceeded','CPP'),(470,2,'sourspinach','Practice','ABCDEF','time limit exceeded','CPP'),(471,2,'sourspinach','Practice','ABCDEF','accepted','C++'),(472,2,'defrager','Practice','ABA12C','accepted','C++'),(473,2,'defrager','Practice','ABA12D','accepted','C++'),(474,2,'defrager','Practice','ABA12E','wrong answer','C++'),(475,2,'defrager','Practice','ABA12E','accepted','C++'),(476,2,'defrager','Practice','ABCD','accepted','C++'),(477,2,'defrager','Practice','ABCDEF','wrong answer','CPP'),(478,2,'defrager','Practice','ABCDEF','time limit exceeded','CPP'),(479,2,'defrager','Practice','ABCDEF','time limit exceeded','CPP'),(480,2,'defrager','Practice','ABCDEF','compilation error','C'),(481,2,'defrager','Practice','ABCDEF','runtime error (SIGFPE)','CPP'),(482,2,'defrager','Practice','ABCDEF','accepted','CPP'),(483,2,'gerrob','Practice','ABA12C','accepted','C++'),(484,2,'gerrob','Practice','ABA12D','accepted','C'),(485,2,'gerrob','Practice','ABCDEF','time limit exceeded','CPP'),(486,2,'gerrob','Practice','ABCDEF','accepted','CPP'),(487,2,'gerrob','Practice','ABCDEF','accepted','CPP'),(488,2,'gerrob','Practice','ABCPATH','accepted','C'),(489,2,'gerrob','Practice','ABSURD','compilation error','C++'),(490,2,'gerrob','Practice','ABSURD','accepted','C++'),(491,2,'gerrob','Practice','ABSURD','accepted','C++'),(492,2,'hodobox','Practice','AAC2','accepted','CPP14'),(493,2,'hodobox','Practice','ABA12C','accepted','CPP14'),(494,2,'hodobox','Practice','ABA12D','time limit exceeded','CPP'),(495,2,'hodobox','Practice','ABA12D','time limit exceeded','CPP'),(496,2,'hodobox','Practice','ABA12D','accepted','C++'),(497,2,'hodobox','Practice','ABA12E','accepted','CPP14'),(498,2,'hodobox','Practice','ABA12E','accepted','CPP14'),(499,2,'hodobox','Practice','ABCDEF','time limit exceeded','CPP'),(500,2,'hodobox','Practice','ABCDEF','runtime error (SIGSEGV)','CPP'),(501,2,'hodobox','Practice','ABCDEF','accepted','CPP14'),(502,2,'hodobox','Practice','ABCDEF','accepted','CPP14'),(503,2,'hodobox','Practice','ABCDEF','accepted','CPP14'),(504,2,'cyclops','Practice','ABA12C','accepted','C'),(505,2,'cyclops','Practice','ABA12D','accepted','C'),(506,2,'cyclops','Practice','ABCD','time limit exceeded','C'),(507,2,'cyclops','Practice','ABCD','time limit exceeded','C'),(508,2,'cyclops','Practice','ABCD','time limit exceeded','C'),(509,2,'cyclops','Practice','ABCD','time limit exceeded','C'),(510,2,'cyclops','Practice','ABCD','time limit exceeded','C'),(511,2,'cyclops','Practice','ABCD','runtime error (SIGSEGV)','C'),(512,2,'cyclops','Practice','ABCD','accepted','C'),(513,2,'cyclops','Practice','ABCD','accepted','C'),(514,2,'cyclops','Practice','ABCPATH','runtime error (SIGSEGV)','C'),(515,2,'cyclops','Practice','ABCPATH','compilation error','C'),(516,2,'cyclops','Practice','ABCPATH','accepted','C'),(517,2,'cyclops','Practice','ABCPATH','accepted','C'),(518,2,'cyclops','Practice','ABCPATH','accepted','C'),(519,2,'cyclops','Practice','ABCPATH','accepted','C'),(520,2,'cyclops','Practice','ABCPATH','accepted','C'),(521,2,'cyclops','Practice','ABCPATH','accepted','C'),(522,2,'cyclops','Practice','ABCPATH','accepted','C'),(523,2,'cyclops','Practice','ABCPATH','accepted','C'),(524,2,'cyclops','Practice','ABCPATH','accepted','C'),(525,2,'cyclops','Practice','ABCPATH','accepted','C'),(526,2,'cyclops','Practice','ABCPATH','accepted','C'),(527,2,'cyclops','Practice','ABCPATH','accepted','C'),(528,2,'cyclops','Practice','ABCPATH','accepted','C'),(529,2,'cyclops','Practice','ABCPATH','accepted','C'),(530,2,'cyclops','Practice','ABCPATH','accepted','C'),(531,2,'cyclops','Practice','ABCPATH','accepted','C'),(532,2,'cyclops','Practice','ABCPATH','accepted','C'),(533,2,'cyclops','Practice','ABCPATH','accepted','C'),(534,2,'cyclops','Practice','ABSHIP','wrong answer','C'),(535,2,'cyclops','Practice','ABSHIP','wrong answer','C'),(536,2,'cyclops','Practice','ABSHIP','wrong answer','C'),(537,2,'cyclops','Practice','ABSHIP','time limit exceeded','C++'),(538,2,'cyclops','Practice','ABSHIP','accepted','C'),(539,2,'cyclops','Practice','ABSHIP','accepted','C'),(540,2,'cyclops','Practice','ABSHIP','accepted','C'),(541,2,'cyclops','Practice','ABSHIP','accepted','C'),(542,2,'cyclops','Practice','ABSHIP','accepted','C'),(543,2,'cyclops','Practice','ABSHIP','accepted','C'),(544,2,'cyclops','Practice','ABSHIP','accepted','C'),(545,2,'cyclops','Practice','ABSHIP','accepted','C'),(546,2,'cyclops','Practice','ABSHIP','accepted','C'),(547,2,'cyclops','Practice','ABSHIP','accepted','C'),(548,2,'gingkgo','Practice','ABA12C','wrong answer','C++'),(549,2,'gingkgo','Practice','ABA12C','wrong answer','C++'),(550,2,'gingkgo','Practice','ABA12C','accepted','C++'),(551,2,'gingkgo','Practice','ABA12E','wrong answer','C++'),(552,2,'gingkgo','Practice','ABA12E','accepted','C++'),(553,2,'gingkgo','Practice','ABCD','wrong answer','CPP'),(554,2,'gingkgo','Practice','ABCD','wrong answer','CPP'),(555,2,'gingkgo','Practice','ABCD','accepted','CPP'),(556,2,'gingkgo','Practice','ABSHIP','accepted','C++'),(557,2,'gingkgo','Practice','ACANVAS','time limit exceeded','C++'),(558,2,'gingkgo','Practice','ACANVAS','wrong answer','C++'),(559,2,'gingkgo','Practice','ACANVAS','runtime error (SIGXFSZ)','C++'),(560,2,'gingkgo','Practice','ACANVAS','wrong answer','C++'),(561,2,'gingkgo','Practice','ACANVAS','compilation error','C++'),(562,2,'gingkgo','Practice','ACANVAS','wrong answer','C++'),(563,2,'gingkgo','Practice','ACANVAS','time limit exceeded','C++'),(564,2,'gingkgo','Practice','ACANVAS','time limit exceeded','C++'),(565,2,'gingkgo','Practice','ACANVAS','time limit exceeded','C++'),(566,2,'gingkgo','Practice','ACANVAS','time limit exceeded','C++'),(567,2,'gingkgo','Practice','ACANVAS','accepted','C++'),(568,2,'gingkgo','Practice','ACANVAS','accepted','C++'),(569,2,'gingkgo','Practice','ACANVAS','accepted','C++'),(570,2,'gingkgo','Practice','ACANVAS','accepted','C++'),(571,2,'mehmetinal','Practice','AAC2','accepted','CPP14'),(572,2,'mehmetinal','Practice','ABA12C','wrong answer','C'),(573,2,'mehmetinal','Practice','ABA12C','wrong answer','C'),(574,2,'mehmetinal','Practice','ABA12C','wrong answer','C'),(575,2,'mehmetinal','Practice','ABA12C','wrong answer','C'),(576,2,'mehmetinal','Practice','ABA12C','wrong answer','C'),(577,2,'mehmetinal','Practice','ABA12C','wrong answer','C'),(578,2,'mehmetinal','Practice','ABA12C','wrong answer','C'),(579,2,'mehmetinal','Practice','ABA12C','wrong answer','C'),(580,2,'mehmetinal','Practice','ABA12C','wrong answer','C'),(581,2,'mehmetinal','Practice','ABA12C','wrong answer','C'),(582,2,'mehmetinal','Practice','ABA12C','accepted','C'),(583,2,'mehmetinal','Practice','ABA12C','accepted','C'),(584,2,'mehmetinal','Practice','ABA12C','accepted','C'),(585,2,'mehmetinal','Practice','ABA12D','wrong answer','C'),(586,2,'mehmetinal','Practice','ABA12D','time limit exceeded','C'),(587,2,'mehmetinal','Practice','ABA12D','time limit exceeded','C'),(588,2,'mehmetinal','Practice','ABA12D','time limit exceeded','C'),(589,2,'mehmetinal','Practice','ABA12D','compilation error','C'),(590,2,'mehmetinal','Practice','ABA12D','accepted','C'),(591,2,'mehmetinal','Practice','ABA12D','accepted','C'),(592,2,'mehmetinal','Practice','ABA12D','accepted','C'),(593,2,'mehmetinal','Practice','ABA12D','accepted','C'),(594,2,'mehmetinal','Practice','ABA12E','runtime error (SIGSEGV)','C'),(595,2,'mehmetinal','Practice','ABA12E','accepted','C'),(596,2,'mehmetinal','Practice','ABA12E','accepted','C'),(597,2,'mehmetinal','Practice','ABCD','wrong answer','C'),(598,2,'mehmetinal','Practice','ABCD','wrong answer','C'),(599,2,'mehmetinal','Practice','ABCD','wrong answer','C'),(600,2,'mehmetinal','Practice','ABCD','wrong answer','C'),(601,2,'mehmetinal','Practice','ABCD','wrong answer','C'),(602,2,'mehmetinal','Practice','ABCD','wrong answer','C'),(603,2,'mehmetinal','Practice','ABCD','wrong answer','C'),(604,2,'mehmetinal','Practice','ABCD','wrong answer','C'),(605,2,'mehmetinal','Practice','ABCD','accepted','C'),(606,2,'mehmetinal','Practice','ABCD','accepted','C'),(607,2,'mehmetinal','Practice','ABCD','accepted','C'),(608,2,'mehmetinal','Practice','ABCD','accepted','C'),(609,2,'mehmetinal','Practice','ABCD','accepted','C'),(610,2,'ikatanic','Practice','ABCDEF','runtime error (SIGSEGV)','CPP'),(611,2,'ikatanic','Practice','ABCDEF','time limit exceeded','CPP'),(612,2,'ikatanic','Practice','ABCDEF','time limit exceeded','CPP'),(613,2,'ikatanic','Practice','ABCDEF','accepted','CPP'),(614,2,'ikatanic','Practice','ABCDEF','accepted','CPP'),(615,2,'ikatanic','Practice','ABCDEF','accepted','CPP'),(616,2,'ikatanic','Practice','ABCDEF','accepted','CPP'),(617,2,'ikatanic','Practice','ABCDEF','accepted','CPP'),(618,2,'ikatanic','Practice','ABCDEF','accepted','CPP'),(619,2,'ikatanic','Practice','ABCDEF','accepted','CPP'),(620,2,'ikatanic','Practice','ABCDEF','accepted','CPP'),(621,2,'ikatanic','Practice','ABCDEF','accepted','CPP'),(622,2,'ikatanic','Practice','ABSYS','wrong answer','CPP'),(623,2,'ikatanic','Practice','ABSYS','accepted','CPP'),(624,2,'ikatanic','Practice','ACAB','time limit exceeded','C++'),(625,2,'ikatanic','Practice','ACAB','accepted','C++'),(626,2,'ikatanic','Practice','ACANVAS','wrong answer','C++'),(627,2,'ikatanic','Practice','ACANVAS','accepted','C++'),(628,2,'ikatanic','Practice','ACANVAS','accepted','C++'),(629,2,'ikatanic','Practice','ACANVAS','accepted','C++'),(630,2,'ikatanic','Practice','ACARGO','wrong answer','C++'),(631,2,'ikatanic','Practice','ACARGO','wrong answer','C++'),(632,2,'ikatanic','Practice','ACARGO','wrong answer','C++'),(633,2,'ikatanic','Practice','ACARGO','wrong answer','C++'),(634,2,'ikatanic','Practice','ACARGO','wrong answer','C++'),(635,2,'ikatanic','Practice','ACARGO','wrong answer','C++'),(636,2,'ikatanic','Practice','ACARGO','accepted','C++'),(637,2,'thanatipanonda','Practice','AAC2','accepted','JAVA'),(638,2,'thanatipanonda','Practice','ABA12C','runtime error (NZEC)','JAVA'),(639,2,'thanatipanonda','Practice','ABA12C','accepted','JAVA'),(640,2,'thanatipanonda','Practice','ABA12D','time limit exceeded','JAVA'),(641,2,'thanatipanonda','Practice','ABA12D','time limit exceeded','JAVA'),(642,2,'thanatipanonda','Practice','ABA12D','accepted','JAVA'),(643,2,'thanatipanonda','Practice','ABA12E','accepted','JAVA'),(644,2,'thanatipanonda','Practice','ABCD','wrong answer','JAVA'),(645,2,'thanatipanonda','Practice','ABCD','accepted','JAVA'),(646,2,'tjandra','Practice','ABA12C','wrong answer','C'),(647,2,'tjandra','Practice','ABA12C','accepted','C'),(648,2,'tjandra','Practice','ABA12D','accepted','C'),(649,2,'tjandra','Practice','ABA12E','wrong answer','C'),(650,2,'tjandra','Practice','ABA12E','wrong answer','C'),(651,2,'tjandra','Practice','ABA12E','wrong answer','C'),(652,2,'tjandra','Practice','ABA12E','wrong answer','C'),(653,2,'tjandra','Practice','ABA12E','wrong answer','C'),(654,2,'tjandra','Practice','ABA12E','runtime error (NZEC)','C'),(655,2,'tjandra','Practice','ABA12E','compilation error','C'),(656,2,'tjandra','Practice','ABA12E','wrong answer','C'),(657,2,'tjandra','Practice','ABA12E','wrong answer','C'),(658,2,'tjandra','Practice','ABA12E','accepted','C'),(659,2,'tjandra','Practice','ABA12E','accepted','C'),(660,2,'tjandra','Practice','ABA12E','accepted','C'),(661,2,'tjandra','Practice','ABA12E','accepted','C'),(662,2,'tjandra','Practice','ABA12E','accepted','C'),(663,2,'tjandra','Practice','ABA12E','accepted','C'),(664,2,'tjandra','Practice','ABCD','wrong answer','C'),(665,2,'tjandra','Practice','ABCD','wrong answer','C'),(666,2,'tjandra','Practice','ABCD','runtime error (SIGXFSZ)','C'),(667,2,'tjandra','Practice','ABCD','wrong answer','C'),(668,2,'tjandra','Practice','ABCD','wrong answer','C'),(669,2,'tjandra','Practice','ABCD','accepted','C'),(670,2,'tjandra','Practice','ABCDEF','time limit exceeded','C'),(671,2,'tjandra','Practice','ABCDEF','time limit exceeded','C'),(672,2,'tjandra','Practice','ABCDEF','time limit exceeded','C'),(673,2,'tjandra','Practice','ABCDEF','time limit exceeded','C'),(674,2,'tjandra','Practice','ABCDEF','accepted','C'),(675,2,'stjepang','Practice','ABCDEF','wrong answer','CPP14-CLANG'),(676,2,'stjepang','Practice','ABCDEF','wrong answer','CPP14-CLANG'),(677,2,'stjepang','Practice','ABCDEF','compilation error','CPP14'),(678,2,'stjepang','Practice','ABCDEF','runtime error (SIGABRT)','CPP14'),(679,2,'stjepang','Practice','ABCDEF','runtime error (SIGABRT)','CPP14'),(680,2,'stjepang','Practice','ABCDEF','accepted','CPP14'),(681,2,'stjepang','Practice','ABCDEF','accepted','CPP14'),(682,2,'stjepang','Practice','ABCDEF','accepted','CPP14'),(683,2,'stjepang','Practice','ABCDEF','accepted','CPP14'),(684,2,'stjepang','Practice','ABCDEF','accepted','CPP14'),(685,2,'stjepang','Practice','ABCDEF','accepted','CPP14'),(686,2,'stjepang','Practice','ABCDEF','accepted','CPP14'),(687,2,'stjepang','Practice','ABCDEF','accepted','CPP14'),(688,2,'stjepang','Practice','ABCDEF','accepted','CPP14'),(689,2,'stjepang','Practice','ABCDEF','accepted','CPP14'),(690,2,'stjepang','Practice','ABCDEF','accepted','CPP14'),(691,2,'stjepang','Practice','ABCDEF','accepted','CPP14'),(692,2,'stjepang','Practice','ABCDEF','accepted','CPP14'),(693,2,'stjepang','Practice','ABCDEF','accepted','CPP14'),(694,2,'stjepang','Practice','ABCDEF','accepted','CPP14'),(695,2,'stjepang','Practice','ABSYS','accepted','CPP'),(696,2,'stjepang','Practice','ACANVAS','accepted','C++'),(697,2,'stjepang','Practice','ACARGO','runtime error (SIGSEGV)','CPP'),(698,2,'stjepang','Practice','ACARGO','accepted','CPP'),(699,2,'stjepang','Practice','ACMAKER','wrong answer','CPP'),(700,2,'stjepang','Practice','ACMAKER','accepted','CPP'),(701,2,'bd1916','Practice','ABA12C','wrong answer','C++'),(702,2,'bd1916','Practice','ABA12C','accepted','C++'),(703,2,'bd1916','Practice','ABA12D','accepted','C++'),(704,2,'bd1916','Practice','ABA12E','accepted','C++'),(705,2,'bd1916','Practice','ABCD','wrong answer','C++'),(706,2,'bd1916','Practice','ABCD','wrong answer','C++'),(707,2,'bd1916','Practice','ABCD','time limit exceeded','C++'),(708,2,'bd1916','Practice','ABCD','runtime error (SIGSEGV)','C++'),(709,2,'bd1916','Practice','ABCD','accepted','C++'),(710,2,'bd1916','Practice','ABCD','accepted','C++'),(711,2,'bd1916','Practice','ABCDEF','time limit exceeded','C++'),(712,2,'bd1916','Practice','ABCDEF','time limit exceeded','C++'),(713,2,'bd1916','Practice','ABCDEF','time limit exceeded','C++'),(714,2,'bd1916','Practice','ABCDEF','runtime error (SIGSEGV)','C++'),(715,2,'bd1916','Practice','ABCDEF','runtime error (SIGSEGV)','C++'),(716,2,'bd1916','Practice','ABCDEF','accepted','C++'),(717,2,'bd1916','Practice','ABCDEF','accepted','C++'),(718,2,'balroginfire','Practice','ABCDEF','wrong answer','CPP'),(719,2,'balroginfire','Practice','ABCDEF','accepted','CPP'),(720,2,'balroginfire','Practice','ADV04B1','accepted','C++'),(721,2,'balroginfire','Practice','AE00','accepted','CPP'),(722,2,'balroginfire','Practice','AE2A','accepted','CPP'),(723,2,'balroginfire','Practice','AE2B','wrong answer','CPP'),(724,2,'balroginfire','Practice','AE2B','wrong answer','CPP'),(725,2,'balroginfire','Practice','AE2B','accepted','CPP'),(726,2,'sherlock_holms','Practice','AAC2','accepted','C++'),(727,2,'sherlock_holms','Practice','ABA12C','wrong answer','C++'),(728,2,'sherlock_holms','Practice','ABA12C','compilation error','ADA95'),(729,2,'sherlock_holms','Practice','ABA12C','wrong answer','C++'),(730,2,'sherlock_holms','Practice','ABA12C','wrong answer','C++'),(731,2,'sherlock_holms','Practice','ABA12C','compilation error','C++'),(732,2,'sherlock_holms','Practice','ABA12C','wrong answer','C++'),(733,2,'sherlock_holms','Practice','ABA12C','wrong answer','C++'),(734,2,'sherlock_holms','Practice','ABA12C','wrong answer','C++'),(735,2,'sherlock_holms','Practice','ABA12C','wrong answer','C++'),(736,2,'sherlock_holms','Practice','ABA12C','accepted','C++'),(737,2,'sherlock_holms','Practice','ABA12D','time limit exceeded','C++'),(738,2,'sherlock_holms','Practice','ABA12D','compilation error','C++'),(739,2,'sherlock_holms','Practice','ABA12D','accepted','C++'),(740,2,'sherlock_holms','Practice','ABA12E','accepted','C++'),(741,2,'sherlock_holms','Practice','ABCD','wrong answer','C++'),(742,2,'sherlock_holms','Practice','ABCD','wrong answer','C++'),(743,2,'sherlock_holms','Practice','ABCD','wrong answer','C++'),(744,2,'sherlock_holms','Practice','ABCD','accepted','C++'),(745,2,'anton_lunyov','Practice','ABA12B','accepted','C++'),(746,2,'anton_lunyov','Practice','ABA12C','accepted','C++'),(747,2,'anton_lunyov','Practice','ABA12D','accepted','C++'),(748,2,'anton_lunyov','Practice','ABA12E','accepted','C++'),(749,2,'anton_lunyov','Practice','ABCDEF','accepted','CPP'),(750,2,'sgtlaugh','Practice','ABA12C','wrong answer','C'),(751,2,'sgtlaugh','Practice','ABA12C','wrong answer','C'),(752,2,'sgtlaugh','Practice','ABA12C','accepted','C'),(753,2,'sgtlaugh','Practice','ABA12D','accepted','C'),(754,2,'sgtlaugh','Practice','ABA12E','accepted','C'),(755,2,'sgtlaugh','Practice','ABCDEF','wrong answer','CPP'),(756,2,'sgtlaugh','Practice','ABCDEF','wrong answer','CPP'),(757,2,'sgtlaugh','Practice','ABCDEF','accepted','CPP'),(758,2,'sgtlaugh','Practice','ABSP1','accepted','C'),(759,2,'sergej_t','Practice','AAC2','accepted','C'),(760,2,'sergej_t','Practice','ABA12C','wrong answer','C'),(761,2,'sergej_t','Practice','ABA12C','accepted','C'),(762,2,'sergej_t','Practice','ABA12D','accepted','C'),(763,2,'sergej_t','Practice','ABCD','compilation error','C'),(764,2,'sergej_t','Practice','ABCD','wrong answer','C'),(765,2,'sergej_t','Practice','ABCD','accepted','C'),(766,2,'sergej_t','Practice','ABCD','accepted','C'),(767,2,'sergej_t','Practice','ABCDEF','accepted','C'),(768,2,'sergej_t','Practice','ABCDEF','accepted','C'),(769,2,'alex_the_great','Practice','ABA12C','accepted','PAS-FPC'),(770,2,'alex_the_great','Practice','ABSP1','internal error','PAS-FPC'),(771,2,'alex_the_great','Practice','ABSP1','accepted','PAS-FPC'),(772,2,'alex_the_great','Practice','ABSURD','accepted','PAS-FPC'),(773,2,'alex_the_great','Practice','ABSYS','wrong answer','PAS-FPC'),(774,2,'alex_the_great','Practice','ABSYS','wrong answer','PAS-FPC'),(775,2,'alex_the_great','Practice','ABSYS','accepted','PAS-FPC'),(776,2,'alex_the_great','Practice','ACMT','accepted','PAS-FPC'),(777,2,'uci_015','Practice','ABCDEF','accepted','C++'),(778,2,'uci_015','Practice','ABCDEF','accepted','C++'),(779,2,'uci_015','Practice','ABSURD','accepted','C++'),(780,2,'uci_015','Practice','ACARGO','accepted','C++'),(781,2,'uci_015','Practice','ACODE','accepted','CPP'),(782,2,'uci_015','Practice','ACPC10D','wrong answer','C++'),(783,2,'uci_015','Practice','ACPC10D','wrong answer','C++'),(784,2,'uci_015','Practice','ACPC10D','accepted','C++'),(785,2,'xujie','Practice','ABCD','time limit exceeded','PAS-FPC'),(786,2,'xujie','Practice','ABCD','wrong answer','PAS-FPC'),(787,2,'xujie','Practice','ABCD','wrong answer','PAS-FPC'),(788,2,'xujie','Practice','ABCD','accepted','PAS-FPC'),(789,2,'xujie','Practice','ABCDEF','wrong answer','PAS-FPC'),(790,2,'xujie','Practice','ABCDEF','runtime error (NZEC)','PAS-FPC'),(791,2,'xujie','Practice','ABCDEF','accepted','PAS-FPC'),(792,2,'xujie','Practice','ACPC10A','accepted','PAS-FPC'),(793,2,'xujie','Practice','ACPC10B','wrong answer','PAS-FPC'),(794,2,'xujie','Practice','ACPC10B','wrong answer','PAS-FPC'),(795,2,'xujie','Practice','ACPC10B','accepted','PAS-FPC'),(796,2,'xujie','Practice','ACPC10C','wrong answer','PAS-FPC'),(797,2,'xujie','Practice','ACPC10C','accepted','PAS-FPC'),(798,2,'morass','Practice','ABA12D','accepted','C++'),(799,2,'morass','Practice','ABA12E','wrong answer','CPP14'),(800,2,'morass','Practice','ABA12E','wrong answer','CPP14'),(801,2,'morass','Practice','ABA12E','accepted','CPP14'),(802,2,'morass','Practice','ABA12E','accepted','CPP14'),(803,2,'morass','Practice','ABCPATH','wrong answer','CPP14'),(804,2,'morass','Practice','ABCPATH','accepted','CPP14'),(805,2,'morass','Practice','ABSP1','accepted','CPP14'),(806,2,'morass','Practice','ABSP1','accepted','CPP14'),(807,2,'morass','Practice','ABSP1','accepted','CPP14'),(808,2,'morass','Practice','ABSP1','accepted','CPP14'),(809,2,'morass','Practice','ACODE','accepted','CPP14'),(810,2,'morass','Practice','ACODE','accepted','CPP14'),(811,2,'abdou_93','Practice','ABA12D','compilation error','C++'),(812,2,'abdou_93','Practice','ABA12D','compilation error','C++'),(813,2,'abdou_93','Practice','ABA12D','compilation error','C++'),(814,2,'abdou_93','Practice','ABA12D','time limit exceeded','C++'),(815,2,'abdou_93','Practice','ABA12D','compilation error','C++'),(816,2,'abdou_93','Practice','ABA12D','compilation error','C++'),(817,2,'abdou_93','Practice','ABA12D','accepted','C++'),(818,2,'abdou_93','Practice','ABA12D','accepted','C++'),(819,2,'abdou_93','Practice','ABA12D','accepted','C++'),(820,2,'abdou_93','Practice','ABA12D','accepted','C++'),(821,2,'abdou_93','Practice','ABA12D','accepted','C++'),(822,2,'abdou_93','Practice','ABA12D','accepted','C++'),(823,2,'abdou_93','Practice','ABA12D','accepted','C++'),(824,2,'abdou_93','Practice','ABA12D','accepted','C++'),(825,2,'abdou_93','Practice','ABCD','wrong answer','C++'),(826,2,'abdou_93','Practice','ABCD','time limit exceeded','C++'),(827,2,'abdou_93','Practice','ABCD','wrong answer','C++'),(828,2,'abdou_93','Practice','ABCD','wrong answer','C++'),(829,2,'abdou_93','Practice','ABCD','wrong answer','C++'),(830,2,'abdou_93','Practice','ABCD','wrong answer','C++'),(831,2,'abdou_93','Practice','ABCD','time limit exceeded','C++'),(832,2,'abdou_93','Practice','ABCD','wrong answer','C++'),(833,2,'abdou_93','Practice','ABCD','wrong answer','C++'),(834,2,'abdou_93','Practice','ABCD','wrong answer','C++'),(835,2,'abdou_93','Practice','ABCD','accepted','C++'),(836,2,'abdou_93','Practice','ABCD','accepted','C++'),(837,2,'abdou_93','Practice','ABCD','accepted','C++'),(838,2,'abdou_93','Practice','ABCD','accepted','C++'),(839,2,'abdou_93','Practice','ABCDEF','wrong answer','C++'),(840,2,'abdou_93','Practice','ABCDEF','compilation error','C++'),(841,2,'abdou_93','Practice','ABCDEF','wrong answer','C++'),(842,2,'abdou_93','Practice','ABCDEF','wrong answer','C++'),(843,2,'abdou_93','Practice','ABCDEF','wrong answer','C++'),(844,2,'abdou_93','Practice','ABCDEF','time limit exceeded','C++'),(845,2,'abdou_93','Practice','ABCDEF','time limit exceeded','C++'),(846,2,'abdou_93','Practice','ABCDEF','time limit exceeded','C++'),(847,2,'abdou_93','Practice','ABCDEF','compilation error','ADA95'),(848,2,'abdou_93','Practice','ABCDEF','time limit exceeded','C++'),(849,2,'abdou_93','Practice','ABCDEF','time limit exceeded','C++'),(850,2,'abdou_93','Practice','ABCDEF','compilation error','ADA95'),(851,2,'abdou_93','Practice','ABCDEF','time limit exceeded','C++'),(852,2,'abdou_93','Practice','ABCDEF','time limit exceeded','C++'),(853,2,'abdou_93','Practice','ABCDEF','wrong answer','C++'),(854,2,'abdou_93','Practice','ABCDEF','wrong answer','C++'),(855,2,'abdou_93','Practice','ABCDEF','accepted','C++'),(856,2,'abdou_93','Practice','ABCDEF','accepted','C++'),(857,2,'abdou_93','Practice','ABCDEF','accepted','C++'),(858,2,'abdou_93','Practice','ABCDEF','accepted','C++'),(859,2,'abdou_93','Practice','ABCPATH','wrong answer','C++'),(860,2,'abdou_93','Practice','ABCPATH','accepted','C++'),(861,2,'abdou_93','Practice','ABSP1','accepted','C++'),(862,2,'gaurav_agarval','Practice','AAC2','wrong answer','CPP14'),(863,2,'gaurav_agarval','Practice','AAC2','wrong answer','CPP14'),(864,2,'gaurav_agarval','Practice','AAC2','wrong answer','CPP14'),(865,2,'gaurav_agarval','Practice','AAC2','wrong answer','CPP14'),(866,2,'gaurav_agarval','Practice','AAC2','wrong answer','CPP14'),(867,2,'gaurav_agarval','Practice','AAC2','wrong answer','CPP14'),(868,2,'gaurav_agarval','Practice','AAC2','runtime error (SIGSEGV)','CPP14'),(869,2,'gaurav_agarval','Practice','AAC2','runtime error (SIGSEGV)','CPP14'),(870,2,'gaurav_agarval','Practice','AAC2','accepted','CPP14'),(871,2,'gaurav_agarval','Practice','ABA12C','wrong answer','CPP14'),(872,2,'gaurav_agarval','Practice','ABA12C','accepted','CPP14'),(873,2,'gaurav_agarval','Practice','ABA12D','accepted','CPP'),(874,2,'gaurav_agarval','Practice','ABCD','internal error','CPP'),(875,2,'gaurav_agarval','Practice','ABCD','accepted','CPP'),(876,2,'gaurav_agarval','Practice','ABCD','accepted','CPP'),(877,2,'gaurav_agarval','Practice','ABCDEF','wrong answer','CPP'),(878,2,'gaurav_agarval','Practice','ABCDEF','wrong answer','CPP'),(879,2,'gaurav_agarval','Practice','ABCDEF','time limit exceeded','CPP'),(880,2,'gaurav_agarval','Practice','ABCDEF','time limit exceeded','CPP'),(881,2,'gaurav_agarval','Practice','ABCDEF','time limit exceeded','CPP'),(882,2,'gaurav_agarval','Practice','ABCDEF','accepted','CPP'),(883,2,'gaurav_agarval','Practice','ABCDEF','accepted','CPP'),(884,2,'gaurav_agarval','Practice','ABCDEF','accepted','CPP'),(885,2,'andypertamax','Practice','ABA12D','accepted','C'),(886,2,'andypertamax','Practice','ABCD','accepted','C'),(887,2,'andypertamax','Practice','ABCDEF','accepted','C++'),(888,2,'andypertamax','Practice','ABCPATH','accepted','C'),(889,2,'andypertamax','Practice','ABSP1','accepted','C'),(890,2,'damians','Practice','ABA12C','accepted','C++'),(891,2,'damians','Practice','ABA12D','accepted','C++'),(892,2,'damians','Practice','ABA12E','accepted','C++'),(893,2,'damians','Practice','ABA12E','accepted','C++'),(894,2,'damians','Practice','ABCDEF','accepted','C++'),(895,2,'damians','Practice','ABSYS','accepted','C++'),(896,2,'devilwolverine','Practice','AAC2','accepted','CPP14'),(897,2,'devilwolverine','Practice','ABA12C','accepted','C++'),(898,2,'devilwolverine','Practice','ABA12D','wrong answer','C++'),(899,2,'devilwolverine','Practice','ABA12D','accepted','C++'),(900,2,'devilwolverine','Practice','ABCPATH','time limit exceeded','C++'),(901,2,'devilwolverine','Practice','ABCPATH','time limit exceeded','C++'),(902,2,'devilwolverine','Practice','ABCPATH','time limit exceeded','C++'),(903,2,'devilwolverine','Practice','ABCPATH','time limit exceeded','C++'),(904,2,'devilwolverine','Practice','ABCPATH','time limit exceeded','C++'),(905,2,'devilwolverine','Practice','ABCPATH','accepted','C++'),(906,2,'devilwolverine','Practice','ABSP1','accepted','C++'),(907,2,'azneye','Practice','ABA12C','compilation error','C++'),(908,2,'azneye','Practice','ABA12C','accepted','C++'),(909,2,'azneye','Practice','ABA12D','wrong answer','JAVA'),(910,2,'azneye','Practice','ABA12D','accepted','JAVA'),(911,2,'azneye','Practice','ABCD','wrong answer','C++'),(912,2,'azneye','Practice','ABCD','wrong answer','C++'),(913,2,'azneye','Practice','ABCD','wrong answer','C++'),(914,2,'azneye','Practice','ABCD','wrong answer','C++'),(915,2,'azneye','Practice','ABCD','wrong answer','C++'),(916,2,'azneye','Practice','ABCD','accepted','C++'),(917,2,'azneye','Practice','ABCDEF','accepted','C++'),(918,2,'azneye','Practice','ABCPATH','wrong answer','JAVA'),(919,2,'azneye','Practice','ABCPATH','time limit exceeded','JAVA'),(920,2,'azneye','Practice','ABCPATH','accepted','JAVA'),(921,2,'tourist','Practice','ABCDEF','time limit exceeded','PAS-FPC'),(922,2,'tourist','Practice','ABCDEF','time limit exceeded','PAS-FPC'),(923,2,'tourist','Practice','ABCDEF','accepted','PAS-FPC'),(924,2,'tourist','Practice','ABSYS','accepted','PAS-FPC'),(925,2,'tourist','Practice','ACMAKER','wrong answer','PAS-FPC'),(926,2,'tourist','Practice','ACMAKER','time limit exceeded','PAS-FPC'),(927,2,'tourist','Practice','ACMAKER','wrong answer','PAS-FPC'),(928,2,'tourist','Practice','ACMAKER','accepted','PAS-FPC'),(929,2,'tourist','Practice','ACODE','wrong answer','PAS-FPC'),(930,2,'tourist','Practice','ACODE','wrong answer','PAS-FPC'),(931,2,'tourist','Practice','ACODE','accepted','PAS-FPC'),(932,2,'tourist','Practice','ACPC10A','accepted','PAS-FPC'),(953,3,'hyuil','Practice',' First Reverse ','accepted','C++'),(954,3,'hyuil','Practice',' Letter Changes ','accepted','C++'),(955,3,'hyuil','Practice',' Simple Adding ','accepted','C++'),(956,3,'hyuil','Practice',' Simple Symbols ','accepted','C++'),(957,3,'cjordanball','Practice',' First Factorial ','accepted','JavaScript'),(958,3,'cjordanball','Practice',' Simple Adding ','accepted','JavaScript'),(959,3,'cjordanball','Practice',' First Reverse ','accepted','JavaScript'),(960,3,'cjordanball','Practice',' Word Count ','accepted','JavaScript'),(961,3,'hunsoo','Practice',' First Reverse ','accepted','JavaScript'),(962,3,'hunsoo','Practice',' First Factorial ','accepted','JavaScript'),(963,3,'hunsoo','Practice',' Longest Word ','accepted','JavaScript'),(964,3,'hunsoo','Practice',' Superincreasing ','accepted','JavaScript'),(965,3,'kalgima','Practice',' Questions Marks ','accepted','Swift'),(966,3,'kalgima','Practice',' Closest Enemy II ','accepted','Swift'),(967,3,'kalgima','Practice',' Correct Path ','accepted','Swift'),(968,3,'kalgima','Practice',' Vowel Square ','accepted','Swift'),(969,3,'Qlogin','Practice',' First Reverse ','accepted','Python'),(970,3,'Qlogin','Practice',' First Factorial ','accepted','Python'),(971,3,'Qlogin','Practice',' Longest Word ','accepted','Python'),(972,3,'Qlogin','Practice',' Letter Changes ','accepted','Python'),(973,3,'KlaraKathrina','Practice',' First Reverse ','accepted','Python'),(974,3,'KlaraKathrina','Practice',' Letter Changes ','accepted','Python'),(975,3,'KlaraKathrina','Practice',' First Factorial ','accepted','Python'),(976,3,'KlaraKathrina','Practice',' Longest Word ','accepted','Python'),(977,3,'emuchynski','Practice',' Vowel Count ','accepted','Ruby'),(978,3,'emuchynski','Practice',' Letter Capitalize ','accepted','Ruby'),(979,3,'emuchynski','Practice',' Largest Four ','accepted','Ruby'),(980,3,'emuchynski','Practice',' Letter Changes ','accepted','Ruby'),(981,3,'Sabin','Practice',' First Reverse ','accepted','Python'),(982,3,'Sabin','Practice',' First Factorial ','accepted','Python'),(983,3,'Sabin','Practice',' Longest Word ','accepted','Python'),(984,3,'Sabin','Practice',' Simple Adding ','accepted','Python'),(985,3,'junjunparkpark','Practice',' Simple Adding ','accepted','Ruby'),(986,3,'junjunparkpark','Practice',' Letter Capitalize ','accepted','Ruby'),(987,3,'junjunparkpark','Practice',' Check Nums ','accepted','Ruby'),(988,3,'junjunparkpark','Practice',' Longest Increasing Sequence ','accepted','Ruby'),(989,3,'Corinto','Practice',' First Reverse ','accepted','Python'),(990,3,'Corinto','Practice',' First Factorial ','accepted','Python'),(991,3,'Corinto','Practice',' Letter Changes ','accepted','Python'),(992,3,'Corinto','Practice',' Simple Adding ','accepted','Python'),(993,3,'lesian','Practice',' First Reverse ','accepted','Python'),(994,3,'lesian','Practice',' Letter Changes ','accepted','Python'),(995,3,'lesian','Practice',' Simple Adding ','accepted','Python'),(996,3,'lesian','Practice',' Letter Capitalize ','accepted','Python'),(997,3,'Ryantimjohn','Practice',' First Reverse ','accepted','Python'),(998,3,'Ryantimjohn','Practice',' First Factorial ','accepted','Python'),(999,3,'Ryantimjohn','Practice',' Longest Word ','accepted','Python'),(1000,3,'Ryantimjohn','Practice',' Letter Changes ','accepted','Python'),(1001,3,'EmperorDuny','Practice',' First Reverse ','accepted','Python'),(1002,3,'EmperorDuny','Practice',' First Factorial ','accepted','Python'),(1003,3,'EmperorDuny','Practice',' Letter Changes ','accepted','Python'),(1004,3,'EmperorDuny','Practice',' Simple Adding ','accepted','JavaScript'),(1005,3,'jrorsini','Practice',' Binary Reversal ','accepted','JavaScript'),(1006,3,'jrorsini','Practice',' Letter Changes ','accepted','JavaScript'),(1007,3,'jrorsini','Practice',' First Factorial ','accepted','JavaScript'),(1008,3,'jrorsini','Practice',' Simple Adding ','accepted','JavaScript'),(1009,3,'gzamfire','Practice',' First Reverse ','accepted','Python'),(1010,3,'gzamfire','Practice',' Letter Changes ','accepted','Python'),(1011,3,'gzamfire','Practice',' First Factorial ','accepted','Python'),(1012,3,'gzamfire','Practice',' Longest Word ','accepted','Python'),(1013,3,'leot75','Practice',' First Reverse ','accepted','JavaScript'),(1014,3,'leot75','Practice',' First Factorial ','accepted','JavaScript'),(1015,3,'leot75','Practice',' Longest Word ','accepted','JavaScript'),(1016,3,'leot75','Practice',' Simple Adding ','accepted','JavaScript'),(1017,3,'mmalkavian','Practice',' First Reverse ','accepted','Python'),(1018,3,'mmalkavian','Practice',' First Factorial ','accepted','Python'),(1019,3,'mmalkavian','Practice',' Simple Adding ','accepted','Python'),(1020,3,'mmalkavian','Practice',' Longest Word ','accepted','Python'),(1021,3,'Ryanm1234','Practice',' First Reverse ','accepted','Ruby'),(1022,3,'Ryanm1234','Practice',' Letter Changes ','accepted','Ruby'),(1023,3,'Ryanm1234','Practice',' First Factorial ','accepted','Ruby'),(1024,3,'Ryanm1234','Practice',' Simple Adding ','accepted','Ruby'),(1025,3,'gutty333','Practice',' First Reverse ','accepted','C++'),(1026,3,'gutty333','Practice',' First Factorial ','accepted','C++'),(1027,3,'gutty333','Practice',' Letter Changes ','accepted','C++'),(1028,3,'gutty333','Practice',' Simple Adding ','accepted','C++'),(1029,3,'mattlarsh','Practice',' First Reverse ','accepted','JavaScript'),(1030,3,'mattlarsh','Practice',' Longest Word ','accepted','JavaScript'),(1031,3,'mattlarsh','Practice',' Simple Adding ','accepted','JavaScript'),(1032,3,'mattlarsh','Practice',' Letter Capitalize ','accepted','JavaScript'),(1033,3,'nulln','Practice',' First Reverse ','accepted','JavaScript'),(1034,3,'nulln','Practice',' Word Count ','accepted','JavaScript'),(1035,3,'nulln','Practice',' First Factorial ','accepted','JavaScript'),(1036,3,'nulln','Practice',' Check Nums ','accepted','JavaScript'),(1037,3,'beeboop19','Practice',' First Reverse ','accepted','JavaScript'),(1038,3,'beeboop19','Practice',' First Factorial ','accepted','JavaScript'),(1039,3,'beeboop19','Practice',' Simple Adding ','accepted','JavaScript'),(1040,3,'beeboop19','Practice',' Letter Capitalize ','accepted','JavaScript'),(1041,3,'lokeshmogra','Practice',' First Reverse ','accepted','C++'),(1042,3,'lokeshmogra','Practice',' Letter Changes ','accepted','C++'),(1043,3,'lokeshmogra','Practice',' First Factorial ','accepted','C++'),(1044,3,'lokeshmogra','Practice',' Longest Word ','accepted','C++'),(1045,3,'cdms0','Practice',' Alphabet Soup ','accepted','C++'),(1046,3,'cdms0','Practice',' First Factorial ','accepted','C++'),(1047,3,'cdms0','Practice',' Letter Changes ','accepted','C++'),(1048,3,'cdms0','Practice',' Simple Adding ','accepted','C++'),(1049,3,'rnelson082','Practice',' First Reverse ','accepted','JavaScript'),(1050,3,'rnelson082','Practice',' First Factorial ','accepted','JavaScript'),(1051,3,'rnelson082','Practice',' Longest Word ','accepted','Ruby'),(1052,3,'rnelson082','Practice',' GCF ','accepted','Ruby'),(1053,3,'jackgeek','Practice',' First Reverse ','accepted','JavaScript'),(1054,3,'jackgeek','Practice',' First Factorial ','accepted','JavaScript'),(1055,3,'jackgeek','Practice',' Longest Word ','accepted','JavaScript'),(1056,3,'jackgeek','Practice',' Letter Changes ','accepted','JavaScript'),(1057,3,'escapiststupor','Practice',' First Reverse ','accepted','JavaScript'),(1058,3,'escapiststupor','Practice',' First Factorial ','accepted','JavaScript'),(1059,3,'escapiststupor','Practice',' Letter Changes ','accepted','JavaScript'),(1060,3,'escapiststupor','Practice',' Simple Adding ','accepted','JavaScript'),(1061,3,'memyselfandhai','Practice',' First Reverse ','accepted','Ruby'),(1062,3,'memyselfandhai','Practice',' First Factorial ','accepted','Ruby'),(1063,3,'memyselfandhai','Practice',' Longest Word ','accepted','Ruby'),(1064,3,'memyselfandhai','Practice',' Letter Changes ','accepted','Ruby'),(1065,3,'kmosier','Practice',' First Reverse ','accepted','Ruby'),(1066,3,'kmosier','Practice',' First Factorial ','accepted','Ruby'),(1067,3,'kmosier','Practice',' Longest Word ','accepted','Ruby'),(1068,3,'kmosier','Practice',' Simple Adding ','accepted','Ruby'),(1069,3,'hurgadion','Practice',' First Reverse ','accepted','Python'),(1070,3,'hurgadion','Practice',' First Factorial ','accepted','Python'),(1071,3,'hurgadion','Practice',' Longest Word ','accepted','Python'),(1072,3,'hurgadion','Practice',' Letter Changes ','accepted','Python');
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
INSERT INTO `users` VALUES (1,'aawisong'),(1,'abhi_rao'),(1,'ACRush'),(1,'adithya123'),(1,'alex_2oo8'),(1,'ccz181078'),(1,'ceilks'),(1,'chemthan'),(1,'coder_h'),(1,'cueball'),(1,'devansh7'),(1,'dj3500'),(1,'Fdg'),(1,'gennady.korotkevich'),(1,'imperfectboy'),(1,'kewl_akshat'),(1,'kgcstar'),(1,'kollarevanth'),(1,'kutengine'),(1,'lebron'),(1,'lhic'),(1,'liouzhou_101'),(1,'long10024070'),(1,'lzelos'),(1,'mmaxio'),(1,'mugurelionut'),(1,'newbie786'),(1,'raagz'),(1,'rahilhastu'),(1,'shreesha_s'),(1,'skyfire'),(1,'sonysust'),(1,'uwi'),(1,'waterfalls'),(1,'zhouyuchen'),(2,'abdou_93'),(2,'alex_the_great'),(2,'andypertamax'),(2,'anton_lunyov'),(2,'azneye'),(2,'balroginfire'),(2,'bd1916'),(2,'cyclops'),(2,'damians'),(2,'defrager'),(2,'devilwolverine'),(2,'gaurav_agarval'),(2,'gerrob'),(2,'gingkgo'),(2,'hodobox'),(2,'ikatanic'),(2,'mehmetinal'),(2,'morass'),(2,'sergej_t'),(2,'sgtlaugh'),(2,'sherlock_holms'),(2,'sourspinach'),(2,'stjepang'),(2,'thanatipanonda'),(2,'tjandra'),(2,'tourist'),(2,'uci_015'),(2,'xilinx'),(2,'xujie'),(2,'zukow'),(3,'beeboop19'),(3,'cdms0'),(3,'cjordanball'),(3,'Corinto'),(3,'EmperorDuny'),(3,'emuchynski'),(3,'escapiststupor'),(3,'gutty333'),(3,'gzamfire'),(3,'hunsoo'),(3,'hurgadion'),(3,'hyuil'),(3,'jackgeek'),(3,'jrorsini'),(3,'junjunparkpark'),(3,'kalgima'),(3,'KlaraKathrina'),(3,'kmosier'),(3,'leot75'),(3,'lesian'),(3,'lokeshmogra'),(3,'mattlarsh'),(3,'memyselfandhai'),(3,'mmalkavian'),(3,'nulln'),(3,'Qlogin'),(3,'rnelson082'),(3,'Ryanm1234'),(3,'Ryantimjohn'),(3,'Sabin');
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

-- Dump completed on 2017-11-05  2:45:30
