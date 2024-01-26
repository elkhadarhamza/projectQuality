-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: casdoor
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adapter`
--

DROP TABLE IF EXISTS `adapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adapter` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `table` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `use_same_db` tinyint(1) DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `database_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `host` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `port` int DEFAULT NULL,
  `user` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `database` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adapter`
--

LOCK TABLES `adapter` WRITE;
/*!40000 ALTER TABLE `adapter` DISABLE KEYS */;
INSERT INTO `adapter` VALUES ('built-in','api-adapter-built-in','2024-01-26T12:18:26Z','casbin_api_rule',1,'','','',0,'','',''),('built-in','user-adapter-built-in','2024-01-26T12:18:26Z','casbin_user_rule',1,'','','',0,'','','');
/*!40000 ALTER TABLE `adapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `logo` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `homepage_url` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `organization` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cert` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `enable_password` tinyint(1) DEFAULT NULL,
  `enable_sign_up` tinyint(1) DEFAULT NULL,
  `enable_signin_session` tinyint(1) DEFAULT NULL,
  `enable_auto_signin` tinyint(1) DEFAULT NULL,
  `enable_code_signin` tinyint(1) DEFAULT NULL,
  `enable_saml_compress` tinyint(1) DEFAULT NULL,
  `enable_saml_c14n10` tinyint(1) DEFAULT NULL,
  `enable_web_authn` tinyint(1) DEFAULT NULL,
  `enable_link_with_email` tinyint(1) DEFAULT NULL,
  `org_choice_mode` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `saml_reply_url` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `providers` mediumtext COLLATE utf8mb4_general_ci,
  `signin_methods` varchar(2000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `signup_items` varchar(2000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `grant_types` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8mb4_general_ci,
  `saml_attributes` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `client_id` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `client_secret` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `redirect_uris` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token_format` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token_fields` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `expire_in_hours` int DEFAULT NULL,
  `refresh_expire_in_hours` int DEFAULT NULL,
  `signup_url` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `signin_url` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `forget_url` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `affiliation_url` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `terms_of_use` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `signup_html` mediumtext COLLATE utf8mb4_general_ci,
  `signin_html` mediumtext COLLATE utf8mb4_general_ci,
  `theme_data` text COLLATE utf8mb4_general_ci,
  `form_css` text COLLATE utf8mb4_general_ci,
  `form_css_mobile` text COLLATE utf8mb4_general_ci,
  `form_offset` int DEFAULT NULL,
  `form_side_html` mediumtext COLLATE utf8mb4_general_ci,
  `form_background_url` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `failed_signin_limit` int DEFAULT NULL,
  `failed_signin_frozen_time` int DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES ('admin','app-built-in','2024-01-26T12:18:25Z','Casdoor','https://cdn.casbin.org/img/casdoor-logo_1185x256.png','https://casdoor.org','','built-in','cert-built-in',1,1,0,0,0,0,0,0,0,'','','[{\"owner\":\"\",\"name\":\"provider_captcha_default\",\"canSignUp\":false,\"canSignIn\":false,\"canUnlink\":false,\"prompted\":false,\"signupGroup\":\"\",\"rule\":\"None\",\"provider\":null}]','[{\"name\":\"Password\",\"displayName\":\"Password\",\"rule\":\"All\"}]','[{\"name\":\"ID\",\"visible\":false,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"Random\"},{\"name\":\"Username\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Display name\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Password\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Confirm password\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Email\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"Normal\"},{\"name\":\"Phone\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Agreement\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"}]','[\"authorization_code\"]','[]','null','f55e2f18c2ae432634a7','f39b7175d75a8c1ee201394606ca55ca724af91d','[]','','[]',168,0,'','','','','','','',NULL,'','',2,'','',5,15),('admin','testqualité','2024-01-26T13:19:28+01:00','testqualité','https://cdn.casbin.org/img/casdoor-logo_1185x256.png','','','testqualité','cert-built-in',1,1,0,0,0,0,0,0,0,'','','[{\"owner\":\"\",\"name\":\"provider_captcha_default\",\"canSignUp\":false,\"canSignIn\":false,\"canUnlink\":false,\"prompted\":false,\"signupGroup\":\"\",\"rule\":\"\",\"provider\":null}]','[{\"name\":\"Password\",\"displayName\":\"Password\",\"rule\":\"All\"}]','[{\"name\":\"ID\",\"visible\":false,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"Random\"},{\"name\":\"Username\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Display name\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Password\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Confirm password\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Email\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"No verification\"},{\"name\":\"Phone\",\"visible\":false,\"required\":false,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Agreement\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"}]','[\"authorization_code\"]','[]','null','c7859770ef0e5bb1d336','98cfc940974be1b99cacecc3f32f6a4fc8c81721','[\"http://localhost:9000/callback\"]','JWT','[]',168,168,'','','','','','','',NULL,'','',2,'','',5,15);
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casbin_api_rule`
--

DROP TABLE IF EXISTS `casbin_api_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casbin_api_rule` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v0` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v1` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v2` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v3` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v4` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v5` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_casbin_api_rule_v1` (`v1`),
  KEY `IDX_casbin_api_rule_v2` (`v2`),
  KEY `IDX_casbin_api_rule_v3` (`v3`),
  KEY `IDX_casbin_api_rule_v4` (`v4`),
  KEY `IDX_casbin_api_rule_v5` (`v5`),
  KEY `IDX_casbin_api_rule_ptype` (`ptype`),
  KEY `IDX_casbin_api_rule_v0` (`v0`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casbin_api_rule`
--

