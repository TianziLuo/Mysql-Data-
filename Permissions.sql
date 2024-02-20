CREATE DATABASE  IF NOT EXISTS `userve` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `userve`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 192.168.0.11    Database: userve
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `system_permissions`
--

DROP TABLE IF EXISTS `system_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `group` tinyint DEFAULT '1',
  `cid` int DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `sort` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_permissions`
--

LOCK TABLES `system_permissions` WRITE;
/*!40000 ALTER TABLE `system_permissions` DISABLE KEYS */;
INSERT  IGNORE INTO `system_permissions` (`id`, `group`, `cid`, `name`, `slug`, `http_method`, `http_path`, `sort`, `created_at`, `updated_at`) VALUES (13,3,1,'unlimited','unlimited','[{\"Key\":\"View\",\"Value\":\"unlimited\"}]','',1,NULL,NULL),(14,1,1,'backoffice','backoffice','[{\"Key\":\"View\",\"Value\":\"backoffice\"}]','',2,NULL,NULL),(15,1,1,'cashDrawer','cashDrawer','[{\"Key\":\"View\",\"Value\":\"cashDrawer\"}]','33',3,NULL,NULL),(16,2,1,'voidPayment','voidPayment','[{\"Key\":\"View\",\"Value\":\"voidPayment\"}]','',6,NULL,NULL),(17,2,1,'refundPayment','refundPayment','[{\"Key\":\"View\",\"Value\":\"refundPayment\"}]','',5,NULL,NULL),(18,2,1,'voidOrder','voidOrder','[{\"Key\":\"View\",\"Value\":\"voidOrder\"}]','',12,NULL,NULL),(19,2,1,'discount','discount','[{\"Key\":\"View\",\"Value\":\"discount\"}]','',8,NULL,NULL),(21,2,1,'addTips','addTips','[{\"Key\":\"View\",\"Value\":\"addTips\"}]','',9,NULL,NULL),(22,1,1,'staffReport','staffReport','[{\"Key\":\"View\",\"Value\":\"staffReport\"}]','',4,NULL,NULL),(23,2,1,'changePrice','changePrice','[{\"Key\":\"View\",\"Value\":\"changePrice\"}]','',10,NULL,NULL),(24,1,1,'giftCard','giftCard','[{\"Key\":\"View\",\"Value\":\"giftCard\"}]','',11,NULL,NULL),(25,2,1,'cashPay','cashPay','[{\"Key\":\"View\",\"Value\":\"cashPay\"}]','',21,NULL,NULL),(26,2,1,'voidItem','voidItem','[{\"Key\":\"View\",\"Value\":\"voidItem\"}]','',11,NULL,NULL),(27,2,1,'virtualPay','virtualPay','[{\"Key\":\"View\",\"Value\":\"virtualPay\"}]','',24,NULL,NULL),(28,2,1,'creditPay','creditPay','[{\"Key\":\"View\",\"Value\":\"creditPay\"}]','',20,NULL,NULL),(29,2,1,'giftCardPay','giftCardPay','[{\"Key\":\"View\",\"Value\":\"giftCardPay\"}]','',23,NULL,NULL),(30,2,1,'tableSplit','tableSplit','[{\"Key\":\"View\",\"Value\":\"tableSplit\"}]',NULL,1,NULL,NULL),(31,2,1,'paymentSplit','paymentSplit','[{\"Key\":\"View\",\"Value\":\"paymentSplit\"}]',NULL,1,NULL,NULL),(32,2,1,'editOrder','editOrder','[{\"Key\":\"View\",\"Value\":\"editOrder\"}]',NULL,1,NULL,NULL),(33,2,1,'changeServer','changeServer','[{\"Key\":\"View\",\"Value\":\"changeServer\"}]',NULL,2,NULL,NULL),(35,1,1,'closeBatch','closeBatch','[{\"Key\":\"View\",\"Value\":\"closeBatch\"}]',NULL,19,NULL,NULL),(36,2,1,'recallReport','recallReport','[{\"Key\":\"View\",\"Value\":\"recallReport\"}]',NULL,19,NULL,NULL),(37,2,1,'dutyFree','dutyFree','[{\"Key\":\"View\",\"Value\":\"dutyFree\"}]',NULL,18,NULL,NULL),(38,3,1,'clockInOut','clockInOut','[{\"Key\":\"View\",\"Value\":\"clockInOut\"}]',NULL,17,NULL,NULL),(39,2,1,'recallvisible','recallvisible','[{\"Key\":\"View\",\"Value\":\"recallvisible\"}]',NULL,15,NULL,NULL),(40,2,NULL,'gratuity','gratuity','[{\"Key\":\"View\",\"Value\":\"gratuity\"}]',NULL,15,NULL,NULL),(41,2,1,'moveItem','moveItem','[{\"Key\":\"View\",\"Value\":\"moveItem\"}]',NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `system_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_role_permissions`
--

DROP TABLE IF EXISTS `system_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_role_permissions` (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `system_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_role_permissions`
--

LOCK TABLES `system_role_permissions` WRITE;
/*!40000 ALTER TABLE `system_role_permissions` DISABLE KEYS */;
INSERT  IGNORE INTO `system_role_permissions` (`role_id`, `permission_id`, `http_method`, `created_at`, `updated_at`) VALUES (20,13,'unlimited',NULL,NULL),(20,31,'paymentsplit',NULL,NULL),(20,33,'changeserver',NULL,NULL),(20,15,'cashdrawer',NULL,NULL),(20,17,'refundpayment',NULL,NULL),(20,16,'voidpayment',NULL,NULL),(20,23,'changeprice',NULL,NULL),(20,24,'giftcard',NULL,NULL),(20,26,'voiditem',NULL,NULL),(20,38,'clockinout',NULL,NULL),(20,37,'dutyfree',NULL,NULL),(20,36,'recallreport',NULL,NULL),(20,28,'creditpay',NULL,NULL),(20,25,'cashpay',NULL,NULL),(20,29,'giftcardpay',NULL,NULL),(8,14,'backoffice',NULL,NULL),(8,15,'cashdrawer',NULL,NULL),(8,22,'staffreport',NULL,NULL),(8,19,'discount',NULL,NULL),(8,24,'giftcard',NULL,NULL),(8,35,'closebatch',NULL,NULL),(5,13,'unlimited',NULL,NULL),(5,30,'tablesplit',NULL,NULL),(5,15,'cashdrawer',NULL,NULL),(5,19,'discount',NULL,NULL),(6,30,'tablesplit',NULL,NULL),(6,31,'paymentsplit',NULL,NULL),(6,32,'editorder',NULL,NULL),(6,38,'clockinout',NULL,NULL),(6,28,'creditpay',NULL,NULL),(6,25,'cashpay',NULL,NULL),(4,13,'unlimited',NULL,NULL),(4,30,'tablesplit',NULL,NULL),(4,31,'paymentsplit',NULL,NULL),(4,32,'editorder',NULL,NULL),(4,41,'moveitem',NULL,NULL),(4,14,'backoffice',NULL,NULL),(4,33,'changeserver',NULL,NULL),(4,15,'cashdrawer',NULL,NULL),(4,22,'staffreport',NULL,NULL),(4,17,'refundpayment',NULL,NULL),(4,16,'voidpayment',NULL,NULL),(4,19,'discount',NULL,NULL),(4,21,'addtips',NULL,NULL),(4,23,'changeprice',NULL,NULL),(4,24,'giftcard',NULL,NULL),(4,26,'voiditem',NULL,NULL),(4,18,'voidorder',NULL,NULL),(4,39,'recallvisible',NULL,NULL),(4,40,'gratuity',NULL,NULL),(4,38,'clockinout',NULL,NULL),(4,37,'dutyfree',NULL,NULL),(4,35,'closebatch',NULL,NULL),(4,36,'recallreport',NULL,NULL),(4,28,'creditpay',NULL,NULL),(4,25,'cashpay',NULL,NULL),(4,29,'giftcardpay',NULL,NULL),(4,27,'virtualpay',NULL,NULL);
/*!40000 ALTER TABLE `system_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_role_users`
--

DROP TABLE IF EXISTS `system_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_role_users` (
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `system_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_role_users`
--

LOCK TABLES `system_role_users` WRITE;
/*!40000 ALTER TABLE `system_role_users` DISABLE KEYS */;
INSERT  IGNORE INTO `system_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES (4,48,NULL,NULL),(5,48,NULL,NULL),(6,48,NULL,NULL),(8,48,NULL,NULL),(9,48,NULL,NULL),(12,48,NULL,NULL),(14,48,NULL,NULL),(15,48,NULL,NULL),(16,48,NULL,NULL),(17,48,NULL,NULL),(19,48,NULL,NULL),(4,50,NULL,NULL),(5,50,NULL,NULL),(4,51,NULL,NULL),(5,51,NULL,NULL),(5,47,NULL,NULL),(20,11,'2021-04-19 19:28:47','2021-04-19 19:28:47'),(21,59,'2021-04-21 14:18:57','2021-04-21 14:18:57'),(6,62,'2021-06-01 14:27:40','2021-06-01 14:27:40'),(4,52,'2021-06-08 14:46:09','2021-06-08 14:46:09'),(20,53,'2021-06-14 17:41:44','2021-06-14 17:41:44'),(20,10,'2021-07-14 17:31:29','2021-07-14 17:31:29'),(4,43,'2021-08-09 19:35:00','2021-08-09 19:35:00'),(5,58,'2021-08-09 19:35:03','2021-08-09 19:35:03'),(4,60,'2021-08-09 19:35:05','2021-08-09 19:35:05'),(5,61,'2021-08-09 19:35:07','2021-08-09 19:35:07'),(5,63,'2021-08-09 19:35:10','2021-08-09 19:35:10'),(6,9,'2021-08-10 16:48:57','2021-08-10 16:48:57');
/*!40000 ALTER TABLE `system_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_roles`
--

DROP TABLE IF EXISTS `system_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `system_roles_name_unique` (`name`),
  UNIQUE KEY `system_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_roles`
--

LOCK TABLES `system_roles` WRITE;
/*!40000 ALTER TABLE `system_roles` DISABLE KEYS */;
INSERT  IGNORE INTO `system_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES (4,'Owner','Owner',NULL,NULL),(5,'Cashier','Cashier',NULL,NULL),(6,'Server','Server',NULL,NULL),(8,'Bartender','Bartender',NULL,NULL),(20,'Host','Host',NULL,NULL);
/*!40000 ALTER TABLE `system_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-23 11:49:23
