-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: netball
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.14.04.1

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
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
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
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add person',7,'add_person'),(20,'Can change person',7,'change_person'),(21,'Can delete person',7,'delete_person'),(22,'Can add auth group',8,'add_authgroup'),(23,'Can change auth group',8,'change_authgroup'),(24,'Can delete auth group',8,'delete_authgroup'),(25,'Can add auth group permissions',9,'add_authgrouppermissions'),(26,'Can change auth group permissions',9,'change_authgrouppermissions'),(27,'Can delete auth group permissions',9,'delete_authgrouppermissions'),(28,'Can add auth permission',10,'add_authpermission'),(29,'Can change auth permission',10,'change_authpermission'),(30,'Can delete auth permission',10,'delete_authpermission'),(31,'Can add auth user',11,'add_authuser'),(32,'Can change auth user',11,'change_authuser'),(33,'Can delete auth user',11,'delete_authuser'),(34,'Can add auth user groups',12,'add_authusergroups'),(35,'Can change auth user groups',12,'change_authusergroups'),(36,'Can delete auth user groups',12,'delete_authusergroups'),(37,'Can add auth user user permissions',13,'add_authuseruserpermissions'),(38,'Can change auth user user permissions',13,'change_authuseruserpermissions'),(39,'Can delete auth user user permissions',13,'delete_authuseruserpermissions'),(40,'Can add django admin log',14,'add_djangoadminlog'),(41,'Can change django admin log',14,'change_djangoadminlog'),(42,'Can delete django admin log',14,'delete_djangoadminlog'),(43,'Can add django content type',15,'add_djangocontenttype'),(44,'Can change django content type',15,'change_djangocontenttype'),(45,'Can delete django content type',15,'delete_djangocontenttype'),(46,'Can add django migrations',16,'add_djangomigrations'),(47,'Can change django migrations',16,'change_djangomigrations'),(48,'Can delete django migrations',16,'delete_djangomigrations'),(49,'Can add django session',17,'add_djangosession'),(50,'Can change django session',17,'change_djangosession'),(51,'Can delete django session',17,'delete_djangosession'),(52,'Can add events',18,'add_events'),(53,'Can change events',18,'change_events'),(54,'Can delete events',18,'delete_events'),(55,'Can add images',19,'add_images'),(56,'Can change images',19,'change_images'),(57,'Can delete images',19,'delete_images'),(58,'Can add is playing',20,'add_isplaying'),(59,'Can change is playing',20,'change_isplaying'),(60,'Can delete is playing',20,'delete_isplaying'),(61,'Can add news',21,'add_news'),(62,'Can change news',21,'change_news'),(63,'Can delete news',21,'delete_news'),(64,'Can add player',22,'add_player'),(65,'Can change player',22,'change_player'),(66,'Can delete player',22,'delete_player'),(67,'Can add player running score sheet',23,'add_playerrunningscoresheet'),(68,'Can change player running score sheet',23,'change_playerrunningscoresheet'),(69,'Can delete player running score sheet',23,'delete_playerrunningscoresheet'),(70,'Can add pool',24,'add_pool'),(71,'Can change pool',24,'change_pool'),(72,'Can delete pool',24,'delete_pool'),(73,'Can add team country',25,'add_teamcountry'),(74,'Can change team country',25,'change_teamcountry'),(75,'Can delete team country',25,'delete_teamcountry'),(76,'Can add team running score sheet',26,'add_teamrunningscoresheet'),(77,'Can change team running score sheet',26,'change_teamrunningscoresheet'),(78,'Can delete team running score sheet',26,'delete_teamrunningscoresheet'),(79,'Can add tech staff',27,'add_techstaff'),(80,'Can change tech staff',27,'change_techstaff'),(81,'Can delete tech staff',27,'delete_techstaff'),(82,'Can add videos',28,'add_videos'),(83,'Can change videos',28,'change_videos'),(84,'Can delete videos',28,'delete_videos');
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
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$DyR1ttKi7FNv$PytTZr5l6VP+2u5KjHswxaIJJ57ZDsfhwV60yOoAH+0=','2017-04-18 13:56:07',1,'admin','','','admin@yopmail.com',1,1,'2017-04-18 12:20:14');
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
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
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
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
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
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'netball','authgroup'),(9,'netball','authgrouppermissions'),(10,'netball','authpermission'),(11,'netball','authuser'),(12,'netball','authusergroups'),(13,'netball','authuseruserpermissions'),(14,'netball','djangoadminlog'),(15,'netball','djangocontenttype'),(16,'netball','djangomigrations'),(17,'netball','djangosession'),(18,'netball','events'),(19,'netball','images'),(20,'netball','isplaying'),(21,'netball','news'),(22,'netball','player'),(23,'netball','playerrunningscoresheet'),(24,'netball','pool'),(25,'netball','teamcountry'),(26,'netball','teamrunningscoresheet'),(27,'netball','techstaff'),(28,'netball','videos'),(6,'sessions','session'),(7,'table','person');
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
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-04-18 12:08:27'),(2,'auth','0001_initial','2017-04-18 12:08:28'),(3,'admin','0001_initial','2017-04-18 12:08:28'),(4,'admin','0002_logentry_remove_auto_add','2017-04-18 12:08:28'),(5,'contenttypes','0002_remove_content_type_name','2017-04-18 12:08:28'),(6,'auth','0002_alter_permission_name_max_length','2017-04-18 12:08:28'),(7,'auth','0003_alter_user_email_max_length','2017-04-18 12:08:28'),(8,'auth','0004_alter_user_username_opts','2017-04-18 12:08:28'),(9,'auth','0005_alter_user_last_login_null','2017-04-18 12:08:28'),(10,'auth','0006_require_contenttypes_0002','2017-04-18 12:08:28'),(11,'auth','0007_alter_validators_add_error_messages','2017-04-18 12:08:28'),(12,'sessions','0001_initial','2017-04-18 12:08:28'),(13,'netball','0001_initial','2017-04-27 20:47:31');
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
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('nawcayqmyoc8f5q9xrdhxkjyfs5wflui','MDVhMzM0OTAxNjBjZjg3YTQ5ZDY1Y2M1MDE0OThkNTI1MjhlNGU2OTp7Il9hdXRoX3VzZXJfaGFzaCI6ImUyMmMzZGZjMGRmYjhmOGZkYjk0NDMzMzVlNjZjZmY4ZTM0YWFjODUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-02 13:56:07');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `events_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(45) DEFAULT NULL,
  `court` varchar(45) DEFAULT NULL,
  `venue` varchar(45) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `from_time` varchar(45) DEFAULT NULL,
  `to_time` varchar(45) DEFAULT NULL,
  `team_country_1` int(11) DEFAULT NULL,
  `team_country_2` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `toss_won` tinyint(1) DEFAULT NULL,
  `tech_staff_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`events_id`),
  UNIQUE KEY `events_id_UNIQUE` (`events_id`),
  KEY `team_country_1_fk_idx` (`team_country_1`),
  KEY `team_country_2_fk_idx` (`team_country_2`),
  KEY `tech_staff_fk_idx` (`tech_staff_id`),
  CONSTRAINT `team_country_1_fk` FOREIGN KEY (`team_country_1`) REFERENCES `team_country` (`team_country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `team_country_2_fk` FOREIGN KEY (`team_country_2`) REFERENCES `team_country` (`team_country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tech_staff_fk` FOREIGN KEY (`tech_staff_id`) REFERENCES `tech_staff` (`tech_staff_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (12,'First Round','qwe','dc','0910-09-09','12:12:pm','12:30:pm',21,19,'Running',1,5);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `images_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(45) DEFAULT NULL,
  `short__description` varchar(45) DEFAULT NULL,
  `long_description` mediumtext,
  PRIMARY KEY (`images_id`),
  UNIQUE KEY `images_id_UNIQUE` (`images_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (2,'','qwerty','qwert'),(11,'','qwweertryyu','fgg'),(12,'media/datpicker.png','qwertyu','sdfghjk');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_playing`
--

DROP TABLE IF EXISTS `is_playing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_playing` (
  `is_playing_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`is_playing_id`),
  UNIQUE KEY `is_playing_id_UNIQUE` (`is_playing_id`),
  KEY `event_fk_rel_idx` (`event_id`),
  KEY `player_fk_rel_idx` (`player_id`),
  CONSTRAINT `event_fk_rel` FOREIGN KEY (`event_id`) REFERENCES `events` (`events_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `player_fk_rel` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_playing`
--

LOCK TABLES `is_playing` WRITE;
/*!40000 ALTER TABLE `is_playing` DISABLE KEYS */;
INSERT INTO `is_playing` VALUES (26,NULL,26,NULL),(27,NULL,29,NULL),(28,NULL,31,NULL),(29,NULL,21,NULL),(30,NULL,22,NULL),(31,NULL,17,NULL),(32,NULL,20,NULL);
/*!40000 ALTER TABLE `is_playing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `small_description` varchar(45) DEFAULT NULL,
  `long_description` mediumtext,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  UNIQUE KEY `news_id_UNIQUE` (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (15,'qwerty','qwerty',''),(16,'xc v','sd','');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `player_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `player_id_UNIQUE` (`player_id`),
  KEY `team_country_fk_idx` (`team_id`),
  CONSTRAINT `team_country_fk` FOREIGN KEY (`team_id`) REFERENCES `team_country` (`team_country_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (14,'player_GK','p','9090-09-30','12345678','qwerty','GK','',21,'player_gk@yopmail.com'),(15,'player_GD','p2','1990-09-09','345678','qwerty','GD','',21,'player_GD@yopmail.com'),(16,'player_WD','p3','1990-09-11','345678','rtyu','WD','',21,'player_WD@yopmail.com'),(17,'player_C','p4','1990-09-12','34567','dfh','C','',21,'player_c@yopmail.com'),(18,'player_WA','p5','1990-09-13','56789','ghjk','WA','',21,'player_WA@yopmail.com'),(19,'player_GA1','p6','1990-12-09','5678','qwerty','GA','',21,'player_GA1@yopmail.com'),(20,'player_GA2','p7','1990-08-09','5678','rtyu','GA','',21,'player_GA2@yopmail.com'),(21,'player_GS1','p8','1990-03-09','345678','werty','GS','',21,'player_GS1@yopmail.com'),(22,'player_GS2','p10','1990-10-10','46809876','qwerty','GS','',21,'player_GS2@yopmail.com'),(23,'player_GK_t2','p','9090-09-30','12345678','qwerty','GK','',19,'player_gk@yopmail.com'),(24,'player_GD_t2','p2','1990-09-09','345678','qwerty','GD','',19,'player_GD@yopmail.com'),(25,'player_WD_t2','p3','1990-09-11','345678','rtyu','WD','',19,'player_WD@yopmail.com'),(26,'player_C_t2','p4','1990-09-12','34567','dfh','C','',19,'player_c@yopmail.com'),(27,'player_WA_t2','p5','1990-09-13','56789','ghjk','WA','',19,'player_WA@yopmail.com'),(28,'player_GA1_t2','p6','1990-12-09','5678','qwerty','GA','',19,'player_GA1@yopmail.com'),(29,'player_GA2_t2','p7','1990-08-09','5678','rtyu','GA','',19,'player_GA2@yopmail.com'),(30,'player_GS1_t2','p8','1990-03-09','345678','werty','GS','',19,'player_GS1@yopmail.com'),(31,'player_GS2_t2','p10','1990-10-10','46809876','qwerty','GS','',19,'player_GS2@yopmail.com'),(32,'player_c_team3','ghbv','2017-05-16','534634','sdjhb','center','./datpicker.png',NULL,'dfv'),(33,'player_GA_team3','egdv','2017-05-16','98787655434','qwerty','GA','./dropdown_jsmyh5O.png',NULL,'ga@yopmail.com'),(34,'psl','dc','2017-05-16','1234567890','fghj','GS','./score_sheet.png',20,'psl@yopmail.com');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_running_score_sheet`
--

DROP TABLE IF EXISTS `player_running_score_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_running_score_sheet` (
  `player_running_score_sheet_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `no_of_goals` int(11) DEFAULT NULL,
  `no_of_attempts` int(11) DEFAULT NULL,
  `quarter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`player_running_score_sheet_id`),
  UNIQUE KEY `player_running_score_sheet_id_UNIQUE` (`player_running_score_sheet_id`),
  KEY `event_fk_idx` (`event_id`),
  KEY `player_fk_idx` (`player_id`),
  CONSTRAINT `event_fk` FOREIGN KEY (`event_id`) REFERENCES `events` (`events_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `player_fk` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_running_score_sheet`
--

LOCK TABLES `player_running_score_sheet` WRITE;
/*!40000 ALTER TABLE `player_running_score_sheet` DISABLE KEYS */;
INSERT INTO `player_running_score_sheet` VALUES (61,12,30,2,NULL,NULL),(62,12,31,1,NULL,NULL),(63,12,28,3,NULL,NULL),(64,12,29,2,NULL,NULL),(65,12,21,13,1,NULL),(66,12,22,35,0,NULL),(67,12,19,NULL,NULL,NULL),(68,12,20,NULL,1,NULL);
/*!40000 ALTER TABLE `player_running_score_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pool`
--

DROP TABLE IF EXISTS `pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool` (
  `pool_id` int(11) NOT NULL AUTO_INCREMENT,
  `pool_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pool_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pool`
--

LOCK TABLES `pool` WRITE;
/*!40000 ALTER TABLE `pool` DISABLE KEYS */;
INSERT INTO `pool` VALUES (103,'A'),(104,'B'),(105,'C'),(106,'D'),(107,'E'),(112,'G');
/*!40000 ALTER TABLE `pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_country`
--

DROP TABLE IF EXISTS `team_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_country` (
  `team_country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_flag` varchar(45) DEFAULT NULL,
  `pool_id` int(11) DEFAULT NULL,
  `win` int(11) DEFAULT NULL,
  `lose` int(11) DEFAULT NULL,
  `draw` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `country_name` varchar(45) NOT NULL,
  PRIMARY KEY (`team_country_id`),
  UNIQUE KEY `team_country_id_UNIQUE` (`team_country_id`),
  KEY `pool_fk_idx` (`pool_id`),
  CONSTRAINT `pool_fk` FOREIGN KEY (`pool_id`) REFERENCES `pool` (`pool_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COMMENT='								';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_country`
--

LOCK TABLES `team_country` WRITE;
/*!40000 ALTER TABLE `team_country` DISABLE KEYS */;
INSERT INTO `team_country` VALUES (19,'',104,NULL,NULL,NULL,NULL,'Angola'),(20,'',107,NULL,NULL,NULL,NULL,'India'),(21,'',106,NULL,NULL,NULL,NULL,'Botswana'),(22,'media/uploads/datpicker.png',103,NULL,NULL,NULL,NULL,'ada'),(24,'./dropdown.png',104,NULL,NULL,NULL,NULL,'qwertyui');
/*!40000 ALTER TABLE `team_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_running_score_sheet`
--

DROP TABLE IF EXISTS `team_running_score_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_running_score_sheet` (
  `team_running_score_sheet_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `quarter1_score` int(11) DEFAULT NULL,
  `quarter2_score` int(11) DEFAULT NULL,
  `quarter3_score` int(11) DEFAULT NULL,
  `quartger4_score` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `penalties` int(11) DEFAULT NULL,
  `center_pass` int(11) DEFAULT NULL,
  `team_country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`team_running_score_sheet_id`),
  UNIQUE KEY `team_running_score_sheet_id_UNIQUE` (`team_running_score_sheet_id`),
  KEY `team_country_fk_idx` (`team_country_id`),
  CONSTRAINT `team_country_fk_rel` FOREIGN KEY (`team_country_id`) REFERENCES `team_country` (`team_country_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_running_score_sheet`
--

LOCK TABLES `team_running_score_sheet` WRITE;
/*!40000 ALTER TABLE `team_running_score_sheet` DISABLE KEYS */;
INSERT INTO `team_running_score_sheet` VALUES (64,12,48,NULL,NULL,NULL,NULL,2,3,21),(65,12,8,NULL,NULL,NULL,NULL,1,1,19);
/*!40000 ALTER TABLE `team_running_score_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tech_staff`
--

DROP TABLE IF EXISTS `tech_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tech_staff` (
  `tech_staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tech_staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tech_staff`
--

LOCK TABLES `tech_staff` WRITE;
/*!40000 ALTER TABLE `tech_staff` DISABLE KEYS */;
INSERT INTO `tech_staff` VALUES (5,'qwerty','erty','Scorer'),(6,'Priaynka','Salunke','Scorer'),(11,'qwerty','sdfg','center');
/*!40000 ALTER TABLE `tech_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `videos_id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`videos_id`),
  UNIQUE KEY `videos_id_UNIQUE` (`videos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (2,'asdfghjk','qwertyui',''),(3,'amscn','hashc',''),(4,'fcghj','ghvh',''),(5,'bnxvhc','jhjxc',''),(6,'jhn','jkn',''),(7,'sd','sd','');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-24 12:46:02