LOCK TABLES `casbin_api_rule` WRITE;
/*!40000 ALTER TABLE `casbin_api_rule` DISABLE KEYS */;
INSERT INTO `casbin_api_rule` VALUES (1,'p','built-in','*','*','*','*','*'),(2,'p','app','*','*','*','*','*'),(3,'p','*','*','POST','/api/signup','*','*'),(4,'p','*','*','GET','/api/get-email-and-phone','*','*'),(5,'p','*','*','POST','/api/login','*','*'),(6,'p','*','*','GET','/api/get-app-login','*','*'),(7,'p','*','*','POST','/api/logout','*','*'),(8,'p','*','*','GET','/api/logout','*','*'),(9,'p','*','*','POST','/api/callback','*','*'),(10,'p','*','*','GET','/api/get-account','*','*'),(11,'p','*','*','GET','/api/userinfo','*','*'),(12,'p','*','*','GET','/api/user','*','*'),(13,'p','*','*','GET','/api/health','*','*'),(14,'p','*','*','POST','/api/webhook','*','*'),(15,'p','*','*','GET','/api/get-webhook-event','*','*'),(16,'p','*','*','GET','/api/get-captcha-status','*','*'),(17,'p','*','*','*','/api/login/oauth','*','*'),(18,'p','*','*','GET','/api/get-application','*','*'),(19,'p','*','*','GET','/api/get-organization-applications','*','*'),(20,'p','*','*','GET','/api/get-user','*','*'),(21,'p','*','*','GET','/api/get-user-application','*','*'),(22,'p','*','*','GET','/api/get-resources','*','*'),(23,'p','*','*','GET','/api/get-records','*','*'),(24,'p','*','*','GET','/api/get-product','*','*'),(25,'p','*','*','POST','/api/buy-product','*','*'),(26,'p','*','*','GET','/api/get-payment','*','*'),(27,'p','*','*','POST','/api/update-payment','*','*'),(28,'p','*','*','POST','/api/invoice-payment','*','*'),(29,'p','*','*','POST','/api/notify-payment','*','*'),(30,'p','*','*','POST','/api/unlink','*','*'),(31,'p','*','*','POST','/api/set-password','*','*'),(32,'p','*','*','POST','/api/send-verification-code','*','*'),(33,'p','*','*','GET','/api/get-captcha','*','*'),(34,'p','*','*','POST','/api/verify-captcha','*','*'),(35,'p','*','*','POST','/api/verify-code','*','*'),(36,'p','*','*','POST','/api/reset-email-or-phone','*','*'),(37,'p','*','*','POST','/api/upload-resource','*','*'),(38,'p','*','*','GET','/.well-known/openid-configuration','*','*'),(39,'p','*','*','*','/.well-known/jwks','*','*'),(40,'p','*','*','GET','/api/get-saml-login','*','*'),(41,'p','*','*','POST','/api/acs','*','*'),(42,'p','*','*','GET','/api/saml/metadata','*','*'),(43,'p','*','*','*','/cas','*','*'),(44,'p','*','*','*','/scim','*','*'),(45,'p','*','*','*','/api/webauthn','*','*'),(46,'p','*','*','GET','/api/get-release','*','*'),(47,'p','*','*','GET','/api/get-default-application','*','*'),(48,'p','*','*','GET','/api/get-prometheus-info','*','*'),(49,'p','*','*','*','/api/metrics','*','*'),(50,'p','*','*','GET','/api/get-pricing','*','*'),(51,'p','*','*','GET','/api/get-plan','*','*'),(52,'p','*','*','GET','/api/get-subscription','*','*'),(53,'p','*','*','GET','/api/get-provider','*','*'),(54,'p','*','*','GET','/api/get-organization-names','*','*'),(55,'p','*','*','GET','/api/get-all-objects','*','*'),(56,'p','*','*','GET','/api/get-all-actions','*','*'),(57,'p','*','*','GET','/api/get-all-roles','*','*');
/*!40000 ALTER TABLE `casbin_api_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casbin_rule`
--

DROP TABLE IF EXISTS `casbin_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casbin_rule` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v0` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v1` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v2` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v3` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v4` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v5` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_casbin_rule_v4` (`v4`),
  KEY `IDX_casbin_rule_v5` (`v5`),
  KEY `IDX_casbin_rule_ptype` (`ptype`),
  KEY `IDX_casbin_rule_v0` (`v0`),
  KEY `IDX_casbin_rule_v1` (`v1`),
  KEY `IDX_casbin_rule_v2` (`v2`),
  KEY `IDX_casbin_rule_v3` (`v3`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casbin_rule`
--

LOCK TABLES `casbin_rule` WRITE;
/*!40000 ALTER TABLE `casbin_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `casbin_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casbin_user_rule`
--

DROP TABLE IF EXISTS `casbin_user_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casbin_user_rule` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v0` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v1` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v2` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v3` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v4` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v5` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_casbin_user_rule_v2` (`v2`),
  KEY `IDX_casbin_user_rule_v3` (`v3`),
  KEY `IDX_casbin_user_rule_v4` (`v4`),
  KEY `IDX_casbin_user_rule_v5` (`v5`),
  KEY `IDX_casbin_user_rule_ptype` (`ptype`),
  KEY `IDX_casbin_user_rule_v0` (`v0`),
  KEY `IDX_casbin_user_rule_v1` (`v1`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casbin_user_rule`
--

LOCK TABLES `casbin_user_rule` WRITE;
/*!40000 ALTER TABLE `casbin_user_rule` DISABLE KEYS */;
INSERT INTO `casbin_user_rule` VALUES (1,'g','testqualité/elkkhadar','group:testqualité/group_6itbhc','','','','');
/*!40000 ALTER TABLE `casbin_user_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cert`
--

DROP TABLE IF EXISTS `cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cert` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `scope` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `crypto_algorithm` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bit_size` int DEFAULT NULL,
  `expire_in_years` int DEFAULT NULL,
  `certificate` mediumtext COLLATE utf8mb4_general_ci,
  `private_key` mediumtext COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cert`
--

LOCK TABLES `cert` WRITE;
/*!40000 ALTER TABLE `cert` DISABLE KEYS */;
INSERT INTO `cert` VALUES ('admin','cert-built-in','2024-01-26T12:18:25Z','Built-in Cert','JWT','x509','RS256',4096,20,'-----BEGIN CERTIFICATE-----\nMIIE3TCCAsWgAwIBAgIDAeJAMA0GCSqGSIb3DQEBCwUAMCgxDjAMBgNVBAoTBWFk\nbWluMRYwFAYDVQQDEw1jZXJ0LWJ1aWx0LWluMB4XDTI0MDEyNjEyMTgyNloXDTQ0\nMDEyNjEyMTgyNlowKDEOMAwGA1UEChMFYWRtaW4xFjAUBgNVBAMTDWNlcnQtYnVp\nbHQtaW4wggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDR0yrAbrG3SwtR\nXlqVn1KY72Lu62bQ7Pf/Lk85VIIvgMDefqkHs+C/pbqn0m86/BW6wW5x+qAzD6Ty\n7ISNXr4njlGAf3GV4BJ0B2Ust5d3cQPPYN6/DU0hGd8JbqSTZE1LLoK6/25AXUaO\nXdcoOBkNA9jbs508d13lGRC3tqeGOX2QfrKG+paS1NToswv1ghEZsBYxtD2mrSMR\n4n26YwFsFgSaLYpiG2wZW4MJJhQ+2wZdIvsvtJOtgpFVoEf2LmiSLAz2L2+dkSB7\nruv93OTVwNPfarKV8+pXGEhiLI9qepBXuzwQPyuF3fRz4b0gQalID4xad2AT5j68\nam66Ieh6iRDTsEiC/xt9PwXCdQ+nytQRGPQOP2g0umCm18PRV9TUCcLmkDK8rLbX\n/sbLvPDANDN1kxN43STZiGRMYit4pPhJH9fPXQuD+9u5jPbSFCveF6Y+G4vpco28\nqC4N+jIGSfEZjrxj0QGmZ+8j06PvOS/3r3zMMANbX4+zYiUR1cMbsvYgcispZbdN\nuAiq8Vm88g19nk+K8x08M57Y/0MAszGd2var+AFsJ9pSLICfUbGNYMLTk1jqdw8G\nMDfrh2Y6P/Aba2QT+sbyuZgXryM5DK2qAzEU82L3c8arEUFPAm53qj4+fAeNyyNQ\nHV489/jVCp9pQXJBUL3/++8zAKmuZwIDAQABoxAwDjAMBgNVHRMBAf8EAjAAMA0G\nCSqGSIb3DQEBCwUAA4ICAQBnt00iYQJRIJfUq6CNqQxDmuDvPTxKP3tWcuNvyJcV\nJ8HOsVoS130pi/p5jwwIl+juS2VrIDY2JuEMgsdibcysnaW+b5Wn25aPDwhecDM9\nPq87B5IzV5vmHIVMyCJZFfBjqBfOFno3B+k2PICVJ/RjeuI5pBStzlDoiNvNBDtu\nCVYwMf9oDQ92xIjnHQiqGvMb4uI0OhOtA5MEgrFLkojaT5b+mz/6eG067e68kqlp\nRhxvxv3XlBQU97gOVlOxMZrBOM88Q9GE/Z7Nigj8B5uWXsUOvWM9Ddt5MJXeTAjI\nPOG8Yt3GH9l4SWzG+vZNUDsPtTtNySoPWUOSubXRZTi6NQhRyQcqA3rLTYL34GAp\nBjE02cW35pKKxojIgFWiFn8NUceVRO7X5L0FKLry8FmtEL2MQZH8Ud5hrBPLe9zn\nTnfHmeiEbDeT3wkKCgWCKciYi60K7qe6l4zOOZfjLjlUzIseKP8/cBUyQU95CtYx\nPq36Gdhauvx+5DAy9UFKzR2OJG6sS5qxC9nAWKIGgXLpOsOfLLuTdgy6FAmdBXLj\nE2eBX6ffZb1EXvllVfATmJvQuIukqwnVf5wVLNosfZ1a4Vv6IJou367lEazhXD0j\nSBjzweb3cJU3cKq6kUYa3KsJwV7Pju5naisKpD/TdUwJVxK5il0v+uIsaJE+8JiF\nNg==\n-----END CERTIFICATE-----\n','-----BEGIN RSA PRIVATE KEY-----\nMIIJKgIBAAKCAgEA0dMqwG6xt0sLUV5alZ9SmO9i7utm0Oz3/y5POVSCL4DA3n6p\nB7Pgv6W6p9JvOvwVusFucfqgMw+k8uyEjV6+J45RgH9xleASdAdlLLeXd3EDz2De\nvw1NIRnfCW6kk2RNSy6Cuv9uQF1Gjl3XKDgZDQPY27OdPHdd5RkQt7anhjl9kH6y\nhvqWktTU6LML9YIRGbAWMbQ9pq0jEeJ9umMBbBYEmi2KYhtsGVuDCSYUPtsGXSL7\nL7STrYKRVaBH9i5okiwM9i9vnZEge67r/dzk1cDT32qylfPqVxhIYiyPanqQV7s8\nED8rhd30c+G9IEGpSA+MWndgE+Y+vGpuuiHoeokQ07BIgv8bfT8FwnUPp8rUERj0\nDj9oNLpgptfD0VfU1AnC5pAyvKy21/7Gy7zwwDQzdZMTeN0k2YhkTGIreKT4SR/X\nz10Lg/vbuYz20hQr3hemPhuL6XKNvKguDfoyBknxGY68Y9EBpmfvI9Oj7zkv9698\nzDADW1+Ps2IlEdXDG7L2IHIrKWW3TbgIqvFZvPINfZ5PivMdPDOe2P9DALMxndr2\nq/gBbCfaUiyAn1GxjWDC05NY6ncPBjA364dmOj/wG2tkE/rG8rmYF68jOQytqgMx\nFPNi93PGqxFBTwJud6o+PnwHjcsjUB1ePPf41QqfaUFyQVC9//vvMwCprmcCAwEA\nAQKCAgEAh5RGPJ+KL+DKyGIKcEHJkk6kg7MR9ZAZUwcuY+IKWP1+IoZ/XB3L7Kn+\n6S/ddaSrucgBQJ7sYvIJ6HoR0HNWtaKNYVV4JJrr8ZNRucpLkf8xsg9q/tJucyQP\nbT3UE/UsyJaeHIyuReK/k4BpZXCSJ0nEF3qA8DBFOKKwnbTlnKKLUxG68+L55pil\nllMTOCk6OXoBbU6Ew61+SrEqAoS0x42WnbUthOUpPV1XV1MGo/LMsuPGoPWystv6\nYvS1awpjwYe7PFw8Z/j9n03Q6XGRX9lATk3YZXJ9ipeDNgSLCwd1O2sdjXXz/oUD\nztkfZrdm1cxOKaqXJ2SQRxkSwSzl1RQbYRLG7ER42IZe2pK0VDcduD5Qy8+SxKQQ\nSYfUV2TmS3srnzqu6xm49W3LQa/RyhzVUzByAEhsaxoHpAKRiD1FJOh5Rt6mY94s\nJJuGOBv7sMdnLJTizi/D2ugZeyeAIcTXo6hv0rCdfUIOIiUr5InwodQnIh+LIEXV\n771kHhwwUNmg/QTybYP7JJkj1mGvIQLWBecT08dWmXweVK6oE/WR7XOI0HwNfHIE\nasBtIGHV8o44olb2SrRrNdNd0Jd8wB4na/v6HXizIhrc8gBYpjUgDZIN7Idxf3oo\nV6Ods91cOcaPAqdJgOWddolOcrcIkhCMbksbIgN03+2SzkWCTzECggEBAO3swby1\nKhzV4hax/NwGmrha94Pcyrdt1B8PrvPfVuNzg7w49/NiN2cwwp0DV2BohSmAwaT/\nsdLJiAsRZ/L9+P+soW0POEB5yD2D8jt4aqczkdB9ksMZ3r33nieqw1QT1JCdZeWI\nqJPe4I3t+M/lOzCmtDo3JFJWUG/tlulg+odq5VjtWZ7RpxDd5EokiOITI4+SJ/Do\nGmA4kXUegzvlAyGzZi0SBc4TmVJ2DA4bboAvn9G2z+fJ1sALaLEFKKbhR9MOAdmx\nc/+Vs0UgdjSJqGFhdq+NHkjTf4aEdeDicq+9eIzzU6i8V/3ZwxhYlA9u3NscPDQH\nNu1ml9+jdBn4lh8CggEBAOHD6aDgQVEixeutts008khkMv2T1RNM5n4pB48T66IU\nEIviHk7dmpn+iPm1MNdTycLmyfj2s4ecZhVJLu9pyhtT2fYUIVNYFqADenLK0yOz\nwgP4xcZv7nuH2q+p7nuD2amNZSHTsfNaGaLTqfU3xioIONsfl8gGuD4kZuSzEg0C\nsgO4d5J7H8prkLvqRA+wl9ZaCGGzU8FAljKpp+HqW8SpPFTThcxP0JNcG6z5Z3+P\nxPILImabx7oxyBnBIM0IhOQo2/P+XRpv1HWXZ9jtOoZrd/VRn4VpdMXyekZZYwF1\n0wuo6gy9wuRro6w3g+PeyMovK+sv5hUfP+gYrQ9AjrkCggEAHpUYMhF3YE19yj0G\nq6GNsbS/rAttYzaS1YtGicJjgMkQXdlUxcwSIwl5eoU7bgEBXNxYB8V2LgoJmqKa\nIfnTT8n41fPm3yLIQl/7evl3fBZ837fEbZ+dqf1yLtccVGpYIF6bAm4WfStg4d18\n5fwpJ4/GCtWbrZm6rSh1BXqZuV5cLJoVsvxv5RMgjQc1MRoUsBexWp37BfM/fzZ0\n1/YP+Pz+XTy70klio97YndeY1JFKkcJV5w1itTzCMD7hgtHiUZazVjAhIPE1IeWS\nTB6Frj7A6r/Q7LuC4N+V51o0M7K/FB8S2dWb2d1r3m1EWtd9PAzdEDL9NHbDftOb\n0NrLMQKCAQEApxUMtGkDLf7kJ1W6sgf7PyQYsJ5V1SDWfIv08ii1/I+I512DPK64\nmjtMODGmYdW6vil7VGuP1k8jJaGxwLG0R6E47+tZ9op8xBOO7aG5vPRuI+5awE9a\nWcXjTJogyvx7fAYO0IgRbJ5D1sN7RuXuHHFVUqYA+KIwfJ0IIT19oG9cO3Cr3ZaN\noosU5F2t3Ua+OH8NMPE8jQs1nWz9uC5vmA3/fm/E175CCKzkNpGlzTwjb1ZaMUId\nAGmTQ6wwkE07vHeYwOyBDu2weQ6CZoK7C3xBnSa5Pk0bhNu9Lo88vHnspPZvsNpH\ngDFBQlUboOriAvACOt6KExu7ehO5EE6g0QKCAQEA5hJDpZIBy7fDrH4R8I9BgjV/\nSSHHWtI3N/TVqBmjOMy0Yp7j7yUtvOuc3IYn9V6quljTfIsADYigGkhpF/t5VtOM\n2JsOG/iOlBw/0S8k/SMnaur/11rNkAzNOsyKzr+91oXx0MeaW+sMECPqMi9o2PZS\nGiKC68012QakLFroSDkF10nTNH7Qqw+SCugcPHdnpckqLUNpN4oxZHQTtturvBmi\nBFp/tx8Z/aMwUIQqpnGBmnCyl/HurLm7A2ErTW8WSjKdSlLgD1LGUT9JuyNjHuES\nMcse+UHFhektPwEPD7kThknS1/9CIn9jHf3YCA9SCTP6qsV0/S8WKXph3ZoUpA==\n-----END RSA PRIVATE KEY-----\n');
/*!40000 ALTER TABLE `cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enforcer`
--

DROP TABLE IF EXISTS `enforcer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enforcer` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `adapter` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `enforcer` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enforcer`
--

LOCK TABLES `enforcer` WRITE;
/*!40000 ALTER TABLE `enforcer` DISABLE KEYS */;
INSERT INTO `enforcer` VALUES ('built-in','api-enforcer-built-in','2024-01-26T12:18:26Z','2024-01-26 12:18:26','API Enforcer','','built-in/api-model-built-in','built-in/api-adapter-built-in',NULL),('built-in','user-enforcer-built-in','2024-01-26T12:18:26Z','2024-01-26 12:18:26','User Enforcer','','built-in/user-model-built-in','built-in/user-adapter-built-in',NULL);
/*!40000 ALTER TABLE `enforcer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `manager` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_id` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_top_group` tinyint(1) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `children` text COLLATE utf8mb4_general_ci,
  `is_enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`),
  UNIQUE KEY `UQE_group_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES ('testqualité','group_6itbhc','2024-01-26T15:07:28+01:00','2024-01-26T15:07:28+01:00','New Group - 6itbhc','','','Virtual','testqualité',1,'','','null',1);
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitation`
--

DROP TABLE IF EXISTS `invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invitation` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_regexp` tinyint(1) DEFAULT NULL,
  `quota` int DEFAULT NULL,
  `used_count` int DEFAULT NULL,
  `application` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `signup_group` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`),
  KEY `IDX_invitation_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation`
--

LOCK TABLES `invitation` WRITE;
/*!40000 ALTER TABLE `invitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldap`
--

DROP TABLE IF EXISTS `ldap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ldap` (
  `id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `owner` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `server_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `host` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `port` int DEFAULT NULL,
  `enable_ssl` tinyint(1) DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `base_dn` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `filter` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `filter_fields` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `auto_sync` int DEFAULT NULL,
  `last_sync` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldap`
--

LOCK TABLES `ldap` WRITE;
/*!40000 ALTER TABLE `ldap` DISABLE KEYS */;
INSERT INTO `ldap` VALUES ('ldap-built-in','built-in','2024-01-26T12:18:26Z','BuildIn LDAP Server','example.com',389,0,'cn=buildin,dc=example,dc=com','123','ou=BuildIn,dc=example,dc=com','','null',0,'');
/*!40000 ALTER TABLE `ldap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `model_text` mediumtext COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES ('built-in','api-model-built-in','2024-01-26T12:18:26Z','API Model','','[request_definition]\nr = subOwner, subName, method, urlPath, objOwner, objName\n\n[policy_definition]\np = subOwner, subName, method, urlPath, objOwner, objName\n\n[role_definition]\ng = _, _\n\n[policy_effect]\ne = some(where (p.eft == allow))\n\n[matchers]\nm = (r.subOwner == p.subOwner || p.subOwner == \"*\") && \\\n    (r.subName == p.subName || p.subName == \"*\" || r.subName != \"anonymous\" && p.subName == \"!anonymous\") && \\\n    (r.method == p.method || p.method == \"*\") && \\\n    (r.urlPath == p.urlPath || p.urlPath == \"*\") && \\\n    (r.objOwner == p.objOwner || p.objOwner == \"*\") && \\\n    (r.objName == p.objName || p.objName == \"*\") || \\\n    (r.subOwner == r.objOwner && r.subName == r.objName)'),('built-in','user-model-built-in','2024-01-26T12:18:26Z','Built-in Model','','[request_definition]\nr = sub, obj, act\n\n[policy_definition]\np = sub, obj, act\n\n[role_definition]\ng = _, _\n\n[policy_effect]\ne = some(where (p.eft == allow))\n\n[matchers]\nm = g(r.sub, p.sub) && r.obj == p.obj && r.act == p.act');
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `website_url` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `favicon` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password_salt` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password_options` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country_codes` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `default_avatar` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `default_application` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8mb4_general_ci,
  `languages` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `theme_data` text COLLATE utf8mb4_general_ci,
  `master_password` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `default_password` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `master_verification_code` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `init_score` int DEFAULT NULL,
  `enable_soft_deletion` tinyint(1) DEFAULT NULL,
  `is_profile_public` tinyint(1) DEFAULT NULL,
  `mfa_items` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_items` varchar(5000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES ('admin','built-in','2024-01-26T12:18:25Z','Built-in Organization','https://example.com','https://cdn.casbin.org/img/casbin/favicon.ico','plain','','[\"AtLeast6\"]','[\"US\",\"ES\",\"FR\",\"DE\",\"GB\",\"CN\",\"JP\",\"KR\",\"VN\",\"ID\",\"SG\",\"IN\"]','https://cdn.casbin.org/img/casbin.svg','','[]','[\"en\",\"zh\",\"es\",\"fr\",\"de\",\"id\",\"ja\",\"ko\",\"ru\",\"vi\",\"pt\"]',NULL,'','','',2000,0,0,'null','[{\"name\":\"Organization\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"ID\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Immutable\"},{\"name\":\"Name\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Display name\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Avatar\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"User type\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Password\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"Email\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Phone\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Country code\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Country/Region\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Location\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Affiliation\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Title\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Homepage\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Bio\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Tag\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Signup application\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Roles\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Immutable\"},{\"name\":\"Permissions\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Immutable\"},{\"name\":\"Groups\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"3rd-party logins\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"Properties\",\"visible\":false,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is admin\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is forbidden\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is deleted\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Multi-factor authentication\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"WebAuthn credentials\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"Managed accounts\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"}]'),('admin','testqualité','2024-01-26T13:19:56+01:00','testqualité','https://door.casdoor.com','https://cdn.casbin.org/img/favicon.png','plain','','[]','[\"US\"]','https://cdn.casbin.org/img/casbin.svg','','[]','[\"en\",\"es\",\"fr\",\"de\",\"zh\",\"id\",\"ja\",\"ko\",\"ru\",\"vi\",\"pt\",\"it\",\"ms\",\"tr\",\"ar\",\"he\",\"nl\",\"pl\",\"fi\",\"sv\",\"uk\",\"kk\",\"fa\"]',NULL,'','','',0,0,1,'null','[{\"name\":\"Organization\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"ID\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Immutable\"},{\"name\":\"Name\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Display name\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Avatar\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"User type\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Password\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"Email\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Phone\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Country code\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Country/Region\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Location\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Address\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Affiliation\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Title\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"ID card type\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"ID card\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"ID card info\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Homepage\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Bio\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Tag\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Language\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Gender\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Birthday\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Education\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Score\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Karma\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Ranking\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Signup application\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"API key\",\"visible\":false,\"viewRule\":\"\",\"modifyRule\":\"Self\"},{\"name\":\"Groups\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Roles\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Immutable\"},{\"name\":\"Permissions\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Immutable\"},{\"name\":\"3rd-party logins\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"Properties\",\"visible\":false,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is online\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is admin\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is forbidden\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is deleted\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Multi-factor authentication\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"WebAuthn credentials\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"Managed accounts\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"}]');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provider` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_display_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tag` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `currency` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `return_url` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `person_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `person_id_card` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `person_email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `person_phone` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `invoice_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `invoice_title` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `invoice_tax_id` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `invoice_remark` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `invoice_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `out_order_id` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pay_url` varchar(2000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `success_url` varchar(2000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `message` varchar(2000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `users` mediumtext COLLATE utf8mb4_general_ci,
  `groups` mediumtext COLLATE utf8mb4_general_ci,
  `roles` mediumtext COLLATE utf8mb4_general_ci,
  `domains` mediumtext COLLATE utf8mb4_general_ci,
  `model` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `adapter` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `resource_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `resources` mediumtext COLLATE utf8mb4_general_ci,
  `actions` mediumtext COLLATE utf8mb4_general_ci,
  `effect` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `submitter` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `approver` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `approve_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES ('built-in','permission-built-in','2024-01-26T12:18:25Z','Built-in Permission','Built-in Permission','[\"built-in/*\"]','[]','[]','[]','model-built-in','','Application','[\"app-built-in\"]','[\"Read\",\"Write\",\"Admin\"]','Allow',1,'admin','admin','2024-01-26T12:18:25Z','Approved');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_rule`
--

DROP TABLE IF EXISTS `permission_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_rule` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v0` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v1` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v2` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v3` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v4` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `v5` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_permission_rule_v5` (`v5`),
  KEY `IDX_permission_rule_ptype` (`ptype`),
  KEY `IDX_permission_rule_v0` (`v0`),
  KEY `IDX_permission_rule_v1` (`v1`),
  KEY `IDX_permission_rule_v2` (`v2`),
  KEY `IDX_permission_rule_v3` (`v3`),
  KEY `IDX_permission_rule_v4` (`v4`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_rule`
--

LOCK TABLES `permission_rule` WRITE;
/*!40000 ALTER TABLE `permission_rule` DISABLE KEYS */;
INSERT INTO `permission_rule` VALUES (1,'p','built-in/*','app-built-in','read','allow','','built-in/permission-built-in'),(2,'p','built-in/*','app-built-in','write','allow','','built-in/permission-built-in'),(3,'p','built-in/*','app-built-in','admin','allow','','built-in/permission-built-in');
/*!40000 ALTER TABLE `permission_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `currency` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `period` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_providers` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `role` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pricing`
--

DROP TABLE IF EXISTS `pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricing` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `plans` mediumtext COLLATE utf8mb4_general_ci,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `trial_duration` int DEFAULT NULL,
  `application` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pricing`
--

LOCK TABLES `pricing` WRITE;
/*!40000 ALTER TABLE `pricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `detail` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tag` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `currency` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `sold` int DEFAULT NULL,
  `providers` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `return_url` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `method` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `client_id` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `client_secret` varchar(3000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `client_id2` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `client_secret2` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cert` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `custom_auth_url` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `custom_token_url` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `custom_user_info_url` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `custom_logo` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `scopes` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_mapping` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `host` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `port` int DEFAULT NULL,
  `disable_ssl` tinyint(1) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` varchar(2000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `receiver` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `region_id` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sign_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `template_code` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `app_id` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `endpoint` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `intranet_endpoint` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `domain` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bucket` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `path_prefix` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_general_ci,
  `id_p` mediumtext COLLATE utf8mb4_general_ci,
  `issuer_url` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `enable_sign_authn_request` tinyint(1) DEFAULT NULL,
  `provider_url` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`),
  UNIQUE KEY `UQE_provider_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES ('admin','provider_captcha_default','2024-01-26T12:18:25Z','Captcha Default','Captcha','Default','','','','','','','','','','','','','null','',0,0,'','','','','','','','','','','','','','','',0,'');
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radius_accounting`
--

DROP TABLE IF EXISTS `radius_accounting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `radius_accounting` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` datetime DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `service_type` bigint DEFAULT NULL,
  `nas_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nas_ip_addr` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nas_port_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nas_port_type` bigint DEFAULT NULL,
  `nas_port` bigint DEFAULT NULL,
  `framed_ip_addr` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `framed_ip_netmask` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `acct_session_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `acct_session_time` bigint DEFAULT NULL,
  `acct_input_total` bigint DEFAULT NULL,
  `acct_output_total` bigint DEFAULT NULL,
  `acct_input_packets` bigint DEFAULT NULL,
  `acct_output_packets` bigint DEFAULT NULL,
  `acct_terminate_cause` bigint DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `acct_start_time` datetime DEFAULT NULL,
  `acct_stop_time` datetime DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`),
  KEY `IDX_radius_accounting_username` (`username`),
  KEY `IDX_radius_accounting_acct_session_id` (`acct_session_id`),
  KEY `IDX_radius_accounting_acct_start_time` (`acct_start_time`),
  KEY `IDX_radius_accounting_acct_stop_time` (`acct_stop_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radius_accounting`
--

LOCK TABLES `radius_accounting` WRITE;
/*!40000 ALTER TABLE `radius_accounting` DISABLE KEYS */;
/*!40000 ALTER TABLE `radius_accounting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(180) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provider` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `application` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tag` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_format` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_size` int DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `users` mediumtext COLLATE utf8mb4_general_ci,
  `groups` mediumtext COLLATE utf8mb4_general_ci,
  `roles` mediumtext COLLATE utf8mb4_general_ci,
  `domains` mediumtext COLLATE utf8mb4_general_ci,
  `is_enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('testqualité','role_5kfgl5','2024-01-26T15:06:08+01:00','New Role - 5kfgl5','','[]','[\"testqualité/group_6itbhc\"]','[]','[]',1);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `application` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `session_id` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`owner`,`name`,`application`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES ('built-in','admin','app-built-in','2024-01-26T17:38:37Z','[\"f41cb67c483ed33f18d1989a252b5f2b\"]'),('built-in','admin','testqualité','2024-01-26T12:42:03Z','[\"55f1d785cb202a8e5f6ee7d86b0d7072\"]'),('testqualité','elkkhadar','testqualité','2024-01-26T13:52:14Z','[\"692c02619a2346619284cd123e8e0aa7\",\"4daa6b040a318adb3abee265e9c38dac\"]');
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pricing` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `plan` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `period` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syncer`
--

DROP TABLE IF EXISTS `syncer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `syncer` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `organization` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `database_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ssl_mode` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `host` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `port` int DEFAULT NULL,
  `user` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `database` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `table` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `table_columns` mediumtext COLLATE utf8mb4_general_ci,
  `affiliation_table` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar_base_url` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `error_text` mediumtext COLLATE utf8mb4_general_ci,
  `sync_interval` int DEFAULT NULL,
  `is_read_only` tinyint(1) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syncer`
--

LOCK TABLES `syncer` WRITE;
/*!40000 ALTER TABLE `syncer` DISABLE KEYS */;
/*!40000 ALTER TABLE `syncer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `application` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `organization` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `access_token` mediumtext COLLATE utf8mb4_general_ci,
  `refresh_token` mediumtext COLLATE utf8mb4_general_ci,
  `access_token_hash` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `refresh_token_hash` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `expires_in` int DEFAULT NULL,
  `scope` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code_challenge` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code_is_used` tinyint(1) DEFAULT NULL,
  `code_expire_in` bigint DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`),
  KEY `IDX_token_code` (`code`),
  KEY `IDX_token_access_token_hash` (`access_token_hash`),
  KEY `IDX_token_refresh_token_hash` (`refresh_token_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES ('admin','0038ca77-aa38-439d-894b-4ad4a6845bd7','2024-01-26T13:59:44Z','testqualité','testqualité','elkkhadar','54a4e8cdc9a70df76633','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6InRlc3RxdWFsaXTDqSIsIm5hbWUiOiJlbGtraGFkYXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTI6MDdaIiwidXBkYXRlZFRpbWUiOiIiLCJpZCI6IjJmMjhhMGQ3LTJkNjYtNDM2Zi05ZWQ2LTUzNGZhMTk3YTY2ZSIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6IkhhbXphIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiZWxraGFkYXJoYW16YTQwQGdtYWlsLmNvbSIsImVtYWlsVmVyaWZpZWQiOmZhbHNlLCJwaG9uZSI6IiIsImNvdW50cnlDb2RlIjoiIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiIiLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MCwia2FybWEiOjAsInJhbmtpbmciOjIsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6ZmFsc2UsImlzRm9yYmlkZGVuIjpmYWxzZSwiaXNEZWxldGVkIjpmYWxzZSwic2lnbnVwQXBwbGljYXRpb24iOiJ0ZXN0cXVhbGl0w6kiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOltdLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoiYWNjZXNzLXRva2VuIiwidGFnIjoiIiwic2NvcGUiOiJyZWFkIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwIiwic3ViIjoiMmYyOGEwZDctMmQ2Ni00MzZmLTllZDYtNTM0ZmExOTdhNjZlIiwiYXVkIjpbImM3ODU5NzcwZWYwZTViYjFkMzM2Il0sImV4cCI6MTcwNjg4MjM4NCwibmJmIjoxNzA2Mjc3NTg0LCJpYXQiOjE3MDYyNzc1ODQsImp0aSI6ImFkbWluLzAwMzhjYTc3LWFhMzgtNDM5ZC04OTRiLTRhZDRhNjg0NWJkNyJ9.zyy9KwZcHEYgxWXBTXe8_QHldinQuWcm5cUvvAe3-gRFGebwROXfyWk_fgbKmso6e6AI-rP1VnHIziMWhVLlYNH1o42PoL2H-wcQhKrymVKuJOFStyQApweX6T3WWB6N0Q0a7lmxyw_CbhWW2PtlqpqxM74dOrGEzy0nRw2xZkTXrz2Un_CCeMfbn9CsFK3XntvSH_2fWtIlba15eH8cRrhcVfg0wql8TLrSIM94O57e-qPwD7GlJwW9HAop3Ged2j4wzdpU1GssIBGTYpBX5pLG6UiYRDTqQlIf-07R2Zwt4JQjqFEcso0F64YQXsXm10cbQKqcNHU_k907Biuqj72UTS_QnrG5W23R3ntdOQN62ezAxwb4FnABLza_8W8yMUYKhsqSlGWZ2I1smxn9s1msC28e4Sk1VWWgD_SgI9Cd-zdS4v20OwlC3dSgp-KyABa_e173m93bpN6BZsUXN_NvVCD9E1uKwZghACg76Cr_hiWzy8KncYblusdJfR8JeSADqaaAlS3NcIPKKgDPKmBkeNqSvdbVIDJyG5umVaaYfn_QGibyHjkw_Qss4746yW4RdcUMqK5KdCvDaT4Li7gG5syILfth8AASFRy6PIZhSHY9fdXQTVVxU1F0rV6isrkTpxoFa-P0PBumpC3geWOvLCDMQNuKCwAW7qCaeY8','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6InRlc3RxdWFsaXTDqSIsIm5hbWUiOiJlbGtraGFkYXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTI6MDdaIiwidXBkYXRlZFRpbWUiOiIiLCJpZCI6IjJmMjhhMGQ3LTJkNjYtNDM2Zi05ZWQ2LTUzNGZhMTk3YTY2ZSIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6IkhhbXphIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiZWxraGFkYXJoYW16YTQwQGdtYWlsLmNvbSIsImVtYWlsVmVyaWZpZWQiOmZhbHNlLCJwaG9uZSI6IiIsImNvdW50cnlDb2RlIjoiIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiIiLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MCwia2FybWEiOjAsInJhbmtpbmciOjIsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6ZmFsc2UsImlzRm9yYmlkZGVuIjpmYWxzZSwiaXNEZWxldGVkIjpmYWxzZSwic2lnbnVwQXBwbGljYXRpb24iOiJ0ZXN0cXVhbGl0w6kiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOltdLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoicmVmcmVzaC10b2tlbiIsInRhZyI6IiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjJmMjhhMGQ3LTJkNjYtNDM2Zi05ZWQ2LTUzNGZhMTk3YTY2ZSIsImF1ZCI6WyJjNzg1OTc3MGVmMGU1YmIxZDMzNiJdLCJleHAiOjE3MDY4ODIzODQsIm5iZiI6MTcwNjI3NzU4NCwiaWF0IjoxNzA2Mjc3NTg0LCJqdGkiOiJhZG1pbi8wMDM4Y2E3Ny1hYTM4LTQzOWQtODk0Yi00YWQ0YTY4NDViZDcifQ.wCB4jlVUB8noiVmLjpSX1EFtFt_NENZnzBgWYpXxAnDYvpfgGJEU-SI3wungr0GRt6kfAnCyDih2gLDVMFdMhNYM5mijgfltYUXSNVBF6-bUichqRlSTdX3qemuviJ0lVKW6d3U0zRWdgQjdVxz673Uiiw-vfoH4E5CCcL9yrqXKWMyar4I1vD8JrLMxwMUkxHwEUGodukZqtS0GtLUz781f5iVzpw7nhgJ82_w6k4yKPynLTIFWt7Oze21ZwMMA6K0O1mvII5-N7haWAPlraJx3Y7z1kVc0bAbZjKLpFzB4b5PqIoaPbsWq-dvZoxzbBkFuX2VgJfhhmq-4Ob1IR5D-_HuFCljE8aMWKyoFR3TV2o9J2Xtq3ns0JaAhKtIoRkOnJI84ShYWeRslMO1joyuqxcoj66QZiwdQs__OrdBfUKMlbT0e--yRm9Xz7wTFDhSJidpqemKiMYchWNlZV7ziQ24aBA0IvDzEJe80FHWLUukPYsd82-gwJcAgmS5dqWIeMmgzjYpZMypORMsFkcaQtlPtPspqVYOcFR-SX505e7vPJuLQl0xakYm84Kj84bMBdtcrpPCdPs4ztWVZlf8zs-d2Hu5BDuQIp5KvZ0ejQwJSdhjyIRSF9KiHoib84h4Jgo9F2UPdmusNLD86ZaPdfAWZ18W-k1ul79i1lFs','76bf14043f7300a7df8e380de30cd618f9531e4aa001f3df291b1f86480c75dd','cdb407fe3ee3c8a50a6d53474bd27af3e3fc2621cfba50614dfaca0f4bf2cc78',604800,'read','Bearer','',0,1706277884),('admin','0ccd24bc-52ec-4370-908c-85ca615a35ad','2024-01-26T14:09:05Z','testqualité','testqualité','elkkhadar','a69a878305b548ab08c4','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6InRlc3RxdWFsaXTDqSIsIm5hbWUiOiJlbGtraGFkYXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTI6MDdaIiwidXBkYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDE0OjA4OjQ4WiIsImlkIjoiMmYyOGEwZDctMmQ2Ni00MzZmLTllZDYtNTM0ZmExOTdhNjZlIiwidHlwZSI6Im5vcm1hbC11c2VyIiwicGFzc3dvcmQiOiIiLCJwYXNzd29yZFNhbHQiOiIiLCJwYXNzd29yZFR5cGUiOiJwbGFpbiIsImRpc3BsYXlOYW1lIjoiSGFtemEiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJlbGtoYWRhcmhhbXphNDBAZ21haWwuY29tIiwiZW1haWxWZXJpZmllZCI6ZmFsc2UsInBob25lIjoiIiwiY291bnRyeUNvZGUiOiIiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjowLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6InRlc3RxdWFsaXTDqSIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOlt7Im93bmVyIjoidGVzdHF1YWxpdMOpIiwibmFtZSI6InJvbGVfNWtmZ2w1IiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDE1OjA2OjA4KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJOZXcgUm9sZSAtIDVrZmdsNSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6WyJ0ZXN0cXVhbGl0w6kvZ3JvdXBfNml0YmhjIl0sInJvbGVzIjpbXSwiZG9tYWlucyI6W10sImlzRW5hYmxlZCI6dHJ1ZX1dLCJwZXJtaXNzaW9ucyI6W10sImdyb3VwcyI6WyJ0ZXN0cXVhbGl0w6kvZ3JvdXBfNml0YmhjIl0sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiIiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiIyZjI4YTBkNy0yZDY2LTQzNmYtOWVkNi01MzRmYTE5N2E2NmUiLCJhdWQiOlsiYzc4NTk3NzBlZjBlNWJiMWQzMzYiXSwiZXhwIjoxNzA2ODgyOTQ1LCJuYmYiOjE3MDYyNzgxNDUsImlhdCI6MTcwNjI3ODE0NSwianRpIjoiYWRtaW4vMGNjZDI0YmMtNTJlYy00MzcwLTkwOGMtODVjYTYxNWEzNWFkIn0.z-W_f9-afE9nRuxdCtJjrVguKib7BjdU0PvDwEEYnLP6IT3tPX34455eWu4YToiVfsJzYiFbSux9wkF-VSJWVOE6xImhS-yqt9O-truGJw_G9t7q9B7stISJjH1RnMGEFPgV4s3w_Vn8583UAVixx-kTLfz35YTJtQegVUQwSwMmU590s745cTWi_1kSF9DCPNiP55kl1lhoiUsq0EZEE3XmPqB2CO-8aAN6zRjCkeuXqO7RlwsMVihGnw7dUcWjzzQxmLjpvp-71Ta0tgbfg-uTzEi1_SffYJ6T0HtOBtIC8XDZylAI5dAP8t794PZR6CClMB5zJmRfNBdzLvMD8HHGsyOBz3wFWLuBoCdvj-I1RF7ygLLeiBhhRw-zZtzoDPxepQUaCIbF_RE72G3fnxqCXM6iY3Qeb8wjaKBuENyPBTfrEVB90rxMWh3X-pfqU6TiP0-dH69a8x1v79FqHxIxFujLhaAxcuqxLRHd-sKb5sfOf1iKjEpEqWSsVtwm6gPzDLD_pxBWATRcKQbFzA4h0VH6JNSM6CHqyJm4KdB8O5y4wzSvj_Hk-PZTl9IAKCa3_0qyO7SsHu39OPa9Q4si85mUgeRo8JcvAeYPMAkdxCxZyj9SlaPhvO91tr3lNluITqjd28T8Jijk4UnP0iRwIuZiKLWj1H4BmHwynDg','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6InRlc3RxdWFsaXTDqSIsIm5hbWUiOiJlbGtraGFkYXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTI6MDdaIiwidXBkYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDE0OjA4OjQ4WiIsImlkIjoiMmYyOGEwZDctMmQ2Ni00MzZmLTllZDYtNTM0ZmExOTdhNjZlIiwidHlwZSI6Im5vcm1hbC11c2VyIiwicGFzc3dvcmQiOiIiLCJwYXNzd29yZFNhbHQiOiIiLCJwYXNzd29yZFR5cGUiOiJwbGFpbiIsImRpc3BsYXlOYW1lIjoiSGFtemEiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJlbGtoYWRhcmhhbXphNDBAZ21haWwuY29tIiwiZW1haWxWZXJpZmllZCI6ZmFsc2UsInBob25lIjoiIiwiY291bnRyeUNvZGUiOiIiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjowLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6InRlc3RxdWFsaXTDqSIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOlt7Im93bmVyIjoidGVzdHF1YWxpdMOpIiwibmFtZSI6InJvbGVfNWtmZ2w1IiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDE1OjA2OjA4KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJOZXcgUm9sZSAtIDVrZmdsNSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6WyJ0ZXN0cXVhbGl0w6kvZ3JvdXBfNml0YmhjIl0sInJvbGVzIjpbXSwiZG9tYWlucyI6W10sImlzRW5hYmxlZCI6dHJ1ZX1dLCJwZXJtaXNzaW9ucyI6W10sImdyb3VwcyI6WyJ0ZXN0cXVhbGl0w6kvZ3JvdXBfNml0YmhjIl0sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoiIiwic2NvcGUiOiJyZWFkIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwIiwic3ViIjoiMmYyOGEwZDctMmQ2Ni00MzZmLTllZDYtNTM0ZmExOTdhNjZlIiwiYXVkIjpbImM3ODU5NzcwZWYwZTViYjFkMzM2Il0sImV4cCI6MTcwNjg4Mjk0NSwibmJmIjoxNzA2Mjc4MTQ1LCJpYXQiOjE3MDYyNzgxNDUsImp0aSI6ImFkbWluLzBjY2QyNGJjLTUyZWMtNDM3MC05MDhjLTg1Y2E2MTVhMzVhZCJ9.b2KZ_4SHui4xlfiIvRwJ78i-jT-W5NpmJoIjPef0WpqwRsoaGpCSGpq2cjo-cBZbWaD-cHpcW1b5le0WEHTI3shHnRzmMZNkZV26-WvDaX4MrnAxx6WEuLMEm-YWzrpZk5yRVRZ1Ij8qOeRX2K6wknNNkU4fxF1Vo3XDnc8AKl3cNxVKZVE_7ot39lOy523cfs0yuQIAffaUr2G3ItiYzWxT0p-cvO623zPsESl583Yi7Ek8KZ1dvFX8A2mmpQdJ3nGe7zrkJX5ilg6MJSGwGj_sotYNY1xGICHOUpTIgrhG6ihlE-HwzGPqPjYu_87Q1i-5kMiYc0VGMg1AmL4zBYbX963ftOR8vDaSBHPHq7Ke_ea_jPf2eIygvCH99KEDOzHQGyJL6zAKbgvSCnqjaNaWeuzw2s2JsYLtdX9hzgBNpvsZKrEtsSFh_mCZgS3REtuPad7dq_9He848iNdNeJ1HYzd4_4HCR2FDI5I0EArRlWBBT3JJmB-DpgnpG2Xw137yzArL7W_lBhu1XhnjSTA65blOcUk6Sj9uCmQE5LEP8I9pxfE5_Y67wnsmitQZoopyX49euUildkQesy_AoP16a_1V2fS5-u2jb6skMcdf0rqJBRQ6VFywDjDAT3yqklKDrsarQy1POG3Wu4xkNgqYQmP0xSyvEh9Qa-wU494','c46195ddbb77e21fbee57c2fa0abf9fc745798e9d0b8a66a9d9f0598d299efb8','726516ebd21b17c362120e245341d6e964596b83b8c9ee73fe9e6e3b8a80bb73',604800,'read','Bearer','',0,1706278445),('admin','2b244956-312c-41c1-82a3-058dbbef0721','2024-01-26T14:08:57Z','testqualité','testqualité','elkkhadar','0430188e953f58d9f2af','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6InRlc3RxdWFsaXTDqSIsIm5hbWUiOiJlbGtraGFkYXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTI6MDdaIiwidXBkYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDE0OjA4OjQ4WiIsImlkIjoiMmYyOGEwZDctMmQ2Ni00MzZmLTllZDYtNTM0ZmExOTdhNjZlIiwidHlwZSI6Im5vcm1hbC11c2VyIiwicGFzc3dvcmQiOiIiLCJwYXNzd29yZFNhbHQiOiIiLCJwYXNzd29yZFR5cGUiOiJwbGFpbiIsImRpc3BsYXlOYW1lIjoiSGFtemEiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJlbGtoYWRhcmhhbXphNDBAZ21haWwuY29tIiwiZW1haWxWZXJpZmllZCI6ZmFsc2UsInBob25lIjoiIiwiY291bnRyeUNvZGUiOiIiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjowLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6InRlc3RxdWFsaXTDqSIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOlt7Im93bmVyIjoidGVzdHF1YWxpdMOpIiwibmFtZSI6InJvbGVfNWtmZ2w1IiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDE1OjA2OjA4KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJOZXcgUm9sZSAtIDVrZmdsNSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6WyJ0ZXN0cXVhbGl0w6kvZ3JvdXBfNml0YmhjIl0sInJvbGVzIjpbXSwiZG9tYWlucyI6W10sImlzRW5hYmxlZCI6dHJ1ZX1dLCJwZXJtaXNzaW9ucyI6W10sImdyb3VwcyI6WyJ0ZXN0cXVhbGl0w6kvZ3JvdXBfNml0YmhjIl0sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiIiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiIyZjI4YTBkNy0yZDY2LTQzNmYtOWVkNi01MzRmYTE5N2E2NmUiLCJhdWQiOlsiYzc4NTk3NzBlZjBlNWJiMWQzMzYiXSwiZXhwIjoxNzA2ODgyOTM3LCJuYmYiOjE3MDYyNzgxMzcsImlhdCI6MTcwNjI3ODEzNywianRpIjoiYWRtaW4vMmIyNDQ5NTYtMzEyYy00MWMxLTgyYTMtMDU4ZGJiZWYwNzIxIn0.Ynbu-L4nHUrZMd-02mAkV3Gce8N9x1YRbCS6QJgkcgc9WlT6Mkk9zchtJZGadYt0n6RkThAD9WIvj-lqPIVlmW9bl0ftD9nPRRsl9WovvPvFvbytGtcX9S5i0J4VrFfaZ54HcsmQc8LUJpkveCWL4ykqQp77Z_kMrgdnT30S9VdrEp0abUYiZ072hzaqqEWpz0bhKiv7INkj1vCeetYlquUfVZPx_jvtnTCc3UuQvzuxRpfByzmydXcG910zaSWoq_4rtN4MZmhEkZtfu951YZ4bEpIjvgIEvbGzkMZvDR-hkpAe_5BKMNJkMonGb8tJGi7D9g3Mak7rV31HBAaiYGonftcZx_Az9vmzJ1wF-MrEqX10iQl7zMDgkB6vferF9TFCcYO77tnjNj1rDHZuSEPzr7XhOuWRrE7YTeihD30U6-X2Qqdqm3P123X-FrbTwoC8ZsOJYwZxEr2HvzY5L3WSsPci4XMv7uR95uIw29pBfg3ACCfUiwMC2vmEjZMHraopeKPeEBXL0qwAHGlCk-YYlNjpYVyFDtZXYgIRPxUnJGI1kpq57gsF0IIU0NArn1y5FtiLWAul8o0mZ_4X1X6aHOa8wOgGFY-Dy1MVMpXFTLjwrzBB5b6OGiQF8AtoWV76wdFLRPCsmwekVlHqhf4BvvXLfyWLXhBJxcq-mkU','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6InRlc3RxdWFsaXTDqSIsIm5hbWUiOiJlbGtraGFkYXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTI6MDdaIiwidXBkYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDE0OjA4OjQ4WiIsImlkIjoiMmYyOGEwZDctMmQ2Ni00MzZmLTllZDYtNTM0ZmExOTdhNjZlIiwidHlwZSI6Im5vcm1hbC11c2VyIiwicGFzc3dvcmQiOiIiLCJwYXNzd29yZFNhbHQiOiIiLCJwYXNzd29yZFR5cGUiOiJwbGFpbiIsImRpc3BsYXlOYW1lIjoiSGFtemEiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJlbGtoYWRhcmhhbXphNDBAZ21haWwuY29tIiwiZW1haWxWZXJpZmllZCI6ZmFsc2UsInBob25lIjoiIiwiY291bnRyeUNvZGUiOiIiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjowLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6InRlc3RxdWFsaXTDqSIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOlt7Im93bmVyIjoidGVzdHF1YWxpdMOpIiwibmFtZSI6InJvbGVfNWtmZ2w1IiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDE1OjA2OjA4KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJOZXcgUm9sZSAtIDVrZmdsNSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6WyJ0ZXN0cXVhbGl0w6kvZ3JvdXBfNml0YmhjIl0sInJvbGVzIjpbXSwiZG9tYWlucyI6W10sImlzRW5hYmxlZCI6dHJ1ZX1dLCJwZXJtaXNzaW9ucyI6W10sImdyb3VwcyI6WyJ0ZXN0cXVhbGl0w6kvZ3JvdXBfNml0YmhjIl0sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoiIiwic2NvcGUiOiJyZWFkIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwIiwic3ViIjoiMmYyOGEwZDctMmQ2Ni00MzZmLTllZDYtNTM0ZmExOTdhNjZlIiwiYXVkIjpbImM3ODU5NzcwZWYwZTViYjFkMzM2Il0sImV4cCI6MTcwNjg4MjkzNywibmJmIjoxNzA2Mjc4MTM3LCJpYXQiOjE3MDYyNzgxMzcsImp0aSI6ImFkbWluLzJiMjQ0OTU2LTMxMmMtNDFjMS04MmEzLTA1OGRiYmVmMDcyMSJ9.AqoK9Nj51Xvs4-1m-Js-tHQKtalXB3alJz4YGn_iigEGt5P-dn9AcVIvF5HHtfezSMS9tkNn_ZBQ7foghDFhwjgcc4nQS10QSH2pRIpa3xFK7TZknh3fxhVzFBK7WI1FPGzI8TJYwucY2o3Vd9LLvG7I8EOVN3j7tUTfxzewyaGRLJQiUi-I1WgK1PUBf6XmbkAGTi0RPlD5hBlugzbOxkEroWZTFUq0eKmCPPctdACXUhiCqO3fDRPggUmU1aNe-zQDjgkhqUJGmHubmMWrGSAo3u0UHoXwgaszAx4F489p0xiW5e-x2XiESwkBnCS5uftu9-RReWbm0OlZOK4uISmIiyOZbCoEB08axq-9z-9qxz5dBhwCyXJftqaaZRTFtVAEFkFEUjvkeVTHPSlxI5vbiHGKo840ksGvR1BymFGlCXdBXwe1H-JRnoZxoxL6ANHpdUNNj0EPQcQ9AnIGzvwYDuuLRF9Hnv6KxQdMX-DUz7nWYRDQ9yTpddNmF8Ccl1zgJQrwXh1dTysX-Hjyc0bcvvfbr6Nf1UMCeWi8oVGJv8ckMDUXHDaxZEURrYYtvQ_NAZdHGd3M13g65ZDm3-V2PznKM5oDHErFtWWAp6Pz2I2lB-BagexBmOkhaiZ23f-2qI8r7DEKSfgqmeFWpTkgw5xxfBYCku-TtwrkFQo','e02a8213cad58bf8bedc1ff923be495bdc3794f068c285f0e284bebea622f96c','d19ab41c94569f0cd94090243e0b30eec9b195b1603bc1648230e269dfbeab1d',604800,'read','Bearer','',0,1706278437),('admin','3eb14ac1-9f75-4353-a570-29b56557ea1f','2024-01-26T12:42:03Z','testqualité','built-in','admin','da2b0944356fd52e4220','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImJ1aWx0LWluIiwibmFtZSI6ImFkbWluIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDEyOjE4OjI1WiIsInVwZGF0ZWRUaW1lIjoiIiwiaWQiOiI0YTczOWJkMC1mOWJlLTQwN2EtYjdlZi00NTk0MmY4MzQxNjgiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6InBsYWluIiwiZGlzcGxheU5hbWUiOiJBZG1pbiIsImZpcnN0TmFtZSI6IiIsImxhc3ROYW1lIjoiIiwiYXZhdGFyIjoiaHR0cHM6Ly9jZG4uY2FzYmluLm9yZy9pbWcvY2FzYmluLnN2ZyIsImF2YXRhclR5cGUiOiIiLCJwZXJtYW5lbnRBdmF0YXIiOiIiLCJlbWFpbCI6ImFkbWluQGV4YW1wbGUuY29tIiwiZW1haWxWZXJpZmllZCI6ZmFsc2UsInBob25lIjoiMTIzNDU2Nzg5MTAiLCJjb3VudHJ5Q29kZSI6IlVTIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiJFeGFtcGxlIEluYy4iLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MjAwMCwia2FybWEiOjAsInJhbmtpbmciOjEsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6dHJ1ZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImFwcC1idWlsdC1pbiIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiMTI3LjAuMC4xIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W10sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjRhNzM5YmQwLWY5YmUtNDA3YS1iN2VmLTQ1OTQyZjgzNDE2OCIsImF1ZCI6WyJjNzg1OTc3MGVmMGU1YmIxZDMzNiJdLCJleHAiOjE3MDY4Nzc3MjMsIm5iZiI6MTcwNjI3MjkyMywiaWF0IjoxNzA2MjcyOTIzLCJqdGkiOiJhZG1pbi8zZWIxNGFjMS05Zjc1LTQzNTMtYTU3MC0yOWI1NjU1N2VhMWYifQ.kq6XCCybBVysA4l8Bn_MqVu8mAD213pHnSwZG5SdiX7NHfUPd6AiUlkKwCqjl7uKcgVLhl4VB8y1V-alReXcZI1k1Z2bL1eNgvGvmJNO1uHFERwVFxu8ptWqgt4d0pa_uTLKq7_jFG-32fhFeDVKo5lKVukXMOZGD2Yks0KZrEWMU4MkSFme0FNYVLpZlUgrtRiUHbKivvhJY9cZ4ACaLwdPseInoOMiPOessC1tBnKeLOCGG0oHcZXV-DTDrrTaVL7fmGHxObPFaPC1yAPvdRyYb3jTN6Ti06JFOqXN-8iRFtC4yFj3p0dcDYEHhWj8DeH2gNTixjmUU0vZCVlICL22E8VY1qyXv4CiIjOknbXsLQLdur3gmOeE9O9mtzh0eaJWhNSOkfZJ11w7AWLr4mpzPSddcTFZBQKr_dBWohsRx0dN-ClklQ45ulxEUWfdVIw9C7TqsJXYx401t5Skk_JLS5nXggkJfTSmZX3_pgXXxnW2A9cTU3d7lvQ3R4TFCtJ2CAjXtYDHXzUY3LvuBjp6zaX4M-9ycMm2F_fH9-8RRbYUm-ziY04z_9-bEsmtwqRU7fotcPhfD402miLzJvfQl8F9-8y8Sh0TjcESc7xWGL-bnhJg0dWvE0Lj2u1Cwa0NS32ZbAaCxwPVF0THqUY6pYXD1yKoxda-uuIJUgo','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImJ1aWx0LWluIiwibmFtZSI6ImFkbWluIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDEyOjE4OjI1WiIsInVwZGF0ZWRUaW1lIjoiIiwiaWQiOiI0YTczOWJkMC1mOWJlLTQwN2EtYjdlZi00NTk0MmY4MzQxNjgiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6InBsYWluIiwiZGlzcGxheU5hbWUiOiJBZG1pbiIsImZpcnN0TmFtZSI6IiIsImxhc3ROYW1lIjoiIiwiYXZhdGFyIjoiaHR0cHM6Ly9jZG4uY2FzYmluLm9yZy9pbWcvY2FzYmluLnN2ZyIsImF2YXRhclR5cGUiOiIiLCJwZXJtYW5lbnRBdmF0YXIiOiIiLCJlbWFpbCI6ImFkbWluQGV4YW1wbGUuY29tIiwiZW1haWxWZXJpZmllZCI6ZmFsc2UsInBob25lIjoiMTIzNDU2Nzg5MTAiLCJjb3VudHJ5Q29kZSI6IlVTIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiJFeGFtcGxlIEluYy4iLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MjAwMCwia2FybWEiOjAsInJhbmtpbmciOjEsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6dHJ1ZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImFwcC1idWlsdC1pbiIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiMTI3LjAuMC4xIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W10sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiI0YTczOWJkMC1mOWJlLTQwN2EtYjdlZi00NTk0MmY4MzQxNjgiLCJhdWQiOlsiYzc4NTk3NzBlZjBlNWJiMWQzMzYiXSwiZXhwIjoxNzA2ODc3NzIzLCJuYmYiOjE3MDYyNzI5MjMsImlhdCI6MTcwNjI3MjkyMywianRpIjoiYWRtaW4vM2ViMTRhYzEtOWY3NS00MzUzLWE1NzAtMjliNTY1NTdlYTFmIn0.JbKWDOhpWYC7JgY75uaY_2gyqnj5ZvoBOciweg2bspHZBdA3NJhR2XOV6MVXJQiQ2rDWHjLXpO_gQqvjQpiYdveCzmsNa-jUKgW2X2Iv1gp-8VS4fZ-ZSmU59VZcm9mvhiXl4O13jMXfuPomYqQU7KZxo6MSSY2GKgO-K6aGBxSFdjmRM6bAdxCc7Z_J8SsEZNccUQYtH3VlMkfM20ANWEdVctksh9BBoRs-416R7MgxQMbK-RGi9-rd44JUHKtvymOA8ZuPR7DCf2UDe4MEGr0h4AomLfzMyE3K4vPKVEH65Vu6SBZj4BgK2BnAQ3qRHed59BRvBu_02BgGxXnWS5VgVVJ5-Z5YmlJ0lEGn-hnIRxlQGeZaQiWepuvRQ1saD0jNHB75slVPk3uJzzLxXjY3R57zMRRxUmyDI9xxQ7Ipi3SQPXNTRqd628oAJ21M4e-nUVD4YYzsORh8GBAhst6TW9a_GgN-yNmiT27ggOIN8tM39s9Mh8z3iQ8QwEXNR62ooXqEWEGq7IKYvxeqrSydQLpXVBuS9jh2O99LlPRehLVx3lkHITMlNyPGk0siH32rKUtUNkMYQjSd2YJLjOLPmcKTCAyvgARzLEIpWK8-9_Ok16B5jyp4SkOTrzEOcrWbeYcHKIAgGAODK19eYKDXFy4PFCBcbi0LqbeKQxA','dd32c77b5837364f959273823cfb4613534f15df36ba6d95bc299a25a5a76e56','68bfef304d684bb23caf50f96f00c361b18a281e66b49c0cfca35e02eb5b023f',604800,'read','Bearer','',1,1706273223),('admin','7ca7df50-0ea1-445e-b79f-c09fb7975144','2024-01-26T15:48:50Z','testqualité','testqualité','elkkhadar','9038b0370e4131f9f506','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6InRlc3RxdWFsaXTDqSIsIm5hbWUiOiJlbGtraGFkYXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTI6MDdaIiwidXBkYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDE0OjA4OjQ4WiIsImlkIjoiMmYyOGEwZDctMmQ2Ni00MzZmLTllZDYtNTM0ZmExOTdhNjZlIiwidHlwZSI6Im5vcm1hbC11c2VyIiwicGFzc3dvcmQiOiIiLCJwYXNzd29yZFNhbHQiOiIiLCJwYXNzd29yZFR5cGUiOiJwbGFpbiIsImRpc3BsYXlOYW1lIjoiSGFtemEiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJlbGtoYWRhcmhhbXphNDBAZ21haWwuY29tIiwiZW1haWxWZXJpZmllZCI6ZmFsc2UsInBob25lIjoiIiwiY291bnRyeUNvZGUiOiIiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjowLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6InRlc3RxdWFsaXTDqSIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOlt7Im93bmVyIjoidGVzdHF1YWxpdMOpIiwibmFtZSI6InJvbGVfNWtmZ2w1IiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDE1OjA2OjA4KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJOZXcgUm9sZSAtIDVrZmdsNSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6WyJ0ZXN0cXVhbGl0w6kvZ3JvdXBfNml0YmhjIl0sInJvbGVzIjpbXSwiZG9tYWlucyI6W10sImlzRW5hYmxlZCI6dHJ1ZX1dLCJwZXJtaXNzaW9ucyI6W10sImdyb3VwcyI6WyJ0ZXN0cXVhbGl0w6kvZ3JvdXBfNml0YmhjIl0sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiIiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiIyZjI4YTBkNy0yZDY2LTQzNmYtOWVkNi01MzRmYTE5N2E2NmUiLCJhdWQiOlsiYzc4NTk3NzBlZjBlNWJiMWQzMzYiXSwiZXhwIjoxNzA2ODg4OTMwLCJuYmYiOjE3MDYyODQxMzAsImlhdCI6MTcwNjI4NDEzMCwianRpIjoiYWRtaW4vN2NhN2RmNTAtMGVhMS00NDVlLWI3OWYtYzA5ZmI3OTc1MTQ0In0.z3R7g6uXVYfSI3Y6JhCC34KteDdP4rAfmljY25Sa0jOFPM2jhgj4Dd5oQAittXjEkE3bYRbRWy1Hb6KTbEU3eWNw8pv8S3byTQoJA38tU4NDZ1Qc29OM-bP4nSWkCHyqSpGcBcQ19hOKssZ7coiJRERpSpUrv6111xgQ5lfYx5O_pql88BwVo9c0HZIul3o36eXJv1jCte0lobePGj7DB_V2xet3ubvmJdFQPHosgM0omQK1uOXgql82yJ8mx0V0p2_CneZgs2EsDWVbPObaU8dxKo7Rj0fyim4p6QZqXpiGvyvGEog_bIOlQJhb5iWk4DIbHu9EWQdBe4FSvVPN8t2t4TRpfsqei9EDVzWSTJQnq-9NsFNgQfIooLuhj5qElMz3hprQqmAFpoZQR58c4N-uhNyFrVjrgkXMz1nRRqUhUsyAy6Mq3JxQEF78e3BIHXmFQRMQQt9i67D9t6vu-_s6DrdjRmQtdkYkCgNU0d28Poo2GJeHJwVETA7MYSQx7pCRerkNjzCuJml_eNeazwUi_aX796F1w4VJKEn0OR8HLGO-8lxNvriwRAJSSL75EsxMKQTqzFl5FEC4tg3Ww5O8Da-3AZhuHRuV5P-DU7TYV-7dTS59TRsgRCd51TI8Fm5aJrWhaAu0_1rzhSuvSH-lfW9iRmBHT3cJXDoIrBg','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6InRlc3RxdWFsaXTDqSIsIm5hbWUiOiJlbGtraGFkYXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTI6MDdaIiwidXBkYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDE0OjA4OjQ4WiIsImlkIjoiMmYyOGEwZDctMmQ2Ni00MzZmLTllZDYtNTM0ZmExOTdhNjZlIiwidHlwZSI6Im5vcm1hbC11c2VyIiwicGFzc3dvcmQiOiIiLCJwYXNzd29yZFNhbHQiOiIiLCJwYXNzd29yZFR5cGUiOiJwbGFpbiIsImRpc3BsYXlOYW1lIjoiSGFtemEiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJlbGtoYWRhcmhhbXphNDBAZ21haWwuY29tIiwiZW1haWxWZXJpZmllZCI6ZmFsc2UsInBob25lIjoiIiwiY291bnRyeUNvZGUiOiIiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjowLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6InRlc3RxdWFsaXTDqSIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOlt7Im93bmVyIjoidGVzdHF1YWxpdMOpIiwibmFtZSI6InJvbGVfNWtmZ2w1IiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDE1OjA2OjA4KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJOZXcgUm9sZSAtIDVrZmdsNSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6WyJ0ZXN0cXVhbGl0w6kvZ3JvdXBfNml0YmhjIl0sInJvbGVzIjpbXSwiZG9tYWlucyI6W10sImlzRW5hYmxlZCI6dHJ1ZX1dLCJwZXJtaXNzaW9ucyI6W10sImdyb3VwcyI6WyJ0ZXN0cXVhbGl0w6kvZ3JvdXBfNml0YmhjIl0sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoiIiwic2NvcGUiOiJyZWFkIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwIiwic3ViIjoiMmYyOGEwZDctMmQ2Ni00MzZmLTllZDYtNTM0ZmExOTdhNjZlIiwiYXVkIjpbImM3ODU5NzcwZWYwZTViYjFkMzM2Il0sImV4cCI6MTcwNjg4ODkzMCwibmJmIjoxNzA2Mjg0MTMwLCJpYXQiOjE3MDYyODQxMzAsImp0aSI6ImFkbWluLzdjYTdkZjUwLTBlYTEtNDQ1ZS1iNzlmLWMwOWZiNzk3NTE0NCJ9.FYanoInwUdWWWtUHNWg4-HANZ4QKq7Xo8vOaJl5lsZfguAYMXIb6wcLgKDh7e_2j-QMdUErWGTZuHT00xcRll7lbiX3O44Lp-6aoi4nDreVTC-C4X4ZYR4GZS3w7Yvnn0n80ET3M-IC99YwjFWiS8x6pW45DBdtcMtSgExoL99r9nwxbL6dkEZuZr3MzRuQw-MGHNl9NyUn6tq8aSKRKN-_XW4c0ynNgZD-rlzGRecPRFeslEHnl4AbXLBabK8GrNW4TE-P7zTXbz5CK9r7X3sn2FsPwcYH5Z0rdd8ogKsFbZGu5pJLPCOxZtVuI6CqQ9rP3s0Q_t2zjf75YMT2Ija71CgR48OwARBuLUZZnCey7BdJNGoI1Z_Ee39AO9HsHxqK-7i_sghI7KGh2uViSLglZ323WYSxc2TL3uB8A_H4i017Z-b2FNlJ-D5t3P29HCk5OaxigPGLpfq5FZBe501-EaL6o5ZED5N8Q2ZM8OYAIOox51qZHZTKvMq7cGtQW4C3q1zy6XKjjYoPAmA11KmDt-GTkbqhCrSbAFfpvisUm57ihUNmBNA2swVD83kB8RY8vwF7egMtRYNWzxK5uBA2-PRJrmtsTWOk3sLv9ljxj3cZBOjc9C1hIZsYAWq7z1bHdFpGzpeR47ePO1KR10B_4FYUiohnxh3JLTHG3f-g','b7b461f8fd5262f02d8beaca9fda6e056bd296322ed556bf74594ceca9cb937e','3ed37441d43cd9a3dcf54f01eb7645c3abaf14e9634e97499567ee4e324f9ee8',604800,'read','Bearer','',1,1706284430),('admin','c145f6db-6ac8-4809-a843-8a427b14b2e0','2024-01-26T13:52:14Z','testqualité','testqualité','elkkhadar','38b30b66f22936da74cf','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6InRlc3RxdWFsaXTDqSIsIm5hbWUiOiJlbGtraGFkYXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTI6MDdaIiwidXBkYXRlZFRpbWUiOiIiLCJpZCI6IjJmMjhhMGQ3LTJkNjYtNDM2Zi05ZWQ2LTUzNGZhMTk3YTY2ZSIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6IkhhbXphIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiZWxraGFkYXJoYW16YTQwQGdtYWlsLmNvbSIsImVtYWlsVmVyaWZpZWQiOmZhbHNlLCJwaG9uZSI6IiIsImNvdW50cnlDb2RlIjoiIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiIiLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MCwia2FybWEiOjAsInJhbmtpbmciOjIsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6ZmFsc2UsImlzRm9yYmlkZGVuIjpmYWxzZSwiaXNEZWxldGVkIjpmYWxzZSwic2lnbnVwQXBwbGljYXRpb24iOiJ0ZXN0cXVhbGl0w6kiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOltdLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoiYWNjZXNzLXRva2VuIiwidGFnIjoiIiwic2NvcGUiOiJyZWFkIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwIiwic3ViIjoiMmYyOGEwZDctMmQ2Ni00MzZmLTllZDYtNTM0ZmExOTdhNjZlIiwiYXVkIjpbImM3ODU5NzcwZWYwZTViYjFkMzM2Il0sImV4cCI6MTcwNjg4MTkzNCwibmJmIjoxNzA2Mjc3MTM0LCJpYXQiOjE3MDYyNzcxMzQsImp0aSI6ImFkbWluL2MxNDVmNmRiLTZhYzgtNDgwOS1hODQzLThhNDI3YjE0YjJlMCJ9.GpLoee-KoI92sh312f9Kdgf31hkn_-iwGNP5UPUbv6LKGzy40MrgrXRe_Zb9OE7QyJfqOx1RHvtEOaG7BvFmdQctzxzlpG6ORBlZPjSHCPFe_HgsDXmGw2Sok8ZwjIVvTGH_0yWieRzhNJcSjNA1_JcxJdrcqxVVauf5WofvOT8kN1fqNVpxKueZkHQOSU8rsd-DEA44YoB1Qq_2gkOn_YrACkhT-7jzwbu488yoFs31DBVZe7fwsfxBfQ7HbTwzJV_lxLI5ntgMz5nUJvyJpiwg8oxVEu8c11U5L7n36lKIp2BPNP89C6rfo5cboGMFXV3tQkcltydQC-p3OAwdvwG7LFs1nJuUcqNaOAt84tgJQapio_UIFbh1E7eonGXLD83n1AoaXiMxh87A6LZXj-si5_tx84rqV6pmH-CDjvLHKE8CYa1Fi-gjBiKCrZ3k__AkcYu0Kh4GDJbfQ6Mn61La0dmInA_S0NQ9awf6NqtfFM35OyuGt3XMVTwnHVoxJL2qBdQkyxP39KfPDn1giNyFuVLROZlI9OckU6R27fDGxQAeyookt_JcooY0ldnSo0QAVLCUrqwt4iEUQmXZFjqQfKiX6vCebB6f0DCW94-Bu99b5OWhVNdtDwlmYO7xAUryWwc8pbGn6bmTSU0VgfL_MZ5T85wuY8xDgX6GO_Q','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6InRlc3RxdWFsaXTDqSIsIm5hbWUiOiJlbGtraGFkYXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTI6MDdaIiwidXBkYXRlZFRpbWUiOiIiLCJpZCI6IjJmMjhhMGQ3LTJkNjYtNDM2Zi05ZWQ2LTUzNGZhMTk3YTY2ZSIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6IkhhbXphIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiZWxraGFkYXJoYW16YTQwQGdtYWlsLmNvbSIsImVtYWlsVmVyaWZpZWQiOmZhbHNlLCJwaG9uZSI6IiIsImNvdW50cnlDb2RlIjoiIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiIiLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MCwia2FybWEiOjAsInJhbmtpbmciOjIsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6ZmFsc2UsImlzRm9yYmlkZGVuIjpmYWxzZSwiaXNEZWxldGVkIjpmYWxzZSwic2lnbnVwQXBwbGljYXRpb24iOiJ0ZXN0cXVhbGl0w6kiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOltdLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoicmVmcmVzaC10b2tlbiIsInRhZyI6IiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjJmMjhhMGQ3LTJkNjYtNDM2Zi05ZWQ2LTUzNGZhMTk3YTY2ZSIsImF1ZCI6WyJjNzg1OTc3MGVmMGU1YmIxZDMzNiJdLCJleHAiOjE3MDY4ODE5MzQsIm5iZiI6MTcwNjI3NzEzNCwiaWF0IjoxNzA2Mjc3MTM0LCJqdGkiOiJhZG1pbi9jMTQ1ZjZkYi02YWM4LTQ4MDktYTg0My04YTQyN2IxNGIyZTAifQ.DXzGrt60iMNjWhNvi-6O_EBucJF_GmKW4FGuQcxoGcwgu9dtNUYELz_Ybxmu0zD5SJh0iGPyEJ_PsInCNO9EVLBXY7vmLWu4KbJ2k0HbdjpiIVJduXn_hq26n-00k1GzA69RKLfvkcF0Vh4TEY9YX8NtUhxfFLUYxOks7m_PrxOH6rJQYInlmpgVlVfEgeZdxgOUo00Oj9SOs7u5Lbgxe4cBYGWCQMW8EKqq235b4nzKMSwcUMP-6wRmWcpGb0BLl326yPsjIX4KZZfDbjcko16l5TNzc1oQhuvBpOtiUDXJAhZNZp8sKb7XY-UCaRM2-cLgxYMJhGCu6WsPCol7wnpifjZS8UIYMg_uqT2Emcuz56d7Tb1rhl3Oqlq65z1wzjJh0hxN4xwylVCoqzrcoB564Gv_ePeDCnz8a4dPeWGn6ovpgUXgI-mRFzx2T5xUB2oaTKfBzpoJYOD-LOwJ4oR7EayU0CY432-wuEvsKKpyU-wMl9zOgLdugO_pjwJ7lC3evFr248BncWw1PEdugzlV4KNcKICSruNLJ2aSYO6XfqElBaBV9ZLwyPQDcpd_z6Hn3y99csK3o7WtDqjYu7njrMs5M_T73Nvy7iHVqcHMFrHuexeftaeih2vGq5_1Bq31tGjuNtGHbnsJFfBfc_ylC8r9XP2mNQgFWjD-WRg','c5f97e34d54d132e4c8e5b90fd7d8c55f4b59262ef86f34b500ffc86cce1698c','39c6da19c68bd9ab25a2f263145b2c47a5ac067077dd54c7f88b0a55ca893dee',604800,'read','Bearer','',1,1706277434),('admin','da5bb2d4-a577-4dc7-a5e0-45a813eae4fe','2024-01-26T13:59:30Z','testqualité','testqualité','elkkhadar','55e98e3d8b1052d81ac6','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6InRlc3RxdWFsaXTDqSIsIm5hbWUiOiJlbGtraGFkYXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTI6MDdaIiwidXBkYXRlZFRpbWUiOiIiLCJpZCI6IjJmMjhhMGQ3LTJkNjYtNDM2Zi05ZWQ2LTUzNGZhMTk3YTY2ZSIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6IkhhbXphIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiZWxraGFkYXJoYW16YTQwQGdtYWlsLmNvbSIsImVtYWlsVmVyaWZpZWQiOmZhbHNlLCJwaG9uZSI6IiIsImNvdW50cnlDb2RlIjoiIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiIiLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MCwia2FybWEiOjAsInJhbmtpbmciOjIsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6ZmFsc2UsImlzRm9yYmlkZGVuIjpmYWxzZSwiaXNEZWxldGVkIjpmYWxzZSwic2lnbnVwQXBwbGljYXRpb24iOiJ0ZXN0cXVhbGl0w6kiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOltdLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoiYWNjZXNzLXRva2VuIiwidGFnIjoiIiwic2NvcGUiOiJyZWFkIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwIiwic3ViIjoiMmYyOGEwZDctMmQ2Ni00MzZmLTllZDYtNTM0ZmExOTdhNjZlIiwiYXVkIjpbImM3ODU5NzcwZWYwZTViYjFkMzM2Il0sImV4cCI6MTcwNjg4MjM3MCwibmJmIjoxNzA2Mjc3NTcwLCJpYXQiOjE3MDYyNzc1NzAsImp0aSI6ImFkbWluL2RhNWJiMmQ0LWE1NzctNGRjNy1hNWUwLTQ1YTgxM2VhZTRmZSJ9.okRgmWrtdVdHSkoPjiUFAsia_bWJM3-LLxF-ENhzsoiA1jkdf8zG9NhnvO3gKua29K8fK1R77X-uszp7DVKu5GoXntkh0nFm-mE3HGToM_aIz-neEHrGHOl8SgHlEtvdjGp6AcZr0HV4U0MbHyqvODhLZskhRAKRooXaKEsLip5BQMlJ0hgU9Bt6TDaFkSD42pYARnSoPnR2kYp_a-59u6bCw5smCC7XgL8kob36r8-RlDBkgJ9xQCtudXQyCZNVOQVNZIqRcjD2vA0pmXtcM8A4hlwUhxMNOPkl0WGtNL_bfeLIG9UEx_Ir2jwcQ9I5zigLnBfMaYTG51ljmBBcHz2cLlkPlx_gWhnahmtPaUJAaeaVcx6ZcDPn_CkhUB9FTNgZJhmFfmqRNbPbLWnFcDALIn01L24NUgUorVX0fiCzPd0VX7OI8hb1WZBGJUfprc38KPKRFNZzQ76b4kKa1Zhnm9RrUPiI_Z8BVnUO-WM2mj9DAOmBv00pVaHzteWzR7nhZkhij_-oUlCfS5gWGLr8mBxWg0dAygTa_4wU_pYo4w4OeTnPWyGw8ZYgUXoTVL8xS-6nBdPh52ff12mfchJZ5Ir1fJRtFT065J8NrKizkYYntqMHbRNq5hItSYiTQm6-YCWpNFxQ2E5jKEbZ8U5HIxjJGYPOWDTc-3NvTuo','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6InRlc3RxdWFsaXTDqSIsIm5hbWUiOiJlbGtraGFkYXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTI6MDdaIiwidXBkYXRlZFRpbWUiOiIiLCJpZCI6IjJmMjhhMGQ3LTJkNjYtNDM2Zi05ZWQ2LTUzNGZhMTk3YTY2ZSIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6IkhhbXphIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiZWxraGFkYXJoYW16YTQwQGdtYWlsLmNvbSIsImVtYWlsVmVyaWZpZWQiOmZhbHNlLCJwaG9uZSI6IiIsImNvdW50cnlDb2RlIjoiIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiIiLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MCwia2FybWEiOjAsInJhbmtpbmciOjIsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6ZmFsc2UsImlzRm9yYmlkZGVuIjpmYWxzZSwiaXNEZWxldGVkIjpmYWxzZSwic2lnbnVwQXBwbGljYXRpb24iOiJ0ZXN0cXVhbGl0w6kiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOltdLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoicmVmcmVzaC10b2tlbiIsInRhZyI6IiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjJmMjhhMGQ3LTJkNjYtNDM2Zi05ZWQ2LTUzNGZhMTk3YTY2ZSIsImF1ZCI6WyJjNzg1OTc3MGVmMGU1YmIxZDMzNiJdLCJleHAiOjE3MDY4ODIzNzAsIm5iZiI6MTcwNjI3NzU3MCwiaWF0IjoxNzA2Mjc3NTcwLCJqdGkiOiJhZG1pbi9kYTViYjJkNC1hNTc3LTRkYzctYTVlMC00NWE4MTNlYWU0ZmUifQ.fMdr4kKvwTvUN8eIG7IHFclA1UJiCFqSDoH2SuhpTZpurXyRRjUAjpAIvRG1pnRMlVsbGw1eIfSh8fzEFz4Ksfo52a0X9zhSt4e3lhNLIZ4w4UtkhD7ynToqZUwIp9otX5h0pyDBPhljGb_YbuRM2r2t23cvB-43ZpLg9LiYazcuM6Ut3S_Aje4T62FGDoVO70_jXrYcqUZH924o2Bnx86YenxebRXZ4TqirBjeEj3utpMXXu-ljFxA5unwN0NHhPun4AMvuzx6roeUpmGMmHTjWqkkcbt_yR57gQGCyrtwx_vP7MBsm6k9SPjRS5WCDgt4hyHQ1NiQbMzT7qI1czns9eCw2R8yn-0X1LzlMM_R9uLLTtZeSwgSmmV0Yhaf2n8GUqZQpTcuPx2kgIL0xmR01WfdYRfizd7ePrYRYAbv49xALQdWy0OWAwFed4v921Yf8s4D2uUI06qLaKuAinfc_Nid2FJRYTtjtNuQOyFHW4gWrB1aoDD_azJMuaUrb3kd1o2Wk4xgu8h4FiswxDyOnPGQOtuum0NEeJvBcYW2fyV1FWCsS0sLZnJY86mn95IbJZkvvtp9rMW4RHIRswW-BnbckzpS7aU_sEIqOTfvrHzoe9stl-zNT8k7zayTy-Ju5swFvDghM2L12bYFImDWZjoF-A3xMre1MyLqFKoY','5487f6e1650e1d4284948a0ffdd73cd16693d74a83ca0570d0e3bc6a5e27b7bb','7a09ee6e442dd5ef01daee259813de46e16f8c460be5cfa1d89a7a79cffd8fcb',604800,'read','Bearer','',0,1706277870),('admin','e3324e43-13fc-4d5f-b132-d19e72ff01af','2024-01-26T13:54:15Z','testqualité','testqualité','elkkhadar','1e51c95829242a0654b9','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6InRlc3RxdWFsaXTDqSIsIm5hbWUiOiJlbGtraGFkYXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTI6MDdaIiwidXBkYXRlZFRpbWUiOiIiLCJpZCI6IjJmMjhhMGQ3LTJkNjYtNDM2Zi05ZWQ2LTUzNGZhMTk3YTY2ZSIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6IkhhbXphIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiZWxraGFkYXJoYW16YTQwQGdtYWlsLmNvbSIsImVtYWlsVmVyaWZpZWQiOmZhbHNlLCJwaG9uZSI6IiIsImNvdW50cnlDb2RlIjoiIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiIiLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MCwia2FybWEiOjAsInJhbmtpbmciOjIsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6ZmFsc2UsImlzRm9yYmlkZGVuIjpmYWxzZSwiaXNEZWxldGVkIjpmYWxzZSwic2lnbnVwQXBwbGljYXRpb24iOiJ0ZXN0cXVhbGl0w6kiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOltdLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoiYWNjZXNzLXRva2VuIiwidGFnIjoiIiwic2NvcGUiOiJyZWFkIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwIiwic3ViIjoiMmYyOGEwZDctMmQ2Ni00MzZmLTllZDYtNTM0ZmExOTdhNjZlIiwiYXVkIjpbImM3ODU5NzcwZWYwZTViYjFkMzM2Il0sImV4cCI6MTcwNjg4MjA1NSwibmJmIjoxNzA2Mjc3MjU1LCJpYXQiOjE3MDYyNzcyNTUsImp0aSI6ImFkbWluL2UzMzI0ZTQzLTEzZmMtNGQ1Zi1iMTMyLWQxOWU3MmZmMDFhZiJ9.t7cFxDNIDfOcEXk5Y9q6Ad3JvJdYNlrB1TioUL9gshi64PF5GQYgK8DdQ269RrLX960pOkAAIWP2eVD8OpzlBx7hUEgPTXi-Xhw6H1pUW1gwmuicf35u8kFeoxmiZ8PYQ75K791E-gyqllbDLLhcJDtBesonVtUsxY05vBg7DaTz5TlmRs76oJpgnhTbOKoStlnqisAo48pUB92SyiAox0jBeumEbrRGQ1wLwLcw-bJmp-JPr0c-nWesM4cDtLYbl34g0FnI2i4pmS0E09wJuAQCX-u1Do55YR7IVcfBtYEpDUF1Zh3OGWG-10yhXFV3I2WtuAfTEWOO9aCMpXtPJSUiixYXx4p2iSDQz0G7yrFTIiep9mIidJyBiWOK1MtzrunJa4FE7JmoN0PkFiBDNEElv1zzMuhme2kfdzQ6k8elV2sVWdrIxHIbtVdfCPosR3nXIA262pB_uHebuhhV2WR_H-Bs0p3mPRoiRHUu4LF2R-IoM9ImIPEVtly_lGJ7CLrR31kmcyxHawE6dh6HzOHiSjI2DO3-dXTqPTBjbE2TxKO_bEoRaBxjs585BgrKbqS91K7zlCs-yg15nVyOxivT3idUkdx6u1xOj4LMBgkRdm3SK5HFub8bOuKV_z8Eo5Y2GzrvaIskX1Zjrt9phjcltMpxTD7MTR8yoma0Dpo','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6InRlc3RxdWFsaXTDqSIsIm5hbWUiOiJlbGtraGFkYXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTI6MDdaIiwidXBkYXRlZFRpbWUiOiIiLCJpZCI6IjJmMjhhMGQ3LTJkNjYtNDM2Zi05ZWQ2LTUzNGZhMTk3YTY2ZSIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6IkhhbXphIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiZWxraGFkYXJoYW16YTQwQGdtYWlsLmNvbSIsImVtYWlsVmVyaWZpZWQiOmZhbHNlLCJwaG9uZSI6IiIsImNvdW50cnlDb2RlIjoiIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiIiLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MCwia2FybWEiOjAsInJhbmtpbmciOjIsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6ZmFsc2UsImlzRm9yYmlkZGVuIjpmYWxzZSwiaXNEZWxldGVkIjpmYWxzZSwic2lnbnVwQXBwbGljYXRpb24iOiJ0ZXN0cXVhbGl0w6kiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOltdLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoicmVmcmVzaC10b2tlbiIsInRhZyI6IiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjJmMjhhMGQ3LTJkNjYtNDM2Zi05ZWQ2LTUzNGZhMTk3YTY2ZSIsImF1ZCI6WyJjNzg1OTc3MGVmMGU1YmIxZDMzNiJdLCJleHAiOjE3MDY4ODIwNTUsIm5iZiI6MTcwNjI3NzI1NSwiaWF0IjoxNzA2Mjc3MjU1LCJqdGkiOiJhZG1pbi9lMzMyNGU0My0xM2ZjLTRkNWYtYjEzMi1kMTllNzJmZjAxYWYifQ.fjM1QolfQ8feXukEThdRw-8OLP58wnfs4AdL0lYvgNfRvcabqRHkIaSkZr-lkrI4l5YyAo8rGiJUJZp4EBsMMM-m5laQ9grUaVWO3suhC8E64NVjQbaeVCxuFgz2aKkSw0urvaFLiSG-nX7w63XnpabtOTsPqs0BCJrfPb668Q15M7iHBtx8602MMZFNNMeL-b1Zd9Jy-CPQJ3yiaLS7o3mMAJOvkfzCz3-pzUWB8p1DQ_QixNVcKd6rCiusIUTmOfOaOfxQ1UaY4n3_vh5SJMqWwRF443djEzyIoEAz3k_JTfo0NdVRFS7r_JESMMhFZ3krwa0YVN2r_QEN6zpi_JjBaG9yTYuv6xtuQwf04E8rClHQaiMvEIsrDLuVeThh2qFFQYomqhVfejPMWPTG7UdSJQkotKY4ml9-YxtnrJiHewEnIPSgLHPYZ6hO69iC866W8uDtaaTu3vN72lsbHFpUpvehpm5NYiL0HoNbl13zTLdLE8mmDUFtIaLkIkqUXSF6dvke4FaaN48U1ypqqonnleRG4kR3BFs3FKOLofIzdsQ3IuvcVyPvT5OYqYV6nOvBCLdfafUzKCPixP-bHTzJCa5xdvE0DYESX_z9Hx6CfVOJ00gneOOlgmCrRXavHihc8zU5FyLg06Fjj3jL-pT11sEP_yzApjvN9C4xXAY','5af90fb93acbaa56cc10479dc9889356d937f24bb45656e5ea92e135d83b289c','d40a9ea50f994aa0131f9eb183ed9add5a1df9d7c910d994ff86be59b5a29ed0',604800,'read','Bearer','',0,1706277555),('admin','e8373b79-8277-4b0e-8a2b-9e4aa9f5cdda','2024-01-26T13:59:41Z','testqualité','testqualité','elkkhadar','c73f89bcc4b07bca4360','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6InRlc3RxdWFsaXTDqSIsIm5hbWUiOiJlbGtraGFkYXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTI6MDdaIiwidXBkYXRlZFRpbWUiOiIiLCJpZCI6IjJmMjhhMGQ3LTJkNjYtNDM2Zi05ZWQ2LTUzNGZhMTk3YTY2ZSIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6IkhhbXphIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiZWxraGFkYXJoYW16YTQwQGdtYWlsLmNvbSIsImVtYWlsVmVyaWZpZWQiOmZhbHNlLCJwaG9uZSI6IiIsImNvdW50cnlDb2RlIjoiIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiIiLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MCwia2FybWEiOjAsInJhbmtpbmciOjIsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6ZmFsc2UsImlzRm9yYmlkZGVuIjpmYWxzZSwiaXNEZWxldGVkIjpmYWxzZSwic2lnbnVwQXBwbGljYXRpb24iOiJ0ZXN0cXVhbGl0w6kiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOltdLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoiYWNjZXNzLXRva2VuIiwidGFnIjoiIiwic2NvcGUiOiJyZWFkIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwIiwic3ViIjoiMmYyOGEwZDctMmQ2Ni00MzZmLTllZDYtNTM0ZmExOTdhNjZlIiwiYXVkIjpbImM3ODU5NzcwZWYwZTViYjFkMzM2Il0sImV4cCI6MTcwNjg4MjM4MSwibmJmIjoxNzA2Mjc3NTgxLCJpYXQiOjE3MDYyNzc1ODEsImp0aSI6ImFkbWluL2U4MzczYjc5LTgyNzctNGIwZS04YTJiLTllNGFhOWY1Y2RkYSJ9.hx15buUp-cusWK823pYxYJ0fevBmLbkzyOPFnxNQvLkIIPM2UL0vNrZ6dN-1CkiBgLbqah50UpRW7QT_rd5K4PmvcVuiSQ08FaT5h2NLWKR3nUKvLBDoBOEXLLJ8xVE2KguXCwBf0kBd_pTiu5WL0zrmoo1My4hEVY26V9LhaqVrQU06Ksi_Z63LAXdc-HMcu4KWLIVQzKyPSnwgqKas7Yb9HOD1sljpqF_xcbMsmA4NJ6L_OsiQMhmi6GNUljiqNQ0ccby1TD6GK4FgpOAZtOTx3t0SgEZafani5Hup-uQ-qLz8uPgE3cOix3Uta9xB-KyUEb1UT0nj4XHuC-KZMF-ThHC2tVmZuPaEA29lCPJsnHp-aPrIyVLIsFij2u3DrLf-9ZTR7-a1d3m9DbDpJGkAlx-SkJIWs6uVXDS4jouazQfQxPzYvNf2kTe_3vJVfVWh6BIoNE3H5ivQV6KvaKR5x67YAR3jYOGqcjsJRrlk1-Ef1C2LNg6Ln0dIYnczjp4VyRNOlU2pDUbwwlFea257lCi1AFac4-66aJg--xmljJTxEh8dK8_4QRF5ZN9ESI2_oSvWZlwYC_JzY_3Q61sPpuAT2WO-0fSdjfwePdnteV3bpoRyaZ6q7gRQZjPWdjbPxquEzOFDOmC6RM-5Q4n2svYQOaHwQrxv4K8LRXM','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6InRlc3RxdWFsaXTDqSIsIm5hbWUiOiJlbGtraGFkYXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTI6MDdaIiwidXBkYXRlZFRpbWUiOiIiLCJpZCI6IjJmMjhhMGQ3LTJkNjYtNDM2Zi05ZWQ2LTUzNGZhMTk3YTY2ZSIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6IkhhbXphIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiZWxraGFkYXJoYW16YTQwQGdtYWlsLmNvbSIsImVtYWlsVmVyaWZpZWQiOmZhbHNlLCJwaG9uZSI6IiIsImNvdW50cnlDb2RlIjoiIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiIiLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MCwia2FybWEiOjAsInJhbmtpbmciOjIsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6ZmFsc2UsImlzRm9yYmlkZGVuIjpmYWxzZSwiaXNEZWxldGVkIjpmYWxzZSwic2lnbnVwQXBwbGljYXRpb24iOiJ0ZXN0cXVhbGl0w6kiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOltdLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoicmVmcmVzaC10b2tlbiIsInRhZyI6IiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjJmMjhhMGQ3LTJkNjYtNDM2Zi05ZWQ2LTUzNGZhMTk3YTY2ZSIsImF1ZCI6WyJjNzg1OTc3MGVmMGU1YmIxZDMzNiJdLCJleHAiOjE3MDY4ODIzODEsIm5iZiI6MTcwNjI3NzU4MSwiaWF0IjoxNzA2Mjc3NTgxLCJqdGkiOiJhZG1pbi9lODM3M2I3OS04Mjc3LTRiMGUtOGEyYi05ZTRhYTlmNWNkZGEifQ.Qt-8yFzaKCVbeHKjiRIqXvclVvRYr5tocYkhueJqX5jS4w-WLQA1VleICUEPDUzmLdEzJQmCKOBQf1WNm0tFiPt1A0W45jfZuuP0CSO3sTZecP2dU6WvgRz_3LXglg2GPGyLpHNRfCCgxUbuJj8pdrO8NuUH82ZppRGUOJkwk3tV1lvEN9it8crDLcc6beaBqqqSRGHsUR68YZmJVoM7ZZouzvMZR4E5aY2_sf1ztQKZ07YuLQfPA-uxb5740NxzdM9E6uxbZtB9cwc6cZtetEEbDNixkjr8yvALKfNoqyV6sFzg0edEQpvKTk5KKG4zfze1qgmvorIKsyn_eT_1TJJje5Vi0jpJ1OhVKz4u1bH9NlTcaeHOkfjUVPKBDX-gAW88g7TqxES2DJHO4hSI6mEWk-0qk7Dc2fFJUE2s670ANKS5XVOEus539zJVFFJDnQopnfVhudpM-mKUTT9wZghvE8rdm58jC0IMppmYYmgxS4BCupDfjjPAx9gjBL9FislAQ_0_xVPfOc92cEqIqJ8yddNEiIFWAOJpSetKirWDQg9kARfyXyDa096ES4hvf2jsjZ9JTh7AO_rR9yDtmbYTDn5dEAj8uz02Hqp39YN6FB214fFuPeYtgjAeHPYvfmCzR8v_lgxE3Hbw9BeLEym2W70U_jaGaTFkSLPaLwo','0bddcb5c0caf292a7831022206021b7ea13f4619d5ab0de80c58c1ffa0afa9e6','70bd455519a5a42ba2fdf78c8fb6e806dbd9f1c2b1d65d5cee93f04a1657efb6',604800,'read','Bearer','',0,1706277881);
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `external_id` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password_salt` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `permanent_avatar` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_verified` tinyint(1) DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country_code` varchar(6) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `region` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_general_ci,
  `affiliation` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_card_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_card` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `homepage` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bio` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tag` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `language` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthday` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `education` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `score` int DEFAULT NULL,
  `karma` int DEFAULT NULL,
  `ranking` int DEFAULT NULL,
  `is_default_avatar` tinyint(1) DEFAULT NULL,
  `is_online` tinyint(1) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `is_forbidden` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `signup_application` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hash` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pre_hash` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `access_key` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `access_secret` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_ip` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_signin_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_signin_ip` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `github` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `google` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `qq` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `wechat` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `facebook` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dingtalk` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `weibo` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gitee` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `linkedin` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `wecom` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lark` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gitlab` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `adfs` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `baidu` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alipay` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `casdoor` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `infoflow` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apple` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `azuread` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `azureadb2c` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slack` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `steam` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bilibili` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `okta` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `douyin` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `line` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `amazon` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `auth0` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `battlenet` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bitbucket` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `box` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cloudfoundry` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dailymotion` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deezer` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `digitalocean` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `discord` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dropbox` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `eveonline` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fitbit` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gitea` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `heroku` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `influxcloud` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `intercom` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kakao` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastfm` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mailru` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `meetup` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `microsoftonline` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `naver` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nextcloud` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `onedrive` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `oura` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `patreon` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `paypal` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salesforce` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shopify` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `soundcloud` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `spotify` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strava` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stripe` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tiktok` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tumblr` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `twitch` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `twitter` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `typetalk` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `uber` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vk` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `wepay` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `xero` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `yahoo` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `yammer` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `yandex` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `zoom` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `metamask` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `web3onboard` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `custom` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `webauthnCredentials` blob,
  `preferred_mfa_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `recovery_codes` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `totp_secret` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mfa_phone_enabled` tinyint(1) DEFAULT NULL,
  `mfa_email_enabled` tinyint(1) DEFAULT NULL,
  `invitation` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `invitation_code` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ldap` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_general_ci,
  `roles` text COLLATE utf8mb4_general_ci,
  `permissions` text COLLATE utf8mb4_general_ci,
  `groups` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_signin_wrong_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `signin_wrong_times` int DEFAULT NULL,
  `managedAccounts` blob,
  PRIMARY KEY (`owner`,`name`),
  KEY `IDX_user_invitation_code` (`invitation_code`),
  KEY `IDX_user_created_time` (`created_time`),
  KEY `IDX_user_id` (`id`),
  KEY `IDX_user_external_id` (`external_id`),
  KEY `IDX_user_email` (`email`),
  KEY `IDX_user_phone` (`phone`),
  KEY `IDX_user_id_card` (`id_card`),
  KEY `IDX_user_invitation` (`invitation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('built-in','admin','2024-01-26T12:18:25Z','','4a739bd0-f9be-407a-b7ef-45942f834168','','normal-user','123','','plain','Admin','','','https://cdn.casbin.org/img/casbin.svg','','','admin@example.com',0,'12345678910','US','','','[]','Example Inc.','','','','','','staff','','','','',2000,0,1,0,0,1,0,0,'app-built-in','','','','','127.0.0.1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',_binary 'null','','null','',0,0,'','','','{}','null','null','null','',0,_binary 'null'),('testqualité','elkkhadar','2024-01-26T13:52:07Z','2024-01-26T14:08:48Z','2f28a0d7-2d66-436f-9ed6-534fa197a66e','','normal-user','123456','','plain','Hamza','','','https://cdn.casbin.org/img/casbin.svg','','','elkhadarhamza40@gmail.com',0,'','','','','[]','','','','','','','','','','','',0,0,2,0,0,0,0,0,'testqualité','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',_binary 'null','','null','',0,0,'','','','{}','null','null','[\"testqualité/group_6itbhc\"]','',0,_binary 'null'),('testqualité','user_6pbphe','2024-01-26T13:20:18+01:00','2024-01-26T12:20:26Z','f1b2efb9-e730-4bd5-9403-ba0b99d3b9fa','','normal-user','123','','plain','New User - 6pbphe','','','https://cdn.casbin.org/img/casbin.svg','','','6pbphe@example.com',0,'34538639464','US','','','[]','Example Inc.','','','','','','staff','','','','',2000,0,2,0,0,1,0,0,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',_binary 'null','','null','',0,0,'','','','{}','null','null','[]','',0,_binary 'null');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification_record`
--

DROP TABLE IF EXISTS `verification_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verification_record` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `remote_addr` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `provider` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `receiver` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `time` bigint NOT NULL,
  `is_used` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification_record`
--

LOCK TABLES `verification_record` WRITE;
/*!40000 ALTER TABLE `verification_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `verification_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhook`
--

DROP TABLE IF EXISTS `webhook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webhook` (
  `owner` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `organization` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `method` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `headers` mediumtext COLLATE utf8mb4_general_ci,
  `events` varchar(1000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_user_extended` tinyint(1) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`),
  KEY `IDX_webhook_organization` (`organization`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhook`
--

LOCK TABLES `webhook` WRITE;
/*!40000 ALTER TABLE `webhook` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-26 17:49:23
