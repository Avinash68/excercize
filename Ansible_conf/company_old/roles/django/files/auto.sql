-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: auto
-- ------------------------------------------------------
-- Server version	5.6.33-0ubuntu0.14.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `username` varchar(90) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=859 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=796 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=767 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crm_Company_Driver`
--

DROP TABLE IF EXISTS `crm_Company_Driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_Company_Driver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_fk_idx` (`company_id`),
  KEY `driver_fk_idx` (`driver_id`),
  CONSTRAINT `company_fk` FOREIGN KEY (`company_id`) REFERENCES `crm_custcompany` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `driver_fk` FOREIGN KEY (`driver_id`) REFERENCES `crm_lead` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crm_company`
--

DROP TABLE IF EXISTS `crm_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crm_company_model`
--

DROP TABLE IF EXISTS `crm_company_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_company_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_company_model_company_id_d8a5f23e_fk_CRM_company_id` (`company_id`),
  CONSTRAINT `crm_company_model_company_id_d8a5f23e_fk_CRM_company_id` FOREIGN KEY (`company_id`) REFERENCES `crm_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crm_custcompany`
--

DROP TABLE IF EXISTS `crm_custcompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_custcompany` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `person` varchar(45) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_fk_user_idx` (`member_id`),
  CONSTRAINT `member_fk_user` FOREIGN KEY (`member_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crm_lead`
--

DROP TABLE IF EXISTS `crm_lead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_lead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `licenseid` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `cred` tinyint(4) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `Emg_no` varchar(10) DEFAULT NULL,
  `add_by` varchar(20) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `road_side_assistant_num` varchar(45) DEFAULT NULL,
  `policy_number` varchar(45) DEFAULT NULL,
  `license_expiry_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_lead_member_id_2bca2ee3_fk_auth_user_id` (`member_id`),
  KEY `crm_lead_dc91ed4b` (`status_id`),
  CONSTRAINT `crm_lead_member_id_2bca2ee3_fk_auth_user_id` FOREIGN KEY (`member_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `crm_lead_status_id_1a8c8419_fk_crm_status_id` FOREIGN KEY (`status_id`) REFERENCES `crm_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=725 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crm_lead_user`
--

DROP TABLE IF EXISTS `crm_lead_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_lead_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lead` int(11) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_user_fk_idx` (`lead`),
  KEY `customer_fk_idx` (`customer`),
  CONSTRAINT `customer_fk` FOREIGN KEY (`customer`) REFERENCES `auth_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `lead_user_fk` FOREIGN KEY (`lead`) REFERENCES `crm_lead` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crm_lead_vehicle`
--

DROP TABLE IF EXISTS `crm_lead_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_lead_vehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_no` varchar(15) NOT NULL,
  `company_id` int(11) NOT NULL,
  `lead_id` int(11) DEFAULT NULL,
  `model_id` int(11) NOT NULL,
  `makeyear_id` int(11) DEFAULT NULL,
  `reg_expiry_date` date DEFAULT NULL,
  `vin_no` varchar(17) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `chasis_no` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_lead_vehicle_company_id_07855059_fk_CRM_company_id` (`company_id`),
  KEY `crm_lead_vehicle_lead_id_a721e9d8_fk_crm_lead_id` (`lead_id`),
  KEY `crm_lead_vehicle_makeyear_id_7dyear_idx` (`makeyear_id`),
  KEY `crm_lead_vehicle_model_id_7df8afca_fk_crm_company_model_id` (`model_id`),
  CONSTRAINT `crm_lead_vehicle_company_id_07855059_fk_CRM_company_id` FOREIGN KEY (`company_id`) REFERENCES `crm_company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `crm_lead_vehicle_lead_id_a721e9d8_fk_crm_lead_id` FOREIGN KEY (`lead_id`) REFERENCES `crm_lead` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `crm_lead_vehicle_make_year` FOREIGN KEY (`makeyear_id`) REFERENCES `crm_make_year1` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `crm_lead_vehicle_model_id_7df8afca_fk_crm_company_model_id` FOREIGN KEY (`model_id`) REFERENCES `crm_company_model` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=772 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crm_make_year1`
--

DROP TABLE IF EXISTS `crm_make_year1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_make_year1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `make_year` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crm_makeyear`
--

DROP TABLE IF EXISTS `crm_makeyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_makeyear` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `makeyear` int(11) NOT NULL,
  `model_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `model_idx` (`model_id`),
  CONSTRAINT `model` FOREIGN KEY (`model_id`) REFERENCES `crm_company_model` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17072 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crm_qualify`
--

DROP TABLE IF EXISTS `crm_qualify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_qualify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(3) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_qualify_lead_id_f53f5fe8_fk_crm_lead_id` (`lead_id`),
  KEY `crm_qualify_7aa0f6ee` (`question_id`),
  CONSTRAINT `crm_qualify_lead_id_f53f5fe8_fk_crm_lead_id` FOREIGN KEY (`lead_id`) REFERENCES `crm_lead` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `crm_qualify_question_id_997dea18_fk_crm_question_id` FOREIGN KEY (`question_id`) REFERENCES `crm_question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crm_question`
--

DROP TABLE IF EXISTS `crm_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crm_status`
--

DROP TABLE IF EXISTS `crm_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `crm_uploadfile`
--

DROP TABLE IF EXISTS `crm_uploadfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_uploadfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_accident_request`
--

DROP TABLE IF EXISTS `customer_accident_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_accident_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `car_detail` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `phone_no` varchar(10) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `date_request` date DEFAULT NULL,
  `date_update` date DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_accident_req_idx` (`customer_id`),
  KEY `status_accident_request_idx` (`status_id`),
  CONSTRAINT `customer_accident_req` FOREIGN KEY (`customer_id`) REFERENCES `crm_lead` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `status_accident_request` FOREIGN KEY (`status_id`) REFERENCES `crm_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_outsource_history`
--

DROP TABLE IF EXISTS `customer_outsource_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_outsource_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_name` varchar(45) DEFAULT NULL,
  `shop_name` varchar(45) DEFAULT NULL,
  `phone_no` varchar(10) DEFAULT NULL,
  `date_request` date DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_outsource_his_idx` (`customer_id`),
  CONSTRAINT `customer_outsource_his` FOREIGN KEY (`customer_id`) REFERENCES `crm_lead` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_request`
--

DROP TABLE IF EXISTS `customer_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `service_type_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `date_request` date DEFAULT NULL,
  `date_update` date DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `from_time` varchar(11) DEFAULT NULL,
  `to_time` varchar(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `emergency_status` tinyint(1) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_type_idx` (`service_type_id`),
  KEY `customer_id_idx` (`customer_id`),
  KEY `promotion_idx` (`promotion_id`),
  KEY `crm_status_request_idx` (`status_id`),
  KEY `vehicle_fk_idx` (`vehicle_id`),
  CONSTRAINT `crm_status_request` FOREIGN KEY (`status_id`) REFERENCES `crm_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `customer_idr` FOREIGN KEY (`customer_id`) REFERENCES `crm_lead` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `promotion` FOREIGN KEY (`promotion_id`) REFERENCES `promotion_promotions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `service_type` FOREIGN KEY (`service_type_id`) REFERENCES `promotion_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vehicle_fk` FOREIGN KEY (`vehicle_id`) REFERENCES `crm_lead_vehicle` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=873 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20028 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fcm_django_fcmdevice`
--

DROP TABLE IF EXISTS `fcm_django_fcmdevice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_django_fcmdevice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `device_id` varchar(150) DEFAULT NULL,
  `registration_id` longtext NOT NULL,
  `type` varchar(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fcm_django_fcmdevice_user_id_6cdfc0a2_fk_auth_user_id` (`user_id`),
  KEY `fcm_django_fcmdevice_9379346c` (`device_id`),
  CONSTRAINT `fcm_django_fcmdevice_user_id_6cdfc0a2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` longtext NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `feedback_customer_id_a1653a67_fk_auth_user_id` (`customer_id`),
  CONSTRAINT `feedback_customer_id_a1653a67_fk_auth_user_id` FOREIGN KEY (`customer_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feedback_custfeedback`
--

DROP TABLE IF EXISTS `feedback_custfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_custfeedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_fk_id_idx` (`customer`),
  CONSTRAINT `customer_fk_id` FOREIGN KEY (`customer`) REFERENCES `crm_lead` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feedback_custfeedquestion`
--

DROP TABLE IF EXISTS `feedback_custfeedquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_custfeedquestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_cust` int(11) DEFAULT NULL,
  `question` int(11) DEFAULT NULL,
  `answer` varchar(45) DEFAULT NULL,
  `sub_question` int(11) DEFAULT NULL,
  `sub_answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `feedback_cust_id_idx` (`feedback_cust`),
  KEY `question_id_idx` (`question`),
  KEY `subquestion_fk_idx` (`sub_question`),
  CONSTRAINT `feedback_cust_id` FOREIGN KEY (`feedback_cust`) REFERENCES `feedback_custfeedback` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `question_id` FOREIGN KEY (`question`) REFERENCES `feedback_question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `subquestion_fk` FOREIGN KEY (`sub_question`) REFERENCES `feedback_subquestion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feedback_feedback`
--

DROP TABLE IF EXISTS `feedback_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `sub_question` int(11) DEFAULT NULL,
  `sub_answer` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `feedback_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_idx` (`customer_id`),
  KEY `question_idx` (`question_id`),
  KEY `sub_question_idx` (`sub_question`),
  CONSTRAINT `customer` FOREIGN KEY (`customer_id`) REFERENCES `crm_lead` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `question` FOREIGN KEY (`question_id`) REFERENCES `feedback_question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sub_question` FOREIGN KEY (`sub_question`) REFERENCES `feedback_subquestion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feedback_feedback_star`
--

DROP TABLE IF EXISTS `feedback_feedback_star`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_feedback_star` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `feedback_date` date DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cust_feeback_idx` (`customer_id`),
  KEY `member_feedback_star_fk_idx` (`member_id`),
  KEY `company_feedback_fk_idx` (`company_id`),
  CONSTRAINT `company_feedback_fk` FOREIGN KEY (`company_id`) REFERENCES `crm_custcompany` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cust_feeback` FOREIGN KEY (`customer_id`) REFERENCES `crm_lead` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `member_feedback_star_fk` FOREIGN KEY (`member_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feedback_member`
--

DROP TABLE IF EXISTS `feedback_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid_fk_idx` (`user_id`),
  KEY `question_id_fk_idx` (`question_id`),
  CONSTRAINT `userid_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feedback_question`
--

DROP TABLE IF EXISTS `feedback_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feedback_subquestion`
--

DROP TABLE IF EXISTS `feedback_subquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_subquestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_question` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lead_user`
--

DROP TABLE IF EXISTS `lead_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_idx` (`customer_id`),
  KEY `user_idx` (`user_id`),
  CONSTRAINT `customer_idd` FOREIGN KEY (`customer_id`) REFERENCES `crm_lead` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `member_appointment`
--

DROP TABLE IF EXISTS `member_appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `from_time` varchar(11) DEFAULT NULL,
  `to_time` varchar(11) DEFAULT NULL,
  `date_appointment` date DEFAULT NULL,
  `date_update` date DEFAULT NULL,
  `coment` varchar(255) DEFAULT NULL,
  `totalamount` float DEFAULT NULL,
  `service_type_id` int(11) DEFAULT NULL,
  `upcell_status` varchar(45) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_idx` (`customer_id`),
  KEY `customer_id_idx` (`customer_id`),
  KEY `memberid_idx` (`member_id`),
  KEY `status_idx` (`status_id`),
  KEY `request_idx` (`request_id`),
  KEY `service_type_fk_idx` (`service_type_id`),
  KEY `vehicle_fk_appointment_idx` (`vehicle_id`),
  CONSTRAINT `customerid` FOREIGN KEY (`customer_id`) REFERENCES `crm_lead` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `memberid` FOREIGN KEY (`member_id`) REFERENCES `registration_userprofile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `request` FOREIGN KEY (`request_id`) REFERENCES `customer_request` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `service_type_fk` FOREIGN KEY (`service_type_id`) REFERENCES `promotion_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `status` FOREIGN KEY (`status_id`) REFERENCES `crm_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vehicle_fk_appointment` FOREIGN KEY (`vehicle_id`) REFERENCES `crm_lead_vehicle` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `member_question`
--

DROP TABLE IF EXISTS `member_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notifications_notification`
--

DROP TABLE IF EXISTS `notifications_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(20) NOT NULL,
  `unread` tinyint(1) NOT NULL,
  `actor_object_id` varchar(255) NOT NULL,
  `verb` varchar(255) NOT NULL,
  `description` longtext,
  `target_object_id` varchar(255) DEFAULT NULL,
  `action_object_object_id` varchar(255) DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `public` tinyint(1) NOT NULL,
  `action_object_content_type_id` int(11) DEFAULT NULL,
  `actor_content_type_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `target_content_type_id` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `emailed` tinyint(1) NOT NULL,
  `data` longtext,
  `emergency_status` tinyint(4) DEFAULT NULL,
  `app_name` varchar(45) DEFAULT NULL,
  `activity` varchar(45) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `D048a8ef5652b3aa09c098d37988e8ec` (`action_object_content_type_id`),
  KEY `notific_actor_content_type_id_0c69d7b7_fk_django_content_type_id` (`actor_content_type_id`),
  KEY `notifications_notification_recipient_id_d055f3f0_fk_auth_user_id` (`recipient_id`),
  KEY `notifi_target_content_type_id_ccb24d88_fk_django_content_type_id` (`target_content_type_id`),
  CONSTRAINT `D048a8ef5652b3aa09c098d37988e8ec` FOREIGN KEY (`action_object_content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `notifi_target_content_type_id_ccb24d88_fk_django_content_type_id` FOREIGN KEY (`target_content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `notific_actor_content_type_id_0c69d7b7_fk_django_content_type_id` FOREIGN KEY (`actor_content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `notifications_notification_recipient_id_d055f3f0_fk_auth_user_id` FOREIGN KEY (`recipient_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61780 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `promotion_promotions`
--

DROP TABLE IF EXISTS `promotion_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount` int(11) DEFAULT NULL,
  `description` varchar(244) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `Service_id_id` int(11) NOT NULL,
  `model_id_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `coupon_code` varchar(12) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `make_year_id` int(11) DEFAULT NULL,
  `price` varchar(11) DEFAULT NULL,
  `date_promo` date DEFAULT NULL,
  `date_update` date DEFAULT NULL,
  `display_to` varchar(20) DEFAULT 'All',
  `total_amount` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `promotion_promotions_05ef7065` (`Service_id_id`),
  KEY `promotion_promotions_443bc40d` (`model_id_id`),
  KEY `promotion_company_idx` (`company_id`),
  KEY `member_idx` (`member_id`),
  KEY `make_year_idx` (`make_year_id`),
  CONSTRAINT `make_year` FOREIGN KEY (`make_year_id`) REFERENCES `crm_make_year1` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `member` FOREIGN KEY (`member_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `promotion_company` FOREIGN KEY (`company_id`) REFERENCES `crm_company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `promotion_promoti_Service_id_id_99d1ee76_fk_promotion_service_id` FOREIGN KEY (`Service_id_id`) REFERENCES `promotion_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `promotion_promotion_model_id_id_af1fc733_fk_crm_company_model_id` FOREIGN KEY (`model_id_id`) REFERENCES `crm_company_model` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=412 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `promotion_service`
--

DROP TABLE IF EXISTS `promotion_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_type` varchar(244) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `push_notifications_apnsdevice`
--

DROP TABLE IF EXISTS `push_notifications_apnsdevice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `push_notifications_apnsdevice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `device_id` char(32) DEFAULT NULL,
  `registration_id` varchar(200) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `registration_id` (`registration_id`),
  KEY `push_notifications_apnsdevice_user_id_44cc44d2_fk_auth_user_id` (`user_id`),
  KEY `push_notifications_apnsdevice_9379346c` (`device_id`),
  CONSTRAINT `push_notifications_apnsdevice_user_id_44cc44d2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `push_notifications_gcmdevice`
--

DROP TABLE IF EXISTS `push_notifications_gcmdevice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `push_notifications_gcmdevice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `device_id` bigint(20) unsigned DEFAULT NULL,
  `registration_id` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `push_notifications_gcmdevice_user_id_f3752f1b_fk_auth_user_id` (`user_id`),
  KEY `push_notifications_gcmdevice_9379346c` (`device_id`),
  CONSTRAINT `push_notifications_gcmdevice_user_id_f3752f1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `registration_democustomer`
--

DROP TABLE IF EXISTS `registration_democustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_democustomer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `area_code` varchar(2) DEFAULT NULL,
  `phoneno` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `registration_ebc`
--

DROP TABLE IF EXISTS `registration_ebc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_ebc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `ebctime` datetime DEFAULT NULL,
  `send_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `send_user_fk_idx` (`send_user_id`),
  CONSTRAINT `send_user_fk` FOREIGN KEY (`send_user_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `registration_payment`
--

DROP TABLE IF EXISTS `registration_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_4_digits` varchar(4) DEFAULT NULL,
  `stripe_id` char(255) DEFAULT NULL,
  `subscribed` tinyint(1) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  CONSTRAINT `users` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `registration_userlogin`
--

DROP TABLE IF EXISTS `registration_userlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_userlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `registration_userprofile`
--

DROP TABLE IF EXISTS `registration_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_no` varchar(20) DEFAULT NULL,
  `shop_name` varchar(244) DEFAULT NULL,
  `shop_address` varchar(200) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `last_4_digits` char(4) DEFAULT NULL,
  `stripe_id` char(255) DEFAULT NULL,
  `subscribed` tinyint(1) DEFAULT NULL,
  `created_at` datetime(1) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `abn` varchar(11) DEFAULT NULL,
  `Emg_no` varchar(10) DEFAULT NULL,
  `area_code` varchar(2) DEFAULT NULL,
  `landline_number` varchar(20) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `unsubscribe_date` datetime DEFAULT NULL,
  `user_image` varchar(100) DEFAULT NULL,
  `flag` tinyint(2) DEFAULT NULL,
  `postal_code` varchar(4) DEFAULT NULL,
  `billing_address` varchar(45) DEFAULT NULL,
  `member_mech_license` varchar(45) DEFAULT NULL,
  `member_mech_license_expiry_date` date DEFAULT NULL,
  `member_ARC_license` varchar(45) DEFAULT NULL,
  `member_ARC_license_expiry_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `status_foreign_key_idx` (`status_id`),
  CONSTRAINT `registration_userprofile_user_id_6e86d1f8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `status_foreign_key` FOREIGN KEY (`status_id`) REFERENCES `crm_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sub_service_type`
--

DROP TABLE IF EXISTS `sub_service_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_service_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_type_name` varchar(45) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_service_type_idx` (`service_id`),
  CONSTRAINT `service_service_type` FOREIGN KEY (`service_id`) REFERENCES `promotion_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `timeline_member_sms`
--

DROP TABLE IF EXISTS `timeline_member_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timeline_member_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_fk_idx` (`member_id`),
  CONSTRAINT `member_fk` FOREIGN KEY (`member_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `timeline_timeline`
--

DROP TABLE IF EXISTS `timeline_timeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timeline_timeline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment1` varchar(100) DEFAULT NULL,
  `action_create` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `timeline_timeline_e8701ad4` (`user_id`),
  CONSTRAINT `timeline_timeline_user_id_db34cb70_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=858 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `upcell_appointment`
--

DROP TABLE IF EXISTS `upcell_appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upcell_appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appointment_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `sub_service` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `accept` tinyint(1) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upcell_appointment_app_idx` (`appointment_id`),
  KEY `service_upcell_appointment_idx` (`service_id`),
  KEY `sub_service_upcell_appointment_idx` (`sub_service`),
  CONSTRAINT `service_upcell_appointment` FOREIGN KEY (`service_id`) REFERENCES `promotion_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sub_service_upcell_appointment` FOREIGN KEY (`sub_service`) REFERENCES `sub_service_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `upcell_appointment_app` FOREIGN KEY (`appointment_id`) REFERENCES `member_appointment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `upcell_appointment_sub_service`
--

DROP TABLE IF EXISTS `upcell_appointment_sub_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upcell_appointment_sub_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upcellappointment_id` int(11) DEFAULT NULL,
  `subservicetype_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upcell_appoint_sub_service_relation_idx` (`upcellappointment_id`),
  KEY `subservice_appointment_rel_idx` (`subservicetype_id`),
  CONSTRAINT `subservice_appointment_rel` FOREIGN KEY (`subservicetype_id`) REFERENCES `sub_service_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `upcell_appoint_sub_service_relation` FOREIGN KEY (`upcellappointment_id`) REFERENCES `upcell_appointment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-04 12:46:11
