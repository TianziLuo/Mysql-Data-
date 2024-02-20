CREATE DATABASE  IF NOT EXISTS `userve` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `userve`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: userve
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salt` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `icon` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pin_UNIQUE` (`pin`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (0,'admin',NULL,NULL,'UP2018','UP2018',NULL,NULL,NULL,1,'2022-06-20 17:36:00','2022-06-21 13:58:31');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_access_tokens`
--

DROP TABLE IF EXISTS `admin_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_access_tokens`
--

LOCK TABLES `admin_access_tokens` WRITE;
/*!40000 ALTER TABLE `admin_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_histories`
--

DROP TABLE IF EXISTS `batch_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_histories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `station_id` int unsigned DEFAULT NULL,
  `terminal_id` int unsigned DEFAULT NULL,
  `operator_id` int unsigned DEFAULT NULL,
  `transaction` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `tips` decimal(10,2) DEFAULT NULL,
  `creditcard` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_histories`
--

LOCK TABLES `batch_histories` WRITE;
/*!40000 ALTER TABLE `batch_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_update`
--

DROP TABLE IF EXISTS `cache_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_update` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_update`
--

LOCK TABLES `cache_update` WRITE;
/*!40000 ALTER TABLE `cache_update` DISABLE KEYS */;
INSERT INTO `cache_update` VALUES (1,'1610384932');
/*!40000 ALTER TABLE `cache_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_history`
--

DROP TABLE IF EXISTS `call_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `call_history` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `line` varchar(45) DEFAULT NULL,
  `status` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `STATUS` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_history`
--

LOCK TABLES `call_history` WRITE;
/*!40000 ALTER TABLE `call_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `call_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clock_in_out`
--

DROP TABLE IF EXISTS `clock_in_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clock_in_out` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `operator_name` varchar(45) NOT NULL,
  `operator_id` int unsigned NOT NULL,
  `clock_in` timestamp NOT NULL,
  `clock_out` timestamp NULL DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clock_in_out`
--

LOCK TABLES `clock_in_out` WRITE;
/*!40000 ALTER TABLE `clock_in_out` DISABLE KEYS */;
INSERT INTO `clock_in_out` VALUES (1,'Owner',43,'2023-02-27 16:40:53','2023-02-27 16:40:59',1,'2023-02-27 16:40:52','2023-02-27 16:40:59'),(2,'Owner',43,'2023-03-02 14:13:08','2023-03-02 14:13:16',1,'2023-03-02 14:13:08','2023-03-02 14:13:16'),(3,'Owner',43,'2023-03-02 14:13:36',NULL,1,'2023-03-02 14:13:35','2023-03-02 14:13:35'),(4,'Lynn',82,'2023-03-02 19:04:36','2023-03-08 16:00:02',1,'2023-03-02 19:04:35','2023-03-08 16:00:01'),(5,'Maila',83,'2023-03-04 15:56:02','2023-03-04 23:31:08',1,'2023-03-04 15:56:02','2023-03-04 23:31:07'),(6,'Joanna',84,'2023-03-04 15:56:19','2023-03-04 23:31:15',1,'2023-03-04 15:56:19','2023-03-04 23:31:15'),(7,'Joanna',84,'2023-03-06 15:49:08','2023-03-07 15:53:22',1,'2023-03-06 15:49:08','2023-03-07 15:53:21'),(8,'Allyssa',85,'2023-03-06 15:50:13','2023-03-07 01:08:29',1,'2023-03-06 15:50:13','2023-03-07 01:08:28'),(9,'Joanna',84,'2023-03-07 15:53:34','2023-03-08 00:34:19',1,'2023-03-07 15:53:33','2023-03-08 00:34:18'),(10,'Lynn',82,'2023-03-08 16:00:11','2023-03-09 00:34:17',1,'2023-03-08 16:00:11','2023-03-09 00:34:17'),(11,'Lynn',82,'2023-03-09 19:01:17','2023-03-11 18:38:06',1,'2023-03-09 19:01:16','2023-03-11 18:38:05'),(12,'Maila',83,'2023-03-10 17:10:21',NULL,1,'2023-03-10 17:10:20','2023-03-10 17:10:20'),(13,'Joanna',84,'2023-03-11 15:53:31','2023-03-11 23:40:49',1,'2023-03-11 15:53:30','2023-03-11 23:40:49'),(14,'Lynn',82,'2023-03-11 18:38:21','2023-03-12 00:42:21',1,'2023-03-11 18:38:20','2023-03-12 00:42:21'),(15,'Joanna',84,'2023-03-12 14:50:33','2023-03-12 22:01:22',1,'2023-03-12 14:50:32','2023-03-12 22:01:21'),(16,'Lynn',82,'2023-03-12 15:58:48','2023-03-12 23:38:30',1,'2023-03-12 15:58:47','2023-03-12 23:38:30'),(17,'Una',85,'2023-03-13 15:50:44','2023-03-13 23:42:18',1,'2023-03-13 15:50:43','2023-03-13 23:42:18'),(18,'Maila',83,'2023-03-14 15:39:44','2023-03-18 15:10:39',1,'2023-03-14 15:39:44','2023-03-18 15:10:38'),(19,'Haoran',87,'2023-03-14 23:09:14','2023-03-14 23:09:19',1,'2023-03-14 23:09:13','2023-03-14 23:09:19'),(20,'Joanna',84,'2023-03-15 14:46:57','2023-03-15 23:30:27',1,'2023-03-15 14:46:56','2023-03-15 23:30:26'),(21,'Una',85,'2023-03-15 15:45:19','2023-03-15 23:40:51',1,'2023-03-15 15:45:18','2023-03-15 23:40:51'),(22,'Una',85,'2023-03-16 15:41:28','2023-03-17 00:11:36',1,'2023-03-16 15:41:28','2023-03-17 00:11:36'),(23,'Joanna',84,'2023-03-16 16:54:24','2023-03-16 22:32:50',1,'2023-03-16 16:54:24','2023-03-16 22:32:49'),(24,'Una',85,'2023-03-17 15:48:59','2023-03-18 01:22:14',1,'2023-03-17 15:48:59','2023-03-18 01:22:14'),(25,'Joanna',84,'2023-03-17 16:53:29',NULL,1,'2023-03-17 16:53:29','2023-03-17 16:53:29'),(26,'Maila',83,'2023-03-18 15:10:52','2023-03-21 15:39:40',1,'2023-03-18 15:10:52','2023-03-21 15:39:39'),(27,'Una',85,'2023-03-18 17:03:55','2023-03-19 01:24:47',1,'2023-03-18 17:03:55','2023-03-19 01:24:46'),(28,'Una',85,'2023-03-19 16:14:26','2023-03-20 01:26:07',1,'2023-03-19 16:14:26','2023-03-20 01:26:06'),(29,'Owner',43,'2023-03-20 15:22:33','2023-03-24 15:38:37',1,'2023-03-20 15:22:33','2023-03-24 15:38:37'),(30,'Lynn',82,'2023-03-20 16:10:07','2023-03-21 00:51:03',1,'2023-03-20 16:10:07','2023-03-21 00:51:02'),(31,'Maila',83,'2023-03-21 15:39:49','2023-03-22 00:31:33',1,'2023-03-21 15:39:49','2023-03-22 00:31:33'),(32,'Una',85,'2023-03-22 15:46:35','2023-03-23 00:54:06',1,'2023-03-22 15:46:34','2023-03-23 00:54:05'),(33,'Lynn',82,'2023-03-23 15:39:46','2023-03-23 15:39:55',1,'2023-03-23 15:39:46','2023-03-23 15:39:54'),(34,'Una',85,'2023-03-23 15:40:00','2023-03-24 01:26:37',1,'2023-03-23 15:40:00','2023-03-24 01:26:36'),(35,'Maila',83,'2023-03-24 15:38:41','2023-03-24 23:28:24',1,'2023-03-24 15:38:40','2023-03-24 23:28:23'),(36,'Una',85,'2023-03-24 18:05:41','2023-03-25 01:24:21',1,'2023-03-24 18:05:41','2023-03-25 01:24:20'),(37,'Maila',83,'2023-03-25 15:32:26','2023-03-25 21:31:23',1,'2023-03-25 15:32:25','2023-03-25 21:31:23'),(38,'Lynn',82,'2023-03-25 17:08:54','2023-03-25 23:55:49',1,'2023-03-25 17:08:54','2023-03-25 23:55:49'),(39,'Una',85,'2023-03-25 20:23:58','2023-03-26 01:21:12',1,'2023-03-25 20:23:58','2023-03-26 01:21:11'),(40,'Lynn',82,'2023-03-26 16:03:53','2023-03-26 23:01:12',1,'2023-03-26 16:03:53','2023-03-26 23:01:11'),(41,'Una',85,'2023-03-26 20:57:31','2023-03-27 01:08:46',1,'2023-03-26 20:57:30','2023-03-27 01:08:46'),(42,'Lynn',82,'2023-03-27 14:54:36','2023-03-27 23:10:36',1,'2023-03-27 14:54:35','2023-03-27 23:10:35'),(43,'Una',85,'2023-03-27 16:13:17',NULL,1,'2023-03-27 16:13:16','2023-03-27 16:13:16'),(44,'Maila',83,'2023-03-28 15:54:48','2023-03-29 00:28:33',1,'2023-03-28 15:54:47','2023-03-29 00:28:33');
/*!40000 ALTER TABLE `clock_in_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `coupon_type` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '1、fixed 2、percent',
  `coupon_number` varchar(45) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `range` varchar(100) DEFAULT NULL,
  `value` decimal(10,2) unsigned DEFAULT '0.00',
  `minimum` decimal(10,2) DEFAULT '0.00',
  `quantity` varchar(45) NOT NULL DEFAULT '-1',
  `start_date` timestamp NULL DEFAULT NULL,
  `expire_date` timestamp NULL DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupon_number_UNIQUE` (`coupon_number`),
  KEY `CODE` (`coupon_number`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (3,1,'dfsd1312','coupon','[\"customFeeTotal\",\"deliveryFeeTotal\",\"cdpFeeTotal\",\"tipsTotal\"]',3.00,4.00,'-1','2022-01-13 10:00:00','2022-01-13 10:00:00',1,'2022-01-18 21:33:19','2022-01-18 21:33:19'),(4,1,'dfsd12','coupon','[\"customFeeTotal\",\"deliveryFeeTotal\",\"cdpFeeTotal\"]',10.00,40.00,'5','2022-01-13 10:00:00','2022-01-13 10:00:00',1,'2022-01-18 21:33:41','2024-01-18 18:43:12');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(145) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  `optional` varchar(45) DEFAULT NULL,
  `lat` varchar(45) DEFAULT NULL,
  `lng` varchar(45) DEFAULT NULL,
  `notes` varchar(245) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salt` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_card`
--

DROP TABLE IF EXISTS `gift_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gift_card` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `card` varchar(45) NOT NULL,
  `type` tinyint DEFAULT '1',
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `pin` varchar(45) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `expired` date DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `card_UNIQUE` (`card`),
  KEY `STATUS` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_card`
--

LOCK TABLES `gift_card` WRITE;
/*!40000 ALTER TABLE `gift_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_card_history`
--

DROP TABLE IF EXISTS `gift_card_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gift_card_history` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint DEFAULT '1',
  `card_id` int unsigned DEFAULT NULL,
  `card` varchar(45) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `price` decimal(10,2) DEFAULT '0.00',
  `balance` decimal(10,2) DEFAULT '0.00',
  `order_id` int unsigned DEFAULT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `STATUS` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_card_history`
--

LOCK TABLES `gift_card_history` WRITE;
/*!40000 ALTER TABLE `gift_card_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_card_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_card_lists`
--

DROP TABLE IF EXISTS `gift_card_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gift_card_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `price` decimal(10,2) DEFAULT '0.00',
  `operator_id` int DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `STATUS` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_card_lists`
--

LOCK TABLES `gift_card_lists` WRITE;
/*!40000 ALTER TABLE `gift_card_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_card_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house_account`
--

DROP TABLE IF EXISTS `house_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `house_account` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `notes` varchar(245) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_account`
--

LOCK TABLES `house_account` WRITE;
/*!40000 ALTER TABLE `house_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `house_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_lists`
--

DROP TABLE IF EXISTS `language_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ref_id` int unsigned NOT NULL,
  `name` varchar(145) NOT NULL,
  `form_slug` tinyint unsigned NOT NULL,
  `language` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `language` (`language`,`ref_id`,`form_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=391 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_lists`
--

LOCK TABLES `language_lists` WRITE;
/*!40000 ALTER TABLE `language_lists` DISABLE KEYS */;
INSERT INTO `language_lists` VALUES (1,1,'Menu',1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(2,1,'Menu',1,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(3,1,'Appertizers',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(4,2,'Soups',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(5,3,'Chef Recommendations',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(6,4,'Moo Shu',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(7,5,'Fish',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(8,6,'Shrimp',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(9,7,'Beef',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(10,8,'Rice',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(11,9,'Lo Mein',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(12,10,'Specialty Hoodles',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(13,11,'Chicken',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(14,12,'Pork',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(15,13,'Vegetables',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(16,14,'Chop Suey',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(17,15,'Egg Foo Young',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(18,16,'Family  Style Dinner',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(19,17,'Lunch Specialties',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(20,18,'Dessert',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(21,19,'Drinks',2,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(22,1,'Spring Rolls(4)',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(23,1,'Spring Rolls(4)',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(24,2,'Fried Wontons(12)',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(25,2,'Fried Wontons(12)',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(26,3,'New York Style Chicken Egg Rolls(4)',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(27,3,'New York Style Chicken Egg Rolls(4)',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(28,4,'Fried Cheese Wontons(4)',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(29,4,'Fried Cheese Wontons(4)',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(30,5,'B.B.Q Pork Bun(3)',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(31,5,'B.B.Q Pork Bun(3)',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(32,6,'Pot Stickers(8)',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(33,6,'Pot Stickers(8)',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(34,7,'Steamed Dumplings(8)',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(35,7,'Steamed Dumplings(8)',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(36,8,'B.B.Q. Pork',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(37,8,'B.B.Q. Pork',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(38,9,'Fried Shrimp(10)',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(39,9,'Fried Shrimp(10)',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(40,10,'B.B.Q. Spareribs(4)',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(41,10,'B.B.Q. Spareribs(4)',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(42,11,'Salt & Pepper Chicken Wings(8)',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(43,11,'Salt & Pepper Chicken Wings(8)',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(44,12,'Chinese Chicken Salad',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(45,12,'Chinese Chicken Salad',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(46,13,'Pu Pu Platter',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(47,13,'Pu Pu Platter',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(48,14,'Chicken Lettuce Wrap',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(49,14,'Chicken Lettuce Wrap',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(50,15,'Egg Flower Soup',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(51,15,'Egg Flower Soup',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(52,16,'Hot & Sour Soup',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(53,16,'Hot & Sour Soup',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(54,17,'Chicken Corn Soup',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(55,17,'Chicken Corn Soup',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(56,18,'Hot & Sour Gourmet Wonton  Soup',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(57,18,'Hot & Sour Gourmet Wonton  Soup',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(58,19,'Gourmet Wonton Soup',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(59,19,'Gourmet Wonton Soup',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(60,20,'Vegetable Sizzling Soup',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(61,20,'Vegetable Sizzling Soup',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(62,21,'Three Flavor Sizzling Soup',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(63,21,'Three Flavor Sizzling Soup',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(64,22,'Shrimp & Sizzling Soup',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(65,22,'Shrimp & Sizzling Soup',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(66,23,'Jumbo Scallops in Black Bean Sauce',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(67,23,'Jumbo Scallops in Black Bean Sauce',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(68,24,'Kung Pao Scallop',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(69,24,'Kung Pao Scallop',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(70,25,'Jumbo Scallops with Hot Pepper',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(71,25,'Jumbo Scallops with Hot Pepper',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(72,26,'Stir-Fried Spicy Tofu',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(73,26,'Stir-Fried Spicy Tofu',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(74,27,'Deep Fried Spicy Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(75,27,'Deep Fried Spicy Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(76,28,'General Tao\'s Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(77,28,'General Tao\'s Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(78,29,'Chicken Wins with Honey & Ginger Sauce',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(79,29,'Chicken Wins with Honey & Ginger Sauce',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(80,30,'Orange Flavor Chicken ',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(81,30,'Orange Flavor Chicken ',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(82,31,'Orange Flavor Beef',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(83,31,'Orange Flavor Beef',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(84,32,'Lemon Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(85,32,'Lemon Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(86,33,'Chinese Greens with Chicken ',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(87,33,'Chinese Greens with Chicken ',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(88,34,'Chinese Greens with Beef ',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(89,34,'Chinese Greens with Beef ',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(90,35,'Chinese Greens with B.B.Q. Pork',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(91,35,'Chinese Greens with B.B.Q. Pork',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(92,36,'Deep Fried Pork Chop',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(93,36,'Deep Fried Pork Chop',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(94,37,'Peking Style Pork Chop',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(95,37,'Peking Style Pork Chop',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(96,38,'Honey Walnut Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(97,38,'Honey Walnut Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(98,39,'Teriyaki Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(99,39,'Teriyaki Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(100,40,'Kung Pao Combo',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(101,40,'Kung Pao Combo',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(102,41,'Happy Family',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(103,41,'Happy Family',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(104,42,'Smoked Tea Duck',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(105,42,'Smoked Tea Duck',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(106,43,'Stir-Fried Spicy Fish Filet',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(107,43,'Stir-Fried Spicy Fish Filet',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(108,44,'Honey Walnut Shrimp',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(109,44,'Honey Walnut Shrimp',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(110,45,'Combination Seafood Platter',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(111,45,'Combination Seafood Platter',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(112,46,'Moo Shu Vegetable',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(113,46,'Moo Shu Vegetable',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(114,47,'Moo Shu Pork',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(115,47,'Moo Shu Pork',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(116,48,'Moo Shu Beef',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(117,48,'Moo Shu Beef',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(118,49,'Moo Shu Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(119,49,'Moo Shu Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(120,50,'Extra Moo Shu',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(121,50,'Extra Moo Shu',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(122,51,'Aromatic Fish Filet',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(123,51,'Aromatic Fish Filet',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(124,52,'Rock Cod Filet with Black Bean Sauce',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(125,52,'Rock Cod Filet with Black Bean Sauce',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(126,53,'Kung Pao Rock Cod Filet',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(127,53,'Kung Pao Rock Cod Filet',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(128,54,'Rock cod Filet with Garlic Sauce',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(129,54,'Rock cod Filet with Garlic Sauce',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(130,55,'Fish Filet with Mixed Vegetables',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(131,55,'Fish Filet with Mixed Vegetables',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(132,56,'Broccoli Shrimp',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(133,56,'Broccoli Shrimp',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(134,57,'Sweet & Sour Shrimp',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(135,57,'Sweet & Sour Shrimp',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(136,58,'Cashew Nut Shrimp',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(137,58,'Cashew Nut Shrimp',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(138,59,'Fresh String Beans Shrimp',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(139,59,'Fresh String Beans Shrimp',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(140,60,'Garlic Sauce Shrimp',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(141,60,'Garlic Sauce Shrimp',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(142,61,'Kung Pao Shrimp',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(143,61,'Kung Pao Shrimp',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(144,62,'Black Bean Sauce Shrimp',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(145,62,'Black Bean Sauce Shrimp',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(146,63,'Lobster Sauce Shrimp',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(147,63,'Lobster Sauce Shrimp',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(148,64,'Snow Peas Shrimp',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(149,64,'Snow Peas Shrimp',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(150,65,'Vegetables Shrimp',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(151,65,'Vegetables Shrimp',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(152,66,'Salt & Pepper Shrimp',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(153,66,'Salt & Pepper Shrimp',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(154,67,'Chinese Greens with Shrimp',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(155,67,'Chinese Greens with Shrimp',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(156,68,'Aromatic Shrimps',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(157,68,'Aromatic Shrimps',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(158,69,'Broccoli in Brown Sauce Beef',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(159,69,'Broccoli in Brown Sauce Beef',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(160,70,'Snow Peas Beef',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(161,70,'Snow Peas Beef',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(162,71,'Fresh String Bean Beef',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(163,71,'Fresh String Bean Beef',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(164,72,'Kung Pao Beef',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(165,72,'Kung Pao Beef',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(166,73,'Garlic Sauce Beef',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(167,73,'Garlic Sauce Beef',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(168,74,'Hunan Spicy Beef with Onion & Bell Pepper',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(169,74,'Hunan Spicy Beef with Onion & Bell Pepper',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(170,75,'Mongolian Beef',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(171,75,'Mongolian Beef',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(172,76,'Ginger & Green Scallion',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(173,76,'Ginger & Green Scallion',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(174,77,'Sesame Beef',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(175,77,'Sesame Beef',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(176,78,'Black Pepper Beef',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(177,78,'Black Pepper Beef',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(178,79,'Fried Rice',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(179,79,'Fried Rice',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(180,80,'Shrimp Fried Rice',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(181,80,'Shrimp Fried Rice',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(182,81,'Combo Fried Rice',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(183,81,'Combo Fried Rice',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(184,82,'Brown Rice',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(185,82,'Brown Rice',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(186,83,'Steamed Rice',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(187,83,'Steamed Rice',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(188,84,'Lo Mien',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(189,84,'Lo Mien',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(190,85,'Plain Lo Mien',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(191,85,'Plain Lo Mien',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(192,86,'Shrimp Lo Mien',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(193,86,'Shrimp Lo Mien',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(194,87,'Combination Lo Mien',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(195,87,'Combination Lo Mien',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(196,88,'Singapore Style Vermicelli Rice Noodle',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(197,88,'Singapore Style Vermicelli Rice Noodle',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(198,89,'House Pan Fried Noodles',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(199,89,'House Pan Fried Noodles',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(200,90,'Pan Fried Noodles',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(201,90,'Pan Fried Noodles',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(202,91,'Combo Chow Fun',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(203,91,'Combo Chow Fun',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(204,92,'Chow Fun with Shrimp',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(205,92,'Chow Fun with Shrimp',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(206,93,'Chow Fun',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(207,93,'Chow Fun',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(208,94,'Hot Pepper Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(209,94,'Hot Pepper Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(210,95,'Almond Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(211,95,'Almond Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(212,96,'Fresh String Bean Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(213,96,'Fresh String Bean Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(214,97,' Cashew Nut Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(215,97,' Cashew Nut Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(216,98,'Sweet & Sour Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(217,98,'Sweet & Sour Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(218,99,'Broccoli with Brown Sauce Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(219,99,'Broccoli with Brown Sauce Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(220,100,'Spinach with White Garlic Sauce Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(221,100,'Spinach with White Garlic Sauce Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(222,101,'Kung Pao Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(223,101,'Kung Pao Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(224,102,'Garlic Sauce Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(225,102,'Garlic Sauce Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(226,103,'Ginger & Green Scallion  Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(227,103,'Ginger & Green Scallion  Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(228,104,'Mongolian Chicken ',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(229,104,'Mongolian Chicken ',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(230,105,'Sesame Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(231,105,'Sesame Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(232,106,'Eggplant with Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(233,106,'Eggplant with Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(234,107,'Aromatic Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(235,107,'Aromatic Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(236,108,'Snow Peas with B.B.Q. Pork',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(237,108,'Snow Peas with B.B.Q. Pork',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(238,109,'Sweet & Sour Pork ',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(239,109,'Sweet & Sour Pork ',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(240,110,'Szechuan Shredded Pork',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(241,110,'Szechuan Shredded Pork',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(242,111,'Broccoli with B.B.Q. Pork',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(243,111,'Broccoli with B.B.Q. Pork',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(244,112,'Pork with Fresh String Beans in Brown Sauce',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(245,112,'Pork with Fresh String Beans in Brown Sauce',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(246,113,'Almond with B.B.Q. Pork',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(247,113,'Almond with B.B.Q. Pork',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(248,114,'Buddha\'s Delight',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(249,114,'Buddha\'s Delight',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(250,115,'Eggplant with Brown Sauce',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(251,115,'Eggplant with Brown Sauce',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(252,116,'Eggplant with Garlic Sauce',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(253,116,'Eggplant with Garlic Sauce',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(254,117,'Fresh Broccoli with Garlic Sauce Broccoli',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(255,117,'Fresh Broccoli with Garlic Sauce Broccoli',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(256,118,'Sauteed Spinach',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(257,118,'Sauteed Spinach',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(258,119,'Snow Peas & Water Chestnuts',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(259,119,'Snow Peas & Water Chestnuts',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(260,120,'Ma Po Tofu',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(261,120,'Ma Po Tofu',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(262,121,'Sauteed Fresh String Bean',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(263,121,'Sauteed Fresh String Bean',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(264,122,'Kung Pao Vegetable',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(265,122,'Kung Pao Vegetable',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(266,123,'Sweet & Sour Bean Curd',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(267,123,'Sweet & Sour Bean Curd',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(268,124,'Lemon Bean Curd',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(269,124,'Lemon Bean Curd',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(270,125,'Kung Pao Bean Curd',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(271,125,'Kung Pao Bean Curd',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(272,126,'Orange Bean Curd',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(273,126,'Orange Bean Curd',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(274,127,'Sauteed Chinese Green',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(275,127,'Sauteed Chinese Green',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(276,128,'Curry String Bean with Fried Tofu',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(277,128,'Curry String Bean with Fried Tofu',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(278,129,'Chop Suey ',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(279,129,'Chop Suey ',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(280,130,'Chop Suey Combo',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(281,130,'Chop Suey Combo',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(282,131,'Shrimp Chop Suey ',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(283,131,'Shrimp Chop Suey ',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(284,132,'Egg Foo Young ',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(285,132,'Egg Foo Young ',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(286,133,'Shrimp Egg Foo Young',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(287,133,'Shrimp Egg Foo Young',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(288,134,'Combo Egg Foo Young',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(289,134,'Combo Egg Foo Young',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(290,135,'Combo A',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(291,135,'Combo A',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(292,136,'Combo B',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(293,136,'Combo B',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(294,137,'L1. Fresh String Bean with Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(295,137,'L1. Fresh String Bean with Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(296,138,'L1. Fresh String Bean with Beef ',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(297,138,'L1. Fresh String Bean with Beef ',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(298,139,'L1. Fresh String Bean with Pork ',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(299,139,'L1. Fresh String Bean with Pork ',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(300,140,'L2. Broccoli with Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(301,140,'L2. Broccoli with Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(302,141,'L2. Broccoli with Beef',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(303,141,'L2. Broccoli with Beef',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(304,142,'L2. Broccoli with Pork',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(305,142,'L2. Broccoli with Pork',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(306,143,'L3. Snow Peas with Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(307,143,'L3. Snow Peas with Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(308,144,'L3. Snow Peas with Beef',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(309,144,'L3. Snow Peas with Beef',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(310,145,'L3. Snow Peas with Pork',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(311,145,'L3. Snow Peas with Pork',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(312,146,'L4. Sweet & Sour Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(313,146,'L4. Sweet & Sour Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(314,147,'L4. Sweet & Sour Pork',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(315,147,'L4. Sweet & Sour Pork',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(316,148,'L5. Orange Flavor Chicken ',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(317,148,'L5. Orange Flavor Chicken ',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(318,149,'L5. Orange Flavor Beef',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(319,149,'L5. Orange Flavor Beef',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(320,150,'L6. Cashew Nut Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(321,150,'L6. Cashew Nut Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(322,151,'L7. Kung Pao Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(323,151,'L7. Kung Pao Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(324,152,'L8. Chicken Wings with Honey & Ginger Sauce',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(325,152,'L8. Chicken Wings with Honey & Ginger Sauce',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(326,153,'L9. Moo Goo Gai Pan',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(327,153,'L9. Moo Goo Gai Pan',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(328,154,'L10. Curry Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(329,154,'L10. Curry Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(330,155,'L11. Lemon Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(331,155,'L11. Lemon Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(332,156,'L12. General Tso\'s Chicken',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(333,156,'L12. General Tso\'s Chicken',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(334,157,'L13. Shredded Pork with Garlic Sauce',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(335,157,'L13. Shredded Pork with Garlic Sauce',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(336,158,'L14. Beef with Garlic Sauce',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(337,158,'L14. Beef with Garlic Sauce',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(338,159,'L15. Stir Fried Spicy Bean Curd ',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(339,159,'L15. Stir Fried Spicy Bean Curd ',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(340,160,'L16. Eggplant with Garlic sauce',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(341,160,'L16. Eggplant with Garlic sauce',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(342,161,'L17. Orange Flavor Bean Curd',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(343,161,'L17. Orange Flavor Bean Curd',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(344,162,'L18. Mixed Vegetable',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(345,162,'L18. Mixed Vegetable',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(346,163,'L19. Kung Pao Vegetables',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(347,163,'L19. Kung Pao Vegetables',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(348,164,'L20. Shrimp Chop Suey',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(349,164,'L20. Shrimp Chop Suey',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(350,165,'L21. Shrimp with Lobster Sauce ',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(351,165,'L21. Shrimp with Lobster Sauce ',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(352,166,'L22. Kung Pao Shrimp',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(353,166,'L22. Kung Pao Shrimp',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(354,167,'L23. Shrimp with Black Bean Sauce ',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(355,167,'L23. Shrimp with Black Bean Sauce ',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(356,168,'L24. Shrimp with Mixed Vegetable ',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(357,168,'L24. Shrimp with Mixed Vegetable ',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(358,169,'L25. Shrimp with Snow Peas',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(359,169,'L25. Shrimp with Snow Peas',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(360,170,'Almond Cookie (5)',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(361,170,'Almond Cookie (5)',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(362,171,'Crispy Noodle',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(363,171,'Crispy Noodle',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(364,172,'Tiramisu Cake',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(365,172,'Tiramisu Cake',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(366,173,'Carrots Cake',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(367,173,'Carrots Cake',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(368,174,'Cheese Cake',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(369,174,'Cheese Cake',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(370,175,'Strawberry Cheese Cake',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(371,175,'Strawberry Cheese Cake',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(372,176,'Soda',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(373,176,'Soda',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(374,177,'Ice Tea (unsweetened)',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(375,177,'Ice Tea (unsweetened)',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(376,178,'Diet Coke',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(377,178,'Diet Coke',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(378,179,'Thai Tea',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(379,179,'Thai Tea',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(380,180,'Root Beer',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(381,180,'Root Beer',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(382,181,'Bottle Water',3,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(383,181,'Bottle Water',3,2,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(384,1,'modifier',5,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(385,1,'Coke',6,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(386,2,'Pepsi',6,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(387,3,'Diet Coke',6,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(388,4,'Dr Pepper',6,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(389,5,'Sprite',6,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(390,6,'Orange Soda',6,1,'2024-02-13 01:35:40','2024-02-13 01:35:40');
/*!40000 ALTER TABLE `language_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_system_keys`
--

DROP TABLE IF EXISTS `language_system_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_system_keys` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `group` varchar(45) DEFAULT NULL,
  `title` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`group`,`title`)
) ENGINE=InnoDB AUTO_INCREMENT=1312 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_system_keys`
--

LOCK TABLES `language_system_keys` WRITE;
/*!40000 ALTER TABLE `language_system_keys` DISABLE KEYS */;
INSERT INTO `language_system_keys` VALUES (1,NULL,'Type','Dine_In','2021-03-29 20:54:36','2021-03-30 14:40:11'),(2,NULL,'Type','To_Go','2021-03-29 20:54:36','2021-03-30 14:40:11'),(3,NULL,'Type','Pick_Up','2021-03-29 20:54:36','2021-03-30 14:40:11'),(4,NULL,'Type','Delivery','2021-03-29 20:54:36','2021-03-30 14:40:11'),(5,NULL,'Type','Drive_Thru','2021-03-29 20:54:36','2021-03-30 14:40:11'),(6,NULL,'Type','Retail','2021-03-29 20:54:36','2021-03-30 14:40:11'),(7,NULL,'System','Report','2021-03-29 22:47:57','2021-03-30 14:38:16'),(8,NULL,'System','Menu','2021-03-29 22:47:57','2021-03-30 14:38:16'),(9,NULL,'System','OrderType1','2021-03-30 15:53:32','2021-03-30 15:53:32'),(10,NULL,'System','OrderType2','2021-03-30 15:53:32','2021-03-30 15:53:32'),(11,NULL,'System','OrderType3','2021-03-30 15:53:32','2021-03-30 15:53:32'),(12,NULL,'System','OrderType4','2021-03-30 15:53:32','2021-03-30 15:53:32'),(13,NULL,'System','OrderType5','2021-03-30 15:53:32','2021-03-30 15:53:32'),(14,NULL,'System','OrderType6','2021-03-30 15:53:32','2021-03-30 15:53:32'),(15,NULL,'System','OrderType7','2021-03-30 15:53:32','2021-03-30 15:53:32'),(16,NULL,'System','Recall','2021-03-30 15:56:04','2021-03-30 15:56:04'),(17,NULL,'System','CashDrawer','2021-03-30 15:56:04','2021-03-30 15:56:04'),(18,NULL,'System','CallIdHistory','2021-03-30 15:56:04','2021-03-30 15:56:04'),(19,NULL,'System','GiftCard','2021-03-30 15:56:04','2021-03-30 15:56:04'),(20,NULL,'Permission','StaffReport','2021-03-30 15:56:04','2021-04-05 20:19:19'),(21,NULL,'System','Settlement','2021-03-30 15:56:04','2021-03-30 15:56:04'),(23,NULL,'System','OnlineOrder','2021-03-30 15:56:04','2021-03-30 15:56:04'),(24,NULL,'System','BackOffice','2021-03-30 15:56:04','2021-03-30 15:56:04'),(25,NULL,'System','HappyHour','2021-03-30 16:01:04','2021-03-30 16:01:04'),(26,NULL,'System','Promotion','2021-03-30 16:01:04','2021-03-30 16:01:04'),(27,NULL,'System','Attendance','2021-03-30 16:01:04','2021-03-30 16:01:04'),(28,NULL,'System','Confirm','2021-03-30 16:01:04','2021-03-30 16:01:04'),(29,NULL,'System','Refund','2021-03-30 16:01:04','2021-03-30 16:01:04'),(30,NULL,'Permission','VoidItem','2021-03-30 16:01:04','2021-04-05 20:19:19'),(31,NULL,'Setting','VoidPayment','2021-03-30 16:01:04','2021-04-01 22:10:30'),(32,NULL,'Setting','VoidOrder','2021-03-30 16:01:04','2021-04-01 22:10:48'),(33,NULL,'System','ExitHome','2021-03-30 16:01:04','2021-03-30 16:01:04'),(34,NULL,'Setting','ReturnHome','2021-03-30 16:01:04','2021-04-01 22:02:56'),(35,NULL,'System','DefaultCredit','2021-03-30 16:01:04','2021-03-30 16:01:04'),(36,NULL,'System','DefaultCash','2021-03-30 16:01:04','2021-03-30 16:01:04'),(38,NULL,'System','Default','2021-03-30 16:01:04','2021-03-30 16:01:04'),(39,NULL,'System','Language','2021-03-30 16:06:05','2021-03-30 16:06:05'),(40,NULL,'System','Status','2021-03-30 16:06:05','2021-03-30 16:06:05'),(41,NULL,'System','Email','2021-03-30 16:06:05','2021-03-30 16:06:05'),(42,NULL,'System','Phone','2021-03-30 16:06:05','2021-03-30 16:06:05'),(43,NULL,'System','Date','2021-03-30 16:06:05','2021-03-30 16:06:05'),(44,NULL,'System','CustomerInfo','2021-03-30 16:06:05','2021-03-30 16:06:05'),(45,NULL,'System','HomePage','2021-03-30 16:06:05','2021-03-30 16:06:05'),(46,NULL,'System','ClockIn','2021-03-30 16:06:05','2021-03-30 16:06:05'),(47,NULL,'System','ClockOut','2021-03-30 16:06:05','2021-03-30 16:06:05'),(48,NULL,'System','ClockInOut','2021-03-30 16:06:05','2021-03-30 16:06:05'),(49,NULL,'System','Count','2021-03-30 16:06:05','2021-03-30 16:06:05'),(50,NULL,'System','SYNC','2021-03-30 16:06:05','2021-03-30 16:06:05'),(51,NULL,'System','FontSize','2021-03-30 16:06:05','2021-03-30 16:06:05'),(52,NULL,'System','FontWeight','2021-03-30 16:06:05','2021-03-30 16:06:05'),(53,NULL,'System','Lock','2021-03-30 16:06:05','2021-03-30 16:06:05'),(54,NULL,'System','Hours','2021-03-30 16:06:05','2021-03-30 16:06:05'),(56,NULL,'System','Export','2021-03-30 16:06:05','2021-03-30 16:06:05'),(57,NULL,'System','StockIn','2021-03-30 16:06:05','2021-03-30 16:06:05'),(58,NULL,'System','StockOut','2021-03-30 16:06:05','2021-03-30 16:06:05'),(59,NULL,'System','RefilledValue','2021-03-30 16:08:17','2021-06-28 14:35:06'),(60,NULL,'System','Resend','2021-03-30 16:08:17','2021-03-30 16:08:17'),(61,NULL,'System','NewGiftCard','2021-03-30 16:08:17','2021-03-30 16:08:17'),(62,NULL,'Alert','LockIt','2021-03-30 16:08:17','2021-03-30 16:08:39'),(63,NULL,'System','Volume','2021-03-30 16:08:17','2021-03-30 16:08:17'),(64,NULL,'System','Sales','2021-03-30 16:08:17','2021-03-30 16:08:17'),(65,NULL,'System','Tomorrow','2021-03-30 16:08:17','2021-03-30 16:08:17'),(66,NULL,'System','View','2021-03-30 16:08:17','2021-03-30 16:08:17'),(67,NULL,'System','adjustfee','2021-03-30 16:08:17','2021-05-18 21:56:11'),(68,NULL,'System','TableSplit','2021-03-30 16:08:17','2021-03-30 16:08:17'),(70,NULL,'Alert','IsCancel','2021-03-30 16:13:25','2021-03-30 16:13:25'),(71,NULL,'Alert','IsReset','2021-03-30 16:13:25','2021-03-30 16:13:25'),(72,NULL,'Alert','IsResend','2021-03-30 16:13:25','2021-03-30 16:13:25'),(73,NULL,'System','BySeat','2021-03-30 16:13:25','2021-04-02 20:40:46'),(74,NULL,'System','Next','2021-03-30 16:13:25','2021-03-30 16:13:25'),(75,NULL,'System','Pre','2021-03-30 16:13:25','2021-03-30 16:13:25'),(76,NULL,'System','ProductType','2021-03-30 16:13:25','2021-03-30 16:13:25'),(77,NULL,'System','ItemId','2021-03-30 16:13:25','2021-03-30 16:13:25'),(78,NULL,'System','Paid','2021-03-30 16:13:25','2021-03-30 16:13:25'),(79,NULL,'System','Unpaid','2021-03-30 16:13:25','2021-03-30 16:13:25'),(80,NULL,'System','Second Screen','2021-03-30 16:13:25','2021-03-30 16:13:25'),(81,NULL,'System','Print','2021-03-30 16:13:25','2021-03-30 16:13:25'),(82,NULL,'System','SVC','2021-03-30 16:13:25','2021-03-30 16:13:25'),(83,NULL,'System','Today','2021-03-30 16:13:25','2021-03-30 16:13:25'),(84,NULL,'System','Yesterday','2021-03-30 16:13:25','2021-03-30 16:13:25'),(85,NULL,'System','ThisWeek','2021-03-30 16:13:25','2021-03-30 16:13:25'),(86,NULL,'System','LastWeek','2021-03-30 16:13:25','2021-03-30 16:13:25'),(87,NULL,'System','Move','2021-03-30 16:13:25','2021-03-30 16:13:25'),(88,NULL,'System','Clear','2021-03-30 16:13:25','2021-03-30 16:13:25'),(89,NULL,'System','Delay15Mins','2021-03-30 16:13:25','2021-03-30 16:13:25'),(90,NULL,'System','Delay30Mins','2021-03-30 16:13:25','2021-03-30 16:13:25'),(91,NULL,'System','Delay60Mins','2021-03-30 16:13:25','2021-03-30 16:13:25'),(92,NULL,'System','CheckIn','2021-03-30 16:13:25','2021-03-30 16:13:25'),(93,NULL,'System','Platform','2021-03-30 16:13:25','2021-03-30 16:13:25'),(95,NULL,'System','RefundReport','2021-03-30 16:16:28','2021-03-30 16:16:28'),(96,NULL,'Setting','VoidReport','2021-03-30 16:16:28','2021-04-01 22:10:48'),(97,NULL,'System','AmountSplit','2021-03-30 16:16:28','2021-03-30 16:16:28'),(98,NULL,'System','Order','2021-03-30 16:16:28','2021-03-30 16:16:28'),(99,NULL,'System','Group','2021-03-30 16:16:28','2021-03-30 16:16:28'),(100,NULL,'System','Category','2021-03-30 16:16:28','2021-03-30 16:16:28'),(101,NULL,'System','Item','2021-03-30 16:16:28','2021-03-30 16:16:28'),(102,NULL,'System','Role','2021-03-30 16:16:28','2021-03-30 16:16:28'),(103,NULL,'System','Permission','2021-03-30 16:16:28','2021-03-30 16:16:28'),(104,NULL,'System','Avaliable','2021-03-30 16:16:28','2021-03-30 16:16:28'),(106,NULL,'System','AllStaff','2021-03-30 16:16:28','2021-03-30 16:16:28'),(107,NULL,'System','AllStation','2021-03-30 16:16:28','2021-03-30 16:16:28'),(108,NULL,'System','OrderTime','2021-03-30 16:16:28','2021-03-30 16:16:28'),(109,NULL,'System','OrderNo','2021-03-30 16:16:28','2021-03-30 16:16:28'),(110,NULL,'System','Addon','2021-03-30 16:16:28','2021-03-30 16:16:28'),(111,NULL,'System','Device','2021-03-30 16:16:28','2021-03-30 16:16:28'),(112,NULL,'System','Table','2021-03-30 16:16:28','2021-03-30 16:16:28'),(113,NULL,'System','Employees','2021-03-30 16:16:28','2021-03-30 16:16:28'),(114,NULL,'System','User','2021-03-30 16:16:28','2021-03-30 16:16:28'),(115,NULL,'System','Current','2021-03-30 16:16:28','2021-03-30 16:16:28'),(117,NULL,'System','Name','2021-03-30 16:18:06','2021-03-30 16:18:06'),(118,NULL,'System','Tel','2021-03-30 16:18:06','2021-03-30 16:18:06'),(119,NULL,'System','Street','2021-03-30 16:18:06','2021-03-30 16:18:06'),(120,NULL,'System','City','2021-03-30 16:18:06','2021-03-30 16:18:06'),(121,NULL,'System','Apt','2021-03-30 16:18:06','2021-03-30 16:18:06'),(122,NULL,'System','No','2021-03-30 16:18:06','2021-03-30 16:18:06'),(123,NULL,'System','All','2021-03-30 16:18:06','2021-03-30 16:18:06'),(124,NULL,'System','NotTips','2021-03-30 16:18:06','2021-03-30 16:18:06'),(125,NULL,'System','NotSettle','2021-03-30 16:18:06','2021-03-30 16:18:06'),(127,NULL,'System','Discount','2021-03-30 16:18:06','2021-03-30 16:18:06'),(128,NULL,'System','Guest','2021-03-30 16:18:06','2021-03-30 16:18:06'),(129,NULL,'System','Processing','2021-03-30 16:18:06','2021-03-30 16:18:06'),(130,NULL,'System','Checkout','2021-03-30 16:18:06','2021-03-30 16:18:06'),(131,NULL,'Alert','DeleteIt','2021-03-30 16:21:12','2021-03-30 16:21:12'),(132,NULL,'Alert','ExitIt','2021-03-30 16:21:12','2021-03-30 16:21:12'),(133,NULL,'Alert','PrintReceipt','2021-03-30 16:21:12','2021-03-30 16:21:12'),(134,NULL,'Alert','RemoveIt','2021-03-30 16:21:12','2021-03-30 16:21:12'),(135,NULL,'System','Gratuity','2021-03-30 16:21:12','2021-03-30 16:21:12'),(136,NULL,'System','Pay','2021-03-30 16:21:12','2021-03-30 16:21:12'),(137,NULL,'System','Kitchen','2021-03-30 16:21:12','2021-03-30 16:21:12'),(138,NULL,'System','Reduce','2021-03-30 16:21:12','2021-03-30 16:21:32'),(139,NULL,'System','Line','2021-03-30 16:21:12','2021-03-30 16:21:32'),(140,NULL,'System','OriginOrder','2021-03-30 16:21:12','2021-03-30 16:21:32'),(141,NULL,'System','PrintAll','2021-03-30 16:21:12','2021-03-30 16:21:32'),(142,NULL,'System','History','2021-03-30 16:21:12','2021-03-30 16:21:32'),(143,NULL,'System','Packer','2021-03-30 16:21:12','2021-03-30 16:21:32'),(144,NULL,'System','Operation','2021-03-30 16:21:12','2021-03-30 16:21:32'),(145,NULL,'System','ResetTime','2021-03-30 16:21:12','2021-03-30 16:21:32'),(146,NULL,'System','Search','2021-03-30 16:21:12','2021-03-30 16:21:32'),(147,NULL,'System','Deposit','2021-03-30 16:21:12','2021-03-30 16:21:32'),(148,NULL,'System','Unlimited','2021-03-30 16:23:54','2021-03-30 16:23:54'),(149,NULL,'System','AllPermission','2021-03-30 16:23:54','2021-03-30 16:23:54'),(150,NULL,'System','Virtual','2021-03-30 16:23:54','2021-03-30 16:23:54'),(151,NULL,'Permission','VirtualPay','2021-03-30 16:23:54','2021-04-05 20:19:19'),(152,NULL,'Permission','CashPay','2021-03-30 16:23:54','2021-04-05 20:19:19'),(153,NULL,'System','ChangeServer','2021-03-30 16:24:16','2021-03-30 16:24:16'),(154,NULL,'System','InDividual','2021-03-30 16:31:53','2021-03-30 16:31:53'),(155,NULL,'System','CDP','2021-03-30 16:31:53','2021-03-30 16:31:53'),(157,NULL,'System','TipsBeforeTax','2021-03-30 16:31:53','2021-03-30 16:31:53'),(158,NULL,'System','OfGuest','2021-03-30 16:31:53','2021-03-30 16:31:53'),(159,NULL,'Setting','0Copy','2021-03-30 16:31:53','2021-04-01 22:11:37'),(160,NULL,'Setting','1Copy','2021-03-30 16:31:53','2021-04-01 22:11:37'),(161,NULL,'Setting','2Copy','2021-03-30 16:31:53','2021-04-01 22:11:37'),(162,NULL,'Setting','3Copy','2021-03-30 16:31:53','2021-04-01 22:11:37'),(163,NULL,'System','SkipTableSelect','2021-03-30 16:31:53','2021-03-30 16:31:53'),(164,NULL,'Setting','PasswordRequired','2021-03-30 16:31:53','2021-04-01 22:03:31'),(165,NULL,'Setting','ToGoCount','2021-03-30 16:31:53','2021-04-01 22:00:43'),(166,NULL,'Setting','PickUpCount','2021-03-30 16:31:53','2021-04-01 22:02:28'),(167,NULL,'Setting','DeliveryCount','2021-03-30 16:31:53','2021-04-01 22:02:28'),(168,NULL,'System','CheckList','2021-03-30 16:31:53','2021-03-30 16:31:53'),(169,NULL,'System','TakeOrder','2021-03-30 16:31:53','2021-03-30 16:31:53'),(170,NULL,'System','PackerItemIncrement','2021-03-30 16:31:53','2021-03-30 16:31:53'),(171,NULL,'System','QuickNote','2021-03-30 16:31:53','2021-03-30 16:31:53'),(173,NULL,'System','Config','2021-03-30 16:31:53','2021-03-30 16:31:53'),(174,NULL,'System','StandalonePayment','2021-03-30 16:31:53','2021-03-30 16:31:53'),(175,NULL,'System','Themes','2021-03-30 16:31:53','2021-03-30 16:31:53'),(177,NULL,'System','OtherPayment','2021-03-30 16:31:53','2021-03-30 16:31:53'),(181,NULL,'Permission','PaymentSplit','2021-03-30 22:36:02','2021-04-05 20:19:19'),(182,NULL,'Permission','EditOrder','2021-03-30 22:36:02','2021-04-05 20:19:19'),(183,NULL,'Permission','ChangeServer','2021-03-30 22:36:02','2021-04-05 20:19:19'),(187,NULL,'Permission','AddTips','2021-03-30 22:36:02','2021-04-05 20:19:19'),(189,NULL,'Permission','RecallReport','2021-03-30 22:36:02','2021-04-05 20:19:19'),(192,NULL,'Permission','GiftCardPay','2021-03-30 22:36:02','2021-04-05 20:19:19'),(194,NULL,'Permission','CloseBatch','2021-03-30 22:36:02','2021-04-05 20:19:19'),(195,NULL,'Permission','CreditPay','2021-03-30 22:36:02','2021-04-05 20:19:19'),(196,NULL,'Permission','DutyFree','2021-03-30 22:36:59','2021-04-05 20:19:19'),(197,NULL,'Permission','RefundPayment','2021-03-30 22:36:59','2021-04-05 20:19:19'),(219,NULL,'Setting','TakeOrder','2021-03-31 19:19:00','2021-03-31 19:19:00'),(220,NULL,'Setting','Individual','2021-03-31 19:19:00','2021-03-31 19:19:00'),(221,NULL,'Setting','QuickNote','2021-03-31 19:19:00','2021-03-31 19:19:00'),(222,NULL,'Setting','CategoryStyle','2021-03-31 19:19:00','2021-03-31 19:19:00'),(223,NULL,'Setting','Group','2021-03-31 19:19:00','2021-03-31 19:19:00'),(224,NULL,'Setting','Category','2021-03-31 19:19:00','2021-03-31 19:19:00'),(225,NULL,'Setting','CDP','2021-03-31 19:19:00','2021-03-31 19:19:00'),(226,NULL,'Setting','DiscountBeforeTax','2021-03-31 19:19:00','2021-03-31 19:19:00'),(227,NULL,'Setting','TipsBeforeTax','2021-03-31 19:19:00','2021-03-31 19:19:00'),(228,NULL,'Setting','PaymentMethod','2021-03-31 19:19:00','2021-03-31 20:53:49'),(229,NULL,'Setting','NoPenny','2021-03-31 19:19:00','2021-03-31 19:19:00'),(230,NULL,'Setting','StandalonePayment','2021-03-31 19:19:00','2021-03-31 19:19:00'),(231,NULL,'Setting','SkipTableSelect','2021-03-31 19:19:00','2021-03-31 19:19:00'),(232,NULL,'Setting','OfGuest','2021-03-31 19:19:00','2021-03-31 19:19:00'),(233,NULL,'Setting','Printer','2021-03-31 19:19:00','2021-03-31 19:19:00'),(234,NULL,'Setting','PaymentReceipt','2021-03-31 19:19:00','2021-03-31 19:19:00'),(235,NULL,'Setting','ReceiptBeforePay','2021-03-31 19:19:00','2021-03-31 19:19:00'),(236,NULL,'Setting','ReceiptAfterPay','2021-03-31 19:19:00','2021-03-31 19:19:00'),(237,NULL,'Setting','ReceiptPrintRequired','2021-03-31 19:19:00','2021-04-01 22:44:41'),(238,NULL,'System','Setting','2021-03-31 19:22:52','2021-03-31 19:22:52'),(242,NULL,'System','Tax','2021-03-31 19:23:38','2021-03-31 19:23:38'),(243,NULL,'System','SecondScreen','2021-03-31 19:23:38','2021-03-31 19:23:38'),(244,NULL,'System','Tips','2021-03-31 19:23:38','2021-03-31 19:23:38'),(245,NULL,'System','DeliveryFee','2021-03-31 19:23:51','2021-03-31 19:23:51'),(246,NULL,'System','ServiceFee','2021-03-31 19:24:04','2021-03-31 19:24:04'),(248,NULL,'System','Station','2021-03-31 19:24:30','2021-03-31 19:24:30'),(251,NULL,'System','Template','2021-03-31 19:25:03','2021-03-31 19:25:03'),(252,NULL,'System','Terminal','2021-03-31 19:25:03','2021-03-31 19:25:03'),(255,NULL,'System','Past','2021-03-31 19:26:40','2021-03-31 19:26:40'),(281,NULL,'System','SendAll','2021-03-31 20:20:00','2021-03-31 20:20:00'),(282,NULL,'System','Partial','2021-03-31 20:20:00','2021-03-31 20:20:00'),(283,NULL,'System','Add','2021-03-31 20:20:00','2021-03-31 20:20:00'),(284,NULL,'System','Quantity','2021-03-31 20:20:00','2021-03-31 20:20:00'),(285,NULL,'System','Remove','2021-03-31 20:20:00','2021-03-31 20:20:00'),(286,NULL,'System','Price','2021-03-31 20:20:00','2021-03-31 20:20:00'),(287,NULL,'System','Info','2021-03-31 20:20:00','2021-03-31 20:20:00'),(288,NULL,'System','Modifier','2021-03-31 20:20:00','2021-03-31 20:20:00'),(289,NULL,'System','More','2021-03-31 20:20:00','2021-03-31 20:20:00'),(292,NULL,'System','Classification','2021-03-31 20:42:06','2021-03-31 20:42:06'),(293,NULL,'System','Payment','2021-03-31 20:42:06','2021-03-31 20:42:06'),(294,NULL,'System','BatchHistory','2021-03-31 20:42:06','2021-03-31 20:42:06'),(296,NULL,'System','Card','2021-03-31 20:42:55','2021-03-31 20:42:55'),(297,NULL,'System','Customer','2021-03-31 20:43:09','2021-03-31 20:43:09'),(310,NULL,'System','System','2021-03-31 20:45:01','2021-03-31 20:45:01'),(311,NULL,'System','Barcode','2021-03-31 20:45:01','2021-03-31 20:45:01'),(312,NULL,'System','General','2021-03-31 20:45:01','2021-04-01 20:41:10'),(313,NULL,'System','cardmanagement','2021-03-31 20:45:01','2021-07-06 18:59:07'),(314,NULL,'System','CardMarket','2021-03-31 20:45:01','2021-03-31 20:45:01'),(315,NULL,'System','Driver','2021-03-31 20:45:01','2021-03-31 20:45:01'),(324,NULL,'System','overview','2021-03-31 21:08:19','2021-03-31 21:11:46'),(325,NULL,'System','Void','2021-03-31 21:08:19','2021-03-31 21:11:46'),(326,NULL,'System','Section','2021-03-31 21:08:19','2021-03-31 21:11:46'),(327,NULL,'System','Course','2021-03-31 21:08:19','2021-03-31 21:11:46'),(328,NULL,'System','WareHouse','2021-03-31 21:29:34','2021-03-31 21:29:34'),(329,NULL,'System','New','2021-03-31 21:30:27','2021-03-31 21:30:27'),(330,NULL,'System','Delete','2021-03-31 21:30:27','2021-03-31 21:30:27'),(332,NULL,'System','Unprinted','2021-03-31 21:37:22','2021-04-01 15:28:45'),(333,NULL,'System','Server','2021-03-31 21:39:00','2021-04-02 18:21:56'),(334,NULL,'System','PartySize','2021-03-31 21:39:00','2021-03-31 21:39:00'),(335,NULL,'System','Edit','2021-03-31 21:40:00','2021-03-31 21:40:00'),(336,NULL,'System','merge','2021-03-31 21:40:20','2021-03-31 21:40:20'),(337,NULL,'System','OneKeyPayment','2021-03-31 21:43:44','2021-03-31 21:43:44'),(342,NULL,'System','ok','2021-03-31 21:44:48','2021-03-31 21:44:48'),(343,NULL,'System','zip','2021-03-31 21:44:48','2021-03-31 21:44:48'),(344,NULL,'System','optional','2021-03-31 21:44:48','2021-03-31 21:44:48'),(345,NULL,'System','Sate','2021-03-31 21:44:48','2021-03-31 21:44:48'),(346,NULL,'System','map','2021-03-31 21:45:06','2021-03-31 22:26:18'),(347,NULL,'System','ExportDaily','2021-03-31 21:47:08','2021-03-31 21:47:08'),(348,NULL,'System','GrandTotal','2021-03-31 21:47:08','2021-03-31 21:47:08'),(349,NULL,'System','NetSales','2021-03-31 21:47:08','2021-03-31 21:47:08'),(350,NULL,'System','Tickets','2021-03-31 21:47:08','2021-03-31 21:47:08'),(351,NULL,'System','OrderType','2021-03-31 21:47:25','2021-03-31 21:47:25'),(352,NULL,'System','printTipsReport','2021-03-31 21:50:06','2021-03-31 21:50:06'),(353,NULL,'System','printSummaryReport','2021-03-31 21:50:06','2021-03-31 21:50:06'),(354,NULL,'System','printDetailReport','2021-03-31 21:50:06','2021-03-31 21:50:06'),(355,NULL,'System','printPlatform','2021-03-31 21:50:06','2021-03-31 21:50:06'),(356,NULL,'System','dailySummary','2021-03-31 21:50:06','2021-03-31 21:50:06'),(358,NULL,'System','Closebatch','2021-03-31 21:57:06','2021-03-31 21:57:06'),(364,NULL,'System','Note','2021-03-31 22:05:02','2021-03-31 22:05:02'),(365,NULL,'System','Method','2021-03-31 22:05:02','2021-03-31 22:05:02'),(366,NULL,'System','Amount','2021-03-31 22:05:02','2021-03-31 22:05:02'),(367,NULL,'System','Time','2021-03-31 22:05:02','2021-03-31 22:05:02'),(368,NULL,'System','Operator','2021-03-31 22:05:02','2021-03-31 22:05:02'),(371,NULL,'System','Pin','2021-03-31 22:06:16','2021-03-31 22:06:16'),(372,NULL,'System','Active','2021-03-31 22:06:16','2021-03-31 22:06:16'),(376,NULL,'System','OutOfStock','2021-03-31 22:08:11','2021-03-31 22:14:26'),(377,NULL,'System','Attribute','2021-03-31 22:08:11','2021-03-31 22:08:11'),(378,NULL,'System','Monday','2021-03-31 22:08:11','2021-03-31 22:08:11'),(379,NULL,'System','Tuesday','2021-03-31 22:08:11','2021-03-31 22:10:34'),(380,NULL,'System','Wednesday','2021-03-31 22:08:11','2021-03-31 22:08:11'),(381,NULL,'System','Thursday','2021-03-31 22:08:11','2021-03-31 22:08:11'),(382,NULL,'System','Friday','2021-03-31 22:08:11','2021-03-31 22:08:11'),(383,NULL,'System','Saturday','2021-03-31 22:08:11','2021-03-31 22:08:11'),(384,NULL,'System','Sunday','2021-03-31 22:08:11','2021-03-31 22:08:11'),(385,NULL,'System','Title','2021-03-31 22:08:11','2021-03-31 22:08:11'),(386,NULL,'System','Style','2021-03-31 22:08:30','2021-03-31 22:08:30'),(387,NULL,'System','InitialNumber','2021-03-31 22:18:13','2021-03-31 22:18:13'),(388,NULL,'System','back','2021-03-31 22:19:21','2021-03-31 22:19:21'),(389,NULL,'System','State','2021-03-31 22:25:31','2021-03-31 22:25:31'),(390,NULL,'System','tipamt','2021-03-31 22:27:57','2021-03-31 22:27:57'),(391,NULL,'System','cardnum','2021-03-31 22:27:57','2021-03-31 22:27:57'),(392,NULL,'System','refnum','2021-03-31 22:27:57','2021-03-31 22:27:57'),(393,NULL,'System','OrderId','2021-03-31 22:27:57','2021-03-31 22:27:57'),(394,NULL,'System','OrderNum','2021-03-31 22:28:09','2021-04-07 18:11:10'),(395,NULL,'System','adjust','2021-03-31 22:32:59','2021-03-31 22:32:59'),(396,NULL,'System','openItem','2021-03-31 22:34:33','2021-03-31 22:34:33'),(406,NULL,'System','ItemDiscount','2021-03-31 22:37:12','2021-03-31 22:37:12'),(407,NULL,'System','OrderDiscount','2021-03-31 22:37:12','2021-03-31 22:37:12'),(409,NULL,'System','InputTime','2021-03-31 22:37:12','2021-04-02 16:09:51'),(410,NULL,'System','Cancel','2021-03-31 22:37:12','2021-03-31 22:37:12'),(415,NULL,'System','ThisMonth','2021-03-31 22:42:45','2021-03-31 22:42:45'),(416,NULL,'System','Floor','2021-03-31 22:42:45','2021-03-31 22:42:45'),(417,NULL,'Setting','DineInCount','2021-03-31 22:49:07','2021-04-01 22:00:57'),(419,NULL,'System','tipsalreadyinput','2021-04-01 14:11:51','2021-04-01 14:11:51'),(420,NULL,'System','Subtotal','2021-04-01 14:20:27','2021-04-01 14:20:27'),(439,NULL,'System','total','2021-04-01 14:36:13','2021-04-01 14:36:13'),(440,NULL,'System','AllTerminal','2021-04-01 14:36:13','2021-04-01 14:36:13'),(441,NULL,'System','TipsNotInput','2021-04-01 14:36:13','2021-04-01 14:36:13'),(447,NULL,'System','kitchenStatus','2021-04-01 14:52:43','2021-04-01 14:52:43'),(452,NULL,'System','AddSeat','2021-04-01 15:02:17','2021-04-01 15:02:17'),(453,NULL,'System','Seat','2021-04-01 15:02:17','2021-04-06 21:05:40'),(454,NULL,'System','allhours','2021-04-01 15:04:35','2021-04-01 15:04:35'),(459,NULL,'System','Minimum','2021-04-01 15:05:47','2021-04-01 15:05:47'),(460,NULL,'System','Maximum','2021-04-01 15:05:47','2021-04-01 15:05:47'),(461,NULL,'System','Repeat','2021-04-01 15:05:47','2021-04-01 15:05:47'),(462,NULL,'System','Sort','2021-04-01 15:05:47','2021-04-01 15:05:47'),(467,NULL,'System','TestPrint','2021-04-01 15:11:44','2021-04-01 15:27:19'),(468,NULL,'System','DistanceStart','2021-04-01 15:11:44','2021-04-01 15:11:44'),(469,NULL,'System','DistanceEnd','2021-04-01 15:11:44','2021-04-01 15:11:44'),(470,NULL,'System','DeviceType','2021-04-01 15:13:04','2021-04-01 15:13:04'),(471,NULL,'System','Printer','2021-04-01 15:13:29','2021-04-01 15:13:29'),(473,NULL,'System','color','2021-04-01 15:17:10','2021-04-01 15:17:10'),(474,NULL,'System','type','2021-04-01 15:21:19','2021-04-01 15:21:19'),(475,NULL,'System','SelectDate','2021-04-01 15:22:14','2021-04-01 15:22:14'),(476,NULL,'System','BatchMore','2021-04-01 15:25:40','2021-04-01 15:25:40'),(478,NULL,'System','SelectCategory','2021-04-01 15:30:19','2021-04-01 15:30:19'),(479,NULL,'System','NewItem','2021-04-01 15:31:19','2021-04-01 15:31:19'),(480,NULL,'System','ItemCode','2021-04-01 15:32:23','2021-04-01 15:32:23'),(481,NULL,'System','SymbolicColor','2021-04-01 15:33:17','2021-04-01 15:33:17'),(482,NULL,'System','ForceModify','2021-04-01 15:34:18','2021-04-01 15:34:18'),(483,NULL,'System','None','2021-04-01 15:35:00','2021-04-01 15:35:00'),(484,NULL,'System','MenuType','2021-04-01 15:35:34','2021-04-07 18:11:10'),(485,NULL,'System','Inventory','2021-04-01 15:35:58','2021-04-01 15:35:58'),(486,NULL,'System','InventoryQuantity','2021-04-01 15:36:24','2021-04-01 15:36:24'),(487,NULL,'System','allclosebatch','2021-04-01 18:26:29','2021-04-01 18:26:29'),(488,NULL,'System','tipsadjustment','2021-04-01 18:26:54','2021-04-01 18:26:54'),(489,NULL,'System','tipsCount','2021-04-01 18:27:10','2021-04-01 18:27:10'),(490,NULL,'System','settleChecks','2021-04-01 18:27:47','2021-04-01 18:27:47'),(491,NULL,'System','storefront','2021-04-01 18:31:26','2021-04-01 18:31:26'),(492,NULL,'System','quickpay','2021-04-01 18:43:14','2021-04-01 18:43:14'),(493,NULL,'System','moveAction','2021-04-01 18:49:59','2021-04-01 18:49:59'),(494,NULL,'System','SplitAction','2021-04-01 18:49:59','2021-04-01 18:49:59'),(495,NULL,'System','splitorder','2021-04-01 18:50:45','2021-04-01 18:50:45'),(496,NULL,'System','openprice','2021-04-01 19:05:40','2021-04-01 19:05:40'),(497,NULL,'System','Symbolic','2021-04-01 19:05:54','2021-04-01 19:05:54'),(498,NULL,'System','TerminalModel','2021-04-01 19:08:20','2021-04-01 19:08:20'),(499,NULL,'System','PortNum','2021-04-01 19:08:20','2021-04-01 19:08:20'),(501,NULL,'System','TimeOut','2021-04-01 19:08:20','2021-04-02 14:09:00'),(502,NULL,'System','MID','2021-04-01 19:08:20','2021-04-02 14:08:09'),(503,NULL,'System','EnablePINPadTipAdjustment','2021-04-01 19:08:20','2021-04-02 14:09:52'),(504,NULL,'System','EnablePINPadsignaturecapture','2021-04-01 19:08:20','2021-04-02 14:09:53'),(514,NULL,'System','slug','2021-04-01 19:18:51','2021-04-01 19:18:51'),(515,NULL,'System','HttpPath','2021-04-01 19:18:51','2021-04-01 19:18:51'),(516,NULL,'System','Top8Categories','2021-04-01 19:18:51','2021-04-01 19:18:51'),(517,NULL,'System','PaperSizes','2021-04-01 19:18:51','2021-04-01 19:18:51'),(518,NULL,'System','USB','2021-04-01 19:18:51','2021-04-01 19:18:51'),(519,NULL,'System','IP','2021-04-01 19:18:51','2021-04-01 19:18:51'),(520,NULL,'System','Top8Items','2021-04-01 19:18:51','2021-04-01 19:18:51'),(521,NULL,'System','ViewAll','2021-04-01 19:18:51','2021-04-01 19:18:51'),(533,NULL,'System','ModifyRow','2021-04-01 19:25:13','2021-04-01 19:25:13'),(534,NULL,'System','ChecklistTemplate','2021-04-01 19:25:13','2021-04-01 19:25:13'),(535,NULL,'System','PaymentTemplate','2021-04-01 19:25:13','2021-04-01 19:25:13'),(536,NULL,'System','ModifyColumn','2021-04-01 19:26:20','2021-04-01 19:26:20'),(537,NULL,'System','CallerID','2021-04-01 19:26:20','2021-04-01 19:26:20'),(538,NULL,'System','Dashboard','2021-04-01 19:26:20','2021-04-01 19:26:20'),(539,NULL,'System','AreaName','2021-04-01 19:28:13','2021-04-01 19:28:13'),(540,NULL,'System','Width','2021-04-01 19:28:13','2021-04-01 19:28:13'),(541,NULL,'System','Height','2021-04-01 19:28:13','2021-04-01 19:28:13'),(542,NULL,'System','Copy','2021-04-01 19:28:13','2021-04-01 19:28:13'),(543,NULL,'System','rate','2021-04-01 19:37:00','2021-04-01 19:37:00'),(544,NULL,'System','InclusiveTax','2021-04-01 19:37:00','2021-04-01 19:37:00'),(545,NULL,'System','TopSellCategories','2021-04-01 19:38:39','2021-04-01 19:38:39'),(546,NULL,'System','TopSellItems','2021-04-01 19:38:39','2021-04-01 19:38:39'),(547,NULL,'System','undo','2021-04-01 19:57:45','2021-04-01 19:57:45'),(553,NULL,'System','optmodifier','2021-04-01 20:56:36','2021-04-01 20:56:36'),(557,NULL,'System','allcounts','2021-04-01 21:08:14','2021-04-01 21:08:14'),(561,NULL,'System','itemNote','2021-04-01 21:18:51','2021-04-01 21:18:51'),(562,NULL,'System','OrderNote','2021-04-01 21:18:51','2021-04-05 15:48:49'),(563,NULL,'System','ItemName','2021-04-01 21:19:43','2021-04-02 14:08:26'),(564,NULL,'System','Save','2021-04-01 21:23:57','2021-04-01 21:23:57'),(565,NULL,'Setting','home','2021-04-01 21:56:12','2021-04-01 21:56:12'),(566,NULL,'Setting','Themes','2021-04-01 21:56:26','2021-04-01 21:56:26'),(567,NULL,'Setting','Payment','2021-04-01 21:56:38','2021-04-01 21:56:38'),(568,NULL,'Setting','onekeypayment','2021-04-01 21:56:53','2021-04-01 21:56:53'),(576,NULL,'Setting','gratuityforindividual','2021-04-01 21:58:28','2021-04-01 21:58:28'),(579,NULL,'Setting','happyhour','2021-04-01 21:58:28','2021-04-01 22:09:33'),(580,NULL,'Setting','clockinout','2021-04-01 21:58:28','2021-04-01 21:58:28'),(581,NULL,'Setting','config','2021-04-01 21:58:28','2021-04-01 21:58:28'),(582,NULL,'Setting','checklist','2021-04-01 21:58:28','2021-06-15 18:43:21'),(583,NULL,'Setting','DineIn','2021-04-01 22:03:48','2021-04-01 22:03:48'),(595,NULL,'Setting','packeritemincrement','2021-04-01 22:42:12','2021-04-01 22:42:12'),(596,NULL,'Setting','KitchenClickPay','2021-04-01 22:42:12','2021-04-01 22:42:12'),(597,NULL,'Setting','KitchenAfterPay','2021-04-01 22:42:12','2021-04-01 22:42:12'),(598,NULL,'Setting','showItemdiscount','2021-04-01 22:42:12','2021-04-01 22:42:12'),(601,NULL,'Setting','returnIndex','2021-04-01 22:42:54','2021-04-01 22:42:54'),(602,NULL,'Setting','CurrentPage','2021-04-01 22:43:05','2021-04-01 22:43:05'),(603,NULL,'System','OtherTools','2021-04-02 14:56:03','2021-04-02 14:56:03'),(605,NULL,'Setting','Refund','2021-04-02 15:04:01','2021-04-02 15:04:01'),(606,NULL,'Alert','itemdoesnotexist','2021-04-02 15:16:45','2021-04-02 15:16:45'),(607,NULL,'Alert','notMySelftAllowed','2021-04-02 15:21:48','2021-04-02 15:21:48'),(608,NULL,'Alert','notAllowed','2021-04-02 15:22:08','2021-04-02 15:22:08'),(609,NULL,'Alert','clockError','2021-04-02 15:24:16','2021-04-02 15:24:16'),(610,NULL,'Alert','partialorder','2021-04-02 15:26:48','2021-05-07 22:10:39'),(611,NULL,'System','salesTickets','2021-04-02 15:27:34','2021-04-02 15:27:34'),(612,NULL,'System','partialKitchen','2021-04-02 15:29:03','2021-04-02 15:29:03'),(658,NULL,'Permission','unlimited','2021-04-02 15:37:24','2021-04-05 20:19:19'),(659,NULL,'Permission','backoffice','2021-04-02 15:37:24','2021-04-05 20:19:19'),(660,NULL,'Permission','clockinout','2021-04-02 15:37:24','2021-04-05 20:19:19'),(661,NULL,'Permission','VoidPayment','2021-04-02 15:37:24','2021-04-05 20:19:19'),(662,NULL,'Permission','VoidOrder','2021-04-02 15:37:24','2021-04-05 20:19:19'),(664,NULL,'Permission','CashDrawer','2021-04-02 15:37:24','2021-04-05 20:19:19'),(665,NULL,'Permission','Discount','2021-04-02 15:37:24','2021-04-05 20:19:19'),(667,NULL,'Permission','tablesplit','2021-04-02 15:43:59','2021-04-05 20:19:19'),(668,NULL,'Permission','changePrice','2021-04-02 15:45:02','2021-04-05 20:19:19'),(669,NULL,'Permission','GiftCard','2021-04-02 15:54:08','2021-04-05 20:19:19'),(670,NULL,'System','settlecount','2021-04-02 16:02:57','2021-04-02 16:02:57'),(671,NULL,'System','SelectAll','2021-04-02 16:06:31','2021-04-02 16:06:31'),(672,NULL,'System','Nodelay','2021-04-02 16:06:54','2021-04-02 16:06:54'),(673,NULL,'Alert','Permissiondenied','2021-04-02 16:12:59','2021-04-07 14:49:48'),(674,NULL,'System','byamount','2021-04-02 16:29:33','2021-04-02 16:29:33'),(675,NULL,'System','bypercent','2021-04-02 16:29:33','2021-04-02 16:29:33'),(676,NULL,'System','value','2021-04-02 16:31:38','2021-04-02 16:31:38'),(677,NULL,'System','customize','2021-04-02 16:32:22','2021-04-02 16:32:22'),(681,NULL,'System','NumberOfSplits','2021-04-02 16:57:45','2021-04-02 20:29:10'),(683,NULL,'Alert','voidThisPayment','2021-04-02 17:12:29','2021-04-02 17:12:29'),(690,NULL,'System','printCCReport','2021-04-02 17:14:25','2021-04-02 17:14:25'),(692,NULL,'System','voidOrder','2021-04-02 17:14:57','2021-04-02 17:14:57'),(693,NULL,'System','cancelReason','2021-04-02 17:15:18','2021-04-02 17:15:18'),(694,NULL,'System','VoidItemReason','2021-04-02 17:18:25','2021-04-02 17:18:25'),(695,NULL,'System','VoidPaymentReason','2021-04-02 17:18:25','2021-04-02 17:18:25'),(696,NULL,'Alert','batchTitle','2021-04-02 17:18:25','2021-04-02 17:18:25'),(697,NULL,'Alert','discountTitle','2021-04-02 17:18:25','2021-04-02 17:18:25'),(698,NULL,'Alert','noteTitle','2021-04-02 17:18:25','2021-04-02 17:18:25'),(699,NULL,'System','common','2021-04-02 17:20:12','2021-04-02 17:20:12'),(700,NULL,'System','unlock','2021-04-02 17:21:13','2021-04-02 17:21:13'),(701,NULL,'System','version','2021-04-02 17:25:42','2021-04-02 17:25:42'),(702,NULL,'System','recommend','2021-04-02 17:26:53','2021-04-02 17:26:53'),(704,NULL,'System','spicy','2021-04-02 17:27:26','2021-04-02 17:27:26'),(705,NULL,'System','done','2021-04-02 17:27:59','2021-04-02 17:27:59'),(706,NULL,'System','Close','2021-04-02 17:42:26','2021-04-02 17:42:26'),(707,NULL,'System','Cash','2021-04-02 17:43:47','2021-04-02 17:43:47'),(710,NULL,'System','Credit','2021-04-02 17:55:23','2021-04-02 17:55:23'),(711,NULL,'System','Share','2021-04-02 18:09:04','2021-04-02 18:09:04'),(712,NULL,'System','itemsplit','2021-04-02 18:19:08','2021-04-02 18:19:08'),(713,NULL,'Payment','pay1','2021-04-02 19:05:53','2021-04-02 19:10:48'),(714,NULL,'Payment','pay2','2021-04-02 19:05:53','2021-04-02 19:10:48'),(715,NULL,'Payment','pay3','2021-04-02 19:05:53','2021-04-02 19:10:48'),(716,NULL,'Payment','pay4','2021-04-02 19:05:53','2021-04-02 19:10:48'),(717,NULL,'Payment','pay5','2021-04-02 19:05:53','2021-04-02 19:10:48'),(719,NULL,'Payment','pay6','2021-04-02 19:05:53','2021-04-02 19:10:48'),(721,NULL,'Payment','pay7','2021-04-02 19:10:48','2021-04-02 19:10:48'),(722,NULL,'System','reset','2021-04-02 20:13:13','2021-04-02 20:13:13'),(723,NULL,'System','balance','2021-04-02 20:20:38','2021-04-02 20:20:38'),(724,NULL,'System','yes','2021-04-02 20:23:09','2021-04-02 20:23:09'),(725,NULL,'System','inputMins','2021-04-02 20:31:38','2021-04-02 20:31:38'),(726,NULL,'System','flatform','2021-04-02 20:34:12','2021-04-02 20:34:12'),(727,NULL,'System','orderStatus','2021-04-02 20:34:45','2021-04-02 20:34:45'),(728,NULL,'System','minutes','2021-04-02 20:35:49','2021-04-02 20:35:49'),(732,NULL,'System','staffReport','2021-04-02 21:19:58','2021-04-02 21:19:58'),(733,NULL,'Setting','VoidItem','2021-04-02 21:38:44','2021-04-02 21:38:44'),(743,NULL,'System','change','2021-04-05 19:25:22','2021-04-05 19:25:22'),(747,NULL,'Setting','deliveryfeeforindividual','2021-04-05 19:48:19','2021-05-18 20:11:34'),(754,NULL,'Alert','OneKeyPayment','2021-04-05 20:48:13','2021-04-05 20:48:13'),(755,NULL,'System','newprice','2021-04-06 14:12:17','2021-04-06 14:12:17'),(758,NULL,'System','receiptprinter','2021-04-06 18:34:18','2021-04-06 18:34:18'),(759,NULL,'System','Unabletologin','2021-04-06 19:25:39','2021-04-06 19:25:39'),(760,NULL,'System','Exit','2021-04-06 19:30:23','2021-04-06 19:30:23'),(764,NULL,'System','splitno','2021-04-06 20:37:23','2021-04-06 20:37:23'),(765,NULL,'System','dutyfree','2021-04-06 20:45:26','2021-04-06 20:45:26'),(766,NULL,'System','voidorderreason','2021-04-06 21:38:28','2021-04-06 21:38:28'),(767,NULL,'System','nosave','2021-04-06 21:51:31','2021-04-06 21:51:31'),(770,NULL,'System','OS','2021-04-06 22:40:41','2021-04-06 22:40:41'),(771,NULL,'System','description','2021-04-06 22:44:15','2021-04-06 22:44:15'),(774,NULL,'System','ItemColumn','2021-04-07 22:10:00','2021-04-07 22:10:00'),(775,NULL,'System','testprinter','2021-04-08 22:01:20','2021-04-08 22:01:20'),(776,NULL,'System','testterminal','2021-04-08 22:01:20','2021-04-08 22:01:20'),(777,NULL,'System','ipaddress','2021-04-09 15:23:05','2021-04-09 15:23:05'),(778,NULL,'Setting','item','2021-04-09 17:04:00','2021-04-09 17:04:00'),(779,NULL,'System','option','2021-04-09 20:05:34','2021-04-09 20:05:34'),(780,NULL,'System','address','2021-04-12 21:05:10','2021-04-12 21:05:10'),(781,NULL,'System','orderdisplay','2021-04-13 22:26:27','2021-04-13 22:26:27'),(782,NULL,'System','Paging','2021-04-15 16:09:23','2021-04-15 16:09:23'),(783,NULL,'System','calloff','2021-04-15 16:09:23','2021-04-15 16:09:23'),(787,NULL,'System','process','2021-04-15 18:50:38','2021-04-15 18:50:38'),(788,NULL,'Alert','closebatchtitle','2021-04-16 17:21:24','2021-04-16 17:21:24'),(789,NULL,'Alert','notdoneclosebatchtitle','2021-04-19 14:20:39','2021-04-19 14:20:39'),(790,NULL,'Alert','onekeypaymenttitle','2021-04-19 14:38:33','2021-04-19 14:38:33'),(791,NULL,'Setting','orderdisplayer','2021-04-19 18:00:04','2021-04-19 18:03:14'),(792,NULL,'Setting','none','2021-04-19 19:23:17','2021-04-19 19:23:17'),(794,NULL,'System','manager','2021-04-20 14:17:09','2021-04-20 14:17:09'),(795,NULL,'Setting','tipsbeforediscount','2021-04-20 20:41:55','2021-04-20 20:41:55'),(796,NULL,'Setting','singletableorder','2021-04-20 22:21:41','2021-04-20 22:21:51'),(797,NULL,'Alert','singletableordertitle','2021-04-20 22:31:20','2021-04-20 22:31:20'),(798,NULL,'Permission','recallvisible','2021-04-20 22:41:32','2021-04-21 20:19:52'),(799,NULL,'System','customoperation','2021-04-22 14:39:03','2021-04-22 14:39:03'),(804,NULL,'System','last4digits','2021-04-22 18:29:36','2021-06-22 15:36:44'),(805,NULL,'System','noorphone','2021-04-22 18:45:48','2021-04-22 18:45:48'),(806,NULL,'System','clearall','2021-04-23 21:32:23','2021-04-23 21:32:23'),(807,NULL,'System','wholeorder','2021-04-27 17:11:27','2021-04-27 17:11:27'),(809,NULL,'System','inkitchen','2021-05-04 15:01:32','2021-05-04 15:01:32'),(810,NULL,'System','cleartable','2021-05-07 17:38:17','2021-05-07 17:38:17'),(811,NULL,'Alert','cleartabletitle','2021-05-07 17:38:17','2021-05-07 17:38:17'),(812,NULL,'Alert','mergetitle','2021-05-07 21:00:44','2021-05-07 21:00:44'),(813,NULL,'Setting','tipsbeforeotherfee','2021-05-07 21:03:05','2021-05-13 14:29:05'),(815,NULL,'System','offset','2021-05-10 21:53:00','2021-05-10 21:55:08'),(816,NULL,'System','fontstyle','2021-05-10 21:53:00','2021-05-10 21:55:04'),(817,NULL,'System','alignments','2021-05-10 21:53:00','2021-05-10 21:55:01'),(818,NULL,'System','groupline','2021-05-10 21:53:00','2021-05-10 21:54:58'),(819,NULL,'System','groupheight','2021-05-10 21:53:00','2021-05-10 21:54:54'),(820,NULL,'Alert','selecttabletitle','2021-05-13 15:57:13','2021-05-13 15:57:13'),(821,NULL,'System','guest/amount','2021-05-13 17:22:21','2021-05-13 17:22:21'),(822,NULL,'System','gratuitytype','2021-05-13 17:23:24','2021-05-13 17:23:24'),(826,NULL,'System','moveallaction','2021-05-18 15:42:38','2021-05-18 15:42:38'),(829,NULL,'Type','Walk_In','2021-05-24 15:47:14','2021-05-24 15:47:14'),(830,NULL,'Alert','nosaveorder','2021-05-26 21:06:04','2021-05-26 21:06:04'),(831,NULL,'Alert','notfound','2021-05-27 22:26:57','2021-05-27 22:26:57'),(832,NULL,'System','duplicate','2021-06-02 15:04:18','2021-06-02 15:04:18'),(833,NULL,'System','crossday','2021-06-02 18:30:35','2021-06-29 15:26:41'),(834,NULL,'System','beforetime','2021-06-02 20:16:01','2021-06-02 20:25:56'),(835,NULL,'System','aftertime','2021-06-02 20:16:01','2021-06-02 20:25:56'),(836,NULL,'System','discountable','2021-06-02 20:35:21','2021-06-03 16:14:44'),(837,NULL,'System','tablelayout','2021-06-03 22:17:49','2021-06-03 22:17:49'),(838,NULL,'System','giftcards','2021-06-07 20:16:52','2021-06-07 20:16:52'),(839,NULL,'System','duration','2021-06-09 20:12:43','2021-06-09 20:12:43'),(840,NULL,'Setting','walkincount','2021-06-09 20:57:04','2021-06-09 20:57:04'),(841,NULL,'System','ignoreduplicate','2021-06-14 20:48:19','2021-06-14 20:48:19'),(842,NULL,'Setting','receiptlist','2021-06-15 18:45:45','2021-06-15 18:45:45'),(843,NULL,'Setting','seat-required','2021-06-17 17:03:11','2021-06-17 17:03:11'),(844,NULL,'Setting','item-price','2021-06-21 14:33:09','2021-06-21 16:29:53'),(846,NULL,'Setting','auto-insert-decimal','2021-06-21 22:26:24','2021-06-21 22:26:24'),(847,NULL,'System','PaymentMethod','2021-06-22 15:43:22','2021-06-22 15:43:22'),(850,NULL,'System','DailyItemSummary','2021-06-23 21:49:11','2021-06-23 21:49:11'),(851,NULL,'Setting','checklistItemIncrement','2021-06-25 19:54:36','2021-06-25 19:54:36'),(852,NULL,'Permission','cratuity','2021-06-28 14:56:43','2021-06-28 14:56:43'),(853,NULL,'Setting','forced-void-item-forbidden','2021-06-28 21:32:44','2021-06-28 21:32:44'),(871,NULL,'System','currentday','2021-06-28 22:05:37','2021-06-28 22:05:37'),(872,NULL,'System','previousday','2021-06-28 22:05:37','2021-06-28 22:05:37'),(873,NULL,'System','nextday','2021-06-28 22:05:37','2021-06-28 22:05:37'),(874,NULL,'System','ModifierGroup','2021-06-29 16:42:32','2021-06-29 16:42:32'),(875,NULL,'System','activated','2021-06-29 16:48:24','2021-06-29 16:48:24'),(876,NULL,'System','Inactivated','2021-06-29 16:48:52','2021-06-29 16:48:52'),(877,NULL,'System','GiftSales','2021-06-29 19:04:06','2021-06-29 19:04:06'),(878,NULL,'System','qty','2021-06-29 19:13:00','2021-06-29 19:13:00'),(879,NULL,'System','salesamount','2021-06-29 19:14:22','2021-06-29 19:14:22'),(882,NULL,'System','topSell','2021-06-29 19:23:39','2021-06-29 19:23:39'),(883,NULL,'System','DefaultPrinter','2021-06-29 20:12:22','2021-06-29 20:12:22'),(885,NULL,'System','CustomizePrinter','2021-06-29 20:12:22','2021-06-29 20:12:22'),(886,NULL,'System','NonePrinter','2021-06-29 20:15:08','2021-06-29 20:15:08'),(887,NULL,'System','transactions','2021-06-29 20:31:11','2021-06-29 20:31:11'),(888,NULL,'System','AllTransactions','2021-06-29 22:11:03','2021-06-29 22:11:03'),(889,NULL,'System','Approved','2021-06-29 22:11:03','2021-06-29 22:11:03'),(890,NULL,'System','AddValue','2021-06-29 22:17:39','2021-06-29 22:17:39'),(891,NULL,'System','VoidAction','2021-06-29 22:34:29','2021-06-29 22:34:29'),(892,NULL,'System','SalesPrice','2021-06-30 22:22:20','2021-06-30 22:22:20'),(893,NULL,'System','RefundRecord','2021-07-01 19:08:03','2021-07-01 19:08:03'),(894,NULL,'System','VoidRecord','2021-07-01 19:11:31','2021-07-01 19:11:31'),(895,NULL,'System','classify','2021-07-01 19:59:19','2021-07-01 19:59:19'),(896,NULL,'System','selectprinttemplate','2021-07-01 20:55:02','2021-07-01 20:55:02'),(897,NULL,'System','voidrefund','2021-07-01 20:55:21','2021-07-01 20:55:21'),(898,NULL,'System','VoidPayment','2021-07-01 20:55:33','2021-07-01 20:55:33'),(900,NULL,'System','VoidItem','2021-07-01 20:55:53','2021-07-01 20:55:53'),(903,NULL,'System','Label','2021-07-01 20:56:26','2021-07-01 20:56:26'),(904,NULL,'System','update','2021-07-01 21:34:29','2021-07-01 21:34:29'),(905,NULL,'System','Splittotal','2021-07-01 21:56:59','2021-07-01 22:27:12'),(906,NULL,'System','othersales','2021-07-02 17:03:06','2021-07-02 22:04:39'),(907,NULL,'System','PplName','2021-07-02 22:17:58','2021-07-06 15:59:21'),(908,NULL,'Setting','cashdrawer-password-required','2021-07-06 14:53:32','2021-07-06 14:53:32'),(909,NULL,'Setting','itemFocus','2021-07-06 15:59:21','2021-07-06 15:59:21'),(910,NULL,'Permission','gratuity','2021-07-06 16:24:25','2021-07-06 16:24:25'),(911,NULL,'Alert','copyIt','2021-07-06 16:27:06','2021-07-06 16:27:06'),(912,NULL,'System','username','2021-07-06 16:36:09','2021-07-06 16:36:09'),(913,NULL,'System','modifylistcol','2021-07-09 14:18:49','2021-07-09 14:18:49'),(914,NULL,'System','menupagination','2021-07-09 14:18:49','2021-07-09 14:20:59'),(916,NULL,'System','clicktoview','2021-07-12 15:52:54','2021-07-12 15:52:54'),(917,NULL,'Permission','homepageTitle','2021-07-12 20:29:36','2021-07-12 20:31:30'),(918,NULL,'Permission','interfaceTitle','2021-07-12 20:29:36','2021-07-12 20:37:56'),(919,NULL,'Permission','otherTitle','2021-07-12 20:29:36','2021-07-12 20:29:36'),(920,NULL,'System','checklistprinter','2021-07-12 21:12:00','2021-07-12 21:12:00'),(932,NULL,'Alert','DeleteGroup','2021-07-13 16:04:36','2021-07-13 16:04:36'),(933,NULL,'System','processingkitchen','2021-07-13 16:13:03','2021-07-13 16:13:03'),(934,NULL,'System','partialinkitchen','2021-07-13 16:13:03','2021-07-13 16:13:03'),(935,NULL,'System','allinkitchen','2021-07-13 16:13:03','2021-07-13 16:13:03'),(936,NULL,'System','adjustedtranscation','2021-07-13 16:22:17','2021-07-13 16:22:17'),(937,NULL,'System','alltranscation','2021-07-13 16:22:17','2021-07-13 16:22:17'),(938,NULL,'System','customernotes','2021-07-13 16:31:36','2021-07-13 16:31:36'),(939,NULL,'System','voidtotal','2021-07-13 17:26:06','2021-07-13 17:26:06'),(940,NULL,'System','allpayment','2021-07-13 19:59:03','2021-07-13 19:59:03'),(941,NULL,'System','upload','2021-07-13 21:12:40','2021-07-13 21:12:40'),(942,NULL,'System','groupbyordertype','2021-07-13 21:25:40','2021-07-13 21:25:40'),(943,NULL,'System','groupbypaymentmethod','2021-07-13 21:25:40','2021-07-13 22:15:16'),(944,NULL,'System','EnterYourPIN','2021-07-13 21:31:51','2021-07-13 21:31:51'),(948,NULL,'System','nonetemplate','2021-07-13 22:07:37','2021-07-13 22:07:37'),(954,NULL,'System','itemtype','2021-07-14 14:55:24','2021-07-14 14:56:16'),(960,NULL,'System','regularprice','2021-07-14 15:34:50','2021-07-14 15:34:50'),(961,NULL,'System','variantsize','2021-07-14 15:34:50','2021-07-14 15:34:50'),(962,NULL,'System','unitprice','2021-07-14 15:34:50','2021-07-14 15:34:50'),(963,NULL,'System','Space','2021-07-14 15:34:50','2021-07-14 15:52:26'),(964,NULL,'System','sum','2021-07-14 17:29:07','2021-07-14 17:29:07'),(965,NULL,'System','manufacturer','2021-07-14 18:13:59','2021-07-14 18:13:59'),(966,NULL,'System','communicationtype','2021-07-14 18:15:33','2021-07-14 18:15:33'),(967,NULL,'System','normal','2021-07-14 18:16:41','2021-07-14 18:16:41'),(968,NULL,'System','bold','2021-07-14 18:17:05','2021-07-14 18:17:05'),(969,NULL,'System','connectmethod','2021-07-14 18:29:18','2021-07-14 18:29:18'),(970,NULL,'System','TipsAdjusted','2021-07-14 19:06:35','2021-07-14 19:06:35'),(971,NULL,'System','TipsNotAdjusted','2021-07-14 19:06:52','2021-07-14 19:06:52'),(972,NULL,'System','alltipsstatus','2021-07-14 19:18:12','2021-07-14 19:18:12'),(973,NULL,'System','PlatformSummary','2021-07-14 19:33:09','2021-07-14 19:33:09'),(974,NULL,'Alert','nodata','2021-07-22 17:34:03','2021-07-22 17:35:13'),(975,NULL,'System','itemandmodifier','2021-07-23 17:13:21','2021-08-23 15:00:34'),(976,NULL,'Setting','digitalordering','2021-07-23 17:17:44','2021-07-27 15:13:29'),(977,NULL,'System','itemnotfound','2021-07-23 18:09:28','2021-07-23 18:09:28'),(978,NULL,'Alert','moveitems','2021-07-27 18:19:46','2021-07-27 18:19:46'),(979,NULL,'Alert','cannotmove','2021-07-27 18:29:36','2021-07-27 18:29:36'),(980,NULL,'System','moveitem','2021-07-27 18:43:34','2021-07-27 18:43:34'),(981,NULL,'Permission','moveitem','2021-07-27 19:26:19','2021-07-27 19:26:19'),(982,NULL,'System','customercopy','2021-07-29 16:41:04','2021-07-29 16:41:04'),(983,NULL,'System','merchantcopy','2021-07-29 16:41:04','2021-07-29 16:41:04'),(984,NULL,'System','warehousetype','2021-07-29 21:18:08','2021-07-29 21:18:08'),(985,NULL,'Setting','privatenotes','2021-07-29 21:56:48','2021-07-29 21:56:48'),(986,NULL,'System','privatenotes','2021-07-29 21:59:50','2021-07-29 21:59:50'),(987,NULL,'System','stationtomenus','2021-07-30 21:37:49','2021-07-30 21:37:49'),(988,NULL,'System','ordertypetomenus','2021-07-30 21:37:49','2021-07-30 21:39:42'),(989,NULL,'Setting','reportfilter','2021-08-03 19:22:21','2021-08-03 19:22:21'),(991,NULL,'System','cash_on_hand','2021-08-04 16:54:29','2021-08-04 16:54:29'),(992,NULL,'System','product_type','2021-08-04 16:54:29','2021-08-04 16:54:29'),(993,NULL,'System','gift_card','2021-08-04 16:54:29','2021-08-04 16:54:29'),(994,NULL,'Alert','leastselectedordertype','2021-08-04 17:08:49','2021-08-05 20:25:18'),(995,NULL,'Setting','report','2021-08-05 18:42:49','2021-08-05 18:42:49'),(996,NULL,'Alert','leastselecteddriver','2021-08-05 20:25:18','2021-08-05 20:25:18'),(997,NULL,'System','printdriverreport','2021-08-05 20:33:16','2021-08-05 20:33:16'),(998,NULL,'System','isforceduplicate','2021-08-06 15:05:35','2021-08-06 15:05:35'),(999,NULL,'System','selectedguest','2021-08-06 21:10:56','2021-08-06 21:10:56'),(1000,NULL,'System','voidreason','2021-08-09 20:30:54','2021-08-09 20:30:54'),(1001,NULL,'System','choose','2021-08-09 22:18:58','2021-08-09 22:18:58'),(1002,NULL,'System','week0','2021-08-12 19:59:44','2021-08-12 19:59:44'),(1003,NULL,'System','week1','2021-08-12 19:59:44','2021-08-12 19:59:44'),(1004,NULL,'System','week2','2021-08-12 19:59:44','2021-08-12 19:59:44'),(1005,NULL,'System','week3','2021-08-12 19:59:44','2021-08-12 19:59:44'),(1006,NULL,'System','week4','2021-08-12 19:59:44','2021-08-12 19:59:44'),(1007,NULL,'System','week5','2021-08-12 19:59:44','2021-08-12 19:59:44'),(1008,NULL,'System','week6','2021-08-12 19:59:44','2021-08-12 19:59:44'),(1017,NULL,'System','reservationstatus','2021-08-16 22:06:24','2021-08-16 22:21:06'),(1018,NULL,'System','noshow','2021-08-16 22:06:24','2021-08-16 22:06:24'),(1019,NULL,'System','reopen','2021-08-16 22:06:24','2021-08-16 22:06:24'),(1020,NULL,'System','createReservation','2021-08-16 22:10:29','2021-08-16 22:10:29'),(1021,NULL,'System','serveved','2021-08-16 22:10:29','2021-08-16 22:10:29'),(1022,NULL,'System','arrive','2021-08-16 22:10:29','2021-08-16 22:10:29'),(1023,NULL,'System','reservationseat','2021-08-16 22:16:02','2021-08-16 22:16:02'),(1024,NULL,'System','seated','2021-08-16 22:22:16','2021-08-16 22:22:16'),(1025,NULL,'System','seserved','2021-08-16 22:26:40','2021-08-16 22:26:40'),(1026,NULL,'System','reservationcancel','2021-08-16 22:26:40','2021-08-16 22:26:40'),(1027,NULL,'System','thirdpartypayment','2021-08-17 14:20:13','2021-08-17 14:21:44'),(1037,NULL,'System','reserved','2021-08-18 17:17:15','2021-08-18 17:17:15'),(1038,NULL,'System','confirmed','2021-08-18 17:20:34','2021-08-18 17:20:34'),(1039,NULL,'System','cancelled','2021-08-18 17:22:08','2021-08-18 17:22:08'),(1040,NULL,'Payment','pay8','2021-08-18 18:05:02','2021-08-18 18:05:02'),(1041,NULL,'System','reservation','2021-08-18 19:24:42','2021-08-18 19:24:42'),(1044,NULL,'System','arrived','2021-08-20 18:20:52','2021-08-20 18:20:52'),(1045,NULL,'Alert','qrpayError','2021-08-23 14:44:02','2021-08-23 14:44:02'),(1046,NULL,'System','giftcardamount','2021-08-23 15:06:58','2021-08-23 15:13:10'),(1049,NULL,'System','partyname','2021-08-26 15:57:08','2021-08-26 15:57:08'),(1051,NULL,'System','dateandtime','2021-08-26 15:59:25','2021-08-26 15:59:25'),(1052,NULL,'System','reservationActive','2021-08-26 16:05:35','2021-08-26 16:05:35'),(1053,NULL,'System','reservationInactive','2021-08-26 16:05:35','2021-08-26 16:05:35'),(1054,NULL,'Alert','reservationtimeerror','2021-08-26 16:21:29','2021-08-26 16:22:11'),(1057,NULL,'System','notadjustedtranscation','2021-09-22 21:31:18','2021-09-22 21:31:18'),(1058,NULL,'System','cashpayout','2021-09-29 14:37:48','2021-09-29 14:37:48'),(1059,NULL,'System','payto','2021-09-29 15:41:42','2021-09-29 15:41:42'),(1060,NULL,'System','stationid','2021-10-01 16:47:13','2021-10-01 16:47:13'),(1061,NULL,'System','operatorid','2021-10-01 16:47:13','2021-10-01 16:47:13'),(1062,NULL,'System','payoutreport','2021-10-01 16:47:33','2021-10-01 16:47:33'),(1063,NULL,'System','isignore','2021-10-08 16:22:00','2021-10-08 16:22:14'),(1064,NULL,'System','batchtime','2021-10-11 16:37:17','2021-10-11 16:37:17'),(1065,NULL,'System','master','2021-10-11 17:29:53','2021-10-11 17:29:53'),(1066,NULL,'System','kioskcancel','2021-10-26 14:20:32','2021-10-26 14:20:32'),(1067,NULL,'System','kioskprint','2021-10-26 14:20:32','2021-10-26 14:20:32'),(1068,NULL,'System','kioskpay','2021-10-26 14:20:32','2021-10-26 14:24:32'),(1069,NULL,'System','touchanywheretostart','2021-10-26 14:20:32','2021-10-26 14:24:32'),(1070,NULL,'System','clearorder','2021-10-26 14:25:25','2021-10-26 14:25:25'),(1071,NULL,'System','tryagain','2021-10-26 14:28:11','2021-10-26 14:28:11'),(1072,NULL,'System','swipeortapcard','2021-10-26 18:03:40','2021-10-26 18:03:40'),(1073,NULL,'System','itemcount','2021-10-26 18:12:04','2021-10-26 18:12:04'),(1074,NULL,'System','touchtostart','2021-10-28 18:17:17','2021-10-28 18:17:17'),(1075,NULL,'System','yourcartisempty','2021-10-28 18:22:40','2021-10-28 18:42:45'),(1076,NULL,'System','myorder','2021-10-28 18:23:03','2021-10-28 18:23:03'),(1092,NULL,'System','swiperortabcard','2021-10-28 18:30:12','2021-10-28 18:30:12'),(1093,NULL,'System','pleaseconfirmyourorder','2021-10-28 18:30:12','2021-10-28 18:30:12'),(1094,NULL,'System','viewcart','2021-10-28 18:30:12','2021-10-28 18:30:12'),(1095,NULL,'System','payatcounter','2021-10-28 18:30:12','2021-10-28 18:30:12'),(1096,NULL,'System','howwouldyoulikeopay','2021-10-28 18:30:12','2021-10-28 18:30:12'),(1097,NULL,'System','pleasetakeyourreceiptandpay','2021-10-28 18:30:12','2021-10-28 19:10:56'),(1098,NULL,'System','items','2021-10-28 18:33:43','2021-10-28 18:33:43'),(1102,NULL,'System','howwouldyouliketopay','2021-10-28 18:48:33','2021-10-28 18:48:33'),(1103,NULL,'System','creditcard','2021-10-28 18:48:33','2021-10-28 18:48:33'),(1104,NULL,'System','mycart','2021-10-28 18:48:33','2021-10-28 18:48:33'),(1105,NULL,'System','addtocart','2021-10-28 20:33:56','2021-10-28 20:33:56'),(1106,NULL,'System','menu_type','2021-11-02 18:34:08','2021-11-02 18:34:08'),(1107,NULL,'System','payment_by_station','2021-11-02 18:35:41','2021-11-02 18:35:41'),(1108,NULL,'System','printreceipt','2021-11-03 14:40:53','2021-11-03 14:40:53'),(1109,NULL,'System','cathonhand','2021-11-03 15:27:07','2021-11-03 15:27:07'),(1110,NULL,'System','creditonhand','2021-11-03 18:45:11','2021-11-03 18:45:11'),(1111,NULL,'System','ordernow','2021-11-12 20:04:38','2021-11-12 20:04:38'),(1112,NULL,'System','OrderType8','2022-04-19 15:53:14','2022-04-19 15:53:14'),(1113,NULL,'System','OrderType9','2022-04-19 15:53:14','2022-04-19 15:53:14'),(1117,NULL,'System','confirmprint','2022-06-17 18:06:11','2022-06-17 18:06:11'),(1118,NULL,'Setting','both','2022-06-17 18:06:11','2022-06-17 18:06:11'),(1119,NULL,'Setting','standalone','2022-06-17 18:06:11','2022-06-17 18:06:11'),(1126,NULL,'Permission','reports','2022-06-23 14:37:32','2022-06-23 14:37:32'),(1127,NULL,'Permission','menu','2022-06-23 14:37:32','2022-06-23 14:37:32'),(1128,NULL,'Permission','promotion','2022-06-23 14:37:32','2022-06-23 14:37:32'),(1129,NULL,'Permission','customer','2022-06-23 14:37:32','2022-06-23 14:37:32'),(1130,NULL,'Permission','giftcards','2022-06-23 14:37:32','2022-06-23 14:37:32'),(1131,NULL,'Permission','setting','2022-06-23 14:37:32','2022-06-23 14:37:32'),(1132,NULL,'Permission','tablelayout','2022-06-23 14:37:32','2022-06-23 14:37:32'),(1133,NULL,'Permission','warehouse','2022-06-23 14:37:32','2022-06-23 14:37:32'),(1134,NULL,'Permission','administration','2022-06-23 14:37:32','2022-06-23 14:37:32'),(1135,NULL,'Permission','thirdpay','2022-06-23 14:37:43','2022-06-23 14:37:43'),(1136,NULL,'Permission','resend','2022-06-23 14:37:43','2022-06-23 14:37:43'),(1137,NULL,'Permission','cleartable','2022-06-23 14:37:43','2022-06-23 14:37:43'),(1138,NULL,'Setting','ignorepaymentmethod','2022-06-23 14:37:57','2022-06-23 14:37:57'),(1139,NULL,'Setting','auto-packer-reprint','2022-06-23 14:37:57','2022-06-23 14:37:57'),(1140,NULL,'Setting','discount','2022-06-23 14:37:57','2022-06-23 14:37:57'),(1141,NULL,'Setting','tipsfortax','2022-06-23 14:37:57','2022-06-23 14:37:57'),(1142,NULL,'Setting','tipsfordiscount','2022-06-23 14:37:57','2022-06-23 14:37:57'),(1143,NULL,'Setting','aftertax','2022-06-23 14:37:57','2022-06-23 14:37:57'),(1144,NULL,'Setting','beforetax','2022-06-23 14:37:57','2022-06-23 14:37:57'),(1145,NULL,'Setting','default','2022-06-23 14:37:57','2022-06-23 14:37:57'),(1151,NULL,'System','coupon','2022-06-29 14:34:42','2022-06-29 14:34:42'),(1152,NULL,'System','syncmenu','2022-06-29 14:34:42','2022-06-29 14:34:42'),(1153,NULL,'System','cashinoutreport','2022-06-29 14:34:42','2022-06-29 14:34:42'),(1154,NULL,'System','enter','2022-06-29 14:34:42','2022-06-29 14:34:42'),(1155,NULL,'Alert','areyousuresettle','2022-06-29 14:34:42','2022-06-29 14:34:42'),(1156,NULL,'System','cashin','2022-06-29 14:34:42','2022-06-29 14:34:42'),(1157,NULL,'System','settle','2022-06-29 14:34:42','2022-06-29 14:34:42'),(1158,NULL,'System','cashinout','2022-06-29 14:34:42','2022-06-29 14:34:42'),(1159,NULL,'Setting','otherfeebeforetax','2022-06-29 14:34:42','2022-06-29 14:34:42'),(1172,NULL,'System','warehousereport','2022-07-07 18:56:06','2022-07-07 18:56:06'),(1184,NULL,'Alert','uploadmenu','2022-07-07 18:56:29','2022-07-07 18:56:29'),(1185,NULL,'Alert','downloadmenu','2022-07-07 18:56:29','2022-07-07 18:56:29'),(1189,NULL,'System','qrcode','2022-07-26 19:40:20','2022-07-26 19:40:20'),(1190,NULL,'Kiosk','ordertype2','2022-08-04 19:52:11','2022-08-04 19:52:11'),(1257,NULL,'Kiosk','touchtostart','2022-08-04 20:19:41','2022-08-04 20:19:41'),(1258,NULL,'Kiosk','en','2022-08-04 20:19:56','2022-08-04 20:19:56'),(1259,NULL,'Kiosk','cn','2022-08-04 20:19:56','2022-08-04 20:19:56'),(1260,NULL,'Kiosk','ordertype1','2022-08-04 20:20:18','2022-08-04 20:20:18'),(1261,NULL,'Kiosk','yourcartisempty','2022-08-04 20:20:18','2022-08-04 20:20:18'),(1262,NULL,'Kiosk','total','2022-08-04 20:20:18','2022-08-04 20:20:18'),(1263,NULL,'Kiosk','myorder','2022-08-04 20:20:18','2022-08-04 20:20:18'),(1277,NULL,'Kiosk','items','2022-08-04 20:21:54','2022-08-04 20:21:54'),(1278,NULL,'Kiosk','clearorder','2022-08-04 20:21:54','2022-08-04 20:21:54'),(1279,NULL,'Kiosk','done','2022-08-04 20:21:54','2022-08-04 20:21:54'),(1280,NULL,'Kiosk','pleaseconfirmyourorder','2022-08-04 20:22:21','2022-08-04 20:22:21'),(1281,NULL,'Kiosk','back','2022-08-04 20:22:21','2022-08-04 20:22:21'),(1282,NULL,'Kiosk','subtotal','2022-08-04 20:22:21','2022-08-04 20:22:21'),(1283,NULL,'Kiosk','tax','2022-08-04 20:22:21','2022-08-04 20:22:21'),(1291,NULL,'Kiosk','payatcounter','2022-08-04 20:24:46','2022-08-04 20:24:46'),(1292,NULL,'Kiosk','pay','2022-08-04 20:24:46','2022-08-04 20:24:46'),(1293,NULL,'Kiosk','howwouldyouliketopay','2022-08-04 20:24:46','2022-08-04 20:24:46'),(1294,NULL,'Kiosk','creditcard','2022-08-04 20:25:10','2022-08-04 20:25:10'),(1295,NULL,'Kiosk','pleasetakeyourreceiptandpay','2022-08-04 20:25:10','2022-08-04 20:25:10'),(1296,NULL,'Kiosk','addtocart','2022-08-04 20:25:10','2022-08-04 20:25:10'),(1297,NULL,'Kiosk','updatetocart','2022-08-04 20:25:10','2022-08-04 20:25:10'),(1298,NULL,'Kiosk','viewcart','2022-08-04 20:34:07','2022-08-04 20:34:28'),(1299,NULL,'Kiosk','mycart','2022-08-04 20:34:28','2022-08-04 20:34:28'),(1300,NULL,'Kiosk','addtip','2022-08-04 20:35:40','2022-08-04 20:35:40'),(1301,NULL,'Kiosk','cancel','2022-08-04 20:36:22','2022-08-04 20:36:22'),(1302,NULL,'Kiosk','tryagain','2022-08-04 20:36:22','2022-08-04 20:36:22'),(1303,NULL,'Kiosk','placeorder','2022-08-04 20:54:52','2022-08-04 20:54:52'),(1306,NULL,'Setting','ispickup','2022-08-11 20:41:49','2022-08-11 20:41:49'),(1307,NULL,'Kiosk','add','2022-08-29 16:39:09','2022-08-29 16:39:09');
/*!40000 ALTER TABLE `language_system_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_system_lists`
--

DROP TABLE IF EXISTS `language_system_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_system_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key_id` int NOT NULL,
  `name` varchar(245) NOT NULL,
  `language` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`key_id`,`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2807 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_system_lists`
--

LOCK TABLES `language_system_lists` WRITE;
/*!40000 ALTER TABLE `language_system_lists` DISABLE KEYS */;
INSERT INTO `language_system_lists` VALUES (1,1,'Dine In',1,'2021-03-29 20:56:22','2021-03-29 20:57:27'),(2,1,'堂 吃',2,'2021-03-29 20:56:22','2021-04-01 19:16:20'),(3,2,'To Go',1,'2021-03-29 20:56:22','2021-03-29 20:57:27'),(4,2,'带 走',2,'2021-03-29 20:56:22','2021-07-13 21:10:49'),(5,3,'Pick Up',1,'2021-03-29 20:56:22','2021-04-02 14:15:32'),(6,3,'来 取',2,'2021-03-29 20:56:22','2021-07-13 21:10:40'),(7,4,'Delivery',1,'2021-03-29 20:56:22','2021-03-29 20:56:22'),(8,4,'外 送',2,'2021-03-29 20:56:22','2021-07-13 21:10:57'),(9,5,'ChineseMenu',1,'2021-03-29 20:56:22','2021-12-16 21:41:34'),(10,5,'ChineseMenu',2,'2021-03-29 20:56:22','2021-12-16 21:41:34'),(11,6,'Qmenu test',1,'2021-03-29 20:56:22','2022-08-11 20:46:56'),(12,6,'Qmenu test',2,'2021-03-29 20:56:22','2022-08-11 20:46:56'),(15,8,'Menu',1,'2021-03-30 15:11:02','2021-03-31 21:09:38'),(16,8,'菜 单',2,'2021-03-30 15:11:02','2021-03-31 21:09:38'),(17,7,'Reports',1,'2021-03-30 15:11:17','2021-06-30 20:20:02'),(18,7,'报 表',2,'2021-03-30 15:11:17','2021-04-02 18:03:42'),(23,27,'Attendance',1,'2021-03-30 16:01:48','2021-03-30 16:01:48'),(24,27,'考 勤',2,'2021-03-30 16:01:48','2021-04-02 20:37:38'),(26,9,'Dine In',1,'2021-03-30 20:06:54','2021-03-30 22:06:30'),(27,9,'堂 吃',2,'2021-03-30 20:06:54','2021-04-05 17:13:33'),(41,110,'Add-On',1,'2021-03-30 22:01:03','2021-07-14 15:18:46'),(42,110,'配料补充',2,'2021-03-30 22:01:03','2021-07-12 18:50:52'),(44,59,'Refilled Value',1,'2021-03-30 22:01:13','2021-06-29 21:32:35'),(45,59,'充 值',2,'2021-03-30 22:01:13','2021-04-05 17:59:57'),(47,24,'Back Office',1,'2021-03-30 22:01:33','2021-03-30 22:01:33'),(48,24,'后 台',2,'2021-03-30 22:01:33','2021-04-05 17:30:59'),(50,16,'Recall',1,'2021-03-30 22:03:07','2021-03-30 22:03:07'),(51,16,'订单记录',2,'2021-03-30 22:03:07','2021-03-30 22:03:07'),(53,12,'Delivery',1,'2021-03-30 22:06:34','2021-03-30 22:06:34'),(54,12,'外 送',2,'2021-03-30 22:06:34','2021-04-05 17:13:49'),(56,10,'To Go',1,'2021-03-30 22:06:41','2021-03-30 22:06:41'),(57,10,'带 走',2,'2021-03-30 22:06:41','2021-04-05 17:13:24'),(59,11,'Pick Up',1,'2021-03-30 22:06:49','2021-03-30 22:06:49'),(60,11,'来 取',2,'2021-03-30 22:06:49','2021-04-05 17:13:44'),(62,131,'Are you sure delete it?',1,'2021-03-30 22:07:29','2021-03-30 22:07:29'),(63,131,'确定要删除吗?',2,'2021-03-30 22:07:29','2021-04-05 17:05:29'),(65,132,'Do you want to save this order? ',1,'2021-03-30 22:07:39','2021-07-20 17:06:35'),(66,132,'您是否要保存该订单？',2,'2021-03-30 22:07:39','2021-07-20 17:06:35'),(68,13,'Walk In',1,'2021-03-30 22:20:32','2021-03-30 22:20:32'),(69,13,'散 客',2,'2021-03-30 22:20:32','2021-06-29 15:49:32'),(71,14,'ChineseMenu',1,'2021-03-30 22:20:39','2021-12-16 21:41:08'),(72,14,'ChineseMenu',2,'2021-03-30 22:20:39','2021-12-16 21:41:08'),(74,15,'Qmenu test2',1,'2021-03-30 22:20:47','2022-08-11 20:46:56'),(75,15,'3Qmenu test3',2,'2021-03-30 22:20:47','2022-08-11 20:46:56'),(77,84,'Yesterday',1,'2021-03-30 22:21:27','2021-06-28 19:37:07'),(78,84,'昨 天',2,'2021-03-30 22:21:27','2021-07-02 20:20:32'),(80,63,'Volume',1,'2021-03-30 22:21:41','2021-03-30 22:21:41'),(81,63,'Volume',2,'2021-03-30 22:21:41','2021-03-30 22:21:41'),(83,133,'Do you need to print the receipt?',1,'2021-03-30 22:22:08','2021-06-16 18:24:05'),(84,133,'您需要打印收据吗?',2,'2021-03-30 22:22:08','2021-06-16 18:23:44'),(86,123,'All',1,'2021-03-30 22:22:19','2021-07-13 14:42:17'),(87,123,'全 部',2,'2021-03-30 22:22:19','2021-07-13 14:42:17'),(89,98,'Order',1,'2021-03-30 22:22:54','2021-03-30 22:22:54'),(90,98,'订 单',2,'2021-03-30 22:22:54','2021-03-31 18:48:23'),(92,136,'Pay',1,'2021-03-30 22:23:05','2021-03-30 22:23:05'),(93,136,'付 款',2,'2021-03-30 22:23:05','2021-04-05 19:26:10'),(95,29,'Refund',1,'2021-03-30 22:23:15','2021-03-30 22:23:15'),(96,29,'退 款',2,'2021-03-30 22:23:15','2021-07-01 19:09:26'),(98,60,'Resend',1,'2021-03-30 22:23:22','2021-03-30 22:23:22'),(99,60,'重 送',2,'2021-03-30 22:23:22','2021-04-05 20:35:34'),(101,102,'Position',1,'2021-03-30 22:23:46','2021-06-28 19:42:39'),(102,102,'职 位',2,'2021-03-30 22:23:46','2021-06-29 14:57:52'),(104,64,'Sales',1,'2021-03-30 22:23:56','2021-03-30 22:23:56'),(105,64,'消 费',2,'2021-03-30 22:23:56','2021-04-05 18:00:25'),(107,126,'Save',1,'2021-03-30 22:24:03','2021-03-30 22:24:03'),(108,126,'保 存',2,'2021-03-30 22:24:03','2021-03-31 18:47:03'),(110,43,'Date',1,'2021-03-31 18:38:20','2021-03-31 18:38:20'),(111,43,'日 期',2,'2021-03-31 18:38:20','2021-03-31 21:00:18'),(113,44,'Customer Info',1,'2021-03-31 18:38:30','2021-03-31 18:38:30'),(114,44,'顾客信息',2,'2021-03-31 18:38:30','2021-06-23 21:13:54'),(116,56,'Export',1,'2021-03-31 18:39:09','2021-03-31 18:39:09'),(117,56,'导 出',2,'2021-03-31 18:39:09','2021-03-31 18:39:09'),(119,33,'Exit Home',1,'2021-03-31 18:39:42','2021-03-31 18:39:42'),(120,33,'退出主页',2,'2021-03-31 18:39:42','2021-04-05 19:41:29'),(122,74,'Next',1,'2021-03-31 18:40:01','2021-03-31 18:40:01'),(123,74,'下 页',2,'2021-03-31 18:40:01','2021-03-31 18:40:01'),(125,122,'NO',1,'2021-03-31 18:40:21','2021-04-06 21:52:00'),(126,122,'否',2,'2021-03-31 18:40:21','2021-07-13 19:57:05'),(128,37,'No Penny',1,'2021-03-31 18:40:38','2021-06-29 15:21:43'),(129,37,'余数取整',2,'2021-03-31 18:40:38','2021-06-29 15:21:53'),(131,140,'Original Order',1,'2021-03-31 18:41:18','2021-06-29 15:50:09'),(132,140,'原 单',2,'2021-03-31 18:41:18','2021-04-06 17:49:37'),(134,163,'Skip Table Select',1,'2021-03-31 18:41:52','2021-06-28 22:42:30'),(135,163,'跳过桌子选择',2,'2021-03-31 18:41:52','2021-03-31 18:41:52'),(137,82,'SVC',1,'2021-03-31 18:41:59','2021-03-31 18:41:59'),(138,82,'SVC',2,'2021-03-31 18:41:59','2021-03-31 18:41:59'),(140,50,'SYNC',1,'2021-03-31 18:42:13','2021-03-31 18:42:13'),(141,50,'同 步',2,'2021-03-31 18:42:13','2021-03-31 18:42:13'),(143,68,'Split Table',1,'2021-03-31 18:42:39','2021-07-14 21:21:36'),(144,68,'分 桌',2,'2021-03-31 18:42:39','2021-07-14 21:21:49'),(146,175,'Themes',1,'2021-03-31 18:43:03','2021-03-31 18:43:03'),(147,175,'主 题',2,'2021-03-31 18:43:03','2021-03-31 18:43:03'),(149,85,'This Week',1,'2021-03-31 18:43:26','2021-03-31 18:43:26'),(150,85,'本 周',2,'2021-03-31 18:43:26','2021-06-28 22:45:29'),(152,96,'Void Report',1,'2021-03-31 18:45:01','2021-03-31 18:45:01'),(153,96,'撤销报表',2,'2021-03-31 18:45:01','2021-04-05 17:21:32'),(155,118,'Tel',1,'2021-03-31 18:46:04','2021-03-31 18:46:04'),(156,118,'电 话',2,'2021-03-31 18:46:04','2021-03-31 18:46:04'),(158,169,'Order Completed Page',1,'2021-03-31 18:46:35','2021-07-01 14:25:32'),(159,169,'下单完成页面',2,'2021-03-31 18:46:35','2021-07-01 14:25:37'),(161,146,'Search',1,'2021-03-31 18:46:52','2021-03-31 18:46:52'),(162,146,'查 询 ',2,'2021-03-31 18:46:52','2021-07-01 16:42:46'),(164,141,'Print All',1,'2021-03-31 18:47:35','2021-03-31 18:47:35'),(165,141,'打印全部',2,'2021-03-31 18:47:35','2021-03-31 18:47:35'),(167,93,'Platform',1,'2021-03-31 18:48:00','2021-07-14 19:35:42'),(168,93,'平 台',2,'2021-03-31 18:48:00','2021-07-14 19:35:42'),(170,144,'Operation',1,'2021-03-31 18:48:42','2021-03-31 18:48:42'),(171,144,'操 作',2,'2021-03-31 18:48:42','2021-03-31 18:48:42'),(173,31,'Void Payment',1,'2021-03-31 18:53:28','2021-03-31 18:53:28'),(174,31,'撤销付款',2,'2021-03-31 18:53:28','2021-06-22 22:35:37'),(176,32,'Void Order',1,'2021-03-31 18:53:43','2021-03-31 18:53:43'),(177,32,'订单作废',2,'2021-03-31 18:53:43','2021-04-05 17:07:08'),(179,30,'Void Item',1,'2021-03-31 18:53:54','2021-03-31 18:53:54'),(180,30,'删除單品',2,'2021-03-31 18:53:54','2021-07-09 16:24:57'),(182,150,'Virtual',1,'2021-03-31 18:54:01','2021-03-31 18:54:01'),(183,150,'虚 拟',2,'2021-03-31 18:54:01','2021-04-05 17:50:50'),(185,66,'View',1,'2021-03-31 18:54:19','2021-03-31 18:54:19'),(186,66,'查 看',2,'2021-03-31 18:54:19','2021-03-31 18:54:19'),(188,114,'User',1,'2021-03-31 18:54:30','2021-03-31 18:54:30'),(189,114,'用 户',2,'2021-03-31 18:54:31','2021-03-31 18:54:31'),(194,55,'Top Sales Rank',1,'2021-03-31 18:56:02','2021-06-29 18:58:14'),(195,55,'热销排行',2,'2021-03-31 18:56:02','2021-06-29 18:49:57'),(197,83,'Today',1,'2021-03-31 18:56:20','2021-03-31 18:56:20'),(198,83,'今 天',2,'2021-03-31 18:56:20','2021-03-31 18:56:20'),(200,23,'Online Order',1,'2021-03-31 19:06:36','2021-03-31 19:06:36'),(201,23,'网上订单',2,'2021-03-31 19:06:36','2021-03-31 19:06:36'),(203,143,'Packer',1,'2021-03-31 19:07:10','2021-03-31 19:07:10'),(204,143,'打 包',2,'2021-03-31 19:07:10','2021-03-31 19:07:10'),(206,48,'Time Clock',1,'2021-03-31 19:59:42','2021-06-30 19:29:07'),(207,48,'考勤管理',2,'2021-03-31 19:59:42','2021-07-13 19:34:11'),(212,20,'View All Staff Report',1,'2021-03-31 20:00:40','2021-07-09 16:12:54'),(213,20,'查看全体员工报表',2,'2021-03-31 20:00:40','2021-07-09 16:12:54'),(215,21,'Close Out',1,'2021-03-31 20:00:50','2021-05-13 21:34:30'),(216,21,'结 账',2,'2021-03-31 20:00:50','2021-04-05 17:38:46'),(218,238,'Setting',1,'2021-03-31 20:00:56','2021-03-31 20:00:56'),(219,238,'设 置',2,'2021-03-31 20:00:56','2021-04-05 17:00:42'),(221,246,'Service Fee',1,'2021-03-31 20:01:05','2021-03-31 20:01:05'),(222,246,'服务费',2,'2021-03-31 20:01:05','2021-06-28 22:43:01'),(224,243,'Dual Screen',1,'2021-03-31 20:01:16','2021-07-13 22:24:47'),(225,243,'双 屏',2,'2021-03-31 20:01:16','2021-04-05 17:52:03'),(227,34,'Return Home',1,'2021-03-31 20:01:37','2021-03-31 20:01:37'),(228,34,'返回主页',2,'2021-03-31 20:01:37','2021-04-05 19:40:57'),(230,145,'Reset Time',1,'2021-03-31 20:01:43','2021-07-01 21:55:24'),(231,145,'重置单号',2,'2021-03-31 20:01:43','2021-07-01 21:55:24'),(233,95,'Refund Report',1,'2021-03-31 20:01:52','2021-03-31 20:01:52'),(234,95,'退款报表',2,'2021-03-31 20:01:52','2021-04-05 17:17:58'),(236,138,'Reduce',1,'2021-03-31 20:02:05','2021-04-20 21:41:59'),(237,138,'减',2,'2021-03-31 20:02:05','2021-07-01 20:48:32'),(239,171,'Quick Note',1,'2021-03-31 20:02:15','2021-03-31 20:02:15'),(240,171,'快速备注',2,'2021-03-31 20:02:15','2021-04-02 19:42:11'),(242,26,'Promotion',1,'2021-03-31 20:02:22','2021-03-31 20:02:22'),(243,26,'促 销',2,'2021-03-31 20:02:22','2021-04-02 20:37:23'),(245,129,'Processing',1,'2021-03-31 20:02:30','2021-03-31 20:02:30'),(246,129,'处理中',2,'2021-03-31 20:02:30','2021-06-30 20:04:16'),(248,81,'Print',1,'2021-03-31 20:02:38','2021-03-31 20:02:38'),(249,81,'打 印',2,'2021-03-31 20:02:38','2021-04-01 15:28:11'),(251,75,'Pre',1,'2021-03-31 20:02:46','2021-03-31 20:02:46'),(252,75,'前',2,'2021-03-31 20:02:46','2021-07-13 20:10:42'),(254,19,'Gift Card',1,'2021-03-31 20:07:32','2021-03-31 20:07:32'),(255,19,'礼品卡',2,'2021-03-31 20:07:32','2021-04-05 17:04:07'),(257,18,'Caller ID History',1,'2021-03-31 20:08:52','2021-06-23 18:39:14'),(258,18,'来电记录',2,'2021-03-31 20:08:52','2021-07-13 19:34:23'),(260,130,'Sign Out',1,'2021-03-31 20:10:54','2021-06-23 19:07:08'),(261,130,'登 出',2,'2021-03-31 20:10:54','2021-04-05 19:27:06'),(263,17,'Cash Drawer',1,'2021-03-31 20:11:33','2021-03-31 20:11:33'),(264,17,'钱 箱',2,'2021-03-31 20:11:33','2021-07-13 19:48:17'),(266,283,'Add',1,'2021-03-31 20:20:34','2021-03-31 20:20:34'),(267,283,'加',2,'2021-03-31 20:20:34','2021-04-06 16:44:20'),(269,287,'Info',1,'2021-03-31 20:20:54','2021-03-31 20:20:54'),(270,287,'信 息',2,'2021-03-31 20:20:54','2021-04-05 21:20:50'),(272,137,'Kitchen',1,'2021-03-31 20:21:02','2021-03-31 20:21:02'),(273,137,'送 厨',2,'2021-03-31 20:21:02','2021-04-05 21:56:10'),(275,77,'Item ID',1,'2021-03-31 20:21:10','2021-06-25 20:57:46'),(276,77,'菜品 ID',2,'2021-03-31 20:21:10','2021-06-25 20:57:46'),(278,101,'Item',1,'2021-03-31 20:21:23','2021-03-31 20:21:23'),(279,101,'菜 品',2,'2021-03-31 20:21:23','2021-04-05 17:01:51'),(281,54,'Hours',1,'2021-03-31 20:21:36','2021-03-31 20:21:36'),(282,54,'小 时',2,'2021-03-31 20:21:36','2021-04-02 20:35:39'),(284,45,'Home Page',1,'2021-03-31 20:21:44','2021-03-31 20:21:44'),(285,45,'主 页',2,'2021-03-31 20:21:44','2021-04-02 20:39:00'),(287,142,'History',1,'2021-03-31 20:21:50','2021-03-31 20:21:50'),(288,142,'历史记录',2,'2021-03-31 20:21:50','2021-04-06 14:32:47'),(290,25,'Happy Hour',1,'2021-03-31 20:21:59','2021-03-31 20:21:59'),(291,25,'欢乐时光',2,'2021-03-31 20:21:59','2021-04-05 17:12:29'),(293,128,'Guest',1,'2021-03-31 20:22:11','2021-03-31 20:22:11'),(294,128,'用餐人数',2,'2021-03-31 20:22:11','2021-06-28 16:00:54'),(296,99,'Group',1,'2021-03-31 20:22:16','2021-03-31 20:22:16'),(297,99,'目 录',2,'2021-03-31 20:22:16','2021-07-13 19:34:56'),(299,135,'Gratuity',1,'2021-03-31 20:22:29','2021-04-07 19:50:03'),(300,135,'小費(內含)',2,'2021-03-31 20:22:29','2021-06-25 20:45:44'),(302,52,'Font Weight',1,'2021-03-31 20:22:36','2021-03-31 20:22:36'),(303,52,'字体粗细',2,'2021-03-31 20:22:36','2021-04-06 18:16:49'),(305,51,'Font Size',1,'2021-03-31 20:22:42','2021-03-31 20:22:42'),(306,51,'字体大小',2,'2021-03-31 20:22:42','2021-04-06 18:16:36'),(308,113,'Administration',1,'2021-03-31 20:22:57','2021-06-23 22:38:16'),(309,113,'人员管理',2,'2021-03-31 20:22:57','2021-06-23 22:38:16'),(311,176,'DutyFree',1,'2021-03-31 20:23:03','2021-04-06 20:46:17'),(312,176,'免 税',2,'2021-03-31 20:23:03','2021-04-06 20:45:53'),(314,116,'Cashdrawer',1,'2021-03-31 20:23:08','2021-06-23 22:18:36'),(315,116,'钱箱',2,'2021-03-31 20:23:08','2021-04-05 17:29:04'),(317,245,'Delivery Fee',1,'2021-03-31 20:23:22','2021-03-31 20:23:22'),(318,245,'外送费',2,'2021-03-31 20:23:22','2021-04-05 17:08:05'),(320,147,'Deposit',1,'2021-03-31 20:23:31','2021-03-31 20:23:31'),(321,147,'入 账',2,'2021-03-31 20:23:31','2021-07-06 19:12:38'),(323,127,'Discount',1,'2021-03-31 20:23:38','2021-03-31 20:23:38'),(324,127,'打 折',2,'2021-03-31 20:23:38','2021-04-05 17:24:20'),(326,111,'Hardware',1,'2021-03-31 20:23:44','2021-06-23 22:06:28'),(327,111,'硬 件',2,'2021-03-31 20:23:44','2021-06-30 20:14:16'),(329,36,'Default Cash',1,'2021-03-31 20:24:02','2021-03-31 20:24:02'),(330,36,'默认现金',2,'2021-03-31 20:24:02','2021-04-05 17:04:58'),(332,115,'Activated',1,'2021-03-31 20:24:10','2021-06-23 21:10:45'),(333,115,'已激活',2,'2021-03-31 20:24:10','2021-06-23 21:10:45'),(335,49,'Count',1,'2021-03-31 20:24:16','2021-03-31 20:24:16'),(336,49,'总 数',2,'2021-03-31 20:24:16','2021-07-13 22:21:46'),(338,88,'Clear',1,'2021-03-31 20:24:35','2021-06-28 15:15:27'),(339,88,'清 除',2,'2021-03-31 20:24:35','2021-07-13 19:48:36'),(341,46,'Clock In',1,'2021-03-31 20:24:46','2021-03-31 20:24:46'),(342,46,'上班打卡',2,'2021-03-31 20:24:46','2021-06-23 20:54:45'),(344,47,'Clock Out',1,'2021-03-31 20:24:55','2021-03-31 20:24:55'),(345,47,'下班打卡',2,'2021-03-31 20:24:55','2021-06-29 19:42:53'),(347,173,'Config',1,'2021-03-31 20:25:01','2021-03-31 20:25:01'),(348,173,'配 置',2,'2021-03-31 20:25:01','2021-04-06 16:52:24'),(350,28,'Confirm',1,'2021-03-31 20:25:08','2021-03-31 20:25:08'),(351,28,'确 认',2,'2021-03-31 20:25:08','2021-04-02 20:37:31'),(353,194,'Close Out',1,'2021-03-31 20:25:29','2021-07-09 16:10:22'),(354,194,'结 账',2,'2021-03-31 20:25:29','2021-07-13 19:20:55'),(356,191,'Cash Payment',1,'2021-03-31 20:25:40','2021-03-31 20:25:40'),(357,191,'现金支付',2,'2021-03-31 20:25:40','2021-04-07 16:54:19'),(359,187,'Tips',1,'2021-03-31 20:25:48','2021-07-09 16:23:11'),(360,187,'小 费',2,'2021-03-31 20:25:48','2021-07-13 15:39:09'),(362,183,'Change Server',1,'2021-03-31 20:26:00','2021-06-21 22:31:02'),(363,183,'更改服务员',2,'2021-03-31 20:26:00','2021-06-21 22:31:02'),(365,195,'Pay with Credit',1,'2021-03-31 20:26:13','2021-07-09 16:21:20'),(366,195,'信用卡付款',2,'2021-03-31 20:26:13','2021-04-05 18:27:12'),(368,196,'Duty Free',1,'2021-03-31 20:26:22','2021-06-21 22:36:30'),(369,196,'免 税',2,'2021-03-31 20:26:22','2021-07-09 16:22:28'),(371,182,'Edit Order',1,'2021-03-31 20:26:29','2021-03-31 20:26:29'),(372,182,'编辑订单',2,'2021-03-31 20:26:29','2021-04-05 17:06:21'),(374,192,'Pay with Gift Card',1,'2021-03-31 20:26:38','2021-07-09 16:22:01'),(375,192,'礼品卡付款',2,'2021-03-31 20:26:38','2021-04-05 17:04:13'),(377,181,'Amount/ Item Split',1,'2021-03-31 20:27:00','2021-07-09 16:19:17'),(378,181,'人数/菜品分单',2,'2021-03-31 20:27:00','2021-07-09 16:19:13'),(380,189,'View Recall Summary',1,'2021-03-31 20:27:10','2021-07-09 16:18:35'),(381,189,'查看订单小结',2,'2021-03-31 20:27:10','2021-07-09 16:18:35'),(383,197,'Refund ',1,'2021-03-31 20:27:19','2021-06-21 22:50:52'),(384,197,'退 款',2,'2021-03-31 20:27:19','2021-07-09 16:24:15'),(389,177,'Other Close Batch',1,'2021-03-31 20:46:02','2021-06-29 15:58:43'),(390,177,'其它付款结账',2,'2021-03-31 20:46:02','2021-06-29 15:58:43'),(392,255,'Inactivated',1,'2021-03-31 20:46:11','2021-06-23 21:12:03'),(393,255,'已注销',2,'2021-03-31 20:46:11','2021-07-13 20:09:54'),(395,293,'Payment',1,'2021-03-31 20:46:20','2021-03-31 20:46:20'),(396,293,'付款方式',2,'2021-03-31 20:46:20','2021-06-29 20:19:15'),(398,42,'Phone',1,'2021-03-31 20:46:25','2021-03-31 20:46:25'),(399,42,'电 话',2,'2021-03-31 20:46:25','2021-04-02 20:38:11'),(401,103,'Permission',1,'2021-03-31 20:46:34','2021-03-31 20:46:34'),(402,103,'权 限',2,'2021-03-31 20:46:34','2021-07-07 20:03:57'),(404,286,'Price',1,'2021-03-31 20:46:48','2021-03-31 20:46:48'),(405,286,'价 格',2,'2021-03-31 20:46:48','2021-04-05 17:28:37'),(407,70,'Are you sure you want to cancel?',1,'2021-03-31 20:47:41','2021-04-02 17:11:50'),(408,70,'您确定要取消吗?',2,'2021-03-31 20:47:41','2021-07-13 19:10:08'),(410,72,'Are you sure you want to resend?',1,'2021-03-31 20:47:51','2021-03-31 20:48:22'),(411,72,'您确定要重新送厨吗?',2,'2021-03-31 20:47:51','2021-07-13 19:10:11'),(413,71,'Are you sure you want to reset?',1,'2021-03-31 20:47:58','2021-04-02 17:12:11'),(414,71,'您确定要重置吗?',2,'2021-03-31 20:47:58','2021-03-31 20:47:58'),(419,229,'No Penny',1,'2021-03-31 20:49:08','2021-03-31 20:49:08'),(420,229,'零钱取整',2,'2021-03-31 20:49:08','2021-06-22 21:45:26'),(422,232,'Number Of Guest',1,'2021-03-31 20:49:24','2021-06-22 22:40:14'),(423,232,'用餐人数',2,'2021-03-31 20:49:24','2021-07-13 19:26:03'),(425,221,'Skip Info',1,'2021-03-31 20:49:54','2021-06-23 15:46:03'),(426,221,'省略信息',2,'2021-03-31 20:49:54','2021-06-23 15:46:03'),(428,235,'Receipt Before Pay',1,'2021-03-31 20:50:21','2021-06-22 22:40:41'),(431,67,'Adjust Fee',1,'2021-03-31 20:50:38','2021-03-31 20:50:38'),(432,67,'调整费',2,'2021-03-31 20:50:38','2021-04-05 17:47:39'),(434,227,'Tips Before Tax',1,'2021-03-31 20:50:54','2021-06-22 22:38:06'),(435,227,'税前小费',2,'2021-03-31 20:50:54','2021-04-05 17:30:15'),(437,219,'Order Completed Page',1,'2021-03-31 20:51:00','2021-06-23 16:01:49'),(438,219,'下单完成页面',2,'2021-03-31 20:51:00','2021-06-23 16:01:49'),(440,230,'Stand Alone Payment',1,'2021-03-31 20:51:48','2021-06-23 15:57:45'),(441,230,'独立刷卡机',2,'2021-03-31 20:51:48','2021-06-23 15:57:45'),(443,220,'Individual',1,'2021-03-31 20:52:09','2021-03-31 20:52:09'),(444,220,'个人模式',2,'2021-03-31 20:52:09','2021-06-22 21:21:28'),(446,223,'Group Style',1,'2021-03-31 20:52:19','2021-06-22 21:29:07'),(447,223,'目录格式',2,'2021-03-31 20:52:19','2021-06-22 21:31:21'),(449,224,'Category',1,'2021-03-31 20:52:29','2021-03-31 20:52:29'),(450,224,'分类格式',2,'2021-03-31 20:52:29','2021-06-23 16:41:29'),(452,222,'Double Row Mode',1,'2021-03-31 20:52:42','2021-06-22 20:35:16'),(453,222,'双排模式',2,'2021-03-31 20:52:42','2021-06-22 20:35:16'),(455,225,'CDP',1,'2021-03-31 20:52:47','2021-03-31 20:52:47'),(456,225,'CDP',2,'2021-03-31 20:52:47','2021-03-31 20:52:47'),(458,226,'Discount Before Tax',1,'2021-03-31 20:52:57','2021-03-31 20:52:57'),(459,226,'税前折扣',2,'2021-03-31 20:52:57','2021-06-22 21:14:13'),(461,228,'Payment Method',1,'2021-03-31 20:53:20','2021-03-31 20:53:20'),(462,228,'付款方式',2,'2021-03-31 20:53:20','2021-06-22 21:59:35'),(464,234,'Print Credit Card Receipt',1,'2021-03-31 20:54:01','2021-06-22 22:03:22'),(465,234,'信用卡收据打印',2,'2021-03-31 20:54:01','2021-06-22 22:00:56'),(467,233,'Printer Setting',1,'2021-03-31 20:54:08','2021-06-22 22:12:28'),(468,233,'打印设置',2,'2021-03-31 20:54:08','2021-06-22 22:12:28'),(470,236,'Receipt After Paid',1,'2021-03-31 20:54:25','2021-06-22 22:40:37'),(471,236,'付款后打印收据',2,'2021-03-31 20:54:25','2021-06-22 22:15:47'),(473,231,'Skip Table Select',1,'2021-03-31 20:54:50','2021-03-31 20:54:50'),(474,231,'跳过桌子介面',2,'2021-03-31 20:54:50','2021-06-23 15:57:12'),(476,314,'Card Setting',1,'2021-03-31 20:55:23','2021-06-23 18:57:43'),(477,314,'礼品卡设置',2,'2021-03-31 20:55:23','2021-06-23 18:57:43'),(479,296,'Card Number',1,'2021-03-31 20:55:29','2021-06-23 18:54:40'),(480,296,'卡 号',2,'2021-03-31 20:55:29','2021-07-13 19:09:38'),(482,152,'Pay with Cash',1,'2021-03-31 20:55:41','2021-07-09 16:21:12'),(483,152,'现金付款',2,'2021-03-31 20:55:41','2021-04-05 17:04:27'),(485,100,'Category',1,'2021-03-31 20:55:47','2021-06-29 15:27:19'),(486,100,'分 类',2,'2021-03-31 20:55:47','2021-07-13 19:44:50'),(488,155,'CDP',1,'2021-03-31 20:55:53','2021-03-31 20:55:53'),(489,155,'刷卡手续费',2,'2021-03-31 20:55:53','2021-06-23 19:00:56'),(491,92,'Order Created',1,'2021-03-31 20:56:08','2021-06-23 19:03:52'),(492,92,'建单时间',2,'2021-03-31 20:56:08','2021-06-23 19:02:52'),(494,168,'Check List',1,'2021-03-31 20:56:16','2021-06-23 19:05:32'),(495,168,'核对清单',2,'2021-03-31 20:56:16','2021-04-05 19:45:36'),(497,120,'City',1,'2021-03-31 20:56:26','2021-03-31 20:56:26'),(498,120,'城 市',2,'2021-03-31 20:56:26','2021-04-05 17:26:07'),(500,159,'0 Copy',1,'2021-03-31 20:59:06','2021-03-31 20:59:06'),(501,159,'0 份',2,'2021-03-31 20:59:06','2021-03-31 20:59:06'),(503,160,'1 Copy',1,'2021-03-31 20:59:14','2021-03-31 20:59:14'),(504,160,'1 份',2,'2021-03-31 20:59:14','2021-03-31 20:59:29'),(506,161,'2 Copies',1,'2021-03-31 20:59:18','2021-06-22 20:43:44'),(507,161,'2 份',2,'2021-03-31 20:59:18','2021-03-31 20:59:32'),(509,162,'3 Copies',1,'2021-03-31 20:59:44','2021-06-22 20:43:50'),(510,162,'3 份',2,'2021-03-31 20:59:44','2021-03-31 20:59:44'),(512,297,'Customer',1,'2021-03-31 21:00:00','2021-03-31 21:00:00'),(513,297,'顾 客',2,'2021-03-31 21:00:00','2021-07-06 19:11:14'),(515,89,'Delay 15 min(s)',1,'2021-03-31 21:00:55','2021-03-31 21:00:55'),(516,89,'延时15分钟',2,'2021-03-31 21:00:55','2021-04-02 20:30:57'),(518,90,'Delay 30 min(s)',1,'2021-03-31 21:01:03','2021-03-31 21:01:03'),(519,90,'延时30分钟',2,'2021-03-31 21:01:03','2021-04-02 20:31:03'),(521,91,'Delay 60 min(s)',1,'2021-03-31 21:01:09','2021-03-31 21:01:09'),(525,91,'延时60分钟',2,'2021-03-31 21:01:41','2021-04-02 20:31:09'),(527,154,'Info',1,'2021-03-31 21:02:09','2021-03-31 21:02:09'),(528,154,'信 息',2,'2021-03-31 21:02:09','2021-03-31 21:02:09'),(530,288,'Modifier',1,'2021-03-31 21:02:53','2021-03-31 21:02:53'),(531,288,'配 料',2,'2021-03-31 21:02:53','2021-03-31 21:02:53'),(533,289,'More',1,'2021-03-31 21:03:07','2021-03-31 21:03:07'),(534,289,'更 多',2,'2021-03-31 21:03:07','2021-03-31 21:03:07'),(536,87,'Move',1,'2021-03-31 21:03:20','2021-03-31 21:03:20'),(537,87,'移 动',2,'2021-03-31 21:03:20','2021-03-31 21:03:20'),(539,117,'Name',1,'2021-03-31 21:03:32','2021-06-28 21:55:18'),(540,117,'名 称',2,'2021-03-31 21:03:32','2021-06-28 21:55:18'),(542,61,'New Gift Card',1,'2021-03-31 21:04:10','2021-03-31 21:04:10'),(543,61,'新礼品卡',2,'2021-03-31 21:04:10','2021-04-07 17:47:58'),(545,324,'Overview',1,'2021-03-31 21:22:39','2021-04-13 14:18:55'),(546,324,'概 况',2,'2021-03-31 21:22:39','2021-04-05 17:17:11'),(548,292,'Classification',1,'2021-03-31 21:22:55','2021-03-31 21:22:55'),(549,292,'分类报表',2,'2021-03-31 21:22:55','2021-04-02 20:37:51'),(551,325,'Void',1,'2021-03-31 21:23:08','2021-03-31 21:23:08'),(552,325,'作 废',2,'2021-03-31 21:23:08','2021-07-01 21:22:37'),(554,326,'Section',1,'2021-03-31 21:23:30','2021-03-31 21:23:30'),(555,326,'套 餐',2,'2021-03-31 21:23:30','2021-04-05 17:03:13'),(557,327,'Course',1,'2021-03-31 21:23:42','2021-03-31 21:23:42'),(558,327,'上菜排序',2,'2021-03-31 21:23:42','2021-06-23 21:06:01'),(560,313,'Card Management',1,'2021-03-31 21:25:06','2021-07-06 18:35:12'),(561,313,'礼品卡管理',2,'2021-03-31 21:25:06','2021-07-06 18:35:12'),(563,315,'Driver',1,'2021-03-31 21:26:31','2021-03-31 21:26:31'),(564,315,'外卖员',2,'2021-03-31 21:26:31','2021-07-06 19:09:51'),(566,328,'Warehouse',1,'2021-03-31 21:33:37','2021-06-03 22:16:29'),(569,310,'System',1,'2021-03-31 21:33:59','2021-03-31 21:33:59'),(572,39,'Language',1,'2021-03-31 21:34:11','2021-03-31 21:34:11'),(575,104,'Avaliable',1,'2021-03-31 21:36:48','2021-03-31 21:36:48'),(576,104,'可 用',2,'2021-03-31 21:36:48','2021-04-05 17:35:34'),(578,109,'Order No.',1,'2021-03-31 21:37:45','2021-07-12 21:42:03'),(581,108,'Order Time',1,'2021-03-31 21:38:13','2021-03-31 21:38:13'),(582,108,'订单时间',2,'2021-03-31 21:38:13','2021-04-06 22:17:32'),(584,334,'Guest',1,'2021-03-31 21:39:29','2021-07-12 21:53:43'),(587,344,'Apt/Suite/Other',1,'2021-03-31 21:45:32','2021-06-29 15:37:13'),(593,119,'Street',1,'2021-03-31 21:45:42','2021-03-31 21:45:42'),(596,342,'OK',1,'2021-03-31 21:45:52','2021-03-31 21:45:52'),(599,346,'Map',1,'2021-03-31 21:46:03','2021-03-31 21:46:03'),(600,346,'地 图',2,'2021-03-31 21:46:03','2021-03-31 22:23:58'),(602,350,'Tickets',1,'2021-03-31 21:47:46','2021-03-31 21:47:46'),(605,351,'Order Type',1,'2021-03-31 21:48:00','2021-07-14 18:37:22'),(608,347,'Export',1,'2021-03-31 21:48:13','2021-06-23 22:43:55'),(611,352,'Print Tips Report',1,'2021-03-31 21:51:28','2021-04-01 20:12:46'),(612,352,'打印小费报表',2,'2021-03-31 21:51:28','2021-06-30 19:39:50'),(614,353,'Print Summary Report',1,'2021-03-31 21:51:41','2021-03-31 21:51:41'),(617,354,'Print Detail Report',1,'2021-03-31 21:51:53','2021-03-31 21:51:53'),(620,357,'Daily Item Summary',1,'2021-03-31 21:52:08','2021-06-23 21:34:54'),(621,357,'每日商品总结',2,'2021-03-31 21:52:08','2021-06-23 21:49:23'),(623,356,'Daily Summary',1,'2021-03-31 21:52:21','2021-03-31 21:52:21'),(624,356,'每日总结',2,'2021-03-31 21:52:21','2021-06-23 21:49:35'),(626,355,'Print Platform Report',1,'2021-03-31 21:52:36','2021-04-02 17:12:58'),(627,355,'打印送餐平台报表',2,'2021-03-31 21:52:36','2021-06-30 19:33:58'),(629,358,'Close Batch',1,'2021-03-31 21:57:28','2021-07-09 16:10:07'),(632,371,'Pin',1,'2021-03-31 22:09:17','2021-03-31 22:09:17'),(635,372,'Active',1,'2021-03-31 22:09:27','2021-03-31 22:09:27'),(638,386,'Style',1,'2021-03-31 22:09:38','2021-03-31 22:09:38'),(641,384,'Sunday',1,'2021-03-31 22:09:50','2021-03-31 22:09:50'),(644,383,'Saturday',1,'2021-03-31 22:10:00','2021-03-31 22:10:00'),(647,378,'Monday',1,'2021-03-31 22:10:10','2021-03-31 22:10:10'),(650,379,'Tuesday',1,'2021-03-31 22:10:25','2021-03-31 22:10:25'),(656,382,'Firday',1,'2021-03-31 22:10:50','2021-03-31 22:10:50'),(659,376,'Out Of Stock',1,'2021-03-31 22:11:45','2021-04-06 22:42:54'),(663,376,'缺 货',2,'2021-03-31 22:12:12','2021-04-06 22:50:48'),(665,58,'Stock Out',1,'2021-03-31 22:12:29','2021-03-31 22:12:29'),(666,58,'出 库',2,'2021-03-31 22:12:29','2021-04-02 20:36:22'),(668,57,'Stock In',1,'2021-03-31 22:12:44','2021-03-31 22:12:44'),(669,57,'入 库',2,'2021-03-31 22:12:44','2021-04-02 20:36:29'),(671,158,'# Of Guest',1,'2021-03-31 22:13:52','2021-04-02 17:24:41'),(672,158,'客人数量',2,'2021-03-31 22:13:52','2021-04-02 17:24:45'),(674,388,'Back',1,'2021-03-31 22:19:52','2021-03-31 22:19:52'),(675,388,'返 回',2,'2021-03-31 22:19:52','2021-03-31 22:19:52'),(677,333,'Server',1,'2021-03-31 22:20:45','2021-03-31 22:20:45'),(678,333,'服务员',2,'2021-03-31 22:20:45','2021-04-05 17:46:58'),(680,332,'Unprinted',1,'2021-03-31 22:21:01','2021-03-31 22:21:01'),(681,332,'未打印',2,'2021-03-31 22:21:01','2021-04-06 16:48:46'),(683,335,'Edit',1,'2021-03-31 22:21:20','2021-03-31 22:21:20'),(686,336,'Merge Table',1,'2021-03-31 22:21:31','2021-06-28 15:05:42'),(689,345,'State',1,'2021-03-31 22:24:11','2021-03-31 22:24:11'),(692,343,'Zip Code',1,'2021-03-31 22:24:20','2021-06-28 19:24:27'),(695,389,'State',1,'2021-03-31 22:25:41','2021-03-31 22:25:41'),(698,391,'Card #',1,'2021-03-31 22:29:24','2021-06-23 18:59:14'),(699,391,'卡 号',2,'2021-03-31 22:29:24','2021-04-01 19:47:51'),(701,392,'Ref. No.',1,'2021-03-31 22:29:37','2021-07-01 20:49:27'),(704,393,'Order ID',1,'2021-03-31 22:29:48','2021-06-22 16:11:29'),(707,248,'Station',1,'2021-03-31 22:30:05','2021-03-31 22:30:05'),(710,107,'All Station',1,'2021-03-31 22:30:19','2021-03-31 22:30:19'),(711,107,'全部服务端',2,'2021-03-31 22:30:19','2021-04-05 17:37:28'),(713,106,'All Staff',1,'2021-03-31 22:30:30','2021-03-31 22:30:30'),(714,106,'全部员工',2,'2021-03-31 22:30:30','2021-04-05 17:35:02'),(716,330,'Delete',1,'2021-03-31 22:31:36','2021-03-31 22:31:36'),(717,330,'删 除',2,'2021-03-31 22:31:36','2021-03-31 22:31:36'),(719,395,'Classify',1,'2021-03-31 22:33:16','2021-06-23 17:11:37'),(731,337,'Mark All As Paid',1,'2021-03-31 22:34:02','2021-06-29 15:17:45'),(734,86,'Last Week',1,'2021-03-31 22:43:11','2021-03-31 22:43:11'),(737,416,'Zone',1,'2021-03-31 22:43:24','2021-06-23 22:47:25'),(740,415,'This Month',1,'2021-03-31 22:43:40','2021-03-31 22:43:40'),(746,252,'Terminal',1,'2021-03-31 22:45:22','2021-03-31 22:45:22'),(749,390,'Tips',1,'2021-03-31 22:45:44','2021-06-29 16:03:05'),(755,348,'Grand Total',1,'2021-03-31 22:46:26','2021-04-01 15:24:08'),(758,242,'Tax',1,'2021-03-31 22:46:41','2021-03-31 22:46:41'),(761,282,'Partial',1,'2021-04-01 14:39:06','2021-04-01 14:39:06'),(762,282,'部份付款',2,'2021-04-01 14:39:06','2021-04-06 21:24:14'),(764,439,'Total',1,'2021-04-01 14:40:01','2021-04-01 14:40:01'),(765,439,'总 额',2,'2021-04-01 14:40:01','2021-04-06 19:52:57'),(767,62,'The order has been locked',1,'2021-04-01 14:41:15','2021-07-13 19:10:19'),(768,62,'您的订单已被锁定',2,'2021-04-01 14:41:16','2021-04-01 14:41:16'),(770,396,'Open Item',1,'2021-04-01 14:41:34','2021-04-01 14:41:34'),(773,244,'Tips',1,'2021-04-01 14:48:54','2021-04-01 14:48:54'),(777,244,'小 费',2,'2021-04-01 14:49:04','2021-04-01 14:49:04'),(779,78,'Paid',1,'2021-04-01 14:49:23','2021-04-01 14:49:23'),(780,78,'已付款',2,'2021-04-01 14:49:23','2021-06-28 22:40:22'),(782,312,'General',1,'2021-04-01 14:50:57','2021-04-01 14:50:57'),(783,312,'通 用',2,'2021-04-01 14:50:57','2021-04-05 17:01:18'),(785,153,'Change Server',1,'2021-04-01 14:51:08','2021-04-01 14:51:08'),(788,447,'Kitchen Status',1,'2021-04-01 14:52:57','2021-04-01 14:52:57'),(792,447,'送厨状态',2,'2021-04-01 14:53:16','2021-04-01 14:53:16'),(794,40,'Status',1,'2021-04-01 14:53:41','2021-04-01 14:53:41'),(795,40,'状 态',2,'2021-04-01 14:53:41','2021-04-01 14:53:41'),(797,149,'All Permissiion',1,'2021-04-01 14:56:53','2021-04-01 14:56:53'),(800,281,'Send All',1,'2021-04-01 14:59:37','2021-04-01 14:59:37'),(803,364,'Note',1,'2021-04-01 14:59:48','2021-04-01 14:59:48'),(806,139,'Line',1,'2021-04-01 15:00:00','2021-04-01 15:00:00'),(809,285,'Remove',1,'2021-04-01 15:00:12','2021-04-01 15:00:12'),(812,284,'Quantity',1,'2021-04-01 15:00:23','2021-04-01 15:00:23'),(815,407,'Order Discount',1,'2021-04-01 15:00:45','2021-04-01 15:00:45'),(818,406,'Item Discount',1,'2021-04-01 15:00:57','2021-04-01 15:00:57'),(821,73,'By Guest',1,'2021-04-01 15:01:31','2021-06-07 15:51:09'),(824,121,'Apt.',1,'2021-04-01 15:10:34','2021-04-01 15:10:34'),(827,473,'Color',1,'2021-04-01 15:17:51','2021-04-01 15:17:51'),(830,385,'Title',1,'2021-04-01 15:21:03','2021-04-01 15:21:03'),(833,474,'Type',1,'2021-04-01 15:21:29','2021-04-01 15:21:29'),(836,475,'Select Date',1,'2021-04-01 15:22:46','2021-04-01 15:22:46'),(837,475,'选择日期',2,'2021-04-01 15:22:46','2021-04-01 15:22:46'),(839,349,'Net Sales',1,'2021-04-01 15:24:36','2021-04-08 22:21:36'),(845,476,'Operation',1,'2021-04-01 15:25:48','2021-07-13 19:42:47'),(848,467,'Test Print',1,'2021-04-01 15:26:39','2021-04-01 15:26:39'),(851,471,'Printer',1,'2021-04-01 15:27:57','2021-04-01 15:27:57'),(852,471,'打印机',2,'2021-04-01 15:27:57','2021-04-01 15:27:57'),(854,377,'Attribute',1,'2021-04-01 15:29:18','2021-04-01 15:29:18'),(855,377,'属 性',2,'2021-04-01 15:29:18','2021-04-01 15:29:18'),(857,76,'Product Type',1,'2021-04-01 15:29:38','2021-04-01 15:29:38'),(860,478,'Select Category',1,'2021-04-01 15:30:29','2021-04-01 15:30:29'),(864,478,'选择分类',2,'2021-04-01 15:30:43','2021-07-13 15:44:26'),(866,479,'New Item',1,'2021-04-01 15:31:31','2021-04-01 15:31:31'),(870,479,'新建菜品',2,'2021-04-01 15:31:43','2021-06-28 15:18:42'),(875,480,'Item Code',1,'2021-04-01 15:32:33','2021-04-01 15:32:33'),(876,480,'菜品代码',2,'2021-04-01 15:32:33','2021-06-25 20:55:22'),(878,486,'Inventory Quantity',1,'2021-04-01 15:36:31','2021-04-01 15:36:31'),(882,503,'Enable Tip Suggestion',1,'2021-04-01 19:45:15','2021-06-23 22:35:34'),(883,503,'开启小费添加',2,'2021-04-01 19:45:15','2021-06-23 22:35:44'),(885,504,'Enable Signature Capture',1,'2021-04-01 19:45:34','2021-06-23 22:37:01'),(886,504,'开启电子签名',2,'2021-04-01 19:45:34','2021-06-23 22:37:01'),(888,502,'MID',1,'2021-04-01 19:45:42','2021-04-01 19:45:42'),(889,502,'MID',2,'2021-04-01 19:45:42','2021-04-01 19:45:42'),(894,500,'Template',1,'2021-04-01 19:45:50','2021-04-01 19:45:50'),(895,500,'Template',2,'2021-04-01 19:45:50','2021-04-01 19:45:50'),(897,501,'Time Out',1,'2021-04-01 19:45:57','2021-07-13 21:08:21'),(898,501,'连接超时',2,'2021-04-01 19:45:57','2021-07-13 21:07:18'),(900,366,'Amount',1,'2021-04-01 19:46:09','2021-08-31 14:17:18'),(901,366,'总 价',2,'2021-04-01 19:46:09','2021-08-31 14:17:31'),(903,440,'All Terminal',1,'2021-04-01 19:46:18','2021-04-01 19:46:18'),(904,440,'全部终端',2,'2021-04-01 19:46:18','2021-04-05 17:27:38'),(906,97,'Split Amount',1,'2021-04-01 19:46:28','2021-07-14 21:44:33'),(907,97,'人数分单',2,'2021-04-01 19:46:28','2021-07-01 22:25:53'),(909,539,'Zone',1,'2021-04-01 19:46:36','2021-06-28 19:53:18'),(910,539,'区 域',2,'2021-04-01 19:46:36','2021-04-06 16:45:24'),(912,311,'Barcode',1,'2021-04-01 19:46:56','2021-04-01 19:46:56'),(913,311,'条 码',2,'2021-04-01 19:46:56','2021-07-13 19:32:25'),(915,294,'Batch History',1,'2021-04-01 19:47:07','2021-04-01 19:47:07'),(916,294,'结账纪录',2,'2021-04-01 19:47:07','2021-06-23 18:50:21'),(918,537,'Caller ID',1,'2021-04-01 19:47:21','2021-04-01 19:47:21'),(919,537,'来电显示',2,'2021-04-01 19:47:21','2021-06-23 18:38:13'),(921,410,'Cancel',1,'2021-04-01 19:47:35','2021-04-01 19:47:35'),(922,410,'取 消',2,'2021-04-01 19:47:35','2021-04-01 19:47:35'),(924,541,'Height',1,'2021-04-01 19:48:10','2021-04-01 19:48:10'),(925,541,'行 高',2,'2021-04-01 19:48:10','2021-07-13 19:54:03'),(927,540,'Width',1,'2021-04-01 19:48:32','2021-04-01 19:48:32'),(928,540,'宽 度',2,'2021-04-01 19:48:32','2021-07-13 21:10:30'),(930,470,'Device Type',1,'2021-04-01 19:49:03','2021-04-01 19:49:03'),(931,470,'设备类型',2,'2021-04-01 19:49:03','2021-04-01 19:49:03'),(933,156,'Discount Before Tax',1,'2021-04-01 19:49:22','2021-04-01 19:49:22'),(936,469,'Max.',1,'2021-04-01 19:49:34','2021-06-23 22:17:14'),(939,468,'Min.',1,'2021-04-01 19:49:45','2021-06-23 22:16:55'),(942,485,'Inventory',1,'2021-04-01 19:49:57','2021-04-01 19:49:57'),(945,519,'IP',1,'2021-04-01 19:50:05','2021-04-01 19:50:05'),(948,172,'Item Focus',1,'2021-04-01 19:50:15','2021-04-01 19:50:15'),(951,536,'Opt Modifier Column',1,'2021-04-01 19:50:25','2021-08-13 16:19:57'),(954,533,'Opt Modifier Row',1,'2021-04-01 19:50:31','2021-08-23 14:52:47'),(957,493,'Move',1,'2021-04-01 19:52:32','2021-04-02 15:25:39'),(960,329,'New',1,'2021-04-01 19:52:44','2021-04-01 19:52:44'),(961,329,'新 建',2,'2021-04-01 19:52:44','2021-04-01 19:52:44'),(963,124,'Not Tips',1,'2021-04-01 19:53:01','2021-04-01 19:53:01'),(966,420,'Subtotal',1,'2021-04-01 20:32:50','2021-04-01 20:32:50'),(967,420,'累 计',2,'2021-04-01 20:32:50','2021-04-05 17:44:59'),(969,367,'Time',1,'2021-04-01 20:34:25','2021-04-01 20:34:25'),(972,481,'Color',1,'2021-04-01 20:35:08','2021-06-30 20:13:10'),(973,481,'颜 色',2,'2021-04-01 20:35:08','2021-07-01 21:00:50'),(975,516,'Top 8 Selling Categories',1,'2021-04-01 20:36:08','2021-06-29 19:20:38'),(979,516,'畅销分类 TOP 8',2,'2021-04-01 20:36:10','2021-07-06 19:34:37'),(981,520,'Top 8 Selling Items',1,'2021-04-01 20:36:19','2021-06-29 19:20:45'),(984,545,'Top Selling Categories',1,'2021-04-01 20:36:29','2021-06-29 18:52:58'),(987,546,'Top Selling Items',1,'2021-04-01 20:36:37','2021-06-29 18:53:08'),(990,484,'Category Type',1,'2021-04-01 20:41:31','2021-06-28 15:04:17'),(993,112,'Table',1,'2021-04-01 20:42:03','2021-04-01 20:42:03'),(996,365,'Payment Method',1,'2021-04-01 20:50:12','2021-06-29 20:55:09'),(997,365,'付款方式',2,'2021-04-01 20:50:12','2021-06-29 20:55:09'),(999,368,'Operator',1,'2021-04-01 20:52:51','2021-04-01 20:52:51'),(1000,368,'操作人员',2,'2021-04-01 20:52:51','2021-06-29 20:56:48'),(1002,553,'Opt Modifier',1,'2021-04-01 20:56:47','2021-04-02 17:26:22'),(1006,553,'配 料',2,'2021-04-01 20:56:53','2021-04-05 20:59:46'),(1008,482,'Fixed Modifier',1,'2021-04-01 20:59:56','2021-06-25 20:35:42'),(1011,557,'All Counts',1,'2021-04-01 21:08:28','2021-04-01 21:08:28'),(1014,452,'Add Guest',1,'2021-04-01 21:11:06','2021-06-03 22:23:36'),(1017,453,'Guest',1,'2021-04-01 21:11:15','2021-06-03 22:23:45'),(1020,563,'Item Name',1,'2021-04-01 21:20:13','2021-06-28 21:52:17'),(1023,561,'Item Note',1,'2021-04-01 21:20:21','2021-04-01 21:20:21'),(1026,562,'Order Note',1,'2021-04-01 21:20:53','2021-04-09 15:08:43'),(1029,564,'Save',1,'2021-04-01 21:24:13','2021-04-01 21:24:13'),(1030,564,'保 存',2,'2021-04-01 21:24:13','2021-04-01 21:24:13'),(1032,581,'Extension',1,'2021-04-01 22:04:33','2021-06-22 20:38:40'),(1035,579,'Happy Hour',1,'2021-04-01 22:04:46','2021-05-04 22:22:05'),(1038,582,'Check List',1,'2021-04-01 22:04:55','2021-06-15 18:44:17'),(1041,165,'[Receipt Copies] To Go',1,'2021-04-01 22:05:15','2021-06-22 22:36:58'),(1044,417,'[Receipt Copies] Dine In',1,'2021-04-01 22:05:26','2021-06-22 21:07:18'),(1047,166,'[Receipt Copies] Pick Up',1,'2021-04-01 22:05:39','2021-06-22 22:07:53'),(1050,566,'Themes',1,'2021-04-01 22:05:57','2021-04-01 22:05:57'),(1053,567,'Payment Setting',1,'2021-04-01 22:06:50','2021-06-22 21:52:14'),(1056,580,'Time Clock',1,'2021-04-01 22:09:55','2021-06-22 20:36:55'),(1062,583,'Dine In Setting',1,'2021-04-01 22:24:59','2021-06-22 21:06:26'),(1065,164,'Password Required',1,'2021-04-01 22:25:16','2021-04-01 22:25:16'),(1068,237,'Printing Request For Receipt',1,'2021-04-01 22:30:01','2021-06-22 22:40:56'),(1071,601,'Return Index',1,'2021-04-01 22:43:40','2021-04-01 22:43:40'),(1074,602,'Current Page',1,'2021-04-01 22:43:50','2021-04-01 22:43:50'),(1077,568,'One Key Payment',1,'2021-04-01 22:44:06','2021-04-01 22:44:06'),(1080,598,'Show Item Discount',1,'2021-04-01 22:45:59','2021-04-01 22:45:59'),(1083,170,'Packer Item Increment',1,'2021-04-01 22:47:06','2021-04-01 22:47:06'),(1089,595,'Print Changed Part Only For Packer',1,'2021-04-01 22:48:01','2021-07-14 22:26:14'),(1096,565,'Home',1,'2021-04-02 15:00:08','2021-04-05 19:40:38'),(1097,565,'主 页',2,'2021-04-02 15:00:08','2021-04-05 19:40:38'),(1098,167,'[Receipt Copies] Delivery',1,'2021-04-02 15:00:29','2021-06-22 20:43:17'),(1099,167,'[收据份数] 外送',2,'2021-04-02 15:00:29','2021-06-22 20:52:34'),(1100,597,'Kitchen Receipt After Paid',1,'2021-04-02 15:00:46','2021-06-22 22:39:47'),(1101,597,'付款后送厨',2,'2021-04-02 15:00:46','2021-06-22 21:32:41'),(1102,596,'Kitchen Receipt After Click Pay',1,'2021-04-02 15:00:54','2021-06-22 22:39:51'),(1103,596,'点选付款键后送厨',2,'2021-04-02 15:00:54','2021-06-22 21:36:50'),(1104,576,'Gratuity For Individual',1,'2021-04-02 15:05:15','2021-06-22 22:39:41'),(1105,576,'服务员小费',2,'2021-04-02 15:05:15','2021-06-22 21:14:39'),(1106,387,'Initial Number',1,'2021-04-02 15:07:26','2021-04-02 15:07:26'),(1108,606,'Item does not exist',1,'2021-04-02 15:17:52','2021-06-16 18:03:07'),(1109,606,'物品不存在',2,'2021-04-02 15:17:52','2021-08-26 17:03:46'),(1110,608,'Operation Not Allowed.',1,'2021-04-02 15:23:41','2021-06-16 19:15:48'),(1111,608,'不允许操作',2,'2021-04-02 15:23:41','2021-04-06 16:42:32'),(1112,607,'Not allowed to merge with itself',1,'2021-04-02 15:23:57','2021-06-16 18:13:34'),(1113,607,'不允许合并相同订单',2,'2021-04-02 15:23:57','2021-06-16 18:07:20'),(1114,609,'Order is not allowed to merge with itself',1,'2021-04-02 15:24:30','2021-06-16 18:07:04'),(1115,609,'不允许合并相同订单',2,'2021-04-02 15:24:30','2021-06-16 17:25:02'),(1116,53,'System Alert',1,'2021-04-02 15:24:56','2021-06-28 14:58:02'),(1117,53,'系统提示',2,'2021-04-02 15:24:56','2021-06-28 14:58:02'),(1118,494,'Split',1,'2021-04-02 15:25:28','2021-04-02 15:25:28'),(1121,610,'This order has not been paid in full, are you sure you want to leave?',1,'2021-04-02 15:27:00','2021-07-13 19:20:09'),(1122,610,'这张订单尚未付全款项，您确定要离开吗？',2,'2021-04-02 15:27:00','2021-07-13 19:20:09'),(1123,611,'Tickets',1,'2021-04-02 15:28:04','2021-07-13 20:45:56'),(1125,612,'Partial',1,'2021-04-02 15:29:15','2021-07-13 20:06:12'),(1126,612,'部分送厨',2,'2021-04-02 15:29:15','2021-04-02 20:32:22'),(1127,665,'Discount',1,'2021-04-02 15:38:39','2021-04-05 18:35:59'),(1128,665,'打 折',2,'2021-04-02 15:38:39','2021-07-09 16:22:41'),(1129,659,'Back Office',1,'2021-04-02 15:38:49','2021-04-02 15:38:49'),(1130,659,'后 台',2,'2021-04-02 15:38:49','2021-07-09 16:13:52'),(1131,666,'Void Pay',1,'2021-04-02 15:41:57','2021-04-02 15:41:57'),(1133,661,'Void Payment',1,'2021-04-02 15:42:04','2021-04-05 18:36:58'),(1134,661,'取消支付',2,'2021-04-02 15:42:04','2021-04-05 18:36:58'),(1135,662,'Void Order',1,'2021-04-02 15:43:30','2021-04-05 18:35:02'),(1136,662,'删除订单',2,'2021-04-02 15:43:30','2021-07-09 16:20:50'),(1137,664,'Cash Drawer',1,'2021-04-02 15:43:42','2021-04-05 18:37:10'),(1138,664,'钱箱管理',2,'2021-04-02 15:43:42','2021-07-09 16:13:20'),(1139,667,'Split/ Merge Table',1,'2021-04-02 15:44:18','2021-07-09 16:20:09'),(1140,667,'分/ 合桌',2,'2021-04-02 15:44:18','2021-07-09 16:20:09'),(1141,668,'Change Price',1,'2021-04-02 15:45:12','2021-04-05 18:34:04'),(1142,668,'更改单价',2,'2021-04-02 15:45:12','2021-07-09 16:24:29'),(1143,660,'Clock In After Sign In',1,'2021-04-02 15:45:22','2021-07-09 16:25:32'),(1144,660,'登录打卡页面',2,'2021-04-02 15:45:22','2021-07-09 16:25:32'),(1145,658,'Collaborate Mode',1,'2021-04-02 15:46:03','2021-07-07 20:21:16'),(1146,658,'协作模式',2,'2021-04-02 15:46:04','2021-07-07 20:21:16'),(1147,151,'Pay with Virtual',1,'2021-04-02 15:53:33','2021-07-09 16:21:47'),(1148,151,'虚拟付款',2,'2021-04-02 15:53:33','2021-06-21 22:55:35'),(1149,669,'Gift Card',1,'2021-04-02 15:54:19','2021-07-09 16:13:35'),(1150,669,'礼品卡',2,'2021-04-02 15:54:19','2021-07-09 16:13:35'),(1151,487,'Close Batches',1,'2021-04-02 16:02:16','2021-06-23 18:46:42'),(1152,487,'全部结账',2,'2021-04-02 16:02:16','2021-04-05 17:15:02'),(1153,488,'Tips Adjustment',1,'2021-04-02 16:02:30','2021-04-02 16:02:30'),(1154,488,'小费已调整',2,'2021-04-02 16:02:30','2021-07-14 18:57:00'),(1157,124,'Not Tips',2,'2021-04-02 16:02:40','2021-04-02 16:02:40'),(1158,670,'Settle Count',1,'2021-04-02 16:03:08','2021-04-02 16:03:08'),(1159,670,'Settle Count',2,'2021-04-02 16:03:08','2021-04-02 16:03:08'),(1160,125,'Not Settle',1,'2021-04-02 16:03:30','2021-04-02 16:03:30'),(1161,125,'Not Settle',2,'2021-04-02 16:03:30','2021-04-02 16:03:30'),(1162,281,'全部送厨',2,'2021-04-02 16:04:20','2021-04-02 20:32:32'),(1163,671,'Select All',1,'2021-04-02 16:07:31','2021-04-02 16:07:31'),(1164,671,'全 选',2,'2021-04-02 16:07:31','2021-04-02 18:03:28'),(1165,408,'Input Mins',1,'2021-04-02 16:07:45','2021-04-02 16:07:45'),(1166,408,'Input Mins',2,'2021-04-02 16:07:45','2021-04-02 16:07:45'),(1167,409,'Input Time',1,'2021-04-02 16:07:58','2021-04-02 16:07:58'),(1168,409,'输入时间',2,'2021-04-02 16:07:58','2021-04-02 20:31:23'),(1169,672,'No Delay',1,'2021-04-02 16:08:09','2021-04-02 16:08:09'),(1170,672,'无延时',2,'2021-04-02 16:08:09','2021-04-02 20:30:50'),(1171,675,'By Percentage',1,'2021-04-02 16:29:46','2021-07-13 19:37:50'),(1172,675,'百分比 (%)',2,'2021-04-02 16:29:46','2021-07-13 19:37:38'),(1177,73,'按客人分',2,'2021-04-02 16:30:09','2021-07-13 19:40:57'),(1178,496,'Open Price',1,'2021-04-02 16:47:35','2021-04-02 16:47:35'),(1179,496,'自定义价格',2,'2021-04-02 16:47:35','2021-04-05 17:28:47'),(1180,681,'Split Into',1,'2021-04-02 16:58:14','2021-07-01 20:03:07'),(1181,681,'将订单分爲',2,'2021-04-02 16:58:14','2021-07-01 20:02:54'),(1182,682,'NoTable',1,'2021-04-02 16:59:54','2021-04-02 16:59:54'),(1183,682,'NoTable',2,'2021-04-02 16:59:54','2021-04-02 16:59:54'),(1184,683,'Are you sure to void this payment?',1,'2021-04-02 17:12:42','2021-06-16 18:10:52'),(1185,683,'您確定要撤销这筆付款吗?',2,'2021-04-02 17:12:42','2021-06-16 18:10:52'),(1186,354,'打印明细报表',2,'2021-04-02 17:13:08','2021-04-02 20:35:26'),(1187,693,'Void Order Reason',1,'2021-04-02 17:15:50','2021-04-02 17:15:50'),(1188,693,'订单作废理由',2,'2021-04-02 17:15:50','2021-07-13 19:43:18'),(1191,698,'Add Item Note or Order Note?',1,'2021-04-02 17:18:41','2021-07-13 19:14:58'),(1192,698,'您要备注当前菜品或者整个订单？',2,'2021-04-02 17:18:41','2021-07-13 19:14:58'),(1193,697,'Add item discount or order discount?',1,'2021-04-02 17:18:54','2021-04-02 17:18:54'),(1194,697,'添加 菜品折扣 或  订单折扣?',2,'2021-04-02 17:18:54','2021-04-07 16:53:23'),(1195,598,'菜品打折显示',2,'2021-04-02 17:19:05','2021-06-23 15:49:26'),(1196,406,'菜品打折',2,'2021-04-02 17:19:08','2021-04-05 17:24:31'),(1197,476,'批量修改',2,'2021-04-02 17:19:25','2021-07-13 19:42:47'),(1198,699,'Common',1,'2021-04-02 17:20:22','2021-04-02 17:20:22'),(1199,699,'公 共',2,'2021-04-02 17:20:22','2021-04-05 17:37:19'),(1200,700,'Unlock',1,'2021-04-02 17:21:25','2021-04-02 17:21:25'),(1201,700,'解 锁',2,'2021-04-02 17:21:25','2021-04-06 17:26:01'),(1202,534,'Check List Template',1,'2021-04-02 17:22:22','2021-04-02 17:22:22'),(1203,534,'核对清单模板',2,'2021-04-02 17:22:22','2021-04-05 17:39:44'),(1204,235,'付款前打印收据',2,'2021-04-02 17:23:10','2021-06-22 22:18:00'),(1205,237,'收据打印请求',2,'2021-04-02 17:23:32','2021-06-22 22:23:52'),(1206,417,'[收据份数] 堂吃',2,'2021-04-02 17:23:48','2021-06-22 21:07:44'),(1207,165,'[收据份数] 带走',2,'2021-04-02 17:23:58','2021-06-22 22:36:52'),(1208,166,'[收据份数] 来取',2,'2021-04-02 17:24:07','2021-06-22 22:09:52'),(1209,701,'Version',1,'2021-04-02 17:25:53','2021-04-02 17:25:53'),(1210,701,'版 本',2,'2021-04-02 17:25:53','2021-04-06 16:48:57'),(1211,702,'Recommend',1,'2021-04-02 17:27:13','2021-04-02 17:27:13'),(1212,702,'推 荐',2,'2021-04-02 17:27:13','2021-04-02 20:32:46'),(1213,704,'Spicy',1,'2021-04-02 17:27:36','2021-04-02 17:27:36'),(1214,704,'辣',2,'2021-04-02 17:27:36','2021-07-13 21:50:42'),(1215,705,'Done',1,'2021-04-02 17:28:10','2021-04-02 17:28:10'),(1216,705,'完 成',2,'2021-04-02 17:28:10','2021-04-02 20:33:39'),(1217,706,'Close',1,'2021-04-02 17:43:21','2021-04-02 17:43:21'),(1218,706,'关 闭',2,'2021-04-02 17:43:21','2021-04-02 17:43:21'),(1219,358,'结 账',2,'2021-04-02 17:43:27','2021-06-29 15:54:19'),(1220,707,'Cash',1,'2021-04-02 17:43:59','2021-04-02 17:43:59'),(1221,707,'现 金',2,'2021-04-02 17:43:59','2021-04-05 17:49:56'),(1222,538,'Home Page',1,'2021-04-02 17:52:56','2021-06-23 21:52:51'),(1223,538,'主 页',2,'2021-04-02 17:52:56','2021-07-13 19:50:17'),(1224,710,'Credit',1,'2021-04-02 17:55:39','2021-04-02 17:55:39'),(1225,710,'信用卡',2,'2021-04-02 17:55:39','2021-04-05 18:37:46'),(1226,696,'Are you sure you want to do the daily settlement?',1,'2021-04-02 17:56:07','2021-06-16 17:09:58'),(1227,696,'您确定要做每日结算吗?',2,'2021-04-02 17:56:07','2021-06-16 17:09:58'),(1228,601,'返回首页',2,'2021-04-02 17:56:17','2021-04-05 17:06:50'),(1229,566,'主 题',2,'2021-04-02 17:56:22','2021-07-13 19:27:55'),(1230,452,'新增客人',2,'2021-04-02 17:56:26','2021-06-23 16:59:40'),(1231,469,'最大距离',2,'2021-04-02 17:56:36','2021-06-23 22:17:05'),(1232,41,'Email',1,'2021-04-02 17:56:46','2021-04-02 17:56:46'),(1233,41,'邮 件',2,'2021-04-02 17:56:46','2021-04-02 20:37:01'),(1234,416,'区 域',2,'2021-04-02 17:56:53','2021-07-13 16:17:47'),(1235,347,'导 出',2,'2021-04-02 17:57:05','2021-07-06 19:16:18'),(1236,382,'周 五',2,'2021-04-02 17:57:16','2021-04-02 17:57:16'),(1237,485,'库 存',2,'2021-04-02 17:57:25','2021-04-06 22:41:51'),(1238,563,'菜 品',2,'2021-04-02 17:57:29','2021-06-28 21:52:17'),(1239,561,'單品备注',2,'2021-04-02 17:57:32','2021-07-14 21:02:10'),(1240,139,'分割线',2,'2021-04-02 17:57:38','2021-06-28 19:34:25'),(1241,459,'Minimum',1,'2021-04-02 17:57:53','2021-04-02 17:57:53'),(1242,459,'最小化',2,'2021-04-02 17:57:53','2021-06-28 15:06:47'),(1243,533,'配料行数',2,'2021-04-02 17:57:58','2021-04-06 18:32:57'),(1244,536,'配料列数',2,'2021-04-02 17:58:01','2021-04-06 18:33:07'),(1245,378,'周一',2,'2021-04-02 17:58:12','2021-06-28 15:07:44'),(1246,483,'None',1,'2021-04-02 17:58:30','2021-04-02 17:58:30'),(1247,483,'无',2,'2021-04-02 17:58:30','2021-04-02 17:58:30'),(1248,105,'Occupied',1,'2021-04-02 17:58:43','2021-04-02 17:58:43'),(1249,105,'Modify Column',2,'2021-04-02 17:58:43','2021-04-02 17:58:43'),(1252,342,'确 认',2,'2021-04-02 17:59:00','2021-04-02 17:59:00'),(1253,337,'一键支付',2,'2021-04-02 17:59:04','2021-06-29 15:22:36'),(1254,396,'自定义菜品',2,'2021-04-02 17:59:10','2021-07-13 20:03:07'),(1255,407,'订单打折',2,'2021-04-02 17:59:13','2021-06-29 15:46:41'),(1257,251,'Template',1,'2021-04-02 17:59:31','2021-04-02 17:59:31'),(1258,251,'模 板',2,'2021-04-02 17:59:31','2021-04-05 17:39:14'),(1259,467,'打印测试',2,'2021-04-02 17:59:36','2021-06-30 19:40:12'),(1260,343,'邮 编',2,'2021-04-02 17:59:50','2021-04-05 17:26:32'),(1261,547,'Undo',1,'2021-04-02 18:00:01','2021-04-02 18:00:01'),(1262,547,'撤 销',2,'2021-04-02 18:00:01','2021-07-09 16:38:14'),(1263,518,'USB',1,'2021-04-02 18:00:08','2021-04-02 18:00:08'),(1264,518,'USB',2,'2021-04-02 18:00:08','2021-04-02 18:00:08'),(1265,521,'View All',1,'2021-04-02 18:00:18','2021-04-02 18:00:18'),(1266,521,'查看全部',2,'2021-04-02 18:00:18','2021-07-13 21:12:12'),(1267,692,'Void Order',1,'2021-04-02 18:00:25','2021-04-02 18:00:25'),(1268,692,'订单作废',2,'2021-04-02 18:00:25','2021-06-28 22:34:32'),(1269,380,'Wednesday',1,'2021-04-02 18:01:02','2021-06-28 19:35:13'),(1272,380,'周 三',2,'2021-04-02 18:01:15','2021-04-02 18:01:15'),(1273,441,'TIps Not Input',1,'2021-04-02 18:01:36','2021-04-02 18:01:36'),(1274,441,'小费尚未调整',2,'2021-04-02 18:01:36','2021-07-14 18:58:34'),(1275,489,'Tips Count',1,'2021-04-02 18:01:44','2021-04-02 18:01:44'),(1276,489,'小费笔数',2,'2021-04-02 18:01:44','2021-06-29 18:46:34'),(1277,157,'Tips Before Tax',1,'2021-04-02 18:01:52','2021-04-02 18:01:52'),(1278,157,'税前小费',2,'2021-04-02 18:01:52','2021-04-05 17:30:02'),(1279,419,'Tips Aleady Input',1,'2021-04-02 18:02:10','2021-04-02 18:02:10'),(1280,419,'小费尚未调整',2,'2021-04-02 18:02:10','2021-07-14 18:57:20'),(1281,367,'时 间 ',2,'2021-04-02 18:02:26','2021-04-02 18:02:26'),(1282,350,'单 数',2,'2021-04-02 18:02:34','2021-04-02 20:35:10'),(1283,112,'桌 号',2,'2021-04-02 18:02:47','2021-04-02 18:02:47'),(1284,462,'Sort',1,'2021-04-02 18:03:14','2021-04-02 18:03:14'),(1285,462,'排 序',2,'2021-04-02 18:03:14','2021-04-02 18:03:14'),(1286,284,'数 量',2,'2021-04-02 18:03:53','2021-04-02 18:03:53'),(1287,499,'Port Num',1,'2021-04-02 18:04:09','2021-04-02 18:04:09'),(1290,499,'端口号',2,'2021-04-02 18:04:20','2021-04-02 18:04:20'),(1291,334,'用餐人数',2,'2021-04-02 18:04:24','2021-07-12 21:53:43'),(1292,711,'Share',1,'2021-04-02 18:09:32','2021-04-02 18:09:32'),(1293,711,'共 享',2,'2021-04-02 18:09:32','2021-04-02 18:09:32'),(1294,712,'菜品分单',2,'2021-04-02 18:19:21','2021-04-06 20:00:19'),(1296,712,'Split Item',1,'2021-04-02 18:19:34','2021-07-14 21:44:19'),(1298,713,'Credit',1,'2021-04-02 19:11:56','2021-04-02 19:40:53'),(1299,713,'信用卡',2,'2021-04-02 19:11:56','2021-04-02 19:13:25'),(1300,714,'Cash',1,'2021-04-02 19:12:04','2021-04-02 19:12:04'),(1301,714,'现 金',2,'2021-04-02 19:12:04','2021-04-02 19:13:33'),(1302,715,'Gift Card',1,'2021-04-02 19:12:18','2021-04-02 19:12:18'),(1303,715,'礼品卡',2,'2021-04-02 19:12:18','2021-04-02 19:13:45'),(1304,716,'Points',1,'2021-04-02 19:12:32','2021-06-21 20:53:37'),(1305,716,'点 数',2,'2021-04-02 19:12:32','2021-06-21 20:53:13'),(1306,717,'Coupons',1,'2021-04-02 19:12:46','2021-06-21 20:53:52'),(1307,717,'优惠券',2,'2021-04-02 19:12:46','2021-04-07 16:54:02'),(1308,719,'Virtual',1,'2021-04-02 19:12:59','2021-04-02 19:12:59'),(1309,719,'虚 拟',2,'2021-04-02 19:12:59','2021-04-02 19:14:01'),(1310,721,'Third',1,'2021-04-02 19:13:17','2021-08-18 19:42:32'),(1311,721,'Third',2,'2021-04-02 19:13:17','2021-08-18 19:42:32'),(1312,492,'Quick Pay',1,'2021-04-02 19:41:58','2021-04-02 19:41:58'),(1313,492,'快速支付',2,'2021-04-02 19:41:58','2021-04-06 15:03:07'),(1314,722,'Reset',1,'2021-04-02 20:15:22','2021-04-02 20:15:22'),(1315,722,'重 置',2,'2021-04-02 20:15:22','2021-04-05 19:16:20'),(1316,724,'YES',1,'2021-04-02 20:23:58','2021-04-06 21:52:11'),(1317,724,'是',2,'2021-04-02 20:23:58','2021-06-23 16:49:25'),(1318,725,'Input Mins(s)',1,'2021-04-02 20:31:50','2021-07-12 15:36:57'),(1319,725,'输入分钟',2,'2021-04-02 20:31:50','2021-04-02 20:31:50'),(1323,285,'删 除',2,'2021-04-02 20:33:24','2021-04-02 20:33:24'),(1324,726,'Platform',1,'2021-04-02 20:34:24','2021-07-13 19:51:19'),(1325,726,'外卖平台',2,'2021-04-02 20:34:24','2021-07-13 19:51:38'),(1326,727,'Order Status',1,'2021-04-02 20:34:59','2021-04-02 20:34:59'),(1327,727,'订单状态',2,'2021-04-02 20:34:59','2021-04-02 20:34:59'),(1328,728,'Minutes',1,'2021-04-02 20:36:09','2021-04-02 20:36:09'),(1329,728,'分 钟',2,'2021-04-02 20:36:09','2021-04-02 20:36:09'),(1330,39,'自订语言',2,'2021-04-02 20:37:08','2021-07-13 19:35:12'),(1331,579,'欢乐时光',2,'2021-04-02 20:37:14','2021-05-04 22:22:05'),(1332,38,'Default',1,'2021-04-02 20:38:02','2021-04-02 20:38:02'),(1333,38,'默 认',2,'2021-04-02 20:38:02','2021-04-02 20:38:02'),(1334,119,'街',2,'2021-04-02 20:38:46','2021-04-02 20:38:46'),(1335,310,'系 统',2,'2021-04-02 20:38:53','2021-04-02 20:38:53'),(1336,336,'合 桌',2,'2021-04-02 20:39:37','2021-04-02 20:39:37'),(1345,674,'By Amount',1,'2021-04-02 20:50:51','2021-04-02 20:52:53'),(1346,674,'金 额 ($)',2,'2021-04-02 20:50:51','2021-07-13 19:37:35'),(1349,732,'Staff Report',1,'2021-04-02 21:20:10','2021-04-02 21:20:10'),(1350,732,'员工报表',2,'2021-04-02 21:20:10','2021-04-05 17:45:41'),(1351,733,'Void Item',1,'2021-04-02 21:39:16','2021-04-02 21:39:16'),(1352,733,'删除菜品',2,'2021-04-02 21:39:16','2021-04-05 17:20:42'),(1353,694,'Void Reason',1,'2021-04-02 21:39:32','2021-06-28 22:33:36'),(1354,694,'作废理由',2,'2021-04-02 21:39:32','2021-06-28 22:33:36'),(1355,562,'订单备注',2,'2021-04-05 15:49:02','2021-04-06 19:42:43'),(1356,109,'单 号',2,'2021-04-05 15:50:00','2021-07-12 22:45:54'),(1358,328,'库存管理',2,'2021-04-05 17:00:18','2021-07-06 19:08:35'),(1359,290,'Group',1,'2021-04-05 17:02:05','2021-04-05 17:02:05'),(1360,290,'组',2,'2021-04-05 17:02:05','2021-04-05 17:02:05'),(1361,394,'Order No.',1,'2021-04-05 17:07:24','2021-06-29 15:49:13'),(1363,35,'Default Credit',1,'2021-04-05 17:07:50','2021-04-05 17:07:50'),(1364,35,'默认信用卡',2,'2021-04-05 17:07:50','2021-04-05 17:07:50'),(1365,393,'订单号',2,'2021-04-05 17:08:52','2021-06-29 16:00:27'),(1366,580,'打卡系统',2,'2021-04-05 17:16:33','2021-06-22 20:36:55'),(1367,605,'Refund',1,'2021-04-05 17:17:39','2021-04-05 17:17:39'),(1368,605,'退 款',2,'2021-04-05 17:17:39','2021-04-05 17:17:39'),(1369,586,'Refund',1,'2021-04-05 17:17:47','2021-04-05 17:17:47'),(1370,586,'退 款',2,'2021-04-05 17:17:47','2021-04-05 17:17:47'),(1371,695,'Void Reason',1,'2021-04-05 17:22:11','2021-06-28 22:33:25'),(1372,695,'作废理由',2,'2021-04-05 17:22:11','2021-06-28 22:33:25'),(1373,364,'备 注',2,'2021-04-05 17:22:53','2021-04-05 17:22:53'),(1374,156,'税前打折',2,'2021-04-05 17:24:45','2021-04-05 17:30:10'),(1375,389,'州',2,'2021-04-05 17:26:44','2021-07-02 14:17:47'),(1376,252,'终 端',2,'2021-04-05 17:27:10','2021-04-05 17:27:10'),(1377,498,'Terminal Model',1,'2021-04-05 17:27:31','2021-04-05 17:27:31'),(1378,498,'终端模式',2,'2021-04-05 17:27:31','2021-04-05 17:27:31'),(1379,242,'税',2,'2021-04-05 17:29:24','2021-04-05 17:29:24'),(1380,544,'Tax Inclusive',1,'2021-04-05 17:29:39','2021-06-29 14:56:39'),(1381,544,'含 稅',2,'2021-04-05 17:29:39','2021-07-13 19:54:24'),(1382,76,'产品类型',2,'2021-04-05 17:31:21','2021-04-05 17:31:21'),(1383,86,'上 周',2,'2021-04-05 17:32:03','2021-04-05 17:32:03'),(1384,415,'本 月',2,'2021-04-05 17:32:15','2021-06-28 22:45:24'),(1386,663,'Staff Report',1,'2021-04-05 17:33:15','2021-04-05 17:33:15'),(1387,663,'员人报表',2,'2021-04-05 17:33:15','2021-04-05 17:33:15'),(1388,581,'扩充功能',2,'2021-04-05 17:33:51','2021-06-22 20:38:40'),(1389,582,'核对清单',2,'2021-04-05 17:33:55','2021-04-05 19:45:21'),(1390,372,'激 活',2,'2021-04-05 17:34:25','2021-04-05 17:34:25'),(1391,454,'Total Hours',1,'2021-04-05 17:34:46','2021-07-14 20:50:37'),(1392,454,'小时',2,'2021-04-05 17:34:46','2021-04-05 17:34:46'),(1393,149,'权 限',2,'2021-04-05 17:34:51','2021-04-05 17:34:51'),(1394,121,'公 寓',2,'2021-04-05 17:35:23','2021-07-13 19:31:52'),(1395,473,'颜 色',2,'2021-04-05 17:37:07','2021-04-05 17:37:07'),(1396,248,'服务端',2,'2021-04-05 17:37:30','2021-04-05 17:37:30'),(1397,535,'Payment Template',1,'2021-04-05 17:39:01','2021-04-05 20:01:31'),(1398,535,'付款模板',2,'2021-04-05 17:39:01','2021-04-05 20:01:31'),(1400,351,'订单类型',2,'2021-04-05 17:41:19','2021-07-14 18:37:22'),(1401,348,'总 额',2,'2021-04-05 17:45:13','2021-04-05 17:45:13'),(1402,153,'修改服务员',2,'2021-04-05 17:46:53','2021-04-05 17:46:53'),(1403,395,'归 类',2,'2021-04-05 17:47:29','2021-06-30 20:08:47'),(1404,80,'Dual Screen',1,'2021-04-05 17:51:58','2021-07-13 22:24:56'),(1405,80,'双 屏',2,'2021-04-05 17:51:58','2021-04-05 17:51:58'),(1406,737,'Cratuity',1,'2021-04-05 17:56:06','2021-04-05 19:13:24'),(1407,737,'额外费用',2,'2021-04-05 17:56:06','2021-04-05 19:09:03'),(1408,723,'Balance',1,'2021-04-05 17:57:20','2021-04-05 17:57:20'),(1409,723,'馀 额',2,'2021-04-05 17:57:20','2021-07-13 19:32:22'),(1410,474,'类 型',2,'2021-04-05 17:57:42','2021-04-05 17:57:42'),(1411,134,'Are you sure to remove it?',1,'2021-04-05 19:17:38','2021-06-16 18:24:21'),(1412,134,'您确定将其删除吗？',2,'2021-04-05 19:17:38','2021-06-16 18:24:21'),(1413,743,'Change',1,'2021-04-05 19:25:47','2021-04-05 19:25:47'),(1414,743,'找 零',2,'2021-04-05 19:25:47','2021-04-05 19:25:47'),(1415,568,'一键付款',2,'2021-04-05 19:42:17','2021-06-22 21:42:13'),(1416,583,'堂吃设置',2,'2021-04-05 19:42:30','2021-07-13 19:35:25'),(1417,291,'Category',1,'2021-04-05 19:46:34','2021-04-05 19:46:34'),(1418,291,'类',2,'2021-04-05 19:46:34','2021-04-05 19:46:34'),(1419,567,'付款設置',2,'2021-04-05 19:47:33','2021-06-22 21:52:14'),(1420,747,'Delivery Fee For Individual ',1,'2021-04-05 19:48:43','2021-06-22 22:39:11'),(1421,747,'司机外送费',2,'2021-04-05 19:48:43','2021-06-22 21:08:35'),(1422,595,'仅打印更改 [打包]',2,'2021-04-05 19:49:22','2021-07-14 22:26:14'),(1423,170,'打包菜品增量',2,'2021-04-05 19:49:25','2021-04-05 19:49:25'),(1424,164,'密码输入',2,'2021-04-05 19:51:15','2021-06-22 21:59:04'),(1425,602,'当前页面',2,'2021-04-05 19:51:41','2021-06-22 20:40:18'),(1426,453,'客 人',2,'2021-04-05 20:10:03','2021-06-03 22:23:54'),(1427,390,'小 费',2,'2021-04-05 20:13:15','2021-07-13 15:39:18'),(1428,392,'单 号',2,'2021-04-05 20:13:52','2021-07-01 20:48:45'),(1431,754,'One-Key Payment',1,'2021-04-05 20:49:42','2021-06-16 18:26:46'),(1432,754,'一键付款',2,'2021-04-05 20:49:42','2021-06-16 18:27:11'),(1435,335,'编 辑',2,'2021-04-05 21:20:33','2021-04-05 21:20:33'),(1450,755,'Price',1,'2021-04-06 14:14:04','2021-04-06 14:14:04'),(1451,755,'价 格',2,'2021-04-06 14:14:04','2021-04-06 14:14:04'),(1454,677,'Customized',1,'2021-04-06 14:56:22','2021-06-23 21:22:27'),(1455,677,'自定义',2,'2021-04-06 14:56:22','2021-04-06 14:56:22'),(1457,676,'Value',1,'2021-04-06 14:56:34','2021-08-31 14:17:42'),(1458,676,'价 值',2,'2021-04-06 14:56:34','2021-04-06 14:56:34'),(1469,394,'订单号',2,'2021-04-06 16:43:39','2021-04-06 16:43:39'),(1471,418,'Tips Not Input',1,'2021-04-06 16:43:50','2021-04-06 16:43:50'),(1472,418,'Tips Not Input',2,'2021-04-06 16:43:50','2021-04-06 16:44:10'),(1477,557,'全部计数',2,'2021-04-06 16:44:48','2021-04-06 16:44:48'),(1482,519,'IP',2,'2021-04-06 16:45:49','2021-04-06 16:45:49'),(1485,460,'Maximum',1,'2021-04-06 16:46:22','2021-04-06 16:46:22'),(1486,460,'最大值',2,'2021-04-06 16:46:22','2021-06-28 15:00:42'),(1488,461,'Repeat',1,'2021-04-06 16:47:11','2021-04-06 16:47:11'),(1489,461,'重複选取',2,'2021-04-06 16:47:11','2021-07-01 20:49:52'),(1491,490,'Settle Checks',1,'2021-04-06 16:47:28','2021-04-06 16:47:28'),(1494,514,'Slug',1,'2021-04-06 16:47:39','2021-04-06 16:47:39'),(1495,514,'Slug',2,'2021-04-06 16:47:39','2021-04-06 16:47:39'),(1497,495,'Split Order',1,'2021-04-06 16:47:51','2021-04-06 16:47:51'),(1498,495,'分 单',2,'2021-04-06 16:47:51','2021-04-06 17:48:11'),(1500,174,'Stand Alone Payment',1,'2021-04-06 16:48:18','2021-07-13 20:52:00'),(1501,174,'独立支付',2,'2021-04-06 16:48:18','2021-04-06 16:48:18'),(1509,344,'公寓/房间/其他',2,'2021-04-06 17:36:25','2021-06-29 15:37:45'),(1511,387,'初始单号',2,'2021-04-06 17:37:26','2021-04-06 17:37:26'),(1519,758,'Receipt Printer',1,'2021-04-06 18:34:34','2021-04-06 18:34:34'),(1520,758,'收据打印机',2,'2021-04-06 18:34:34','2021-04-06 18:34:59'),(1523,759,'Unable to login',1,'2021-04-06 19:26:48','2021-07-09 16:44:21'),(1524,759,'无法登录。请与经理联系',2,'2021-04-06 19:26:48','2021-07-09 16:44:21'),(1530,760,'Exit',1,'2021-04-06 19:30:38','2021-04-06 19:30:38'),(1531,760,'退 出',2,'2021-04-06 19:30:38','2021-04-06 19:30:38'),(1537,764,'Split No',1,'2021-04-06 20:37:39','2021-04-06 20:37:39'),(1538,764,'分单号',2,'2021-04-06 20:37:39','2021-04-06 20:37:39'),(1541,765,'Duty Free',1,'2021-04-06 20:46:08','2021-04-06 20:47:09'),(1542,765,'免 税',2,'2021-04-06 20:46:08','2021-04-06 20:46:08'),(1548,766,'Void Reason',1,'2021-04-06 21:38:46','2021-06-28 22:33:16'),(1549,766,'作废理由',2,'2021-04-06 21:38:46','2021-06-28 22:33:16'),(1551,767,'NO',1,'2021-04-06 21:51:52','2021-04-06 21:51:52'),(1552,767,'不保存',2,'2021-04-06 21:51:52','2021-04-06 21:51:52'),(1555,493,'移 动',2,'2021-04-06 22:05:32','2021-04-06 22:05:32'),(1557,494,'分 开',2,'2021-04-06 22:05:50','2021-04-06 22:05:50'),(1559,386,'样 式',2,'2021-04-06 22:13:31','2021-06-30 20:09:14'),(1570,770,'Out Of Stock',1,'2021-04-06 22:41:15','2021-06-29 15:51:41'),(1571,770,'缺 货',2,'2021-04-06 22:41:15','2021-04-06 22:50:56'),(1574,486,'库存数量',2,'2021-04-06 22:41:58','2021-04-06 22:41:58'),(1577,771,'Description',1,'2021-04-06 22:47:03','2021-04-06 22:47:03'),(1578,771,'描 述',2,'2021-04-06 22:47:03','2021-07-13 19:50:30'),(1581,484,'组类型',2,'2021-04-06 22:48:33','2021-06-28 15:04:17'),(1583,482,'固定配料',2,'2021-04-06 22:49:38','2021-06-25 20:35:42'),(1585,673,'Permission denied',1,'2021-04-07 14:24:30','2021-04-07 14:24:30'),(1586,673,'没有权限',2,'2021-04-07 14:24:30','2021-07-09 16:28:26'),(1607,774,'Item Column',1,'2021-04-07 22:12:25','2021-04-07 22:12:25'),(1608,774,'菜品列数',2,'2021-04-07 22:12:25','2021-04-07 22:12:25'),(1610,776,'Test Terminal',1,'2021-04-08 22:02:00','2021-04-08 22:02:00'),(1611,776,'测试终端',2,'2021-04-08 22:02:00','2021-04-08 22:02:00'),(1613,775,'Test Printer',1,'2021-04-08 22:02:16','2021-04-08 22:02:16'),(1614,775,'打印测试',2,'2021-04-08 22:02:16','2021-06-30 20:03:26'),(1618,349,'净销售额',2,'2021-04-08 22:21:36','2021-04-08 22:21:36'),(1620,777,'IP Address',1,'2021-04-09 15:24:23','2021-04-09 15:24:23'),(1621,777,'IP 地址',2,'2021-04-09 15:24:23','2021-04-09 15:24:23'),(1623,778,'Item Style',1,'2021-04-09 17:04:18','2021-06-22 21:31:37'),(1624,778,'菜品格式',2,'2021-04-09 17:04:18','2021-06-22 21:31:28'),(1626,779,'Modifier',1,'2021-04-09 20:05:53','2021-06-29 15:25:14'),(1627,779,'配 料',2,'2021-04-09 20:05:53','2021-07-13 20:04:13'),(1631,780,'Address',1,'2021-04-12 21:05:47','2021-04-12 21:05:47'),(1632,780,'地 址',2,'2021-04-12 21:05:47','2021-04-12 21:05:47'),(1635,353,'打印汇总报表',2,'2021-04-13 16:22:11','2021-07-13 22:13:56'),(1637,690,'Print CC Report',1,'2021-04-13 16:23:05','2021-04-13 16:23:05'),(1638,690,'Print CC Report',2,'2021-04-13 16:23:05','2021-04-13 16:23:05'),(1640,781,'Order Display',1,'2021-04-13 22:26:49','2021-04-13 22:26:49'),(1641,781,'叫号屏',2,'2021-04-13 22:26:49','2021-04-13 22:26:49'),(1644,782,'Paging',1,'2021-04-15 17:03:46','2021-04-15 17:03:46'),(1645,782,'叫 号',2,'2021-04-15 17:03:46','2021-04-15 17:03:46'),(1647,783,'Call Off',1,'2021-04-15 17:04:00','2021-04-15 17:20:53'),(1648,783,'销 号',2,'2021-04-15 17:04:00','2021-04-15 17:04:00'),(1650,787,'Process',1,'2021-04-15 18:51:01','2021-04-15 18:51:01'),(1651,787,'处 理',2,'2021-04-15 18:51:01','2021-04-15 18:51:04'),(1653,788,'Are you sure close batch?',1,'2021-04-16 17:23:20','2021-04-19 15:12:30'),(1654,788,'你确认要结账吗？',2,'2021-04-16 17:23:20','2021-04-19 15:12:30'),(1656,790,'Are you sure to set all pending orders to PAID?(Make sure all invalid orders have been voided)',1,'2021-04-19 14:39:00','2021-06-29 20:17:47'),(1657,790,'您确定要所有订单狀態改为已付款吗？(請確認所有無效訂單已作廢)',2,'2021-04-19 14:39:00','2021-06-16 18:52:01'),(1659,789,'There are unpaid orders, make sure before you close batch',1,'2021-04-19 15:14:03','2021-04-22 20:39:19'),(1660,789,'尚有订单未付款，您確定要结账吗？',2,'2021-04-19 15:14:03','2021-07-14 21:01:41'),(1662,791,'Order Display',1,'2021-04-19 18:00:27','2021-04-19 18:00:27'),(1663,791,'叫号显示屏',2,'2021-04-19 18:00:27','2021-06-22 21:42:57'),(1665,792,'None',1,'2021-04-19 19:24:03','2021-04-19 19:24:03'),(1666,792,'无',2,'2021-04-19 19:24:03','2021-07-13 22:08:16'),(1669,793,'Delivery Fee',1,'2021-04-19 22:43:39','2021-04-19 22:43:39'),(1670,793,'外送费',2,'2021-04-19 22:43:39','2021-04-19 22:43:51'),(1672,794,'Manager',1,'2021-04-20 14:17:59','2021-04-20 14:17:59'),(1673,794,'经 理',2,'2021-04-20 14:17:59','2021-07-13 19:55:36'),(1675,795,'Tips Before Discount',1,'2021-04-20 20:42:59','2021-04-20 20:42:59'),(1676,795,'折扣前小费',2,'2021-04-20 20:42:59','2021-04-20 20:42:59'),(1680,796,'Single Order On Table',1,'2021-04-20 22:22:37','2021-06-23 15:52:23'),(1681,796,'一桌一单',2,'2021-04-20 22:22:37','2021-06-23 15:56:16'),(1683,797,'Table is used',1,'2021-04-20 22:32:22','2021-06-16 18:09:50'),(1684,797,'该桌子使用中',2,'2021-04-20 22:32:22','2021-06-16 18:09:50'),(1686,798,'View All Orders',1,'2021-04-20 22:42:04','2021-07-09 16:17:02'),(1687,798,'查看所有订单',2,'2021-04-20 22:42:04','2021-07-09 16:17:03'),(1689,799,'Buttons',1,'2021-04-22 14:39:21','2021-06-23 21:31:26'),(1690,799,'按 键',2,'2021-04-22 14:39:21','2021-07-13 19:50:07'),(1693,804,'Last 4 Digits',1,'2021-04-22 18:45:17','2021-06-22 15:39:15'),(1694,804,'卡号后四码',2,'2021-04-22 18:45:17','2021-06-28 14:39:22'),(1696,805,'No. or Phone',1,'2021-04-22 18:46:25','2021-04-22 18:46:25'),(1697,805,'单号或电话',2,'2021-04-22 18:46:25','2021-04-22 18:46:25'),(1700,806,'Clear All',1,'2021-04-23 21:32:48','2021-04-23 21:32:48'),(1701,806,'清 除',2,'2021-04-23 21:32:48','2021-04-23 21:32:48'),(1703,807,'Entire Order',1,'2021-05-04 14:28:09','2021-06-28 19:30:35'),(1704,807,'整 单',2,'2021-05-04 14:28:09','2021-05-04 14:28:09'),(1706,808,'Clear Discount',1,'2021-05-04 14:32:12','2021-05-04 14:32:12'),(1707,808,'Clear Discount',2,'2021-05-04 14:32:12','2021-05-04 14:32:12'),(1709,809,'Sent Kitchen',1,'2021-05-04 15:02:14','2021-06-25 20:48:33'),(1710,809,'已送厨',2,'2021-05-04 15:02:14','2021-06-25 20:48:33'),(1713,810,'Clear Table',1,'2021-05-07 17:38:55','2021-05-07 17:38:55'),(1714,810,'清 桌',2,'2021-05-07 17:38:55','2021-05-07 17:45:11'),(1716,811,'Are you sure you want to clear table?',1,'2021-05-07 17:40:07','2021-06-16 17:08:20'),(1717,811,'您确定要清空桌面嗎？',2,'2021-05-07 17:40:07','2021-06-16 17:08:42'),(1719,812,'Choose the order you want to merge into',1,'2021-05-07 21:01:11','2021-05-07 21:01:11'),(1720,812,'选择您想要合併的订单',2,'2021-05-07 21:01:11','2021-07-13 19:12:04'),(1722,813,'Tips Before Other Fees',1,'2021-05-07 21:04:52','2021-06-22 22:41:38'),(1723,813,'小费在其他费用前计算',2,'2021-05-07 21:04:52','2021-05-07 21:04:52'),(1724,542,'Copy',1,'2021-05-10 21:51:48','2021-05-10 21:51:48'),(1725,542,'复 制',2,'2021-05-10 21:51:48','2021-07-13 22:02:02'),(1727,815,'Offset',1,'2021-05-10 21:55:26','2021-05-10 21:55:26'),(1728,815,'缩 进',2,'2021-05-10 21:55:26','2021-06-29 15:17:11'),(1730,819,'Group Height',1,'2021-05-10 21:55:36','2021-05-10 21:55:36'),(1731,819,'行 距',2,'2021-05-10 21:55:36','2021-07-13 19:52:06'),(1733,818,'Group Line',1,'2021-05-10 21:55:50','2021-05-10 21:55:50'),(1734,818,'Group Line',2,'2021-05-10 21:55:50','2021-05-10 21:55:50'),(1736,816,'Font Style',1,'2021-05-10 21:55:59','2021-05-10 21:55:59'),(1737,816,'字体大小',2,'2021-05-10 21:55:59','2021-06-30 20:09:31'),(1739,817,'Alignment',1,'2021-05-10 21:56:27','2021-06-23 18:04:42'),(1740,817,'对齐',2,'2021-05-10 21:56:27','2021-06-23 18:04:42'),(1742,820,'Please select different table',1,'2021-05-13 15:57:56','2021-05-13 15:57:56'),(1743,820,'请选择不同的桌子',2,'2021-05-13 15:57:56','2021-06-16 18:15:07'),(1745,821,'Guest/ Amount',1,'2021-05-13 17:23:00','2021-06-25 20:47:10'),(1746,821,'人數/ 金額',2,'2021-05-13 17:23:00','2021-06-25 20:47:07'),(1748,822,'Type ',1,'2021-05-13 17:23:48','2021-05-13 17:23:48'),(1749,822,'类 型',2,'2021-05-13 17:23:48','2021-05-13 17:23:48'),(1752,826,'Move All',1,'2021-05-18 15:43:12','2021-05-18 15:43:12'),(1753,826,'全部移动',2,'2021-05-18 15:43:12','2021-06-28 15:15:57'),(1759,830,'You can\'t leave an order blank',1,'2021-05-26 21:06:26','2021-07-12 22:44:58'),(1760,830,'请移除空白订单',2,'2021-05-26 21:06:26','2021-07-12 22:45:40'),(1763,829,'Walk in',1,'2021-05-27 15:49:28','2021-05-27 15:49:28'),(1764,829,'散 客',2,'2021-05-27 15:49:28','2021-07-13 21:11:15'),(1766,830,'',3,'2021-05-27 21:11:11','2021-05-27 21:11:11'),(1767,831,'Data not found',1,'2021-05-28 14:12:36','2021-06-16 18:05:50'),(1768,831,'未發现该数据',2,'2021-05-28 14:12:36','2021-06-16 18:06:33'),(1769,831,'',3,'2021-05-28 14:12:36','2021-05-28 14:12:36'),(1770,832,'Duplicate',1,'2021-06-02 15:04:41','2021-06-02 15:04:41'),(1771,832,'复 制',2,'2021-06-02 15:04:41','2021-07-07 20:21:55'),(1772,832,'',3,'2021-06-02 15:04:41','2021-06-02 15:04:41'),(1773,833,'Cross Day',1,'2021-06-02 18:30:53','2021-06-28 19:23:49'),(1774,833,'跨 日',2,'2021-06-02 18:30:53','2021-06-29 15:16:43'),(1775,833,'',3,'2021-06-02 18:30:53','2021-06-02 18:30:53'),(1776,834,'Yesterday',1,'2021-06-02 20:26:15','2021-06-17 14:38:21'),(1777,834,'前 天',2,'2021-06-02 20:26:15','2021-06-17 14:38:21'),(1778,834,'',3,'2021-06-02 20:26:15','2021-06-02 20:26:15'),(1779,835,'Next Day',1,'2021-06-02 20:26:54','2021-06-23 17:58:17'),(1780,835,'后一天',2,'2021-06-02 20:26:55','2021-06-23 17:58:17'),(1781,835,'',3,'2021-06-02 20:26:55','2021-06-02 20:26:55'),(1782,836,'Discountable',1,'2021-06-02 20:36:27','2021-06-03 16:15:09'),(1783,836,'可打折',2,'2021-06-02 20:36:27','2021-06-23 22:12:15'),(1784,836,'',3,'2021-06-02 20:36:27','2021-06-02 20:36:27'),(1785,328,'',3,'2021-06-03 22:16:09','2021-06-03 22:16:09'),(1786,837,'Table Layout',1,'2021-06-03 22:18:26','2021-06-03 22:18:26'),(1787,837,'布 局',2,'2021-06-03 22:18:26','2021-07-06 19:09:22'),(1788,837,'',3,'2021-06-03 22:18:26','2021-06-03 22:18:26'),(1789,669,'',3,'2021-06-03 22:21:26','2021-06-03 22:21:26'),(1790,452,'',3,'2021-06-03 22:23:37','2021-06-03 22:23:37'),(1791,453,'',3,'2021-06-03 22:23:45','2021-06-03 22:23:45'),(1792,73,'',3,'2021-06-07 15:51:09','2021-06-07 15:51:09'),(1793,838,'Gift Cards',1,'2021-06-07 20:17:24','2021-06-07 20:17:32'),(1794,838,'礼品卡',2,'2021-06-07 20:17:24','2021-06-07 20:17:29'),(1795,838,'',3,'2021-06-07 20:17:24','2021-06-07 20:17:24'),(1796,839,'Duration',1,'2021-06-09 20:12:53','2021-06-09 20:12:53'),(1797,839,'用餐时间',2,'2021-06-09 20:12:53','2021-06-23 22:20:15'),(1798,839,'',3,'2021-06-09 20:12:53','2021-06-09 20:12:53'),(1799,840,'[Receipt Count] Walk In',1,'2021-06-09 20:57:19','2021-06-22 22:30:39'),(1800,840,'[收据份数] 散客',2,'2021-06-09 20:57:19','2021-06-22 22:31:11'),(1801,840,'',3,'2021-06-09 20:57:19','2021-06-09 20:57:19'),(1802,117,'',3,'2021-06-09 21:29:23','2021-06-09 21:29:23'),(1803,841,'Duplicate Transaction Approved',1,'2021-06-14 20:48:53','2021-06-25 20:44:23'),(1804,841,'允许金额重复',2,'2021-06-14 20:48:53','2021-07-07 20:22:08'),(1805,841,'',3,'2021-06-14 20:48:53','2021-06-14 20:48:53'),(1806,842,'Receipt List',1,'2021-06-15 18:47:10','2021-06-23 17:52:47'),(1807,842,'收据列表',2,'2021-06-15 18:47:10','2021-06-22 22:20:41'),(1808,842,'Receipt List',3,'2021-06-15 18:47:10','2021-06-15 18:47:10'),(1809,132,'',3,'2021-06-16 16:43:35','2021-06-16 16:43:35'),(1810,811,'',3,'2021-06-16 17:08:20','2021-06-16 17:08:20'),(1811,696,'',3,'2021-06-16 17:09:58','2021-06-16 17:09:58'),(1812,609,'',3,'2021-06-16 17:25:02','2021-06-16 17:25:02'),(1813,606,'',3,'2021-06-16 18:03:07','2021-06-16 18:03:07'),(1814,62,'',3,'2021-06-16 18:03:22','2021-06-16 18:03:22'),(1815,607,'',3,'2021-06-16 18:07:10','2021-06-16 18:07:10'),(1816,797,'',3,'2021-06-16 18:09:50','2021-06-16 18:09:50'),(1817,683,'',3,'2021-06-16 18:10:52','2021-06-16 18:10:52'),(1818,820,'',3,'2021-06-16 18:15:07','2021-06-16 18:15:07'),(1819,133,'',3,'2021-06-16 18:23:44','2021-06-16 18:23:44'),(1820,134,'',3,'2021-06-16 18:24:21','2021-06-16 18:24:21'),(1821,754,'',3,'2021-06-16 18:26:46','2021-06-16 18:26:46'),(1822,790,'',3,'2021-06-16 18:52:01','2021-06-16 18:52:01'),(1823,608,'',3,'2021-06-16 19:15:49','2021-06-16 19:15:49'),(1824,843,'Guest Required',1,'2021-06-17 17:06:34','2021-06-23 15:55:32'),(1825,843,'加位模式',2,'2021-06-17 17:06:34','2021-06-23 15:55:32'),(1826,843,'',3,'2021-06-17 17:06:34','2021-06-23 15:55:32'),(1827,844,'Item Price Display',1,'2021-06-21 14:33:28','2021-06-22 21:28:00'),(1828,844,'菜品价格显示',2,'2021-06-21 14:33:28','2021-06-22 21:28:00'),(1829,844,'',3,'2021-06-21 14:33:28','2021-06-21 14:33:28'),(1830,716,'',3,'2021-06-21 20:53:13','2021-06-21 20:53:13'),(1831,717,'',3,'2021-06-21 20:53:52','2021-06-21 20:53:52'),(1832,187,'',3,'2021-06-21 22:26:27','2021-06-21 22:26:27'),(1833,659,'',3,'2021-06-21 22:27:13','2021-06-21 22:27:13'),(1834,668,'',3,'2021-06-21 22:29:42','2021-06-21 22:29:42'),(1835,183,'',3,'2021-06-21 22:31:02','2021-06-21 22:31:02'),(1836,660,'',3,'2021-06-21 22:31:35','2021-06-21 22:31:35'),(1837,194,'',3,'2021-06-21 22:35:49','2021-06-21 22:35:49'),(1838,665,'',3,'2021-06-21 22:36:17','2021-06-21 22:36:17'),(1839,196,'',3,'2021-06-21 22:36:30','2021-06-21 22:36:30'),(1840,182,'',3,'2021-06-21 22:36:57','2021-06-21 22:36:57'),(1841,181,'',3,'2021-06-21 22:44:51','2021-06-21 22:44:51'),(1842,798,'',3,'2021-06-21 22:50:33','2021-06-21 22:50:33'),(1843,197,'',3,'2021-06-21 22:50:52','2021-06-21 22:50:52'),(1844,20,'',3,'2021-06-21 22:52:25','2021-06-21 22:52:25'),(1845,667,'',3,'2021-06-21 22:54:40','2021-06-21 22:54:40'),(1846,658,'',3,'2021-06-21 22:55:12','2021-06-21 22:55:12'),(1847,151,'',3,'2021-06-21 22:55:35','2021-06-21 22:55:35'),(1848,846,'Auto Insert Decimal',1,'2021-06-22 15:27:06','2021-06-22 15:27:06'),(1849,846,'金额输入格式',2,'2021-06-22 15:27:06','2021-06-23 16:41:11'),(1850,846,'',3,'2021-06-22 15:27:06','2021-06-22 15:27:06'),(1851,804,'',3,'2021-06-22 15:37:06','2021-06-22 15:37:06'),(1852,351,'',3,'2021-06-22 15:39:48','2021-06-22 15:39:48'),(1853,847,'Payment Method',1,'2021-06-22 15:43:40','2021-06-22 15:43:40'),(1854,847,'付款方法',2,'2021-06-22 15:43:40','2021-06-22 15:43:49'),(1855,847,'',3,'2021-06-22 15:43:40','2021-06-22 15:43:40'),(1856,393,'',3,'2021-06-22 16:11:29','2021-06-22 16:11:29'),(1859,713,'',3,'2021-06-22 20:08:00','2021-06-22 20:08:00'),(1866,224,'',3,'2021-06-22 20:33:37','2021-06-22 20:33:37'),(1867,222,'',3,'2021-06-22 20:35:16','2021-06-22 20:35:16'),(1868,580,'',3,'2021-06-22 20:36:55','2021-06-22 20:36:55'),(1869,581,'',3,'2021-06-22 20:38:40','2021-06-22 20:38:40'),(1870,602,'',3,'2021-06-22 20:40:18','2021-06-22 20:40:18'),(1871,167,'',3,'2021-06-22 20:43:17','2021-06-22 20:43:17'),(1872,161,'',3,'2021-06-22 20:43:44','2021-06-22 20:43:44'),(1873,162,'',3,'2021-06-22 20:43:50','2021-06-22 20:43:50'),(1874,747,'',3,'2021-06-22 20:54:37','2021-06-22 20:54:37'),(1875,583,'',3,'2021-06-22 21:02:59','2021-06-22 21:02:59'),(1876,417,'',3,'2021-06-22 21:07:18','2021-06-22 21:07:18'),(1877,226,'',3,'2021-06-22 21:13:48','2021-06-22 21:13:48'),(1878,576,'',3,'2021-06-22 21:14:39','2021-06-22 21:14:39'),(1879,223,'',3,'2021-06-22 21:15:51','2021-06-22 21:15:51'),(1880,220,'',3,'2021-06-22 21:21:28','2021-06-22 21:21:28'),(1881,778,'',3,'2021-06-22 21:31:28','2021-06-22 21:31:28'),(1882,597,'',3,'2021-06-22 21:32:41','2021-06-22 21:32:41'),(1885,596,'',3,'2021-06-22 21:36:50','2021-06-22 21:36:50'),(1887,792,'',3,'2021-06-22 21:37:48','2021-06-22 21:37:48'),(1891,232,'',3,'2021-06-22 21:41:28','2021-06-22 21:41:28'),(1892,79,'Unpaid',1,'2021-06-22 21:41:34','2021-06-22 21:41:34'),(1893,79,'未付款',2,'2021-06-22 21:41:34','2021-06-28 22:40:25'),(1894,79,'',3,'2021-06-22 21:41:34','2021-06-22 21:41:34'),(1895,568,'',3,'2021-06-22 21:42:13','2021-06-22 21:42:13'),(1896,791,'',3,'2021-06-22 21:42:57','2021-06-22 21:42:57'),(1897,595,'',3,'2021-06-22 21:45:18','2021-06-22 21:45:18'),(1898,229,'',3,'2021-06-22 21:45:26','2021-06-22 21:45:26'),(1899,567,'',3,'2021-06-22 21:52:14','2021-06-22 21:52:14'),(1900,164,'',3,'2021-06-22 21:59:04','2021-06-22 21:59:04'),(1901,228,'',3,'2021-06-22 21:59:35','2021-06-22 21:59:35'),(1902,234,'',3,'2021-06-22 22:00:56','2021-06-22 22:00:56'),(1903,166,'',3,'2021-06-22 22:07:53','2021-06-22 22:07:53'),(1904,233,'',3,'2021-06-22 22:12:28','2021-06-22 22:12:28'),(1905,236,'',3,'2021-06-22 22:15:47','2021-06-22 22:15:47'),(1906,235,'',3,'2021-06-22 22:18:00','2021-06-22 22:18:00'),(1907,237,'',3,'2021-06-22 22:23:52','2021-06-22 22:23:52'),(1908,31,'',3,'2021-06-22 22:35:37','2021-06-22 22:35:37'),(1909,165,'',3,'2021-06-22 22:36:52','2021-06-22 22:36:52'),(1910,227,'',3,'2021-06-22 22:37:11','2021-06-22 22:37:11'),(1911,813,'',3,'2021-06-22 22:37:21','2021-06-22 22:37:21'),(1912,566,'',3,'2021-06-22 22:42:44','2021-06-22 22:42:44'),(1913,221,'',3,'2021-06-23 15:46:03','2021-06-23 15:46:03'),(1914,598,'',3,'2021-06-23 15:49:26','2021-06-23 15:49:26'),(1915,796,'',3,'2021-06-23 15:52:23','2021-06-23 15:52:23'),(1916,231,'',3,'2021-06-23 15:57:12','2021-06-23 15:57:12'),(1917,230,'',3,'2021-06-23 15:57:45','2021-06-23 15:57:45'),(1918,219,'',3,'2021-06-23 16:01:49','2021-06-23 16:01:49'),(1919,724,'',3,'2021-06-23 16:49:25','2021-06-23 16:49:25'),(1920,110,'',3,'2021-06-23 16:50:58','2021-06-23 16:50:58'),(1921,59,'',3,'2021-06-23 16:57:14','2021-06-23 16:57:14'),(1922,395,'',3,'2021-06-23 17:11:37','2021-06-23 17:11:37'),(1923,817,'',3,'2021-06-23 18:04:42','2021-06-23 18:04:42'),(1924,487,'',3,'2021-06-23 18:36:46','2021-06-23 18:36:46'),(1925,537,'',3,'2021-06-23 18:38:13','2021-06-23 18:38:13'),(1926,18,'',3,'2021-06-23 18:39:14','2021-06-23 18:39:14'),(1927,311,'',3,'2021-06-23 18:49:17','2021-06-23 18:49:17'),(1928,294,'',3,'2021-06-23 18:50:21','2021-06-23 18:50:21'),(1929,296,'',3,'2021-06-23 18:54:40','2021-06-23 18:54:40'),(1930,314,'',3,'2021-06-23 18:57:43','2021-06-23 18:57:43'),(1931,391,'',3,'2021-06-23 18:59:14','2021-06-23 18:59:14'),(1932,100,'',3,'2021-06-23 19:00:21','2021-06-23 19:00:21'),(1933,155,'',3,'2021-06-23 19:00:56','2021-06-23 19:00:56'),(1934,92,'',3,'2021-06-23 19:02:52','2021-06-23 19:02:52'),(1935,168,'',3,'2021-06-23 19:05:32','2021-06-23 19:05:32'),(1936,130,'',3,'2021-06-23 19:07:08','2021-06-23 19:07:08'),(1937,88,'',3,'2021-06-23 20:39:42','2021-06-23 20:39:42'),(1938,46,'',3,'2021-06-23 20:54:45','2021-06-23 20:54:45'),(1939,47,'',3,'2021-06-23 20:55:03','2021-06-23 20:55:03'),(1940,48,'',3,'2021-06-23 20:55:09','2021-06-23 20:55:09'),(1941,327,'',3,'2021-06-23 21:06:01','2021-06-23 21:06:01'),(1942,115,'',3,'2021-06-23 21:10:45','2021-06-23 21:10:45'),(1943,255,'',3,'2021-06-23 21:12:03','2021-06-23 21:12:03'),(1944,297,'',3,'2021-06-23 21:13:42','2021-06-23 21:13:42'),(1945,44,'',3,'2021-06-23 21:13:54','2021-06-23 21:13:54'),(1946,677,'',3,'2021-06-23 21:22:27','2021-06-23 21:22:27'),(1947,799,'',3,'2021-06-23 21:29:43','2021-06-23 21:29:43'),(1948,357,'',3,'2021-06-23 21:34:54','2021-06-23 21:34:54'),(1949,356,'',3,'2021-06-23 21:49:35','2021-06-23 21:49:35'),(1950,850,'Daily Item Summary',1,'2021-06-23 21:52:33','2021-06-23 21:52:33'),(1951,850,'每日商品总结',2,'2021-06-23 21:52:33','2021-06-23 21:52:33'),(1952,850,'',3,'2021-06-23 21:52:33','2021-06-23 21:52:33'),(1953,538,'',3,'2021-06-23 21:52:51','2021-06-23 21:52:51'),(1954,147,'',3,'2021-06-23 22:03:49','2021-06-23 22:03:49'),(1955,771,'',3,'2021-06-23 22:04:26','2021-06-23 22:04:26'),(1956,111,'',3,'2021-06-23 22:06:28','2021-06-23 22:06:28'),(1957,468,'最小距离',2,'2021-06-23 22:16:55','2021-06-23 22:16:55'),(1958,468,'',3,'2021-06-23 22:16:55','2021-06-23 22:16:55'),(1959,469,'',3,'2021-06-23 22:17:05','2021-06-23 22:17:05'),(1960,116,'',3,'2021-06-23 22:18:36','2021-06-23 22:18:36'),(1961,765,'',3,'2021-06-23 22:23:27','2021-06-23 22:23:27'),(1962,503,'',3,'2021-06-23 22:32:50','2021-06-23 22:32:50'),(1963,504,'',3,'2021-06-23 22:37:01','2021-06-23 22:37:01'),(1964,113,'',3,'2021-06-23 22:38:16','2021-06-23 22:38:16'),(1965,56,'',3,'2021-06-23 22:43:47','2021-06-23 22:43:47'),(1966,347,'',3,'2021-06-23 22:43:55','2021-06-23 22:43:55'),(1967,416,'',3,'2021-06-23 22:47:25','2021-06-23 22:47:25'),(1968,482,'',3,'2021-06-25 20:35:42','2021-06-25 20:35:42'),(1969,544,'',3,'2021-06-25 20:44:39','2021-06-25 20:44:39'),(1970,135,'',3,'2021-06-25 20:45:44','2021-06-25 20:45:44'),(1971,99,'',3,'2021-06-25 20:46:19','2021-06-25 20:46:19'),(1972,819,'',3,'2021-06-25 20:46:38','2021-06-25 20:46:38'),(1973,821,'',3,'2021-06-25 20:47:07','2021-06-25 20:47:07'),(1974,541,'',3,'2021-06-25 20:47:39','2021-06-25 20:47:39'),(1975,809,'',3,'2021-06-25 20:48:33','2021-06-25 20:48:33'),(1976,725,'',3,'2021-06-25 20:48:51','2021-06-25 20:48:51'),(1977,480,'',3,'2021-06-25 20:55:22','2021-06-25 20:55:22'),(1978,77,'',3,'2021-06-25 20:57:46','2021-06-25 20:57:46'),(1979,563,'',3,'2021-06-25 20:58:17','2021-06-25 20:58:17'),(1980,128,'',3,'2021-06-28 14:35:55','2021-06-28 14:35:55'),(1981,139,'',3,'2021-06-28 14:44:46','2021-06-28 14:44:46'),(1982,852,'Gratuity',1,'2021-06-28 14:57:26','2021-07-13 19:21:02'),(1983,852,'额外费用',2,'2021-06-28 14:57:26','2021-06-28 14:57:26'),(1984,852,'',3,'2021-06-28 14:57:26','2021-06-28 14:57:26'),(1985,53,'',3,'2021-06-28 14:58:02','2021-06-28 14:58:02'),(1986,346,'',3,'2021-06-28 15:00:26','2021-06-28 15:00:26'),(1987,460,'',3,'2021-06-28 15:00:42','2021-06-28 15:00:42'),(1988,484,'',3,'2021-06-28 15:04:17','2021-06-28 15:04:17'),(1989,336,'',3,'2021-06-28 15:05:42','2021-06-28 15:05:42'),(1990,459,'',3,'2021-06-28 15:06:47','2021-06-28 15:06:47'),(1991,536,'',3,'2021-06-28 15:07:25','2021-06-28 15:07:25'),(1992,533,'',3,'2021-06-28 15:07:37','2021-06-28 15:07:37'),(1993,378,'',3,'2021-06-28 15:07:44','2021-06-28 15:07:44'),(1994,826,'',3,'2021-06-28 15:15:57','2021-06-28 15:15:57'),(1995,479,'',3,'2021-06-28 15:18:42','2021-06-28 15:18:42'),(1996,122,'',3,'2021-06-28 15:20:08','2021-06-28 15:20:08'),(1997,681,'',3,'2021-06-28 15:36:33','2021-06-28 15:36:33'),(1998,815,'',3,'2021-06-28 15:56:00','2021-06-28 15:56:00'),(1999,358,'',3,'2021-06-28 16:03:49','2021-06-28 16:03:49'),(2000,343,'',3,'2021-06-28 19:24:27','2021-06-28 19:24:27'),(2001,84,'',3,'2021-06-28 19:25:35','2021-06-28 19:25:35'),(2002,540,'',3,'2021-06-28 19:26:49','2021-06-28 19:26:49'),(2003,807,'',3,'2021-06-28 19:30:35','2021-06-28 19:30:35'),(2004,123,'',3,'2021-06-28 19:31:35','2021-06-28 19:31:35'),(2005,380,'',3,'2021-06-28 19:35:13','2021-06-28 19:35:13'),(2006,102,'',3,'2021-06-28 19:42:39','2021-06-28 19:42:39'),(2007,539,'',3,'2021-06-28 19:53:18','2021-06-28 19:53:18'),(2008,853,'Void Item Forbidden After Saved',1,'2021-06-28 21:33:14','2021-07-12 18:10:58'),(2009,853,'点击保存后禁止删除单品',2,'2021-06-28 21:33:14','2021-07-12 18:13:23'),(2010,853,'',3,'2021-06-28 21:33:14','2021-06-28 21:33:14'),(2011,385,'职 称',2,'2021-06-28 21:54:50','2021-06-28 21:54:52'),(2012,385,'',3,'2021-06-28 21:54:50','2021-06-28 21:54:50'),(2013,873,'Next Day',1,'2021-06-28 22:05:55','2021-06-28 22:05:55'),(2014,873,'后一天',2,'2021-06-28 22:05:55','2021-06-29 15:04:25'),(2015,873,'',3,'2021-06-28 22:05:55','2021-06-28 22:05:55'),(2016,871,'Current Day',1,'2021-06-28 22:06:07','2021-06-28 22:06:07'),(2017,871,'当 日',2,'2021-06-28 22:06:07','2021-07-13 19:49:27'),(2018,871,'',3,'2021-06-28 22:06:07','2021-06-28 22:06:07'),(2019,872,'Previous Day',1,'2021-06-28 22:06:26','2021-06-28 22:06:26'),(2020,872,'前一天',2,'2021-06-28 22:06:26','2021-07-13 20:11:00'),(2021,872,'',3,'2021-06-28 22:06:26','2021-06-28 22:06:26'),(2022,694,'',3,'2021-06-28 22:30:46','2021-06-28 22:30:46'),(2023,766,'',3,'2021-06-28 22:33:16','2021-06-28 22:33:16'),(2024,695,'',3,'2021-06-28 22:33:25','2021-06-28 22:33:25'),(2025,692,'',3,'2021-06-28 22:34:32','2021-06-28 22:34:32'),(2026,49,'',3,'2021-06-28 22:38:41','2021-06-28 22:38:41'),(2027,78,'',3,'2021-06-28 22:40:22','2021-06-28 22:40:22'),(2028,163,'',3,'2021-06-28 22:42:30','2021-06-28 22:42:30'),(2029,246,'',3,'2021-06-28 22:43:01','2021-06-28 22:43:01'),(2030,415,'',3,'2021-06-28 22:45:20','2021-06-28 22:45:20'),(2031,85,'',3,'2021-06-28 22:45:29','2021-06-28 22:45:29'),(2032,337,'',3,'2021-06-29 15:17:45','2021-06-29 15:17:45'),(2033,37,'',3,'2021-06-29 15:21:44','2021-06-29 15:21:44'),(2034,779,'',3,'2021-06-29 15:25:14','2021-06-29 15:25:14'),(2035,344,'',3,'2021-06-29 15:37:13','2021-06-29 15:37:13'),(2036,407,'',3,'2021-06-29 15:46:41','2021-06-29 15:46:41'),(2037,394,'',3,'2021-06-29 15:49:14','2021-06-29 15:49:14'),(2038,13,'Walk In',3,'2021-06-29 15:49:32','2021-12-16 21:40:39'),(2039,140,'',3,'2021-06-29 15:50:09','2021-06-29 15:50:09'),(2040,770,'',3,'2021-06-29 15:51:41','2021-06-29 15:51:41'),(2041,177,'',3,'2021-06-29 15:58:43','2021-06-29 15:58:43'),(2042,390,'',3,'2021-06-29 16:03:05','2021-06-29 16:03:05'),(2043,488,'',3,'2021-06-29 16:08:54','2021-06-29 16:08:54'),(2044,874,'Modifier Group',1,'2021-06-29 16:43:35','2021-06-29 16:43:35'),(2045,874,'配料分组',2,'2021-06-29 16:43:35','2021-06-30 20:08:01'),(2046,874,'',3,'2021-06-29 16:43:35','2021-06-29 16:43:35'),(2047,875,'Activated',1,'2021-06-29 16:49:49','2021-06-29 16:49:49'),(2048,875,'已激活',2,'2021-06-29 16:49:49','2021-06-29 16:50:11'),(2049,875,'',3,'2021-06-29 16:49:49','2021-06-29 16:49:49'),(2050,876,'Inactivated',1,'2021-06-29 16:49:58','2021-06-29 16:49:58'),(2051,876,'已注销',2,'2021-06-29 16:49:58','2021-07-13 19:35:38'),(2052,876,'',3,'2021-06-29 16:49:58','2021-06-29 16:49:58'),(2053,489,'',3,'2021-06-29 18:46:34','2021-06-29 18:46:34'),(2054,55,'',3,'2021-06-29 18:49:57','2021-06-29 18:49:57'),(2055,545,'畅销分类',2,'2021-06-29 18:52:58','2021-07-06 19:35:25'),(2056,545,'',3,'2021-06-29 18:52:58','2021-06-29 18:52:58'),(2057,546,'畅销单品',2,'2021-06-29 18:53:08','2021-07-06 19:35:40'),(2058,546,'',3,'2021-06-29 18:53:08','2021-06-29 18:53:08'),(2059,878,'QTY',1,'2021-06-29 19:13:20','2021-06-29 19:13:20'),(2060,878,' 销售量',2,'2021-06-29 19:13:20','2021-06-29 19:13:20'),(2061,878,'',3,'2021-06-29 19:13:20','2021-06-29 19:13:20'),(2062,879,'Sales',1,'2021-06-29 19:14:55','2021-06-29 19:14:55'),(2063,879,'销售额',2,'2021-06-29 19:14:55','2021-07-06 19:37:35'),(2064,879,'',3,'2021-06-29 19:14:55','2021-06-29 19:14:55'),(2065,516,'',3,'2021-06-29 19:20:38','2021-06-29 19:20:38'),(2066,520,'畅销单品 TOP 8',2,'2021-06-29 19:20:45','2021-07-06 19:34:53'),(2067,520,'',3,'2021-06-29 19:20:45','2021-06-29 19:20:45'),(2068,882,'Top Sales Rank',1,'2021-06-29 19:23:55','2021-06-29 19:47:00'),(2069,882,'销售排行',2,'2021-06-29 19:23:55','2021-06-29 19:47:00'),(2070,882,'',3,'2021-06-29 19:23:55','2021-06-29 19:23:55'),(2071,883,'Default',1,'2021-06-29 20:12:52','2021-06-29 20:12:52'),(2072,883,'默 认',2,'2021-06-29 20:12:52','2021-07-13 20:59:48'),(2073,883,'',3,'2021-06-29 20:12:52','2021-06-29 20:12:52'),(2074,884,'None',1,'2021-06-29 20:13:03','2021-06-29 20:13:03'),(2075,884,'',2,'2021-06-29 20:13:03','2021-06-29 20:13:03'),(2076,884,'',3,'2021-06-29 20:13:03','2021-06-29 20:13:03'),(2077,885,'Cutomized',1,'2021-06-29 20:13:20','2021-06-30 19:36:52'),(2078,885,'自 订',2,'2021-06-29 20:13:20','2021-07-13 19:50:10'),(2079,885,'',3,'2021-06-29 20:13:20','2021-06-29 20:13:20'),(2080,886,'None',1,'2021-06-29 20:15:22','2021-06-29 20:15:22'),(2081,886,'无',2,'2021-06-29 20:15:22','2021-06-30 19:37:50'),(2082,886,'',3,'2021-06-29 20:15:22','2021-06-29 20:15:22'),(2083,851,'Print Changed Part Only For Checklist',1,'2021-06-29 20:18:22','2021-07-13 19:26:26'),(2084,851,'仅打印更改 [核对清单]',2,'2021-06-29 20:18:22','2021-07-13 19:24:35'),(2085,851,'',3,'2021-06-29 20:18:22','2021-06-29 20:18:22'),(2086,293,'',3,'2021-06-29 20:19:15','2021-06-29 20:19:15'),(2087,887,'Transaction Details',1,'2021-06-29 20:32:23','2021-07-13 16:00:54'),(2088,887,'交易记录',2,'2021-06-29 20:32:23','2021-06-29 20:32:23'),(2089,887,'',3,'2021-06-29 20:32:23','2021-06-29 20:32:23'),(2090,365,'',3,'2021-06-29 20:55:09','2021-06-29 20:55:09'),(2091,368,'',3,'2021-06-29 20:56:48','2021-06-29 20:56:48'),(2092,29,'',3,'2021-06-29 21:14:33','2021-06-29 21:14:33'),(2093,325,'',3,'2021-06-29 21:16:38','2021-06-29 21:16:38'),(2094,366,'',3,'2021-06-29 21:23:47','2021-06-29 21:23:47'),(2095,888,'All Transaction',1,'2021-06-29 22:12:49','2021-07-13 19:28:59'),(2096,888,'全部交易纪录',2,'2021-06-29 22:12:49','2021-07-13 19:29:12'),(2097,888,'',3,'2021-06-29 22:12:49','2021-06-29 22:12:49'),(2098,889,'Approved',1,'2021-06-29 22:13:02','2021-06-29 22:13:02'),(2099,889,'核 准',2,'2021-06-29 22:13:02','2021-07-13 19:31:30'),(2100,889,'',3,'2021-06-29 22:13:02','2021-06-29 22:13:02'),(2101,890,'Add Value',1,'2021-06-29 22:21:18','2021-06-29 22:21:18'),(2102,890,'充 值',2,'2021-06-29 22:21:18','2021-06-29 22:21:18'),(2103,890,'',3,'2021-06-29 22:21:18','2021-06-29 22:21:18'),(2104,891,'Void',1,'2021-06-29 22:34:56','2021-06-29 22:34:56'),(2105,891,'作 废',2,'2021-06-29 22:34:56','2021-06-29 22:35:10'),(2106,891,'',3,'2021-06-29 22:34:56','2021-06-29 22:34:56'),(2107,93,'',3,'2021-06-30 19:31:23','2021-06-30 19:31:23'),(2108,355,'',3,'2021-06-30 19:33:58','2021-06-30 19:33:58'),(2109,353,'',3,'2021-06-30 19:39:35','2021-06-30 19:39:35'),(2110,352,'',3,'2021-06-30 19:39:50','2021-06-30 19:39:50'),(2111,467,'',3,'2021-06-30 19:40:12','2021-06-30 19:40:12'),(2112,775,'',3,'2021-06-30 20:03:26','2021-06-30 20:03:26'),(2113,332,'',3,'2021-06-30 20:03:54','2021-06-30 20:03:54'),(2114,129,'',3,'2021-06-30 20:04:16','2021-06-30 20:04:16'),(2115,386,'',3,'2021-06-30 20:09:14','2021-06-30 20:09:14'),(2116,816,'',3,'2021-06-30 20:09:31','2021-06-30 20:09:31'),(2117,481,'',3,'2021-06-30 20:13:10','2021-06-30 20:13:10'),(2118,7,'',3,'2021-06-30 20:20:02','2021-06-30 20:20:02'),(2119,313,'',3,'2021-06-30 22:09:45','2021-06-30 22:09:45'),(2120,169,'',3,'2021-07-01 14:25:32','2021-07-01 14:25:32'),(2121,68,'',3,'2021-07-01 14:49:38','2021-07-01 14:49:38'),(2122,146,'',3,'2021-07-01 16:42:46','2021-07-01 16:42:46'),(2123,892,'Price',1,'2021-07-01 18:20:54','2021-07-01 18:20:54'),(2124,892,'售 价',2,'2021-07-01 18:20:54','2021-07-02 14:23:32'),(2125,892,'',3,'2021-07-01 18:20:54','2021-07-01 18:20:54'),(2126,877,'Sales',1,'2021-07-01 18:43:47','2021-07-01 18:43:47'),(2127,877,'消 费',2,'2021-07-01 18:43:47','2021-07-06 19:13:43'),(2128,877,'',3,'2021-07-01 18:43:47','2021-07-01 18:43:47'),(2129,893,'Refund Record',1,'2021-07-01 19:08:54','2021-07-01 19:08:54'),(2130,893,'退款记录',2,'2021-07-01 19:08:54','2021-07-01 19:08:54'),(2131,893,'',3,'2021-07-01 19:08:54','2021-07-01 19:08:54'),(2132,894,'Void Record',1,'2021-07-01 19:12:14','2021-07-13 15:37:52'),(2133,894,'作废记录',2,'2021-07-01 19:12:14','2021-07-01 19:12:14'),(2134,894,'',3,'2021-07-01 19:12:14','2021-07-01 19:12:14'),(2135,676,'',3,'2021-07-01 19:15:01','2021-07-01 19:15:01'),(2136,543,'Rate',1,'2021-07-01 20:47:50','2021-07-01 20:47:50'),(2137,543,'百分比',2,'2021-07-01 20:47:50','2021-07-01 20:47:50'),(2138,543,'',3,'2021-07-01 20:47:50','2021-07-01 20:47:50'),(2139,138,'',3,'2021-07-01 20:48:32','2021-07-01 20:48:32'),(2140,392,'',3,'2021-07-01 20:48:45','2021-07-01 20:48:45'),(2141,461,'',3,'2021-07-01 20:49:52','2021-07-01 20:49:52'),(2142,145,'',3,'2021-07-01 20:51:00','2021-07-01 20:51:00'),(2143,704,'',3,'2021-07-01 20:59:49','2021-07-01 20:59:49'),(2144,900,'Void Item',1,'2021-07-01 21:18:51','2021-07-01 21:18:51'),(2145,900,'菜品移除',2,'2021-07-01 21:18:51','2021-07-01 21:18:51'),(2146,900,'',3,'2021-07-01 21:18:51','2021-07-01 21:18:51'),(2147,897,'Refund',1,'2021-07-01 21:19:38','2021-07-01 21:19:38'),(2148,897,'退 款',2,'2021-07-01 21:19:38','2021-07-01 21:19:38'),(2149,897,'',3,'2021-07-01 21:19:38','2021-07-01 21:19:38'),(2150,898,'Void Payment',1,'2021-07-01 21:20:13','2021-07-01 21:20:13'),(2151,898,'撤销付款',2,'2021-07-01 21:20:13','2021-07-01 21:20:13'),(2152,898,'',3,'2021-07-01 21:20:13','2021-07-01 21:20:13'),(2153,97,'',3,'2021-07-01 22:25:53','2021-07-01 22:25:53'),(2154,895,'Classify',1,'2021-07-01 22:41:57','2021-07-01 22:41:57'),(2155,895,'归 类',2,'2021-07-01 22:41:57','2021-07-01 22:41:57'),(2156,895,'',3,'2021-07-01 22:41:57','2021-07-01 22:41:57'),(2157,389,'',3,'2021-07-02 14:17:47','2021-07-02 14:17:47'),(2158,906,'Other Sales',1,'2021-07-02 17:03:58','2021-07-02 17:03:58'),(2159,906,'其他销售额',2,'2021-07-02 17:03:58','2021-07-02 20:23:09'),(2160,906,'',3,'2021-07-02 17:03:58','2021-07-02 17:03:58'),(2161,908,'Cashdrawer Password',1,'2021-07-06 15:02:12','2021-07-06 15:02:12'),(2162,908,'钱箱密码',2,'2021-07-06 15:02:12','2021-07-06 15:02:12'),(2163,908,'',3,'2021-07-06 15:02:12','2021-07-06 15:02:12'),(2164,910,'Gratuity',1,'2021-07-06 16:24:46','2021-07-06 16:24:46'),(2165,910,'小費(內含)',2,'2021-07-06 16:24:46','2021-07-06 16:24:50'),(2166,910,'',3,'2021-07-06 16:24:46','2021-07-06 16:24:46'),(2167,315,'',3,'2021-07-06 19:09:51','2021-07-06 19:09:51'),(2168,907,'Name',1,'2021-07-06 19:59:56','2021-07-06 19:59:56'),(2169,907,'姓 名',2,'2021-07-06 19:59:56','2021-07-06 19:59:56'),(2170,907,'',3,'2021-07-06 19:59:56','2021-07-06 19:59:56'),(2171,912,'User Name',1,'2021-07-07 15:33:28','2021-07-07 15:33:28'),(2172,912,'姓 名',2,'2021-07-07 15:33:28','2021-07-07 15:33:28'),(2173,912,'',3,'2021-07-07 15:33:28','2021-07-07 15:33:28'),(2174,103,'',3,'2021-07-07 20:03:57','2021-07-07 20:03:57'),(2175,913,'Modifer Column',1,'2021-07-09 14:19:55','2021-08-13 16:19:29'),(2176,913,'配料列数',2,'2021-07-09 14:19:55','2021-07-09 14:20:00'),(2177,913,'',3,'2021-07-09 14:19:55','2021-07-09 14:19:55'),(2178,914,'Pagination',1,'2021-07-09 14:21:21','2021-08-17 15:12:22'),(2179,914,'翻页模式',2,'2021-07-09 14:21:21','2021-07-13 22:13:05'),(2180,914,'',3,'2021-07-09 14:21:21','2021-07-09 14:21:21'),(2181,904,'Update',1,'2021-07-09 14:38:17','2021-07-09 14:38:17'),(2182,904,'更 新',2,'2021-07-09 14:38:17','2021-07-09 14:38:17'),(2183,904,'',3,'2021-07-09 14:38:17','2021-07-09 14:38:17'),(2184,664,'',3,'2021-07-09 16:13:20','2021-07-09 16:13:20'),(2185,189,'',3,'2021-07-09 16:18:35','2021-07-09 16:18:35'),(2186,662,'',3,'2021-07-09 16:20:50','2021-07-09 16:20:50'),(2187,152,'',3,'2021-07-09 16:21:12','2021-07-09 16:21:12'),(2188,195,'',3,'2021-07-09 16:21:20','2021-07-09 16:21:20'),(2189,192,'',3,'2021-07-09 16:22:01','2021-07-09 16:22:01'),(2190,30,'',3,'2021-07-09 16:24:57','2021-07-09 16:24:57'),(2191,673,'',3,'2021-07-09 16:28:26','2021-07-09 16:28:26'),(2192,148,'Unlimited',1,'2021-07-09 16:36:10','2021-07-09 16:36:10'),(2193,148,'无限制',2,'2021-07-09 16:36:10','2021-07-09 16:36:10'),(2194,148,'',3,'2021-07-09 16:36:10','2021-07-09 16:36:10'),(2195,547,'',3,'2021-07-09 16:38:11','2021-07-09 16:38:11'),(2196,379,'周 二',2,'2021-07-09 16:42:50','2021-07-09 16:42:50'),(2197,379,'',3,'2021-07-09 16:42:50','2021-07-09 16:42:50'),(2198,759,'',3,'2021-07-09 16:43:58','2021-07-09 16:43:58'),(2199,65,'Tomorrow',1,'2021-07-12 15:32:26','2021-07-12 15:32:26'),(2200,65,'明 天',2,'2021-07-12 15:32:26','2021-07-12 15:32:26'),(2201,65,'',3,'2021-07-12 15:32:26','2021-07-12 15:32:26'),(2202,916,'Click To View',1,'2021-07-12 15:54:27','2021-07-12 15:54:27'),(2203,916,'点击查看',2,'2021-07-12 15:54:27','2021-07-12 22:15:36'),(2204,916,'',3,'2021-07-12 15:54:27','2021-07-12 15:54:27'),(2205,909,'Point To Item After Add-On',1,'2021-07-12 19:10:42','2021-07-14 18:12:00'),(2206,909,'配料补充后指向单品',2,'2021-07-12 19:10:42','2021-07-12 19:10:42'),(2207,909,'',3,'2021-07-12 19:10:42','2021-07-12 19:10:42'),(2208,917,'Home Page',1,'2021-07-12 20:31:46','2021-07-12 20:31:46'),(2209,917,'主 页',2,'2021-07-12 20:31:46','2021-07-12 20:32:08'),(2210,917,'',3,'2021-07-12 20:31:46','2021-07-12 20:31:46'),(2211,918,'Interface',1,'2021-07-12 20:32:21','2021-07-12 20:32:21'),(2212,918,'订单记录',2,'2021-07-12 20:32:21','2021-07-12 20:32:21'),(2213,918,'',3,'2021-07-12 20:32:21','2021-07-12 20:32:21'),(2214,919,'Other',1,'2021-07-12 20:32:36','2021-07-12 20:32:36'),(2215,919,'其 他',2,'2021-07-12 20:32:36','2021-07-12 20:32:38'),(2216,919,'',3,'2021-07-12 20:32:36','2021-07-12 20:32:36'),(2217,109,'',3,'2021-07-12 21:42:03','2021-07-12 21:42:03'),(2218,334,'',3,'2021-07-12 21:53:43','2021-07-12 21:53:43'),(2219,911,'Are you sure you want to duplicate this menu?',1,'2021-07-12 22:47:55','2021-07-13 15:58:30'),(2220,911,'是否确定复制整个目录?',2,'2021-07-12 22:47:55','2021-07-13 15:58:30'),(2221,911,'',3,'2021-07-12 22:47:55','2021-07-12 22:47:55'),(2222,441,'',3,'2021-07-13 15:39:28','2021-07-13 15:39:28'),(2223,478,'',3,'2021-07-13 15:44:26','2021-07-13 15:44:26'),(2224,896,'Select Printer Template',1,'2021-07-13 15:45:02','2021-07-13 15:45:02'),(2225,896,'选择打印模板',2,'2021-07-13 15:45:02','2021-07-13 15:45:02'),(2226,896,'',3,'2021-07-13 15:45:02','2021-07-13 15:45:02'),(2227,932,'Please remove all the categories before delete it.',1,'2021-07-13 16:05:07','2021-07-13 16:05:07'),(2228,932,'删除目录前需要清空所有分类',2,'2021-07-13 16:05:07','2021-07-13 16:05:07'),(2229,932,'',3,'2021-07-13 16:05:07','2021-07-13 16:05:07'),(2230,933,'Saved',1,'2021-07-13 16:13:38','2021-07-13 17:37:41'),(2231,933,'未送厨',2,'2021-07-13 16:13:38','2021-07-13 17:20:39'),(2232,933,'',3,'2021-07-13 16:13:38','2021-07-13 16:13:38'),(2233,612,'',3,'2021-07-13 16:13:53','2021-07-13 16:13:53'),(2234,137,'',3,'2021-07-13 16:14:08','2021-07-13 16:14:08'),(2235,935,'In Kitchen',1,'2021-07-13 16:16:04','2021-07-13 16:16:04'),(2236,935,'已送厨',2,'2021-07-13 16:16:04','2021-07-13 16:16:04'),(2237,935,'',3,'2021-07-13 16:16:04','2021-07-13 16:16:04'),(2238,934,'Partial',1,'2021-07-13 16:16:33','2021-07-13 16:16:39'),(2239,934,'部分送厨',2,'2021-07-13 16:16:33','2021-07-13 16:16:33'),(2240,934,'',3,'2021-07-13 16:16:33','2021-07-13 16:16:33'),(2241,936,'Adjusted Transcation',1,'2021-07-13 16:23:04','2021-07-13 16:23:04'),(2242,936,'已添加小费',2,'2021-07-13 16:23:04','2021-07-13 16:23:04'),(2243,936,'',3,'2021-07-13 16:23:04','2021-07-13 16:23:04'),(2244,937,'All Transcation',1,'2021-07-13 16:23:32','2021-07-13 16:23:32'),(2245,937,'全部交易纪录',2,'2021-07-13 16:23:32','2021-07-13 19:29:21'),(2246,937,'',3,'2021-07-13 16:23:32','2021-07-13 16:23:32'),(2247,938,'Customer Notes',1,'2021-07-13 16:32:04','2021-07-13 16:32:04'),(2248,938,'备 注',2,'2021-07-13 16:32:04','2021-07-13 16:32:04'),(2249,938,'',3,'2021-07-13 16:32:04','2021-07-13 16:32:04'),(2250,939,'Void',1,'2021-07-13 17:26:20','2021-07-13 17:26:20'),(2251,939,'作废金额',2,'2021-07-13 17:26:20','2021-07-13 17:26:45'),(2252,939,'',3,'2021-07-13 17:26:21','2021-07-13 17:26:21'),(2253,70,'',3,'2021-07-13 19:10:08','2021-07-13 19:10:08'),(2254,72,'',3,'2021-07-13 19:10:11','2021-07-13 19:10:11'),(2255,812,'',3,'2021-07-13 19:12:04','2021-07-13 19:12:04'),(2256,698,'',3,'2021-07-13 19:14:58','2021-07-13 19:14:58'),(2257,610,'',3,'2021-07-13 19:16:18','2021-07-13 19:16:18'),(2258,121,'',3,'2021-07-13 19:31:52','2021-07-13 19:31:52'),(2259,723,'',3,'2021-07-13 19:32:22','2021-07-13 19:32:22'),(2260,39,'',3,'2021-07-13 19:35:12','2021-07-13 19:35:12'),(2261,674,'',3,'2021-07-13 19:37:35','2021-07-13 19:37:35'),(2262,675,'',3,'2021-07-13 19:37:38','2021-07-13 19:37:38'),(2263,476,'',3,'2021-07-13 19:42:47','2021-07-13 19:42:47'),(2264,693,'',3,'2021-07-13 19:43:18','2021-07-13 19:43:18'),(2265,17,'',3,'2021-07-13 19:44:46','2021-07-13 19:44:46'),(2266,920,'Check List Printer',1,'2021-07-13 19:46:11','2021-07-13 19:48:10'),(2267,920,'核对清单打印机',2,'2021-07-13 19:46:11','2021-07-13 19:48:10'),(2268,920,'',3,'2021-07-13 19:46:11','2021-07-13 19:46:11'),(2269,726,'',3,'2021-07-13 19:51:19','2021-07-13 19:51:19'),(2270,794,'',3,'2021-07-13 19:55:36','2021-07-13 19:55:36'),(2271,903,'Label',1,'2021-07-13 19:58:18','2021-07-13 19:58:18'),(2272,903,'标 籤',2,'2021-07-13 19:58:18','2021-07-13 19:58:18'),(2273,903,'',3,'2021-07-13 19:58:18','2021-07-13 19:58:18'),(2274,940,'All Payment',1,'2021-07-13 19:59:24','2021-07-14 18:05:55'),(2275,940,'全部付款',2,'2021-07-13 19:59:24','2021-07-14 18:05:55'),(2276,940,'',3,'2021-07-13 19:59:24','2021-07-13 19:59:24'),(2277,396,'',3,'2021-07-13 20:02:57','2021-07-13 20:02:57'),(2278,517,'Paper Size',1,'2021-07-13 20:09:28','2021-07-13 20:09:28'),(2279,517,'纸张大小',2,'2021-07-13 20:09:28','2021-07-13 20:09:28'),(2280,517,'',3,'2021-07-13 20:09:28','2021-07-13 20:09:28'),(2281,371,'Pin',2,'2021-07-13 20:10:08','2021-07-13 20:10:08'),(2282,371,'',3,'2021-07-13 20:10:08','2021-07-13 20:10:08'),(2283,75,'',3,'2021-07-13 20:10:42','2021-07-13 20:10:42'),(2284,611,'单 号',2,'2021-07-13 20:45:56','2021-07-13 20:45:56'),(2285,611,'',3,'2021-07-13 20:45:56','2021-07-13 20:45:56'),(2286,345,'州',2,'2021-07-13 20:46:13','2021-07-13 20:46:13'),(2287,345,'',3,'2021-07-13 20:46:13','2021-07-13 20:46:13'),(2288,383,'周 六',2,'2021-07-13 20:46:31','2021-07-13 20:46:38'),(2289,383,'',3,'2021-07-13 20:46:31','2021-07-13 20:46:31'),(2290,905,'Split Total',1,'2021-07-13 20:51:49','2021-07-13 20:51:49'),(2291,905,'分单总额',2,'2021-07-13 20:51:49','2021-07-13 20:51:49'),(2292,905,'',3,'2021-07-13 20:51:49','2021-07-13 20:51:49'),(2293,174,'',3,'2021-07-13 20:52:00','2021-07-13 20:52:00'),(2296,384,'周 日',2,'2021-07-13 21:02:45','2021-07-13 21:02:45'),(2297,384,'',3,'2021-07-13 21:02:45','2021-07-13 21:02:45'),(2298,381,'Thursday',1,'2021-07-13 21:03:27','2021-07-13 21:03:27'),(2299,381,'周 四',2,'2021-07-13 21:03:27','2021-07-13 21:03:27'),(2300,381,'',3,'2021-07-13 21:03:27','2021-07-13 21:03:27'),(2301,501,'',3,'2021-07-13 21:07:18','2021-07-13 21:07:18'),(2302,3,'123',3,'2021-07-13 21:10:40','2021-11-03 19:00:55'),(2303,2,'',3,'2021-07-13 21:10:49','2021-07-13 21:10:49'),(2304,4,'',3,'2021-07-13 21:10:57','2021-07-13 21:10:57'),(2305,829,'',3,'2021-07-13 21:11:15','2021-07-13 21:11:15'),(2306,521,'',3,'2021-07-13 21:12:12','2021-07-13 21:12:12'),(2307,941,'Upload',1,'2021-07-13 21:13:02','2021-07-13 21:13:02'),(2308,941,'上 传',2,'2021-07-13 21:13:02','2021-07-13 21:13:02'),(2309,941,'',3,'2021-07-13 21:13:02','2021-07-13 21:13:02'),(2310,943,'Group By Payment Method',1,'2021-07-13 21:27:31','2021-07-13 21:27:31'),(2311,943,'按付款方式分类',2,'2021-07-13 21:27:31','2021-07-14 15:06:02'),(2312,943,'',3,'2021-07-13 21:27:31','2021-07-13 21:27:31'),(2313,942,'Group By Order Type',1,'2021-07-13 21:27:45','2021-07-13 21:27:45'),(2314,942,'按订单类型分类',2,'2021-07-13 21:27:45','2021-07-14 15:05:52'),(2315,942,'',3,'2021-07-13 21:27:45','2021-07-13 21:27:45'),(2316,944,'Enter Your Pin',1,'2021-07-13 21:32:43','2021-07-13 21:32:43'),(2317,944,'请输入密码',2,'2021-07-13 21:32:43','2021-07-13 21:32:43'),(2318,944,'',3,'2021-07-13 21:32:43','2021-07-13 21:32:43'),(2319,542,'',3,'2021-07-13 22:00:28','2021-07-13 22:00:28'),(2320,948,'None',1,'2021-07-13 22:08:07','2021-07-13 22:08:07'),(2321,948,'无模板',2,'2021-07-13 22:08:08','2021-07-13 22:08:08'),(2322,948,'',3,'2021-07-13 22:08:08','2021-07-13 22:08:08'),(2323,483,'',3,'2021-07-13 22:08:18','2021-07-13 22:08:18'),(2324,243,'',3,'2021-07-13 22:24:47','2021-07-13 22:24:47'),(2325,80,'',3,'2021-07-13 22:24:56','2021-07-13 22:24:56'),(2326,954,'Item Type',1,'2021-07-14 14:57:17','2021-07-14 14:57:17'),(2327,954,'单品类型',2,'2021-07-14 14:57:17','2021-07-14 14:57:17'),(2328,954,'',3,'2021-07-14 14:57:17','2021-07-14 14:57:17'),(2329,818,'',3,'2021-07-14 15:06:23','2021-07-14 15:06:23'),(2330,962,'Unit Price',1,'2021-07-14 15:36:01','2021-07-14 15:36:01'),(2331,962,'单位价格',2,'2021-07-14 15:36:01','2021-07-14 15:36:01'),(2332,962,'',3,'2021-07-14 15:36:01','2021-07-14 15:36:01'),(2333,963,'Space',1,'2021-07-14 15:36:23','2021-07-14 15:36:23'),(2334,963,'空 格',2,'2021-07-14 15:36:23','2021-07-14 15:36:23'),(2335,963,'',3,'2021-07-14 15:36:23','2021-07-14 15:36:23'),(2336,961,'Variant & Size',1,'2021-07-14 15:36:47','2021-07-14 15:36:47'),(2337,961,'多價格',2,'2021-07-14 15:36:47','2021-07-14 15:36:47'),(2338,961,'',3,'2021-07-14 15:36:47','2021-07-14 15:36:47'),(2339,960,'Fixed Price',1,'2021-07-14 15:37:21','2021-07-14 15:37:21'),(2340,960,'固定價格',2,'2021-07-14 15:37:21','2021-07-14 15:37:21'),(2341,960,'',3,'2021-07-14 15:37:21','2021-07-14 15:37:21'),(2342,964,'Sum',1,'2021-07-14 17:31:11','2021-07-14 17:31:11'),(2343,964,'总 额',2,'2021-07-14 17:31:11','2021-07-14 17:31:11'),(2344,964,'',3,'2021-07-14 17:31:11','2021-07-14 17:31:11'),(2345,965,'Manufacturer',1,'2021-07-14 18:14:28','2021-07-14 18:14:28'),(2346,965,'Manufacturer',2,'2021-07-14 18:14:28','2021-07-14 18:14:28'),(2347,965,'',3,'2021-07-14 18:14:28','2021-07-14 18:14:28'),(2348,967,'Normal',1,'2021-07-14 18:19:28','2021-07-14 18:19:28'),(2349,967,'通 用',2,'2021-07-14 18:19:28','2021-07-14 18:19:28'),(2350,967,'',3,'2021-07-14 18:19:28','2021-07-14 18:19:28'),(2351,968,'Bold',1,'2021-07-14 18:19:58','2021-07-14 18:19:58'),(2352,968,'粗 体',2,'2021-07-14 18:19:58','2021-07-14 18:19:58'),(2353,968,'',3,'2021-07-14 18:19:58','2021-07-14 18:19:58'),(2354,419,'',3,'2021-07-14 18:57:20','2021-07-14 18:57:20'),(2355,970,'Tips Adjusted',1,'2021-07-14 19:07:32','2021-07-14 19:07:32'),(2356,970,'小费已调整',2,'2021-07-14 19:07:32','2021-07-14 19:08:41'),(2357,970,'',3,'2021-07-14 19:07:32','2021-07-14 19:07:32'),(2358,971,'Tips Not Adjusted',1,'2021-07-14 19:07:43','2021-07-14 19:07:43'),(2359,971,'小费尚未调整',2,'2021-07-14 19:07:43','2021-07-14 19:08:01'),(2360,971,'',3,'2021-07-14 19:07:43','2021-07-14 19:07:43'),(2361,972,'All Tips Status',1,'2021-07-14 19:18:55','2021-07-14 19:18:55'),(2362,972,'全部小费状态',2,'2021-07-14 19:18:55','2021-07-14 20:59:19'),(2363,972,'',3,'2021-07-14 19:18:55','2021-07-14 19:18:55'),(2364,973,'Platform Summary',1,'2021-07-14 19:35:26','2021-07-14 19:35:26'),(2365,973,'送餐平台汇总',2,'2021-07-14 19:35:26','2021-07-14 19:35:31'),(2366,973,'',3,'2021-07-14 19:35:26','2021-07-14 19:35:26'),(2367,454,'',3,'2021-07-14 20:50:37','2021-07-14 20:50:37'),(2368,789,'',3,'2021-07-14 21:01:31','2021-07-14 21:01:31'),(2369,561,'',3,'2021-07-14 21:02:10','2021-07-14 21:02:10'),(2370,712,'',3,'2021-07-14 21:44:19','2021-07-14 21:44:19'),(2371,974,'No Data',1,'2021-07-22 17:34:30','2021-07-22 17:34:30'),(2372,974,'无数据',2,'2021-07-22 17:34:31','2021-07-27 20:48:41'),(2373,974,'',3,'2021-07-22 17:34:31','2021-07-22 17:34:31'),(2374,975,'Item & Modifier',1,'2021-07-23 17:42:28','2021-08-23 15:00:57'),(2375,975,'菜品或配料',2,'2021-07-23 17:42:28','2021-07-23 17:43:05'),(2376,975,'',3,'2021-07-23 17:42:28','2021-07-23 17:42:28'),(2377,977,'Item Not Found',1,'2021-07-23 18:16:25','2021-07-23 18:16:25'),(2378,977,'Item Not Found',2,'2021-07-23 18:16:25','2021-07-23 18:16:25'),(2379,977,'',3,'2021-07-23 18:16:25','2021-07-23 18:16:25'),(2380,976,'Order by Code',1,'2021-07-26 15:58:40','2021-07-26 15:58:40'),(2381,976,'Order by Code',2,'2021-07-26 15:58:40','2021-07-26 15:58:40'),(2382,976,'',3,'2021-07-26 15:58:40','2021-07-26 15:58:40'),(2383,978,'Please select the order you want to move into',1,'2021-07-27 18:20:07','2021-08-13 21:42:20'),(2384,978,'请选择您要将菜品移至的订单',2,'2021-07-27 18:20:07','2021-08-13 21:42:20'),(2385,978,'',3,'2021-07-27 18:20:07','2021-07-27 18:20:07'),(2386,979,'Can not move item to paid order and split order?',1,'2021-07-27 18:30:37','2021-07-27 18:30:37'),(2387,979,'Can not move item to paid order and split order?',2,'2021-07-27 18:30:37','2021-07-27 18:30:37'),(2388,979,'',3,'2021-07-27 18:30:37','2021-07-27 18:30:37'),(2389,980,'Move Item',1,'2021-07-27 18:43:47','2021-07-27 18:43:47'),(2390,980,'移动菜品',2,'2021-07-27 18:43:47','2021-08-13 21:30:10'),(2391,980,'',3,'2021-07-27 18:43:47','2021-07-27 18:43:47'),(2392,981,'Move Item',1,'2021-07-27 19:26:36','2021-07-27 19:26:36'),(2393,981,'移动菜品',2,'2021-07-27 19:26:36','2021-08-13 21:51:14'),(2394,981,'',3,'2021-07-27 19:26:36','2021-07-27 19:26:36'),(2395,982,'Customer Copy',1,'2021-07-29 16:41:50','2021-07-29 16:41:50'),(2396,982,'Customer Copy',2,'2021-07-29 16:41:50','2021-07-29 16:41:50'),(2397,982,'',3,'2021-07-29 16:41:50','2021-07-29 16:41:50'),(2398,983,'Merchant Copy',1,'2021-07-29 16:42:12','2021-07-29 16:42:12'),(2399,983,'Merchant Copy',2,'2021-07-29 16:42:12','2021-07-29 16:42:12'),(2400,983,'',3,'2021-07-29 16:42:12','2021-07-29 16:42:12'),(2401,985,'Private Notes',1,'2021-07-29 21:57:43','2021-07-29 21:57:43'),(2402,985,'私人备注',2,'2021-07-29 21:57:43','2021-07-29 21:57:43'),(2403,985,'',3,'2021-07-29 21:57:43','2021-07-29 21:57:43'),(2404,986,'Private Notes',1,'2021-07-29 22:00:15','2021-07-29 22:00:15'),(2405,986,'私人备注',2,'2021-07-29 22:00:15','2021-07-29 22:00:20'),(2406,986,'',3,'2021-07-29 22:00:15','2021-07-29 22:00:15'),(2407,987,'Menu Display (Station)',1,'2021-07-30 21:39:18','2021-08-13 21:01:08'),(2408,987,'菜单显示 (依服务端)',2,'2021-07-30 21:39:18','2021-08-13 21:01:08'),(2409,987,'',3,'2021-07-30 21:39:18','2021-07-30 21:39:18'),(2410,988,'Menu Display (Order Type)',1,'2021-07-30 21:39:57','2021-08-13 21:01:19'),(2411,988,'菜单显示 (依订单类型)',2,'2021-07-30 21:39:57','2021-08-13 21:01:19'),(2412,988,'',3,'2021-07-30 21:39:57','2021-07-30 21:39:57'),(2413,989,'Report Filter ',1,'2021-08-03 19:27:26','2021-08-13 21:01:50'),(2414,989,'筛选报表数据',2,'2021-08-03 19:27:26','2021-08-13 21:01:50'),(2415,989,'',3,'2021-08-03 19:27:26','2021-08-03 19:27:26'),(2416,993,'Gift Card',1,'2021-08-04 16:55:05','2021-08-04 16:55:05'),(2417,993,'Gift Card',2,'2021-08-04 16:55:05','2021-08-04 16:55:05'),(2418,993,'Gift Card',3,'2021-08-04 16:55:05','2021-11-02 18:34:41'),(2419,992,'Product Type',1,'2021-08-04 16:55:18','2021-08-04 16:55:18'),(2420,992,'Product Type',2,'2021-08-04 16:55:18','2021-08-04 16:55:18'),(2421,992,'Product Type',3,'2021-08-04 16:55:18','2021-11-02 18:34:45'),(2422,991,'Cash On Hand',1,'2021-08-04 16:55:35','2021-08-04 16:55:35'),(2423,991,'Cash On Hand',2,'2021-08-04 16:55:35','2021-08-04 16:55:35'),(2424,991,'Cash On Hand',3,'2021-08-04 16:55:35','2021-11-02 18:34:49'),(2425,994,'Please select at least one Order Type',1,'2021-08-04 17:11:05','2021-08-13 21:44:38'),(2426,994,'请至少选择一个订单类型',2,'2021-08-04 17:11:05','2021-08-13 21:44:53'),(2427,994,'',3,'2021-08-04 17:11:05','2021-08-04 17:11:05'),(2428,995,'Report',1,'2021-08-05 18:43:06','2021-08-05 18:43:06'),(2429,995,'报表设置',2,'2021-08-05 18:43:06','2021-08-13 21:01:39'),(2430,995,'',3,'2021-08-05 18:43:06','2021-08-05 18:43:06'),(2431,997,'Print Driver Report',1,'2021-08-05 21:55:28','2021-08-05 21:55:28'),(2432,997,'打印外卖员报表',2,'2021-08-05 21:55:28','2021-08-05 21:56:30'),(2433,997,'',3,'2021-08-05 21:55:28','2021-08-05 21:55:28'),(2434,998,'Duplicate',1,'2021-08-06 15:06:12','2021-08-06 15:06:12'),(2435,998,'Duplicate',2,'2021-08-06 15:06:12','2021-08-06 15:06:12'),(2436,998,'',3,'2021-08-06 15:06:12','2021-08-06 15:06:12'),(2437,999,'Please select the guest',1,'2021-08-09 17:30:21','2021-08-13 21:40:12'),(2438,999,'请选择客人',2,'2021-08-09 17:30:21','2021-08-13 21:40:12'),(2439,999,'',3,'2021-08-09 17:30:21','2021-08-09 17:30:21'),(2440,1000,'Void Reason',1,'2021-08-09 20:31:18','2021-08-09 20:31:18'),(2441,1000,'作废理由',2,'2021-08-09 20:31:18','2021-08-13 22:13:44'),(2442,1000,'',3,'2021-08-09 20:31:18','2021-08-09 20:31:18'),(2443,1002,'Sun',1,'2021-08-12 20:00:32','2021-08-12 20:00:32'),(2444,1002,'Sun',2,'2021-08-12 20:00:32','2021-08-12 20:00:34'),(2445,1002,'',3,'2021-08-12 20:00:32','2021-08-12 20:00:32'),(2446,1003,'Mon',1,'2021-08-12 20:00:40','2021-08-12 20:00:40'),(2447,1003,'Mon',2,'2021-08-12 20:00:40','2021-08-12 20:00:40'),(2448,1003,'',3,'2021-08-12 20:00:40','2021-08-12 20:00:40'),(2449,1004,'Tue',1,'2021-08-12 20:00:45','2021-08-12 20:00:45'),(2450,1004,'Tue',2,'2021-08-12 20:00:45','2021-08-12 20:00:45'),(2451,1004,'',3,'2021-08-12 20:00:45','2021-08-12 20:00:45'),(2452,1005,'Wed',1,'2021-08-12 20:00:50','2021-08-12 20:00:50'),(2453,1005,'Wed',2,'2021-08-12 20:00:50','2021-08-12 20:00:50'),(2454,1005,'',3,'2021-08-12 20:00:50','2021-08-12 20:00:50'),(2455,1006,'Thu',1,'2021-08-12 20:00:55','2021-08-12 20:00:55'),(2456,1006,'Thu',2,'2021-08-12 20:00:55','2021-08-12 20:00:55'),(2457,1006,'',3,'2021-08-12 20:00:55','2021-08-12 20:00:55'),(2458,1007,'Fri',1,'2021-08-12 20:01:00','2021-08-12 20:01:00'),(2459,1007,'Fri',2,'2021-08-12 20:01:00','2021-08-12 20:01:00'),(2460,1007,'',3,'2021-08-12 20:01:00','2021-08-12 20:01:00'),(2461,1008,'Sat',1,'2021-08-12 20:01:04','2021-08-12 20:01:04'),(2462,1008,'Sat',2,'2021-08-12 20:01:04','2021-08-12 20:01:04'),(2463,1008,'',3,'2021-08-12 20:01:04','2021-08-12 20:01:04'),(2464,996,'Please select at least one driver',1,'2021-08-13 21:43:08','2021-08-13 21:44:09'),(2465,996,'请至少选择一名外卖员',2,'2021-08-13 21:43:08','2021-08-13 21:44:09'),(2466,996,'',3,'2021-08-13 21:43:08','2021-08-13 21:43:08'),(2467,1017,'Reservation Status',1,'2021-08-16 22:06:38','2021-08-16 22:06:38'),(2468,1017,'预订状态',2,'2021-08-16 22:06:38','2021-08-26 16:04:07'),(2469,1017,'',3,'2021-08-16 22:06:38','2021-08-16 22:06:38'),(2470,1023,'Seat',1,'2021-08-16 22:16:42','2021-08-16 22:16:42'),(2471,1023,'入 座',2,'2021-08-16 22:16:42','2021-08-20 14:06:13'),(2472,1023,'',3,'2021-08-16 22:16:42','2021-08-16 22:16:42'),(2473,1027,'Third-Party Payment',1,'2021-08-17 14:20:51','2021-08-17 14:20:51'),(2474,1027,'第三方支付',2,'2021-08-17 14:20:51','2021-08-17 14:20:51'),(2475,1027,'',3,'2021-08-17 14:20:51','2021-08-17 14:20:51'),(2476,1028,'Third',1,'2021-08-17 20:21:32','2021-08-17 20:21:32'),(2477,1028,'Third',2,'2021-08-17 20:21:32','2021-08-17 20:21:32'),(2478,1028,'',3,'2021-08-17 20:21:32','2021-08-17 20:21:32'),(2479,1018,'No Show',1,'2021-08-18 17:16:20','2021-08-18 17:16:20'),(2480,1018,'不显示',2,'2021-08-18 17:16:20','2021-08-20 18:18:32'),(2481,1018,'',3,'2021-08-18 17:16:20','2021-08-18 17:16:20'),(2482,1037,'Reserved',1,'2021-08-18 17:18:27','2021-08-18 17:18:27'),(2483,1037,'Reserved',2,'2021-08-18 17:18:27','2021-08-18 17:18:27'),(2484,1037,'',3,'2021-08-18 17:18:27','2021-08-18 17:18:27'),(2485,1024,'Seated',1,'2021-08-18 17:19:01','2021-08-18 17:19:01'),(2486,1024,'入 座',2,'2021-08-18 17:19:01','2021-08-26 15:53:26'),(2487,1024,'',3,'2021-08-18 17:19:01','2021-08-18 17:19:01'),(2488,1038,'Confirmed',1,'2021-08-18 17:20:55','2021-08-18 17:20:55'),(2489,1038,'Confirmed',2,'2021-08-18 17:20:55','2021-08-18 17:20:55'),(2490,1038,'',3,'2021-08-18 17:20:55','2021-08-18 17:20:55'),(2491,1039,'Cancelled',1,'2021-08-18 17:22:27','2021-08-18 17:22:27'),(2492,1039,'Cancelled',2,'2021-08-18 17:22:27','2021-08-18 17:22:27'),(2493,1039,'',3,'2021-08-18 17:22:27','2021-08-18 17:22:27'),(2494,1040,'Other',1,'2021-08-18 18:05:26','2021-08-18 19:42:20'),(2495,1040,'其 它',2,'2021-08-18 18:05:26','2021-08-18 19:42:28'),(2496,1040,'',3,'2021-08-18 18:05:26','2021-08-18 18:05:26'),(2497,1041,'Reservation',1,'2021-08-18 19:24:59','2021-08-18 19:24:59'),(2498,1041,'预 订',2,'2021-08-18 19:24:59','2021-08-20 18:19:50'),(2499,1041,'',3,'2021-08-18 19:24:59','2021-08-18 19:24:59'),(2500,721,'',3,'2021-08-18 19:42:32','2021-08-18 19:42:32'),(2501,1022,'Arrive',1,'2021-08-19 16:51:06','2021-08-19 16:51:06'),(2502,1022,'到 达',2,'2021-08-19 16:51:06','2021-08-19 16:51:06'),(2503,1022,'',3,'2021-08-19 16:51:06','2021-08-19 16:51:06'),(2504,1019,'Reopen',1,'2021-08-19 16:51:26','2021-08-19 16:51:26'),(2505,1019,'重新打开',2,'2021-08-19 16:51:26','2021-08-19 16:51:26'),(2506,1019,'',3,'2021-08-19 16:51:26','2021-08-19 16:51:26'),(2507,1046,'Total',1,'2021-08-23 15:11:20','2021-08-23 15:11:20'),(2508,1046,'总 额',2,'2021-08-23 15:11:20','2021-08-23 15:11:32'),(2509,1046,'',3,'2021-08-23 15:11:20','2021-08-23 15:11:20'),(2510,984,'Warehouse Type',1,'2021-08-23 15:14:52','2021-08-23 15:14:52'),(2511,984,'Warehouse Type',2,'2021-08-23 15:14:52','2021-08-23 15:14:52'),(2512,984,'',3,'2021-08-23 15:14:52','2021-08-23 15:14:52'),(2513,1049,'Party Name',1,'2021-08-26 16:01:32','2021-08-26 16:01:32'),(2514,1049,'Party Name',2,'2021-08-26 16:01:32','2021-08-26 16:01:32'),(2515,1049,'',3,'2021-08-26 16:01:32','2021-08-26 16:01:32'),(2516,1051,'Date & Time',1,'2021-08-26 16:02:08','2021-08-26 16:02:08'),(2517,1051,'日期 & 时间',2,'2021-08-26 16:02:08','2021-08-26 16:02:08'),(2518,1051,'',3,'2021-08-26 16:02:08','2021-08-26 16:02:08'),(2519,364,'',3,'2021-08-26 16:02:43','2021-08-26 16:02:43'),(2520,1052,'Active',1,'2021-08-26 16:06:42','2021-08-26 16:06:42'),(2521,1052,'Active',2,'2021-08-26 16:06:42','2021-08-26 16:06:42'),(2522,1052,'',3,'2021-08-26 16:06:42','2021-08-26 16:06:42'),(2523,1053,'Inactive',1,'2021-08-26 16:06:52','2021-08-26 16:06:52'),(2524,1053,'Inactive',2,'2021-08-26 16:06:52','2021-08-26 16:06:52'),(2525,1053,'',3,'2021-08-26 16:06:52','2021-08-26 16:06:52'),(2526,1054,'Date/Time Not Available',1,'2021-08-26 16:53:35','2021-08-26 17:01:16'),(2527,1054,'所选时间不可用',2,'2021-08-26 16:53:35','2021-08-26 17:01:16'),(2528,1054,'',3,'2021-08-26 16:53:35','2021-08-26 16:53:35'),(2529,1057,'Not Adjusted Transcation',1,'2021-09-22 21:31:38','2021-09-22 21:31:38'),(2530,1057,'未添加小费',2,'2021-09-22 21:31:38','2021-09-22 21:31:54'),(2531,1057,'',3,'2021-09-22 21:31:38','2021-09-22 21:31:38'),(2532,1058,'Cash Payout',1,'2021-09-29 14:38:15','2021-09-29 14:38:15'),(2533,1058,'Cash Payout',2,'2021-09-29 14:38:15','2021-09-29 14:38:15'),(2534,1058,'',3,'2021-09-29 14:38:15','2021-09-29 14:38:15'),(2535,1059,'Payto',1,'2021-09-29 15:42:33','2021-09-29 15:42:33'),(2536,1059,'Payto',2,'2021-09-29 15:42:33','2021-09-29 15:42:33'),(2537,1059,'',3,'2021-09-29 15:42:33','2021-09-29 15:42:33'),(2538,1062,'Payout Report',1,'2021-10-01 16:47:47','2021-10-01 16:47:47'),(2539,1062,'Payout Report',2,'2021-10-01 16:47:47','2021-10-01 16:47:47'),(2540,1062,'',3,'2021-10-01 16:47:47','2021-10-01 16:47:47'),(2541,1061,'Operator Id',1,'2021-10-01 16:48:09','2021-10-01 16:48:09'),(2542,1061,'Operator Id',2,'2021-10-01 16:48:09','2021-10-01 16:48:09'),(2543,1061,'',3,'2021-10-01 16:48:09','2021-10-01 16:48:09'),(2544,1060,'Station Id',1,'2021-10-01 16:48:26','2021-10-01 16:48:26'),(2545,1060,'Station Id',2,'2021-10-01 16:48:26','2021-10-01 16:48:26'),(2546,1060,'',3,'2021-10-01 16:48:26','2021-10-01 16:48:26'),(2547,1063,'Is Ignore',1,'2021-10-08 16:22:29','2021-10-08 16:22:29'),(2548,1063,'Is Ignore',2,'2021-10-08 16:22:29','2021-10-08 16:22:29'),(2549,1063,'',3,'2021-10-08 16:22:29','2021-10-08 16:22:29'),(2550,1064,'Batch Time',1,'2021-10-11 16:37:46','2021-10-11 16:37:46'),(2551,1064,'Batch Time',2,'2021-10-11 16:37:46','2021-10-11 16:37:46'),(2552,1064,'',3,'2021-10-11 16:37:46','2021-10-11 16:37:46'),(2553,1065,'Master',1,'2021-10-11 17:30:06','2021-10-11 17:30:06'),(2554,1065,'Master',2,'2021-10-11 17:30:06','2021-10-11 17:30:06'),(2555,1065,'',3,'2021-10-11 17:30:06','2021-10-11 17:30:06'),(2556,1066,'Cancel',1,'2021-10-26 14:21:10','2021-10-26 14:21:10'),(2557,1066,'Cancel',2,'2021-10-26 14:21:10','2021-10-26 14:21:10'),(2558,1066,'',3,'2021-10-26 14:21:10','2021-10-26 14:21:10'),(2559,1067,'Print Receipt',1,'2021-10-26 14:21:30','2021-10-26 14:21:30'),(2560,1067,'Print Receipt',2,'2021-10-26 14:21:30','2021-10-26 14:21:30'),(2561,1067,'',3,'2021-10-26 14:21:30','2021-10-26 14:21:30'),(2562,1068,'Pay',1,'2021-10-26 14:21:35','2021-10-26 14:21:35'),(2563,1068,'Pay',2,'2021-10-26 14:21:35','2021-10-26 14:21:35'),(2564,1068,'',3,'2021-10-26 14:21:35','2021-10-26 14:21:35'),(2565,1069,'Touch Anywhere To Start',1,'2021-10-26 14:21:56','2021-10-26 14:47:19'),(2566,1069,'Touch Anywhere  To Start',2,'2021-10-26 14:21:56','2021-10-26 18:42:44'),(2567,1069,'',3,'2021-10-26 14:21:56','2021-10-26 14:21:56'),(2568,1070,'Clear Order',1,'2021-10-26 14:25:48','2021-10-28 18:41:00'),(2569,1070,'清除订单',2,'2021-10-26 14:25:48','2021-10-28 18:41:00'),(2570,1070,'',3,'2021-10-26 14:25:48','2021-10-26 14:25:48'),(2571,1071,'Reconnect ',1,'2021-10-26 17:56:51','2021-10-26 17:56:51'),(2572,1071,'重新連接',2,'2021-10-26 17:56:51','2021-10-26 17:56:51'),(2573,1071,'',3,'2021-10-26 17:56:51','2021-10-26 17:56:51'),(2574,1072,'Please Insert, Swipe or Tap card',1,'2021-10-26 18:11:01','2021-10-26 18:11:01'),(2575,1072,'请插入、刷卡或点击卡片',2,'2021-10-26 18:11:01','2021-10-28 18:33:08'),(2576,1072,'',3,'2021-10-26 18:11:02','2021-10-26 18:11:02'),(2577,1073,'Item Count',1,'2021-10-26 18:12:16','2021-10-26 18:12:16'),(2578,1073,'Item Count',2,'2021-10-26 18:12:16','2021-10-26 18:12:16'),(2579,1073,'',3,'2021-10-26 18:12:16','2021-10-26 18:12:16'),(2580,1074,'Touch To Start',1,'2021-10-28 18:19:35','2021-10-28 18:19:35'),(2581,1074,'触 摸 开 始',2,'2021-10-28 18:19:35','2021-10-28 18:20:13'),(2582,1074,'',3,'2021-10-28 18:19:35','2021-10-28 18:19:35'),(2583,1076,'My Order',1,'2021-10-28 18:24:48','2021-10-28 18:24:48'),(2584,1076,'我的订单',2,'2021-10-28 18:24:48','2021-10-28 18:24:48'),(2585,1076,'',3,'2021-10-28 18:24:48','2021-10-28 18:24:48'),(2586,1075,'Your cart is empty',1,'2021-10-28 18:25:11','2021-10-28 18:25:11'),(2587,1075,'你的购物车为空',2,'2021-10-28 18:25:11','2021-10-28 18:25:11'),(2588,1075,'',3,'2021-10-28 18:25:11','2021-10-28 18:25:11'),(2589,1098,'Items',1,'2021-10-28 18:34:05','2021-10-28 18:34:05'),(2590,1098,'菜 品',2,'2021-10-28 18:34:05','2021-10-28 18:34:05'),(2591,1098,'',3,'2021-10-28 18:34:05','2021-10-28 18:34:05'),(2592,1094,'View Cart',1,'2021-10-28 18:39:55','2021-10-28 18:39:55'),(2593,1094,'查看购物车',2,'2021-10-28 18:39:55','2021-10-28 18:39:55'),(2594,1094,'',3,'2021-10-28 18:39:55','2021-10-28 18:39:55'),(2595,1104,'My Cart',1,'2021-10-28 18:49:02','2021-10-29 14:24:05'),(2596,1104,'我的购物车',2,'2021-10-28 18:49:02','2021-10-28 18:49:02'),(2597,1104,'',3,'2021-10-28 18:49:02','2021-10-28 18:49:02'),(2598,1097,'Please take your receipt and pay at the counter',1,'2021-10-28 19:00:03','2021-10-28 19:00:03'),(2599,1097,'请拿着收据到柜台付款',2,'2021-10-28 19:00:03','2021-10-28 19:00:20'),(2600,1097,'',3,'2021-10-28 19:00:03','2021-10-28 19:00:03'),(2601,1093,'Please confirm your order',1,'2021-10-28 19:01:02','2021-10-28 19:01:02'),(2602,1093,'请确认订单',2,'2021-10-28 19:01:02','2021-10-28 19:01:02'),(2603,1093,'',3,'2021-10-28 19:01:02','2021-10-28 19:01:02'),(2604,1103,'Credit Card',1,'2021-10-28 19:02:31','2021-10-28 19:02:31'),(2605,1103,'信用卡',2,'2021-10-28 19:02:31','2021-10-28 19:02:31'),(2606,1103,'',3,'2021-10-28 19:02:31','2021-10-28 19:02:31'),(2607,1095,'Pay At Counter',1,'2021-10-28 19:03:10','2021-11-12 21:49:20'),(2608,1095,'柜台付款',2,'2021-10-28 19:03:10','2021-10-28 19:03:10'),(2609,1095,'Pay At Counter',3,'2021-10-28 19:03:10','2021-11-12 21:49:20'),(2610,1102,'How would you like to pay',1,'2021-10-28 19:07:59','2022-06-10 18:33:14'),(2611,1102,'请选择支付方式',2,'2021-10-28 19:07:59','2022-06-10 18:33:14'),(2612,1102,'',3,'2021-10-28 19:07:59','2021-10-28 19:07:59'),(2613,1105,'Add To Cart',1,'2021-10-28 20:34:21','2021-10-28 20:34:21'),(2614,1105,'添加到购物车',2,'2021-10-28 20:34:21','2021-10-28 20:34:21'),(2615,1105,'',3,'2021-10-28 20:34:21','2021-10-28 20:34:21'),(2616,1106,'Menu Type',1,'2021-11-02 18:34:29','2021-11-02 18:34:29'),(2617,1106,'Menu Type',2,'2021-11-02 18:34:29','2021-11-02 18:34:29'),(2618,1107,'Payment By Station',1,'2021-11-02 18:36:02','2021-11-02 18:36:02'),(2619,1107,'Payment By Station',2,'2021-11-02 18:36:02','2021-11-02 18:36:02'),(2620,1109,'Cash On Hand',1,'2021-11-03 15:27:31','2021-11-03 15:27:31'),(2621,1109,'Cash On Hand',2,'2021-11-03 15:27:31','2021-11-03 15:27:31'),(2622,1110,'Credit On Hand',1,'2021-11-03 18:45:34','2021-11-03 18:45:34'),(2623,1110,'Credit On Hand',2,'2021-11-03 18:45:34','2021-11-03 18:45:34'),(2624,1111,'Order Now',1,'2021-11-12 20:05:26','2021-11-12 20:05:26'),(2625,1111,'Order Now',2,'2021-11-12 20:05:26','2021-11-12 20:05:26'),(2626,1118,'Both',1,'2022-06-17 18:06:37','2022-06-17 18:06:37'),(2627,1118,'Both',2,'2022-06-17 18:06:37','2022-06-17 18:06:37'),(2628,1118,'',3,'2022-06-17 18:06:37','2022-06-17 18:06:37'),(2629,1119,'Stand Alone',1,'2022-06-17 18:07:07','2022-06-17 18:07:07'),(2630,1119,'Stand Alone',2,'2022-06-17 18:07:07','2022-06-17 18:07:07'),(2631,1119,'',3,'2022-06-17 18:07:07','2022-06-17 18:07:07'),(2632,1126,'Reports',1,'2022-06-23 14:43:11','2022-06-23 14:43:11'),(2633,1126,'报 表',2,'2022-06-23 14:43:11','2022-07-07 19:09:11'),(2634,1126,'',3,'2022-06-23 14:43:11','2022-06-23 14:43:11'),(2635,1127,'Menu',1,'2022-06-23 14:44:34','2022-06-23 14:44:34'),(2636,1127,'菜 单',2,'2022-06-23 14:44:34','2022-07-07 19:09:29'),(2637,1127,'',3,'2022-06-23 14:44:34','2022-06-23 14:44:34'),(2638,1128,'Promotion',1,'2022-07-07 18:58:44','2022-07-07 18:58:44'),(2639,1128,'促 销',2,'2022-07-07 18:58:44','2022-07-07 18:58:47'),(2640,1128,'',3,'2022-07-07 18:58:44','2022-07-07 18:58:44'),(2641,1129,'Customer',1,'2022-07-07 18:59:40','2022-07-07 18:59:40'),(2642,1129,'顾 客',2,'2022-07-07 18:59:40','2022-07-07 18:59:40'),(2643,1129,'',3,'2022-07-07 18:59:40','2022-07-07 18:59:40'),(2644,1130,'Gift Card',1,'2022-07-07 19:00:18','2022-07-07 19:00:32'),(2645,1130,'礼品卡',2,'2022-07-07 19:00:18','2022-07-07 19:00:32'),(2646,1130,'',3,'2022-07-07 19:00:18','2022-07-07 19:00:18'),(2647,1131,'Setting',1,'2022-07-07 19:03:04','2022-07-07 19:03:04'),(2648,1131,'设 置',2,'2022-07-07 19:03:04','2022-07-07 19:03:08'),(2649,1131,'',3,'2022-07-07 19:03:04','2022-07-07 19:03:04'),(2650,1132,'Table Layout',1,'2022-07-07 19:04:03','2022-07-07 19:04:03'),(2651,1132,'布 局',2,'2022-07-07 19:04:03','2022-07-07 19:04:36'),(2652,1132,'',3,'2022-07-07 19:04:03','2022-07-07 19:04:03'),(2653,1133,'Warehouse',1,'2022-07-07 19:05:01','2022-07-07 19:05:01'),(2654,1133,'库 存',2,'2022-07-07 19:05:01','2022-07-07 19:05:03'),(2655,1133,'',3,'2022-07-07 19:05:01','2022-07-07 19:05:01'),(2656,1134,'Administration',1,'2022-07-07 19:05:57','2022-07-07 19:05:57'),(2657,1134,'人员管理',2,'2022-07-07 19:05:57','2022-07-07 19:05:57'),(2658,1134,'',3,'2022-07-07 19:05:57','2022-07-07 19:05:57'),(2659,1136,'Resend',1,'2022-07-07 19:07:41','2022-07-07 19:07:41'),(2660,1136,'重 送',2,'2022-07-07 19:07:41','2022-07-07 19:07:41'),(2661,1136,'',3,'2022-07-07 19:07:41','2022-07-07 19:07:41'),(2662,1137,'Clear Table',1,'2022-07-07 19:08:16','2022-07-07 19:08:16'),(2663,1137,'清 桌',2,'2022-07-07 19:08:16','2022-07-07 19:08:16'),(2664,1137,'',3,'2022-07-07 19:08:16','2022-07-07 19:08:16'),(2665,1138,'Ignore Payment Method',1,'2022-07-29 19:30:38','2022-08-11 18:31:50'),(2666,1138,'Ignore Payment Method',2,'2022-07-29 19:30:38','2022-08-11 18:31:50'),(2667,1138,'',3,'2022-07-29 19:30:38','2022-07-29 19:30:38'),(2668,1139,'Auto Packer Peprint',1,'2022-07-29 19:31:12','2022-07-29 19:31:12'),(2669,1139,'Auto Packer Peprint',2,'2022-07-29 19:31:12','2022-07-29 19:31:12'),(2670,1139,'',3,'2022-07-29 19:31:12','2022-07-29 19:31:12'),(2671,1112,'Online Pickup',1,'2022-08-03 19:24:25','2022-08-03 19:24:25'),(2672,1112,'Online Pickup',2,'2022-08-03 19:24:25','2022-08-03 19:24:38'),(2673,1112,'',3,'2022-08-03 19:24:25','2022-08-03 19:24:25'),(2674,1113,'Online Delivery',1,'2022-08-03 19:24:34','2022-08-03 19:24:34'),(2675,1113,'Online Delivery',2,'2022-08-03 19:24:34','2022-08-03 19:24:41'),(2676,1113,'',3,'2022-08-03 19:24:34','2022-08-03 19:24:34'),(2677,1158,'Cash In Out',1,'2022-08-03 19:25:20','2022-08-03 19:25:29'),(2678,1158,'Cash In Out',2,'2022-08-03 19:25:20','2022-08-11 18:38:08'),(2679,1158,'',3,'2022-08-03 19:25:20','2022-08-03 19:25:20'),(2680,1190,'To Go',1,'2022-08-04 19:52:33','2022-08-04 20:31:10'),(2681,1190,'To Go',2,'2022-08-04 19:52:33','2022-08-04 20:31:10'),(2682,1190,'',3,'2022-08-04 19:52:33','2022-08-04 19:52:33'),(2683,1296,'Add to Cart',1,'2022-08-04 20:26:24','2022-08-04 20:26:24'),(2684,1296,'Add to Cart',2,'2022-08-04 20:26:24','2022-08-04 20:26:24'),(2685,1296,'',3,'2022-08-04 20:26:24','2022-08-04 20:26:24'),(2686,1281,'Back',1,'2022-08-04 20:26:31','2022-08-04 20:26:31'),(2687,1281,'Back',2,'2022-08-04 20:26:31','2022-08-04 20:26:31'),(2688,1281,'',3,'2022-08-04 20:26:31','2022-08-04 20:26:31'),(2689,1278,'Clear Order',1,'2022-08-04 20:27:07','2022-08-04 20:27:07'),(2690,1278,'Clear Order',2,'2022-08-04 20:27:07','2022-08-04 20:27:07'),(2691,1278,'',3,'2022-08-04 20:27:07','2022-08-04 20:27:07'),(2692,1259,'Cn',1,'2022-08-04 20:27:17','2022-08-04 20:27:17'),(2693,1259,'Cn',2,'2022-08-04 20:27:17','2022-08-04 20:27:17'),(2694,1259,'',3,'2022-08-04 20:27:17','2022-08-04 20:27:17'),(2695,1294,'Credit Card',1,'2022-08-04 20:27:37','2022-08-04 20:27:37'),(2696,1294,'Credit Card',2,'2022-08-04 20:27:37','2022-08-04 20:27:37'),(2697,1294,'',3,'2022-08-04 20:27:37','2022-08-04 20:27:37'),(2698,1279,'Done',1,'2022-08-04 20:27:45','2022-08-04 20:27:45'),(2699,1279,'Done',2,'2022-08-04 20:27:45','2022-08-04 20:27:45'),(2700,1279,'',3,'2022-08-04 20:27:45','2022-08-04 20:27:45'),(2701,1258,'En',1,'2022-08-04 20:28:01','2022-08-04 20:28:01'),(2702,1258,'En',2,'2022-08-04 20:28:01','2022-08-04 20:28:01'),(2703,1258,'',3,'2022-08-04 20:28:01','2022-08-04 20:28:01'),(2704,1293,'How would you like to pay?',1,'2022-08-04 20:28:15','2022-08-04 20:28:15'),(2705,1293,'How would you like to pay?',2,'2022-08-04 20:28:15','2022-08-04 20:28:15'),(2706,1293,'',3,'2022-08-04 20:28:15','2022-08-04 20:28:15'),(2707,1277,'Items',1,'2022-08-04 20:30:33','2022-08-04 20:30:33'),(2708,1277,'Items',2,'2022-08-04 20:30:33','2022-08-04 20:30:33'),(2709,1277,'',3,'2022-08-04 20:30:33','2022-08-04 20:30:33'),(2710,1263,'My Order',1,'2022-08-04 20:30:40','2022-08-04 20:30:40'),(2711,1263,'My Order',2,'2022-08-04 20:30:40','2022-08-04 20:30:40'),(2712,1263,'',3,'2022-08-04 20:30:40','2022-08-04 20:30:40'),(2713,1260,'Dine In',1,'2022-08-04 20:30:54','2022-08-04 20:30:54'),(2714,1260,'Dine In',2,'2022-08-04 20:30:54','2022-08-04 20:31:00'),(2715,1260,'',3,'2022-08-04 20:30:54','2022-08-04 20:30:54'),(2716,1292,'Pay',1,'2022-08-04 20:31:17','2022-08-04 20:31:17'),(2717,1292,'Pay',2,'2022-08-04 20:31:17','2022-08-04 20:31:17'),(2718,1292,'',3,'2022-08-04 20:31:17','2022-08-04 20:31:17'),(2719,1291,'Pay at Counter',1,'2022-08-04 20:31:26','2022-08-04 20:31:26'),(2720,1291,'Pay at Counter',2,'2022-08-04 20:31:26','2022-08-04 20:31:26'),(2721,1291,'',3,'2022-08-04 20:31:26','2022-08-04 20:31:26'),(2722,1280,'Please confirm your order ',1,'2022-08-04 20:31:42','2022-08-04 20:31:42'),(2723,1280,'Please confirm your order ',2,'2022-08-04 20:31:42','2022-08-04 20:31:42'),(2724,1280,'',3,'2022-08-04 20:31:42','2022-08-04 20:31:42'),(2725,1295,'Please take your receipt and pay at counter',1,'2022-08-04 20:32:01','2022-08-04 20:32:12'),(2726,1295,'Please take your receipt and pay at counter',2,'2022-08-04 20:32:01','2022-08-04 20:32:12'),(2727,1295,'',3,'2022-08-04 20:32:01','2022-08-04 20:32:01'),(2728,1282,'Subtotal',1,'2022-08-04 20:32:19','2022-08-04 20:32:19'),(2729,1282,'Subtotal',2,'2022-08-04 20:32:19','2022-08-04 20:32:19'),(2730,1282,'',3,'2022-08-04 20:32:19','2022-08-04 20:32:19'),(2731,1283,'Tax',1,'2022-08-04 20:32:25','2022-08-04 20:32:25'),(2732,1283,'Tax',2,'2022-08-04 20:32:25','2022-08-04 20:32:25'),(2733,1283,'',3,'2022-08-04 20:32:25','2022-08-04 20:32:25'),(2734,1262,'Total',1,'2022-08-04 20:32:31','2022-08-04 20:32:31'),(2735,1262,'Total',2,'2022-08-04 20:32:31','2022-08-04 20:32:31'),(2736,1262,'',3,'2022-08-04 20:32:31','2022-08-04 20:32:31'),(2737,1257,'Touch to Start',1,'2022-08-04 20:32:42','2022-08-04 20:32:42'),(2738,1257,'Touch to Start',2,'2022-08-04 20:32:42','2022-08-04 20:32:42'),(2739,1257,'',3,'2022-08-04 20:32:42','2022-08-04 20:32:42'),(2740,1297,'Update to cart',1,'2022-08-04 20:32:52','2022-08-04 20:32:52'),(2741,1297,'Update to cart',2,'2022-08-04 20:32:52','2022-08-04 20:32:52'),(2742,1297,'',3,'2022-08-04 20:32:52','2022-08-04 20:32:52'),(2743,1261,'Your cart is empty',1,'2022-08-04 20:33:06','2022-08-04 20:33:06'),(2744,1261,'Your cart is empty',2,'2022-08-04 20:33:06','2022-08-04 20:33:06'),(2745,1261,'',3,'2022-08-04 20:33:06','2022-08-04 20:33:06'),(2746,1298,'View Cart',1,'2022-08-04 20:52:46','2022-08-04 20:52:46'),(2747,1298,'View Cart',2,'2022-08-04 20:52:46','2022-08-04 20:52:46'),(2748,1298,'',3,'2022-08-04 20:52:46','2022-08-04 20:52:46'),(2749,1302,'Try again',1,'2022-08-04 20:52:54','2022-08-04 20:52:54'),(2750,1302,'Try again',2,'2022-08-04 20:52:54','2022-08-04 20:52:54'),(2751,1302,'',3,'2022-08-04 20:52:54','2022-08-04 20:52:54'),(2752,1299,'My Cart',1,'2022-08-04 20:53:10','2022-08-04 20:53:10'),(2753,1299,'My Cart',2,'2022-08-04 20:53:10','2022-08-04 20:53:10'),(2754,1299,'',3,'2022-08-04 20:53:10','2022-08-04 20:53:10'),(2755,1301,'Cancel',1,'2022-08-04 20:53:21','2022-08-04 20:53:21'),(2756,1301,'Cancel',2,'2022-08-04 20:53:21','2022-08-04 20:53:21'),(2757,1301,'',3,'2022-08-04 20:53:21','2022-08-04 20:53:21'),(2758,1300,'Add Tip',1,'2022-08-04 20:53:40','2022-08-04 20:53:40'),(2759,1300,'Add Tip',2,'2022-08-04 20:53:40','2022-08-04 20:53:40'),(2760,1300,'',3,'2022-08-04 20:53:40','2022-08-04 20:53:40'),(2761,1303,'Please place the minimum order of $25',1,'2022-08-04 20:55:51','2022-08-04 20:56:39'),(2762,1303,'Please place the minimum order of $25',2,'2022-08-04 20:55:51','2022-08-04 20:56:50'),(2763,1303,'',3,'2022-08-04 20:55:51','2022-08-04 20:55:51'),(2771,603,' ',1,'2022-08-07 13:16:00','2022-08-07 13:16:00'),(2772,603,' ',2,'2022-08-07 13:16:00','2022-08-07 13:16:00'),(2773,603,' ',3,'2022-08-07 13:16:00','2022-08-07 13:16:00'),(2776,491,' ',1,'2022-08-07 13:17:23','2022-08-07 13:17:50'),(2777,1141,'Tips',1,'2022-08-11 18:32:34','2022-09-20 15:16:00'),(2778,1141,'Tips',2,'2022-08-11 18:32:34','2022-09-20 15:16:00'),(2779,1141,'',3,'2022-08-11 18:32:34','2022-08-11 18:32:34'),(2780,1142,'Tips Before Discount',1,'2022-08-11 18:32:49','2022-09-20 15:09:56'),(2781,1142,'Tips Before Discount',2,'2022-08-11 18:32:49','2022-09-20 15:09:56'),(2782,1142,'',3,'2022-08-11 18:32:49','2022-08-11 18:32:49'),(2783,1145,'Default',1,'2022-08-11 18:33:39','2022-08-11 18:33:39'),(2784,1145,'Default',2,'2022-08-11 18:33:39','2022-08-11 18:33:39'),(2785,1145,'',3,'2022-08-11 18:33:39','2022-08-11 18:33:39'),(2786,1144,'Before Tax',1,'2022-08-11 18:34:16','2022-08-11 18:34:16'),(2787,1144,'Before Tax',2,'2022-08-11 18:34:16','2022-08-11 18:34:16'),(2788,1144,'',3,'2022-08-11 18:34:16','2022-08-11 18:34:16'),(2789,1143,'After Tax',1,'2022-08-11 18:34:33','2022-08-11 18:34:33'),(2790,1143,'After Tax',2,'2022-08-11 18:34:33','2022-08-11 18:34:33'),(2791,1143,'',3,'2022-08-11 18:34:33','2022-08-11 18:34:33'),(2792,1140,'Discount',1,'2022-08-11 18:35:04','2022-08-11 18:35:04'),(2793,1140,'Discount',2,'2022-08-11 18:35:04','2022-08-11 18:35:04'),(2794,1140,'',3,'2022-08-11 18:35:04','2022-08-11 18:35:04'),(2795,1159,'Other Fee before Tax',1,'2022-08-11 18:35:43','2022-08-11 18:35:43'),(2796,1159,'Other Fee before Tax',2,'2022-08-11 18:35:43','2022-08-11 18:35:43'),(2797,1159,'',3,'2022-08-11 18:35:43','2022-08-11 18:35:43'),(2798,1153,'Cash In Out Report',1,'2022-08-11 18:38:27','2022-08-11 18:38:27'),(2799,1153,'Cash In Out Report',2,'2022-08-11 18:38:27','2022-08-11 18:38:27'),(2800,1153,'',3,'2022-08-11 18:38:27','2022-08-11 18:38:27'),(2801,1306,'Pickup Icon',1,'2022-08-11 20:43:00','2022-08-11 20:43:00'),(2802,1306,'Pickup Icon',2,'2022-08-11 20:43:00','2022-08-11 20:43:00'),(2803,1306,'',3,'2022-08-11 20:43:00','2022-08-11 20:43:00'),(2804,1307,'add',1,'2022-08-29 16:40:07','2022-08-29 16:40:07'),(2805,1307,'add',2,'2022-08-29 16:40:07','2022-08-29 16:40:07'),(2806,1307,'',3,'2022-08-29 16:40:07','2022-08-29 16:40:07');
/*!40000 ALTER TABLE `language_system_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `sort` int DEFAULT '1',
  `default` tinyint DEFAULT '0',
  `status` tinyint DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'EN',1,0,1),(2,'CN',2,0,1),(3,'Other',3,0,1);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_addons`
--

DROP TABLE IF EXISTS `menu_addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_addons` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `font_color` varchar(45) DEFAULT NULL,
  `bg_color` varchar(45) DEFAULT NULL,
  `font_size` varchar(45) DEFAULT NULL,
  `font_weight` varchar(45) DEFAULT NULL,
  `method` tinyint DEFAULT NULL,
  `operation` tinyint DEFAULT '0',
  `sort` int unsigned DEFAULT '1',
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`),
  KEY `STATUS` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_addons`
--

LOCK TABLES `menu_addons` WRITE;
/*!40000 ALTER TABLE `menu_addons` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_addons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_categories`
--

DROP TABLE IF EXISTS `menu_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int unsigned DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `sort` int DEFAULT '1',
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `font_color` varchar(45) DEFAULT NULL,
  `bg_color` varchar(45) DEFAULT NULL,
  `font_size` varchar(45) DEFAULT NULL,
  `font_weight` varchar(45) DEFAULT NULL,
  `icon` varchar(245) DEFAULT NULL,
  `is_online` tinyint DEFAULT '1',
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`),
  KEY `STATUS` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_categories`
--

LOCK TABLES `menu_categories` WRITE;
/*!40000 ALTER TABLE `menu_categories` DISABLE KEYS */;
INSERT INTO `menu_categories` VALUES (1,1,'Appertizers',1,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL),(2,2,'Soups',2,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL),(3,3,'Chef Recommendations',3,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL),(4,4,'Moo Shu',4,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL),(5,5,'Fish',5,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL),(6,6,'Shrimp',6,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL),(7,7,'Beef',7,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL),(8,8,'Rice',8,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL),(9,9,'Lo Mein',9,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL),(10,10,'Specialty Hoodles',10,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL),(11,11,'Chicken',11,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL),(12,12,'Pork',12,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL),(13,13,'Vegetables',13,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL),(14,14,'Chop Suey',14,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL),(15,15,'Egg Foo Young',15,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL),(16,16,'Family  Style Dinner',16,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL),(17,17,'Lunch Specialties',17,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL),(18,18,'Dessert',18,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL),(19,19,'Drinks',19,NULL,NULL,'#ffffff','#1FA3DC',NULL,NULL,NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `menu_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_categories_to_items`
--

DROP TABLE IF EXISTS `menu_categories_to_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_categories_to_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `item_id` int unsigned NOT NULL,
  `sort` int unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_categories_to_items`
--

LOCK TABLES `menu_categories_to_items` WRITE;
/*!40000 ALTER TABLE `menu_categories_to_items` DISABLE KEYS */;
INSERT INTO `menu_categories_to_items` VALUES (1,1,1,1,NULL,NULL),(2,1,2,2,NULL,NULL),(3,1,3,3,NULL,NULL),(4,1,4,4,NULL,NULL),(5,1,5,5,NULL,NULL),(6,1,6,6,NULL,NULL),(7,1,7,7,NULL,NULL),(8,1,8,8,NULL,NULL),(9,1,9,9,NULL,NULL),(10,1,10,10,NULL,NULL),(11,1,11,11,NULL,NULL),(12,1,12,12,NULL,NULL),(13,1,13,13,NULL,NULL),(14,1,14,14,NULL,NULL),(15,2,15,15,NULL,NULL),(16,2,16,16,NULL,NULL),(17,2,17,17,NULL,NULL),(18,2,18,18,NULL,NULL),(19,2,19,19,NULL,NULL),(20,2,20,20,NULL,NULL),(21,2,21,21,NULL,NULL),(22,2,22,22,NULL,NULL),(23,3,23,23,NULL,NULL),(24,3,24,24,NULL,NULL),(25,3,25,25,NULL,NULL),(26,3,26,26,NULL,NULL),(27,3,27,27,NULL,NULL),(28,3,28,28,NULL,NULL),(29,3,29,29,NULL,NULL),(30,3,30,30,NULL,NULL),(31,3,31,31,NULL,NULL),(32,3,32,32,NULL,NULL),(33,3,33,33,NULL,NULL),(34,3,34,34,NULL,NULL),(35,3,35,35,NULL,NULL),(36,3,36,36,NULL,NULL),(37,3,37,37,NULL,NULL),(38,3,38,38,NULL,NULL),(39,3,39,39,NULL,NULL),(40,3,40,40,NULL,NULL),(41,3,41,41,NULL,NULL),(42,3,42,42,NULL,NULL),(43,3,43,43,NULL,NULL),(44,3,44,44,NULL,NULL),(45,3,45,45,NULL,NULL),(46,4,46,46,NULL,NULL),(47,4,47,47,NULL,NULL),(48,4,48,48,NULL,NULL),(49,4,49,49,NULL,NULL),(50,4,50,50,NULL,NULL),(51,5,51,51,NULL,NULL),(52,5,52,52,NULL,NULL),(53,5,53,53,NULL,NULL),(54,5,54,54,NULL,NULL),(55,5,55,55,NULL,NULL),(56,6,56,56,NULL,NULL),(57,6,57,57,NULL,NULL),(58,6,58,58,NULL,NULL),(59,6,59,59,NULL,NULL),(60,6,60,60,NULL,NULL),(61,6,61,61,NULL,NULL),(62,6,62,62,NULL,NULL),(63,6,63,63,NULL,NULL),(64,6,64,64,NULL,NULL),(65,6,65,65,NULL,NULL),(66,6,66,66,NULL,NULL),(67,6,67,67,NULL,NULL),(68,6,68,68,NULL,NULL),(69,7,69,69,NULL,NULL),(70,7,70,70,NULL,NULL),(71,7,71,71,NULL,NULL),(72,7,72,72,NULL,NULL),(73,7,73,73,NULL,NULL),(74,7,74,74,NULL,NULL),(75,7,75,75,NULL,NULL),(76,7,76,76,NULL,NULL),(77,7,77,77,NULL,NULL),(78,7,78,78,NULL,NULL),(79,8,79,79,NULL,NULL),(80,8,80,80,NULL,NULL),(81,8,81,81,NULL,NULL),(82,8,82,82,NULL,NULL),(83,8,83,83,NULL,NULL),(84,9,84,84,NULL,NULL),(85,9,85,85,NULL,NULL),(86,9,86,86,NULL,NULL),(87,9,87,87,NULL,NULL),(88,10,88,88,NULL,NULL),(89,10,89,89,NULL,NULL),(90,10,90,90,NULL,NULL),(91,10,91,91,NULL,NULL),(92,10,92,92,NULL,NULL),(93,10,93,93,NULL,NULL),(94,11,94,94,NULL,NULL),(95,11,95,95,NULL,NULL),(96,11,96,96,NULL,NULL),(97,11,97,97,NULL,NULL),(98,11,98,98,NULL,NULL),(99,11,99,99,NULL,NULL),(100,11,100,100,NULL,NULL),(101,11,101,101,NULL,NULL),(102,11,102,102,NULL,NULL),(103,11,103,103,NULL,NULL),(104,11,104,104,NULL,NULL),(105,11,105,105,NULL,NULL),(106,11,106,106,NULL,NULL),(107,11,107,107,NULL,NULL),(108,12,108,108,NULL,NULL),(109,12,109,109,NULL,NULL),(110,12,110,110,NULL,NULL),(111,12,111,111,NULL,NULL),(112,12,112,112,NULL,NULL),(113,12,113,113,NULL,NULL),(114,13,114,114,NULL,NULL),(115,13,115,115,NULL,NULL),(116,13,116,116,NULL,NULL),(117,13,117,117,NULL,NULL),(118,13,118,118,NULL,NULL),(119,13,119,119,NULL,NULL),(120,13,120,120,NULL,NULL),(121,13,121,121,NULL,NULL),(122,13,122,122,NULL,NULL),(123,13,123,123,NULL,NULL),(124,13,124,124,NULL,NULL),(125,13,125,125,NULL,NULL),(126,13,126,126,NULL,NULL),(127,13,127,127,NULL,NULL),(128,13,128,128,NULL,NULL),(129,14,129,129,NULL,NULL),(130,14,130,130,NULL,NULL),(131,14,131,131,NULL,NULL),(132,15,132,132,NULL,NULL),(133,15,133,133,NULL,NULL),(134,15,134,134,NULL,NULL),(135,16,135,135,NULL,NULL),(136,16,136,136,NULL,NULL),(137,17,137,137,NULL,NULL),(138,17,138,138,NULL,NULL),(139,17,139,139,NULL,NULL),(140,17,140,140,NULL,NULL),(141,17,141,141,NULL,NULL),(142,17,142,142,NULL,NULL),(143,17,143,143,NULL,NULL),(144,17,144,144,NULL,NULL),(145,17,145,145,NULL,NULL),(146,17,146,146,NULL,NULL),(147,17,147,147,NULL,NULL),(148,17,148,148,NULL,NULL),(149,17,149,149,NULL,NULL),(150,17,150,150,NULL,NULL),(151,17,151,151,NULL,NULL),(152,17,152,152,NULL,NULL),(153,17,153,153,NULL,NULL),(154,17,154,154,NULL,NULL),(155,17,155,155,NULL,NULL),(156,17,156,156,NULL,NULL),(157,17,157,157,NULL,NULL),(158,17,158,158,NULL,NULL),(159,17,159,159,NULL,NULL),(160,17,160,160,NULL,NULL),(161,17,161,161,NULL,NULL),(162,17,162,162,NULL,NULL),(163,17,163,163,NULL,NULL),(164,17,164,164,NULL,NULL),(165,17,165,165,NULL,NULL),(166,17,166,166,NULL,NULL),(167,17,167,167,NULL,NULL),(168,17,168,168,NULL,NULL),(169,17,169,169,NULL,NULL),(170,18,170,170,NULL,NULL),(171,18,171,171,NULL,NULL),(172,18,172,172,NULL,NULL),(173,18,173,173,NULL,NULL),(174,18,174,174,NULL,NULL),(175,18,175,175,NULL,NULL),(176,19,176,176,NULL,NULL),(177,19,177,177,NULL,NULL),(178,19,178,178,NULL,NULL),(179,19,179,179,NULL,NULL),(180,19,180,180,NULL,NULL),(181,19,181,181,NULL,NULL);
/*!40000 ALTER TABLE `menu_categories_to_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_category_to_modifies`
--

DROP TABLE IF EXISTS `menu_category_to_modifies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_category_to_modifies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `modify_id` int unsigned NOT NULL,
  `selected` tinyint DEFAULT '0',
  `sort` int unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_category_to_modifies`
--

LOCK TABLES `menu_category_to_modifies` WRITE;
/*!40000 ALTER TABLE `menu_category_to_modifies` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_category_to_modifies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_category_to_special_hour`
--

DROP TABLE IF EXISTS `menu_category_to_special_hour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_category_to_special_hour` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `special_hour_id` int unsigned NOT NULL,
  `sort` int unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_category_to_special_hour`
--

LOCK TABLES `menu_category_to_special_hour` WRITE;
/*!40000 ALTER TABLE `menu_category_to_special_hour` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_category_to_special_hour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_course`
--

DROP TABLE IF EXISTS `menu_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_course` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `category_id` int unsigned NOT NULL,
  `priority` int unsigned DEFAULT NULL,
  `sort` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_course`
--

LOCK TABLES `menu_course` WRITE;
/*!40000 ALTER TABLE `menu_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_groups`
--

DROP TABLE IF EXISTS `menu_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `sort` int DEFAULT '1',
  `font_color` varchar(45) DEFAULT NULL,
  `bg_color` varchar(45) DEFAULT NULL,
  `font_size` varchar(45) DEFAULT NULL,
  `font_weight` varchar(45) DEFAULT NULL,
  `icon` varchar(245) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `is_online` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`),
  KEY `STATUS` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_groups`
--

LOCK TABLES `menu_groups` WRITE;
/*!40000 ALTER TABLE `menu_groups` DISABLE KEYS */;
INSERT INTO `menu_groups` VALUES (1,'Menu',1,'','',NULL,NULL,NULL,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40');
/*!40000 ALTER TABLE `menu_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_item_to_happy_hour`
--

DROP TABLE IF EXISTS `menu_item_to_happy_hour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_item_to_happy_hour` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int unsigned NOT NULL,
  `happy_hour_id` int unsigned NOT NULL,
  `sort` int unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_item_to_happy_hour`
--

LOCK TABLES `menu_item_to_happy_hour` WRITE;
/*!40000 ALTER TABLE `menu_item_to_happy_hour` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_item_to_happy_hour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_item_to_modifies`
--

DROP TABLE IF EXISTS `menu_item_to_modifies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_item_to_modifies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int unsigned NOT NULL,
  `modify_id` int unsigned NOT NULL,
  `selected` tinyint DEFAULT '0',
  `sort` int unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_item_to_modifies`
--

LOCK TABLES `menu_item_to_modifies` WRITE;
/*!40000 ALTER TABLE `menu_item_to_modifies` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_item_to_modifies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_item_to_printers`
--

DROP TABLE IF EXISTS `menu_item_to_printers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_item_to_printers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int unsigned NOT NULL,
  `printer_id` int unsigned NOT NULL,
  `sort` int unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_item_to_printers`
--

LOCK TABLES `menu_item_to_printers` WRITE;
/*!40000 ALTER TABLE `menu_item_to_printers` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_item_to_printers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_item_to_sections`
--

DROP TABLE IF EXISTS `menu_item_to_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_item_to_sections` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int unsigned NOT NULL,
  `section_id` int unsigned NOT NULL,
  `min` int unsigned DEFAULT '0',
  `max` int unsigned DEFAULT '9999999',
  `repeats` tinyint DEFAULT NULL,
  `sort` int unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_item_to_sections`
--

LOCK TABLES `menu_item_to_sections` WRITE;
/*!40000 ALTER TABLE `menu_item_to_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_item_to_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_item_variants`
--

DROP TABLE IF EXISTS `menu_item_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_item_variants` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int unsigned NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `sort` int unsigned DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_item_variants`
--

LOCK TABLES `menu_item_variants` WRITE;
/*!40000 ALTER TABLE `menu_item_variants` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_item_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(145) DEFAULT NULL,
  `price` decimal(10,2) unsigned DEFAULT '0.00',
  `cost` decimal(10,2) DEFAULT '0.00',
  `menu_type` int DEFAULT '0',
  `item_type` tinyint unsigned DEFAULT NULL,
  `tare` int DEFAULT NULL,
  `sort` int DEFAULT '1',
  `font_color` varchar(45) DEFAULT NULL,
  `bg_color` varchar(45) DEFAULT NULL,
  `font_size` varchar(45) DEFAULT NULL,
  `font_weight` varchar(45) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `is_taxable` tinyint unsigned DEFAULT '1',
  `has_variants` tinyint DEFAULT NULL,
  `is_discountable` tinyint DEFAULT '1',
  `is_modifiable` tinyint DEFAULT '1',
  `spicy` tinyint DEFAULT NULL,
  `recommend` tinyint DEFAULT NULL,
  `icon` varchar(245) DEFAULT NULL,
  `short_words` varchar(45) DEFAULT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  `is_inventory` tinyint DEFAULT '0',
  `quantity` int DEFAULT '0',
  `out_of_stock` tinyint DEFAULT NULL,
  `force_modify` tinyint DEFAULT '0',
  `is_buffet` tinyint DEFAULT '0',
  `is_online` tinyint DEFAULT '1',
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `item_code_UNIQUE` (`item_code`),
  KEY `SORT` (`sort`),
  KEY `STATUS` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,'Spring Rolls(4)',9.99,0.00,0,1,NULL,1,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(2,'Fried Wontons(12)',9.99,0.00,0,1,NULL,2,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(3,'New York Style Chicken Egg Rolls(4)',10.99,0.00,0,1,NULL,3,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(4,'Fried Cheese Wontons(4)',10.99,0.00,0,1,NULL,4,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(5,'B.B.Q Pork Bun(3)',10.99,0.00,0,1,NULL,5,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(6,'Pot Stickers(8)',11.99,0.00,0,1,NULL,6,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(7,'Steamed Dumplings(8)',11.99,0.00,0,1,NULL,7,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'7',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(8,'B.B.Q. Pork',11.99,0.00,0,1,NULL,8,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'8',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(9,'Fried Shrimp(10)',11.99,0.00,0,1,NULL,9,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(10,'B.B.Q. Spareribs(4)',13.99,0.00,0,1,NULL,10,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(11,'Salt & Pepper Chicken Wings(8)',13.99,0.00,0,1,NULL,11,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(12,'Chinese Chicken Salad',16.99,0.00,0,1,NULL,12,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(13,'Pu Pu Platter',17.99,0.00,0,1,NULL,13,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'13',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(14,'Chicken Lettuce Wrap',18.99,0.00,0,1,NULL,14,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'14',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(15,'Egg Flower Soup',0.00,0.00,0,1,NULL,15,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'15',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(16,'Hot & Sour Soup',0.00,0.00,0,1,NULL,16,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'16',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(17,'Chicken Corn Soup',0.00,0.00,0,1,NULL,17,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'17',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(18,'Hot & Sour Gourmet Wonton  Soup',0.00,0.00,0,1,NULL,18,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'18',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(19,'Gourmet Wonton Soup',0.00,0.00,0,1,NULL,19,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'19',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(20,'Vegetable Sizzling Soup',0.00,0.00,0,1,NULL,20,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(21,'Three Flavor Sizzling Soup',0.00,0.00,0,1,NULL,21,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'21',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(22,'Shrimp & Sizzling Soup',0.00,0.00,0,1,NULL,22,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'22',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(23,'Jumbo Scallops in Black Bean Sauce',22.99,0.00,0,1,NULL,23,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'23',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(24,'Kung Pao Scallop',22.99,0.00,0,1,NULL,24,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'24',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(25,'Jumbo Scallops with Hot Pepper',22.99,0.00,0,1,NULL,25,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'25',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(26,'Stir-Fried Spicy Tofu',17.99,0.00,0,1,NULL,26,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'26',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(27,'Deep Fried Spicy Chicken',18.99,0.00,0,1,NULL,27,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'27',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(28,'General Tao\'s Chicken',18.99,0.00,0,1,NULL,28,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'28',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(29,'Chicken Wins with Honey & Ginger Sauce',18.99,0.00,0,1,NULL,29,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'29',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(30,'Orange Flavor Chicken ',18.99,0.00,0,1,NULL,30,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'30',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(31,'Orange Flavor Beef',18.99,0.00,0,1,NULL,31,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'31',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(32,'Lemon Chicken',18.99,0.00,0,1,NULL,32,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'32',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(33,'Chinese Greens with Chicken ',18.99,0.00,0,1,NULL,33,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'33',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(34,'Chinese Greens with Beef ',18.99,0.00,0,1,NULL,34,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'34',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(35,'Chinese Greens with B.B.Q. Pork',18.99,0.00,0,1,NULL,35,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'35',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(36,'Deep Fried Pork Chop',18.99,0.00,0,1,NULL,36,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'36',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(37,'Peking Style Pork Chop',18.99,0.00,0,1,NULL,37,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'37',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(38,'Honey Walnut Chicken',18.99,0.00,0,1,NULL,38,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'38',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(39,'Teriyaki Chicken',18.99,0.00,0,1,NULL,39,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'39',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(40,'Kung Pao Combo',19.99,0.00,0,1,NULL,40,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'40',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(41,'Happy Family',19.99,0.00,0,1,NULL,41,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'41',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(42,'Smoked Tea Duck',23.99,0.00,0,1,NULL,42,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'42',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(43,'Stir-Fried Spicy Fish Filet',19.99,0.00,0,1,NULL,43,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'43',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(44,'Honey Walnut Shrimp',20.99,0.00,0,1,NULL,44,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'44',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(45,'Combination Seafood Platter',13.99,0.00,0,1,NULL,45,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'45',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(46,'Moo Shu Vegetable',16.99,0.00,0,1,NULL,46,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'46',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(47,'Moo Shu Pork',17.99,0.00,0,1,NULL,47,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'47',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(48,'Moo Shu Beef',18.99,0.00,0,1,NULL,48,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'48',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(49,'Moo Shu Chicken',18.25,0.00,0,1,NULL,49,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'49',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(50,'Extra Moo Shu',0.50,0.00,0,1,NULL,50,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'50',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(51,'Aromatic Fish Filet',19.75,0.00,0,1,NULL,51,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'51',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(52,'Rock Cod Filet with Black Bean Sauce',19.75,0.00,0,1,NULL,52,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'52',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(53,'Kung Pao Rock Cod Filet',19.75,0.00,0,1,NULL,53,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'53',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(54,'Rock cod Filet with Garlic Sauce',19.75,0.00,0,1,NULL,54,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'54',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(55,'Fish Filet with Mixed Vegetables',19.99,0.00,0,1,NULL,55,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'55',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(56,'Broccoli Shrimp',19.75,0.00,0,1,NULL,56,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'56',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(57,'Sweet & Sour Shrimp',19.75,0.00,0,1,NULL,57,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'57',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(58,'Cashew Nut Shrimp',19.75,0.00,0,1,NULL,58,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'58',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(59,'Fresh String Beans Shrimp',19.75,0.00,0,1,NULL,59,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'59',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(60,'Garlic Sauce Shrimp',19.75,0.00,0,1,NULL,60,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'60',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(61,'Kung Pao Shrimp',19.75,0.00,0,1,NULL,61,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'61',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(62,'Black Bean Sauce Shrimp',19.75,0.00,0,1,NULL,62,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'62',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(63,'Lobster Sauce Shrimp',19.75,0.00,0,1,NULL,63,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'63',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(64,'Snow Peas Shrimp',19.75,0.00,0,1,NULL,64,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'64',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(65,'Vegetables Shrimp',19.75,0.00,0,1,NULL,65,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'65',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(66,'Salt & Pepper Shrimp',20.75,0.00,0,1,NULL,66,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'66',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(67,'Chinese Greens with Shrimp',19.99,0.00,0,1,NULL,67,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'67',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(68,'Aromatic Shrimps',20.99,0.00,0,1,NULL,68,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'68',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(69,'Broccoli in Brown Sauce Beef',18.99,0.00,0,1,NULL,69,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'69',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(70,'Snow Peas Beef',18.99,0.00,0,1,NULL,70,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'70',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(71,'Fresh String Bean Beef',18.99,0.00,0,1,NULL,71,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'71',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(72,'Kung Pao Beef',18.99,0.00,0,1,NULL,72,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'72',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(73,'Garlic Sauce Beef',18.99,0.00,0,1,NULL,73,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'73',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(74,'Hunan Spicy Beef with Onion & Bell Pepper',18.99,0.00,0,1,NULL,74,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'74',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(75,'Mongolian Beef',18.99,0.00,0,1,NULL,75,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'75',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(76,'Ginger & Green Scallion',18.99,0.00,0,1,NULL,76,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'76',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(77,'Sesame Beef',19.99,0.00,0,1,NULL,77,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'77',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(78,'Black Pepper Beef',19.99,0.00,0,1,NULL,78,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'78',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(79,'Fried Rice',15.99,0.00,0,1,NULL,79,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'79',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(80,'Shrimp Fried Rice',16.99,0.00,0,1,NULL,80,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'80',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(81,'Combo Fried Rice',16.99,0.00,0,1,NULL,81,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'81',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(82,'Brown Rice',3.79,0.00,0,1,NULL,82,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'82',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(83,'Steamed Rice',3.29,0.00,0,1,NULL,83,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'83',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(84,'Lo Mien',14.99,0.00,0,1,NULL,84,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'84',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(85,'Plain Lo Mien',14.99,0.00,0,1,NULL,85,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'85',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(86,'Shrimp Lo Mien',18.99,0.00,0,1,NULL,86,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'86',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(87,'Combination Lo Mien',19.99,0.00,0,1,NULL,87,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'87',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(88,'Singapore Style Vermicelli Rice Noodle',16.99,0.00,0,1,NULL,88,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'88',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(89,'House Pan Fried Noodles',16.99,0.00,0,1,NULL,89,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'89',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(90,'Pan Fried Noodles',15.99,0.00,0,1,NULL,90,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'90',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(91,'Combo Chow Fun',16.99,0.00,0,1,NULL,91,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'91',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(92,'Chow Fun with Shrimp',16.99,0.00,0,1,NULL,92,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'92',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(93,'Chow Fun',15.99,0.00,0,1,NULL,93,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'93',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(94,'Hot Pepper Chicken',18.25,0.00,0,1,NULL,94,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'94',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(95,'Almond Chicken',18.25,0.00,0,1,NULL,95,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'95',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(96,'Fresh String Bean Chicken',18.25,0.00,0,1,NULL,96,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'96',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(97,' Cashew Nut Chicken',18.25,0.00,0,1,NULL,97,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'97',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(98,'Sweet & Sour Chicken',18.25,0.00,0,1,NULL,98,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'98',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(99,'Broccoli with Brown Sauce Chicken',18.25,0.00,0,1,NULL,99,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'99',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(100,'Spinach with White Garlic Sauce Chicken',18.25,0.00,0,1,NULL,100,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'100',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(101,'Kung Pao Chicken',18.25,0.00,0,1,NULL,101,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'101',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(102,'Garlic Sauce Chicken',18.25,0.00,0,1,NULL,102,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'102',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(103,'Ginger & Green Scallion  Chicken',18.25,0.00,0,1,NULL,103,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'103',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(104,'Mongolian Chicken ',18.25,0.00,0,1,NULL,104,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'104',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(105,'Sesame Chicken',18.99,0.00,0,1,NULL,105,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'105',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(106,'Eggplant with Chicken',18.99,0.00,0,1,NULL,106,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'106',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(107,'Aromatic Chicken',18.99,0.00,0,1,NULL,107,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'107',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(108,'Snow Peas with B.B.Q. Pork',17.99,0.00,0,1,NULL,108,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'108',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(109,'Sweet & Sour Pork ',17.99,0.00,0,1,NULL,109,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'109',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(110,'Szechuan Shredded Pork',17.99,0.00,0,1,NULL,110,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'110',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(111,'Broccoli with B.B.Q. Pork',17.99,0.00,0,1,NULL,111,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'111',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(112,'Pork with Fresh String Beans in Brown Sauce',17.99,0.00,0,1,NULL,112,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'112',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(113,'Almond with B.B.Q. Pork',17.99,0.00,0,1,NULL,113,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'113',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(114,'Buddha\'s Delight',16.99,0.00,0,1,NULL,114,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'114',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(115,'Eggplant with Brown Sauce',16.99,0.00,0,1,NULL,115,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'115',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(116,'Eggplant with Garlic Sauce',16.99,0.00,0,1,NULL,116,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'116',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(117,'Fresh Broccoli with Garlic Sauce Broccoli',16.99,0.00,0,1,NULL,117,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'117',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(118,'Sauteed Spinach',16.99,0.00,0,1,NULL,118,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'118',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(119,'Snow Peas & Water Chestnuts',16.99,0.00,0,1,NULL,119,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'119',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(120,'Ma Po Tofu',16.99,0.00,0,1,NULL,120,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'120',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(121,'Sauteed Fresh String Bean',16.99,0.00,0,1,NULL,121,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'121',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(122,'Kung Pao Vegetable',16.99,0.00,0,1,NULL,122,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'122',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(123,'Sweet & Sour Bean Curd',16.99,0.00,0,1,NULL,123,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'123',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(124,'Lemon Bean Curd',16.99,0.00,0,1,NULL,124,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'124',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(125,'Kung Pao Bean Curd',16.99,0.00,0,1,NULL,125,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'125',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(126,'Orange Bean Curd',16.99,0.00,0,1,NULL,126,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'126',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(127,'Sauteed Chinese Green',16.99,0.00,0,1,NULL,127,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'127',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(128,'Curry String Bean with Fried Tofu',16.99,0.00,0,1,NULL,128,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'128',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(129,'Chop Suey ',17.99,0.00,0,1,NULL,129,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'129',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(130,'Chop Suey Combo',19.99,0.00,0,1,NULL,130,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'130',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(131,'Shrimp Chop Suey ',18.99,0.00,0,1,NULL,131,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'131',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(132,'Egg Foo Young ',18.99,0.00,0,1,NULL,132,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'132',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(133,'Shrimp Egg Foo Young',18.99,0.00,0,1,NULL,133,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'133',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(134,'Combo Egg Foo Young',19.99,0.00,0,1,NULL,134,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'134',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(135,'Combo A',42.99,0.00,0,1,NULL,135,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'135',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(136,'Combo B',46.99,0.00,0,1,NULL,136,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'136',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(137,'L1. Fresh String Bean with Chicken',13.99,0.00,0,1,NULL,137,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'137',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(138,'L1. Fresh String Bean with Beef ',13.99,0.00,0,1,NULL,138,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'138',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(139,'L1. Fresh String Bean with Pork ',13.99,0.00,0,1,NULL,139,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'139',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(140,'L2. Broccoli with Chicken',13.99,0.00,0,1,NULL,140,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'140',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(141,'L2. Broccoli with Beef',13.99,0.00,0,1,NULL,141,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'141',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(142,'L2. Broccoli with Pork',13.99,0.00,0,1,NULL,142,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'142',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(143,'L3. Snow Peas with Chicken',13.99,0.00,0,1,NULL,143,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'143',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(144,'L3. Snow Peas with Beef',13.99,0.00,0,1,NULL,144,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'144',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(145,'L3. Snow Peas with Pork',13.99,0.00,0,1,NULL,145,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'145',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(146,'L4. Sweet & Sour Chicken',13.99,0.00,0,1,NULL,146,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'146',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(147,'L4. Sweet & Sour Pork',13.99,0.00,0,1,NULL,147,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'147',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(148,'L5. Orange Flavor Chicken ',13.99,0.00,0,1,NULL,148,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'148',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(149,'L5. Orange Flavor Beef',13.99,0.00,0,1,NULL,149,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'149',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(150,'L6. Cashew Nut Chicken',13.99,0.00,0,1,NULL,150,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'150',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(151,'L7. Kung Pao Chicken',13.99,0.00,0,1,NULL,151,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'151',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(152,'L8. Chicken Wings with Honey & Ginger Sauce',13.99,0.00,0,1,NULL,152,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'152',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(153,'L9. Moo Goo Gai Pan',13.99,0.00,0,1,NULL,153,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'153',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(154,'L10. Curry Chicken',13.99,0.00,0,1,NULL,154,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'154',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(155,'L11. Lemon Chicken',13.99,0.00,0,1,NULL,155,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'155',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(156,'L12. General Tso\'s Chicken',13.99,0.00,0,1,NULL,156,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'156',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(157,'L13. Shredded Pork with Garlic Sauce',13.99,0.00,0,1,NULL,157,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'157',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(158,'L14. Beef with Garlic Sauce',13.99,0.00,0,1,NULL,158,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'158',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(159,'L15. Stir Fried Spicy Bean Curd ',13.99,0.00,0,1,NULL,159,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'159',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(160,'L16. Eggplant with Garlic sauce',13.99,0.00,0,1,NULL,160,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'160',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(161,'L17. Orange Flavor Bean Curd',13.99,0.00,0,1,NULL,161,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'161',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(162,'L18. Mixed Vegetable',13.99,0.00,0,1,NULL,162,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'162',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(163,'L19. Kung Pao Vegetables',13.99,0.00,0,1,NULL,163,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'163',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(164,'L20. Shrimp Chop Suey',14.99,0.00,0,1,NULL,164,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'164',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(165,'L21. Shrimp with Lobster Sauce ',14.99,0.00,0,1,NULL,165,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'165',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(166,'L22. Kung Pao Shrimp',14.99,0.00,0,1,NULL,166,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'166',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(167,'L23. Shrimp with Black Bean Sauce ',14.99,0.00,0,1,NULL,167,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'167',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(168,'L24. Shrimp with Mixed Vegetable ',14.99,0.00,0,1,NULL,168,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'168',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(169,'L25. Shrimp with Snow Peas',14.99,0.00,0,1,NULL,169,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'169',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(170,'Almond Cookie (5)',1.99,0.00,0,1,NULL,170,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'170',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(171,'Crispy Noodle',1.99,0.00,0,1,NULL,171,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'171',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(172,'Tiramisu Cake',5.79,0.00,0,1,NULL,172,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'172',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(173,'Carrots Cake',5.99,0.00,0,1,NULL,173,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'173',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(174,'Cheese Cake',5.99,0.00,0,1,NULL,174,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'174',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(175,'Strawberry Cheese Cake',5.99,0.00,0,1,NULL,175,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'175',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(176,'Soda',2.50,0.00,0,1,NULL,176,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'176',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(177,'Ice Tea (unsweetened)',3.99,0.00,0,1,NULL,177,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'177',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(178,'Diet Coke',3.99,0.00,0,1,NULL,178,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'178',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(179,'Thai Tea',6.75,0.00,0,1,NULL,179,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'179',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(180,'Root Beer',2.00,0.00,0,1,NULL,180,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'180',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(181,'Bottle Water',4.00,0.00,0,1,NULL,181,'#FFFFFF','#355d6e',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'181',NULL,0,0,NULL,0,0,1,1,'2024-02-13 01:35:40','2024-02-13 01:35:40');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_options`
--

DROP TABLE IF EXISTS `menu_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_options` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int unsigned NOT NULL,
  `item_type` varchar(45) NOT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `price_active` tinyint unsigned NOT NULL DEFAULT '0',
  `sort` int DEFAULT '1',
  `font_color` varchar(45) DEFAULT NULL,
  `bg_color` varchar(45) DEFAULT NULL,
  `status` tinyint unsigned DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_options`
--

LOCK TABLES `menu_options` WRITE;
/*!40000 ALTER TABLE `menu_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_price_lists`
--

DROP TABLE IF EXISTS `menu_price_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_price_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `item_type` varchar(45) NOT NULL,
  `sort` tinyint unsigned DEFAULT '1',
  `price` decimal(10,2) DEFAULT NULL,
  `status` tinyint unsigned DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_price_lists`
--

LOCK TABLES `menu_price_lists` WRITE;
/*!40000 ALTER TABLE `menu_price_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_price_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_section_items`
--

DROP TABLE IF EXISTS `menu_section_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_section_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int unsigned NOT NULL,
  `section_id` int unsigned DEFAULT NULL,
  `multiple_select` tinyint unsigned DEFAULT '1',
  `price` decimal(10,2) DEFAULT '0.00',
  `price_active` tinyint NOT NULL,
  `min` int DEFAULT NULL,
  `max` int DEFAULT NULL,
  `repeats` tinyint DEFAULT '0',
  `sort` int DEFAULT '1',
  `font_color` varchar(45) DEFAULT NULL,
  `bg_color` varchar(45) DEFAULT NULL,
  `font_size` varchar(45) DEFAULT NULL,
  `font_weight` varchar(45) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`),
  KEY `STATUS` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_section_items`
--

LOCK TABLES `menu_section_items` WRITE;
/*!40000 ALTER TABLE `menu_section_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_section_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_section_modifies`
--

DROP TABLE IF EXISTS `menu_section_modifies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_section_modifies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int unsigned NOT NULL,
  `section_id` int unsigned DEFAULT NULL,
  `multiple_select` tinyint unsigned DEFAULT '1',
  `price` decimal(10,2) DEFAULT '0.00',
  `price_active` tinyint NOT NULL,
  `min` int DEFAULT NULL,
  `max` int DEFAULT NULL,
  `repeats` tinyint DEFAULT '0',
  `sort` int DEFAULT '1',
  `font_color` varchar(45) DEFAULT NULL,
  `bg_color` varchar(45) DEFAULT NULL,
  `font_size` varchar(45) DEFAULT NULL,
  `font_weight` varchar(45) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`),
  KEY `STATUS` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_section_modifies`
--

LOCK TABLES `menu_section_modifies` WRITE;
/*!40000 ALTER TABLE `menu_section_modifies` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_section_modifies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_sections`
--

DROP TABLE IF EXISTS `menu_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_sections` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `font_color` varchar(45) DEFAULT NULL,
  `bg_color` varchar(45) DEFAULT NULL,
  `font_size` varchar(45) DEFAULT NULL,
  `font_weight` varchar(45) DEFAULT NULL,
  `sort` int DEFAULT '1',
  `notes` varchar(245) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_sections`
--

LOCK TABLES `menu_sections` WRITE;
/*!40000 ALTER TABLE `menu_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modify_categories`
--

DROP TABLE IF EXISTS `modify_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modify_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `font_color` varchar(45) DEFAULT NULL,
  `bg_color` varchar(45) DEFAULT NULL,
  `font_size` varchar(45) DEFAULT NULL,
  `font_weight` varchar(45) DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`),
  KEY `STATUS` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modify_categories`
--

LOCK TABLES `modify_categories` WRITE;
/*!40000 ALTER TABLE `modify_categories` DISABLE KEYS */;
INSERT INTO `modify_categories` VALUES (1,'modifier',1,'#ffffff','#1FA3DC',NULL,NULL,1,'2024-02-13 01:35:40','2024-02-13 01:35:40');
/*!40000 ALTER TABLE `modify_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modify_item_to_printers`
--

DROP TABLE IF EXISTS `modify_item_to_printers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modify_item_to_printers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int unsigned NOT NULL,
  `printer_id` int unsigned NOT NULL,
  `sort` int unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modify_item_to_printers`
--

LOCK TABLES `modify_item_to_printers` WRITE;
/*!40000 ALTER TABLE `modify_item_to_printers` DISABLE KEYS */;
/*!40000 ALTER TABLE `modify_item_to_printers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modify_items`
--

DROP TABLE IF EXISTS `modify_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modify_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `item_type` tinyint DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sort` int DEFAULT '1',
  `font_color` varchar(45) DEFAULT NULL,
  `bg_color` varchar(45) DEFAULT NULL,
  `font_size` varchar(45) DEFAULT NULL,
  `font_weight` varchar(45) DEFAULT NULL,
  `taxable` tinyint DEFAULT NULL,
  `discountable` tinyint DEFAULT NULL,
  `print` tinyint DEFAULT '0',
  `status` tinyint DEFAULT NULL,
  `icon` varchar(245) DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`),
  KEY `STATUS` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modify_items`
--

LOCK TABLES `modify_items` WRITE;
/*!40000 ALTER TABLE `modify_items` DISABLE KEYS */;
INSERT INTO `modify_items` VALUES (1,1,'Coke',0,1.00,1,'#ffffff','#1FA3DC',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(2,1,'Pepsi',0,2.00,2,'#ffffff','#1FA3DC',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(3,1,'Diet Coke',0,3.00,3,'#ffffff','#1FA3DC',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(4,1,'Dr Pepper',0,4.00,4,'#ffffff','#1FA3DC',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(5,1,'Sprite',0,5.00,5,'#ffffff','#1FA3DC',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'2024-02-13 01:35:40','2024-02-13 01:35:40'),(6,1,'Orange Soda',0,6.00,6,'#ffffff','#1FA3DC',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'2024-02-13 01:35:40','2024-02-13 01:35:40');
/*!40000 ALTER TABLE `modify_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_order_items`
--

DROP TABLE IF EXISTS `online_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `online_order_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `se_name` varchar(45) DEFAULT NULL,
  `quantity` smallint DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `printer` varchar(145) DEFAULT NULL,
  `notes` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_order_items`
--

LOCK TABLES `online_order_items` WRITE;
/*!40000 ALTER TABLE `online_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `online_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_order_modifies`
--

DROP TABLE IF EXISTS `online_order_modifies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `online_order_modifies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int unsigned DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `se_name` varchar(45) DEFAULT NULL,
  `quantity` smallint DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_order_modifies`
--

LOCK TABLES `online_order_modifies` WRITE;
/*!40000 ALTER TABLE `online_order_modifies` DISABLE KEYS */;
/*!40000 ALTER TABLE `online_order_modifies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_order_payments`
--

DROP TABLE IF EXISTS `online_order_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `online_order_payments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint unsigned DEFAULT '1' COMMENT 'order 1,gift card 2 , online order 3',
  `order_id` int unsigned NOT NULL,
  `table_id` int DEFAULT NULL,
  `split_id` int unsigned DEFAULT '0',
  `payment_method` smallint DEFAULT NULL,
  `extral_type` smallint DEFAULT NULL,
  `virtual_type` smallint DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `tips` decimal(10,2) DEFAULT NULL,
  `cdp` decimal(10,2) DEFAULT NULL,
  `delivery_fee` decimal(10,2) DEFAULT NULL,
  `service_fee` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `discount_tag` varchar(45) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `change` decimal(10,2) DEFAULT NULL,
  `operator_id` int unsigned DEFAULT NULL,
  `auth_code` varchar(45) DEFAULT NULL,
  `ref_num` varchar(45) DEFAULT NULL,
  `card_num` varchar(45) DEFAULT NULL,
  `card_type` varchar(45) DEFAULT NULL,
  `card_tag` text,
  `approved_amount` decimal(10,2) DEFAULT '0.00',
  `station` int DEFAULT NULL,
  `terminal` int NOT NULL,
  `signature` varchar(245) DEFAULT NULL,
  `notes` varchar(245) DEFAULT NULL,
  `batch_id` int unsigned DEFAULT '0',
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `STATUS` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_order_payments`
--

LOCK TABLES `online_order_payments` WRITE;
/*!40000 ALTER TABLE `online_order_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `online_order_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_orders`
--

DROP TABLE IF EXISTS `online_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `online_orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `orderid` varchar(145) DEFAULT NULL,
  `paid` decimal(10,2) DEFAULT '0.00',
  `order_type` varchar(45) DEFAULT NULL,
  `payid` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT NULL,
  `tips` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `tax_fees` decimal(10,2) DEFAULT NULL,
  `shipping` decimal(10,2) DEFAULT NULL,
  `alltotal` decimal(10,2) DEFAULT NULL,
  `cdp_total` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `cdp` varchar(245) DEFAULT NULL,
  `service` varchar(245) DEFAULT NULL,
  `payment_method` varchar(245) DEFAULT NULL,
  `quantity` smallint DEFAULT '0',
  `customer` text,
  `is_split` smallint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid_UNIQUE` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_orders`
--

LOCK TABLES `online_orders` WRITE;
/*!40000 ALTER TABLE `online_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `online_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item_taxs`
--

DROP TABLE IF EXISTS `order_item_taxs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item_taxs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ref_id` int unsigned DEFAULT NULL,
  `item_id` int unsigned DEFAULT NULL,
  `tax_title` varchar(45) DEFAULT NULL,
  `tax_id` int unsigned DEFAULT NULL,
  `tax` decimal(10,5) DEFAULT '0.00000',
  `tax_rate` decimal(10,5) DEFAULT '0.00000',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item_taxs`
--

LOCK TABLES `order_item_taxs` WRITE;
/*!40000 ALTER TABLE `order_item_taxs` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_item_taxs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `course` int DEFAULT '0',
  `menu_type` int DEFAULT '0',
  `item_type` tinyint DEFAULT '1',
  `order_id` int unsigned NOT NULL,
  `item_id` int unsigned DEFAULT NULL,
  `item_name` varchar(145) DEFAULT NULL,
  `seat` int DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `togo` tinyint DEFAULT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `unit_price` decimal(10,5) DEFAULT '0.00000',
  `regular_price` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT '0.00',
  `discount_tag` varchar(245) DEFAULT NULL,
  `discount_name` varchar(100) DEFAULT NULL,
  `tax` decimal(10,5) DEFAULT '0.00000',
  `tax_rate` decimal(10,5) DEFAULT '0.00000',
  `total` decimal(10,2) DEFAULT '0.00',
  `notes` varchar(245) DEFAULT NULL,
  `printer` varchar(45) DEFAULT NULL,
  `sort` int unsigned DEFAULT '1',
  `kds_status` tinyint DEFAULT NULL,
  `underline` tinyint DEFAULT NULL,
  `tax_include` tinyint DEFAULT '0',
  `force_modify` tinyint DEFAULT '0',
  `is_discountable` tinyint DEFAULT '1',
  `is_ebt` tinyint DEFAULT '0',
  `is_buffet` tinyint DEFAULT '0',
  `status` tinyint DEFAULT '0',
  `scheduled_send` tinyint DEFAULT '0',
  `scheduled_time` timestamp NULL DEFAULT NULL,
  `operator_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `STATUS` (`status`),
  KEY `OPERATOR` (`operator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items_additionals`
--

DROP TABLE IF EXISTS `order_items_additionals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items_additionals` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `item_type` tinyint DEFAULT NULL,
  `item_property` tinyint DEFAULT NULL,
  `item_id` int unsigned DEFAULT NULL,
  `extra_id` int DEFAULT NULL,
  `item_name` varchar(145) DEFAULT NULL,
  `tag` varchar(245) DEFAULT NULL,
  `tag_method` tinyint DEFAULT NULL,
  `tag_price` decimal(10,2) DEFAULT '0.00',
  `quantity` int NOT NULL DEFAULT '1',
  `price` decimal(10,2) DEFAULT '0.00',
  `regular_price` decimal(10,2) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT '0.00',
  `total` decimal(10,2) DEFAULT '0.00',
  `notes` varchar(245) DEFAULT '0',
  `printer` varchar(45) DEFAULT NULL,
  `sort` int unsigned DEFAULT '1',
  `underline` tinyint unsigned DEFAULT '0',
  `status` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `STATUS` (`status`),
  KEY `ParentId` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items_additionals`
--

LOCK TABLES `order_items_additionals` WRITE;
/*!40000 ALTER TABLE `order_items_additionals` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items_additionals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_kds`
--

DROP TABLE IF EXISTS `order_kds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_kds` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned DEFAULT NULL,
  `order_type` smallint DEFAULT NULL,
  `table` varchar(45) DEFAULT NULL,
  `ticket_num` varchar(45) DEFAULT NULL,
  `priority` tinyint DEFAULT '0',
  `is_callback` tinyint DEFAULT '0',
  `estimate` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `status` tinyint DEFAULT '0',
  `start_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `end_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ORDERID` (`order_id`,`status`) /*!80000 INVISIBLE */,
  KEY `PRIORITY` (`priority`,`status`) /*!80000 INVISIBLE */,
  KEY `STATUS` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_kds`
--

LOCK TABLES `order_kds` WRITE;
/*!40000 ALTER TABLE `order_kds` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_kds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_kds_items`
--

DROP TABLE IF EXISTS `order_kds_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_kds_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned DEFAULT NULL,
  `order_item_id` int unsigned DEFAULT NULL,
  `course` int DEFAULT '0',
  `togo` tinyint DEFAULT NULL,
  `item_id` int unsigned DEFAULT NULL,
  `item_type` tinyint DEFAULT '1',
  `kds_id` bigint unsigned DEFAULT NULL,
  `printer_id` varchar(100) DEFAULT '0',
  `item_name` varchar(100) DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `notes` varchar(245) DEFAULT NULL,
  `item_price` decimal(10,2) DEFAULT '0.00',
  `status` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ORDERID` (`order_id`,`status`) /*!80000 INVISIBLE */,
  KEY `KDS` (`kds_id`,`status`) /*!80000 INVISIBLE */,
  KEY `STATUS` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_kds_items`
--

LOCK TABLES `order_kds_items` WRITE;
/*!40000 ALTER TABLE `order_kds_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_kds_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_kds_items_additionals`
--

DROP TABLE IF EXISTS `order_kds_items_additionals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_kds_items_additionals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint unsigned DEFAULT NULL,
  `item_id` int unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `order_item_id` int unsigned DEFAULT NULL,
  `item_type` tinyint DEFAULT '1',
  `printer_id` varchar(100) DEFAULT '0',
  `kds_id` bigint unsigned DEFAULT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `tag` varchar(45) DEFAULT NULL,
  `item_price` decimal(10,2) DEFAULT '0.00',
  `quantity` int NOT NULL DEFAULT '1',
  `status` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ORDERID` (`order_id`,`status`) /*!80000 INVISIBLE */,
  KEY `KDS` (`kds_id`,`status`) /*!80000 INVISIBLE */,
  KEY `STATUS` (`status`) /*!80000 INVISIBLE */
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_kds_items_additionals`
--

LOCK TABLES `order_kds_items_additionals` WRITE;
/*!40000 ALTER TABLE `order_kds_items_additionals` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_kds_items_additionals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_lists`
--

DROP TABLE IF EXISTS `order_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_type` smallint NOT NULL,
  `order_type_with_tax` tinyint DEFAULT NULL,
  `order_platform_with_tax` tinyint DEFAULT NULL,
  `ticket_num` varchar(45) NOT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `service_fee` decimal(10,2) DEFAULT NULL,
  `delivery_fee` decimal(10,2) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `duty_free` tinyint DEFAULT '0',
  `tips` decimal(10,2) DEFAULT NULL,
  `gratuity` decimal(10,2) DEFAULT '0.00',
  `is_manual_gratuity` varchar(45) DEFAULT NULL,
  `cdp` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `order_discount` decimal(10,2) DEFAULT '0.00',
  `order_discount_tag` varchar(245) DEFAULT NULL,
  `item_discount` decimal(10,2) DEFAULT NULL,
  `table_id` int DEFAULT NULL,
  `zone` int DEFAULT NULL,
  `table_tag` varchar(45) DEFAULT NULL,
  `seats` smallint DEFAULT '1',
  `notes` varchar(255) DEFAULT NULL,
  `private_notes` varchar(255) DEFAULT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `platform` int unsigned DEFAULT NULL,
  `station` varchar(45) DEFAULT NULL,
  `station_id` int unsigned DEFAULT NULL,
  `operator_id` int DEFAULT NULL,
  `driver` int unsigned DEFAULT NULL,
  `server_tag` varchar(45) DEFAULT NULL,
  `customer_id` int unsigned DEFAULT NULL,
  `customer_tag` varchar(45) DEFAULT NULL,
  `customer_address` varchar(500) DEFAULT NULL,
  `estimate` varchar(245) DEFAULT NULL,
  `send_status` tinyint DEFAULT '0',
  `payment_status` tinyint DEFAULT '0',
  `house_account` int DEFAULT NULL,
  `is_split` tinyint DEFAULT '0',
  `is_online` tinyint DEFAULT '0',
  `is_pickup` tinyint DEFAULT '0',
  `packer` tinyint DEFAULT '0',
  `checklist` tinyint DEFAULT '0',
  `print` tinyint DEFAULT '0',
  `locked` varchar(20) DEFAULT '0',
  `is_pos` tinyint DEFAULT '1',
  `is_syncronized` tinyint DEFAULT '0',
  `status` tinyint DEFAULT '0',
  `order_time` time NOT NULL DEFAULT (curtime()),
  `order_date` datetime DEFAULT NULL,
  `selected` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `STATUS` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_lists`
--

LOCK TABLES `order_lists` WRITE;
/*!40000 ALTER TABLE `order_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_payments`
--

DROP TABLE IF EXISTS `order_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_payments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint unsigned DEFAULT '1',
  `order_id` int unsigned NOT NULL,
  `table_id` int DEFAULT NULL,
  `split_id` int unsigned DEFAULT '0',
  `payment_method` smallint DEFAULT NULL,
  `extral_type` smallint DEFAULT NULL,
  `virtual_type` smallint DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT '0.00',
  `gratuity` decimal(10,2) DEFAULT '0.00',
  `tips` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cdp` decimal(10,2) DEFAULT '0.00',
  `delivery_fee` decimal(10,2) DEFAULT '0.00',
  `service_fee` decimal(10,2) DEFAULT '0.00',
  `discount` decimal(10,2) DEFAULT '0.00',
  `discount_tag` varchar(45) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT '0.00',
  `paid` decimal(10,2) DEFAULT '0.00',
  `change` decimal(10,2) DEFAULT '0.00',
  `operator_id` int unsigned DEFAULT NULL,
  `auth_code` varchar(45) DEFAULT NULL,
  `ref_num` varchar(45) DEFAULT NULL,
  `card_num` varchar(45) DEFAULT NULL,
  `card_type` varchar(45) DEFAULT NULL,
  `card_holder` varchar(45) DEFAULT NULL,
  `card_tag` text,
  `approved_amount` decimal(10,2) DEFAULT '0.00',
  `station` int DEFAULT NULL,
  `terminal` int NOT NULL,
  `signature` varchar(245) DEFAULT NULL,
  `notes` varchar(245) DEFAULT NULL,
  `batch_id` int unsigned DEFAULT '0',
  `transaction_group_id` bigint DEFAULT '0',
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`tips`),
  KEY `STATUS` (`status`),
  KEY `ORDER_ID` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_payments`
--

LOCK TABLES `order_payments` WRITE;
/*!40000 ALTER TABLE `order_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_queues`
--

DROP TABLE IF EXISTS `order_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_queues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `ticket_num` int unsigned NOT NULL,
  `displayer_id` int unsigned NOT NULL,
  `status` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `STATION` (`displayer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_queues`
--

LOCK TABLES `order_queues` WRITE;
/*!40000 ALTER TABLE `order_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_scheduled`
--

DROP TABLE IF EXISTS `order_scheduled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_scheduled` (
  `order_id` int NOT NULL,
  `status` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `STATUS` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_scheduled`
--

LOCK TABLES `order_scheduled` WRITE;
/*!40000 ALTER TABLE `order_scheduled` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_scheduled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_sections`
--

DROP TABLE IF EXISTS `order_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_sections` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned DEFAULT NULL,
  `title` varchar(145) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_sections`
--

LOCK TABLES `order_sections` WRITE;
/*!40000 ALTER TABLE `order_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_split_items`
--

DROP TABLE IF EXISTS `order_split_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_split_items` (
  `order_id` int unsigned DEFAULT NULL,
  `split_id` int unsigned DEFAULT NULL,
  `order_item_id` int unsigned NOT NULL,
  `type` tinyint DEFAULT '0',
  `splits` int unsigned DEFAULT '0',
  `split_total` int unsigned DEFAULT '0',
  `quantity` int DEFAULT '1',
  `amount` decimal(10,2) DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `ItemId` (`order_item_id`),
  KEY `SplitId` (`split_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_split_items`
--

LOCK TABLES `order_split_items` WRITE;
/*!40000 ALTER TABLE `order_split_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_split_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_splits`
--

DROP TABLE IF EXISTS `order_splits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_splits` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned DEFAULT NULL,
  `splited_ticket` varchar(45) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `item_split` int unsigned DEFAULT '0',
  `subtotal` decimal(10,2) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT '0.00',
  `tax_adjust` decimal(10,2) DEFAULT '0.00',
  `service_fee` decimal(10,2) DEFAULT '0.00',
  `delivery_fee` decimal(10,2) DEFAULT '0.00',
  `tips` decimal(10,2) DEFAULT '0.00',
  `gratuity` decimal(10,2) DEFAULT '0.00',
  `cdp` decimal(10,2) DEFAULT '0.00',
  `total` decimal(10,2) DEFAULT '0.00',
  `order_type` smallint DEFAULT NULL,
  `order_type_with_tax` tinyint DEFAULT NULL,
  `platform` int NOT NULL,
  `item_discount` decimal(10,2) DEFAULT '0.00',
  `order_discount` decimal(10,2) DEFAULT '0.00',
  `order_discount_tag` varchar(245) DEFAULT NULL,
  `adjust_fee` decimal(10,2) DEFAULT '0.00',
  `customer_id` int DEFAULT NULL,
  `customer_tag` varchar(45) DEFAULT NULL,
  `customer_address` varchar(245) DEFAULT NULL,
  `notes` varchar(245) DEFAULT NULL,
  `status` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `STATUS` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_splits`
--

LOCK TABLES `order_splits` WRITE;
/*!40000 ALTER TABLE `order_splits` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_splits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_thirdparty_payments`
--

DROP TABLE IF EXISTS `order_thirdparty_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_thirdparty_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` varchar(100) DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `split_id` int unsigned DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_id` int DEFAULT NULL,
  `response_data` text,
  `status` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_thirdparty_payments`
--

LOCK TABLES `order_thirdparty_payments` WRITE;
/*!40000 ALTER TABLE `order_thirdparty_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_thirdparty_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_void_lists`
--

DROP TABLE IF EXISTS `order_void_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_void_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `order_item_id` int unsigned DEFAULT NULL,
  `item_id` int unsigned DEFAULT NULL,
  `quantity` int DEFAULT '0',
  `notes` varchar(245) DEFAULT NULL,
  `operator_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_void_lists`
--

LOCK TABLES `order_void_lists` WRITE;
/*!40000 ALTER TABLE `order_void_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_void_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_refund_lists`
--

DROP TABLE IF EXISTS `payment_refund_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_refund_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int unsigned DEFAULT NULL,
  `payment_method` smallint DEFAULT NULL,
  `station` int DEFAULT NULL,
  `terminal` int DEFAULT NULL,
  `ref_num` varchar(45) DEFAULT NULL,
  `operator_id` int unsigned DEFAULT NULL,
  `auth_code` varchar(45) DEFAULT NULL,
  `card_num` varchar(45) DEFAULT NULL,
  `card_type` varchar(45) DEFAULT NULL,
  `approved_amount` decimal(10,2) DEFAULT '0.00',
  `notes` varchar(245) DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `STATUS` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_refund_lists`
--

LOCK TABLES `payment_refund_lists` WRITE;
/*!40000 ALTER TABLE `payment_refund_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_refund_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_void_lists`
--

DROP TABLE IF EXISTS `payment_void_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_void_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int unsigned DEFAULT NULL,
  `payment_method` smallint DEFAULT NULL,
  `station` int DEFAULT NULL,
  `terminal` int DEFAULT NULL,
  `ref_num` varchar(45) DEFAULT NULL,
  `operator_id` int unsigned DEFAULT NULL,
  `auth_code` varchar(45) DEFAULT NULL,
  `card_num` varchar(45) DEFAULT NULL,
  `card_type` varchar(45) DEFAULT NULL,
  `approved_amount` decimal(10,2) DEFAULT '0.00',
  `notes` varchar(245) DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `STATUS` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_void_lists`
--

LOCK TABLES `payment_void_lists` WRITE;
/*!40000 ALTER TABLE `payment_void_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_void_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'/v1/user/login',43,'app_token','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJVc2VySUQiOiI0MyIsIlBhc3N3b3JkIjoiMSIsIkNyZWF0ZUF0IjoiMjAyNC0wMi0xMlQxNzozNTo1NC44MTA2Nzk5LTA4OjAwIiwiVGFnIjoidXNlciJ9.JwJVdgDhm_J51qWZwKKinuSNjuUqcl6D5hlQX7fPpDs',NULL,NULL,'2024-02-13 01:35:54','2024-02-13 01:35:54');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platform_lists`
--

DROP TABLE IF EXISTS `platform_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platform_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `duty_free` tinyint DEFAULT '0',
  `notes` varchar(245) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platform_lists`
--

LOCK TABLES `platform_lists` WRITE;
/*!40000 ALTER TABLE `platform_lists` DISABLE KEYS */;
INSERT INTO `platform_lists` VALUES (0,'Online Order',0,NULL,'2022-05-09 20:26:06','2022-05-09 20:26:14'),(1,'Pos',0,NULL,'2020-10-22 20:39:27','2020-11-02 19:14:34'),(2,'Uber Eats',1,NULL,'2020-10-29 14:13:54','2022-04-18 20:21:18'),(3,'Seamless',1,NULL,'2020-10-29 14:43:40','2022-04-18 20:21:14'),(4,'Grubhub',1,NULL,'2020-10-29 14:44:44','2022-04-18 20:11:54'),(5,'Chowbus',1,NULL,'2020-10-29 14:45:21','2022-04-18 18:05:02');
/*!40000 ALTER TABLE `platform_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_happy_hour_list`
--

DROP TABLE IF EXISTS `promotion_happy_hour_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion_happy_hour_list` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint DEFAULT '1',
  `title` varchar(45) DEFAULT NULL,
  `options` varchar(245) NOT NULL,
  `rate` varchar(45) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `sort` int DEFAULT '1',
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_happy_hour_list`
--

LOCK TABLES `promotion_happy_hour_list` WRITE;
/*!40000 ALTER TABLE `promotion_happy_hour_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_happy_hour_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_special_hour_list`
--

DROP TABLE IF EXISTS `promotion_special_hour_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion_special_hour_list` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint DEFAULT '1',
  `title` varchar(45) DEFAULT NULL,
  `options` varchar(245) NOT NULL,
  `rate` varchar(45) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `sort` int DEFAULT '1',
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_special_hour_list`
--

LOCK TABLES `promotion_special_hour_list` WRITE;
/*!40000 ALTER TABLE `promotion_special_hour_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_special_hour_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `reserve_time` datetime DEFAULT NULL,
  `adult` smallint DEFAULT NULL,
  `children` smallint DEFAULT NULL,
  `wheelchair` smallint DEFAULT NULL,
  `highchair` smallint DEFAULT NULL,
  `notes` varchar(245) DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'3324','2222222222','2021-08-27 14:05:00',1,NULL,NULL,NULL,'',2,'2021-08-13 18:05:14','2021-08-20 18:21:59'),(25,'sf','2222222222','2021-08-16 21:26:00',2,NULL,NULL,NULL,'',3,'2021-08-13 21:26:21','2021-08-20 14:43:27'),(26,'33','4444444444','2021-08-20 05:26:00',4,NULL,NULL,NULL,'',NULL,'2021-08-13 21:26:50','2021-08-16 22:22:30'),(27,'555sfs','5555555555','2021-08-25 05:27:00',55,5,NULL,NULL,'8456',2,'2021-08-13 21:27:17','2021-08-20 18:21:24'),(28,'kyleruan','6546654415','2021-08-16 18:14:00',3,NULL,NULL,NULL,'',0,'2021-08-13 22:14:32','2021-08-18 17:23:14'),(29,'33sdffsfd','3333333333','2021-08-13 18:22:00',3,NULL,NULL,NULL,'core.js:6456 ERROR Error: InvalidPipeArgument: \'Unable to convert \"18:22\" into a date\' for pipe \'DatePipe\'\n    at invalidPipeA',3,'2021-08-13 22:22:47','2021-08-20 14:14:11'),(30,'32434','2343243424','2021-08-16 15:06:00',24,NULL,NULL,NULL,'',5,'2021-08-13 22:24:56','2021-08-18 22:53:57'),(31,'test','2221321323','2021-08-16 15:18:00',2,NULL,NULL,NULL,'',1,'2021-08-16 19:18:46','2021-08-16 19:18:46'),(32,'Jinayerua sfdfdfsfdsfsdfsdfsdd','3333333333','2021-08-11 15:31:00',23,NULL,NULL,NULL,'',5,'2021-08-16 19:18:59','2021-08-18 19:31:36'),(33,'sdfsff','2132321321','2021-08-17 16:31:00',2,NULL,NULL,NULL,'GWHOLE Large Silicone Pastry Baking Mats Non Stick Dough Mat with Measurements for Rolling Fondant, Dough, Pie Crust, Pizza and Cookies, 16x 24 inch',2,'2021-08-16 19:43:49','2021-08-19 16:55:05'),(34,'3234243','3243423424','2021-08-16 16:04:00',23,3,NULL,NULL,'',3,'2021-08-16 20:04:15','2021-08-18 19:18:59'),(35,'2434','2432424342','2021-08-16 16:04:00',24,43,NULL,NULL,'',-1,'2021-08-16 20:04:22','2021-08-16 22:26:19'),(36,'24343','2344324323','2021-08-16 16:04:00',24,NULL,NULL,NULL,'24332432432',1,'2021-08-16 20:04:28','2021-08-16 20:04:28'),(37,'2434','2342432443','2021-08-21 10:00:00',24,24,NULL,NULL,'324342',3,'2021-08-16 20:04:33','2021-08-20 14:00:54'),(38,'24342','4324222434','2021-08-16 16:04:00',24,23,NULL,NULL,'42344',2,'2021-08-16 20:04:40','2021-08-16 22:01:00'),(39,'3243','2432434424','2021-08-20 15:01:00',24,3,NULL,NULL,'24324342',1,'2021-08-16 20:04:49','2021-08-20 17:08:46'),(40,'2323','2342342433','2021-08-06 10:01:00',3,23,NULL,NULL,'',5,'2021-08-16 20:17:13','2021-08-20 14:01:05'),(41,'34535434535453','5435435435','2021-08-06 13:56:00',54,NULL,NULL,NULL,'',1,'2021-08-16 20:17:36','2021-08-19 17:56:25'),(42,'sfsdsd','3243243424','2021-08-16 00:00:00',3,NULL,NULL,NULL,'',0,'2021-08-16 20:18:00','2021-08-18 21:11:44'),(43,'kyleruan','6463610501','2021-08-21 13:56:00',3,NULL,NULL,NULL,'Test 8/27',5,'2021-08-16 20:18:39','2021-08-19 17:56:47'),(44,'32423','3243423442','2021-08-27 00:00:00',3,NULL,NULL,NULL,'wrewr',-1,'2021-08-16 20:21:39','2021-08-19 16:57:59'),(45,'3243','3243423434','2021-08-25 00:00:00',23,NULL,NULL,NULL,'',1,'2021-08-16 20:30:56','2021-08-16 20:30:56'),(46,'5453455354435','3545345354','2021-08-30 00:00:00',35,NULL,NULL,NULL,'',-1,'2021-08-16 20:31:50','2021-08-23 18:27:56'),(47,'tset','2222222222','2021-08-21 00:00:00',2,NULL,NULL,NULL,'erweeewe85885',5,'2021-08-16 20:42:27','2021-08-16 22:43:26'),(48,'teeer','4435435433','2021-08-13 00:00:00',4,NULL,NULL,NULL,'',0,'2021-08-16 21:05:38','2021-08-16 22:49:10'),(49,'3424324','3424324234','2021-08-14 00:00:00',43,NULL,NULL,NULL,'',1,'2021-08-16 21:05:47','2021-08-19 16:49:00'),(50,'2324324','3424323434','2021-08-31 00:00:00',43,NULL,NULL,NULL,'',5,'2021-08-16 21:31:42','2021-08-26 15:39:19'),(51,'ewrerrer','3423423443','2021-08-02 00:00:00',33,NULL,NULL,NULL,'',0,'2021-08-17 14:44:33','2021-08-19 16:55:51'),(52,'sfsf','2323424342','2021-08-12 00:00:00',23,NULL,NULL,NULL,'',1,'2021-08-18 17:08:09','2021-08-18 17:08:09'),(53,'23243','2039103797','2021-08-13 00:00:00',24,NULL,NULL,NULL,'223',-1,'2021-08-18 17:08:20','2021-08-19 22:49:19'),(54,'23','3333232434','2021-08-13 00:00:00',33,NULL,NULL,NULL,'',-1,'2021-08-18 17:08:39','2021-08-19 16:58:03'),(55,'rtrtt','3534535434','2021-08-31 15:00:00',34,NULL,NULL,NULL,'',5,'2021-08-18 17:45:07','2021-08-31 18:30:33'),(56,'ik','56666666666','2021-08-18 00:00:00',3,NULL,NULL,NULL,'jjjjjjj',1,'2021-08-18 22:24:13','2021-08-18 22:24:13'),(57,'555jj','8855885288','2021-08-19 00:00:00',7,5,5,8,'8555',3,'2021-08-19 14:46:29','2021-08-19 15:36:13'),(58,'khh','1111111111','2021-08-19 00:00:00',45,NULL,NULL,NULL,'4p',1,'2021-08-19 14:47:12','2021-08-19 15:36:36'),(59,'1','55555555555','2021-08-19 00:00:00',1,5,8,6,'555',0,'2021-08-19 14:53:49','2021-08-19 17:12:03'),(60,'kkkk','55555555555','2021-09-16 00:00:00',5,NULL,NULL,NULL,'uh',1,'2021-08-19 16:04:58','2021-08-19 16:04:58'),(61,'7876','6868687867','2021-09-17 00:00:00',6,NULL,NULL,NULL,'',1,'2021-08-19 16:06:08','2021-08-19 16:06:08'),(62,'6878688','6757675675','2021-09-17 00:00:00',68,NULL,NULL,NULL,'',1,'2021-08-19 16:06:15','2021-08-19 16:06:15'),(63,'Alexia','7743017304','2222-08-23 00:00:00',5,6,5,5,'',1,'2021-08-19 22:43:21','2021-08-19 22:43:21'),(64,'Alexia','7777777777','2021-08-14 00:00:00',99,99,NULL,NULL,'No Smoke Room',0,'2021-08-19 22:46:18','2021-08-19 22:47:48'),(65,'1222','4444444444','2021-08-24 00:00:00',1,4,NULL,NULL,'',5,'2021-08-19 22:50:14','2021-08-23 18:38:43'),(66,'yhhhh','4444444444','2021-08-20 21:00:00',4,NULL,NULL,NULL,'ii',5,'2021-08-20 18:10:51','2021-08-20 18:11:10'),(67,'kjkuj','4444444444','2021-08-31 00:00:00',1,2,NULL,NULL,'',1,'2021-08-23 19:30:23','2021-08-26 15:39:25'),(68,'yggh','25555555555','2021-08-31 00:00:00',3,1,NULL,NULL,'Test  ',1,'2021-08-23 19:30:55','2021-08-26 15:39:05'),(69,'test','2432432423','2021-10-06 00:00:00',3,NULL,NULL,NULL,'wrer',0,'2021-08-26 15:33:45','2021-08-26 15:34:50'),(70,'Anduin','1648614516','2021-08-26 16:50:00',33,NULL,NULL,NULL,'Anniversary',5,'2021-08-26 15:35:50','2021-08-26 19:35:10'),(71,'Ted','2142142342','2021-08-26 17:00:00',5,NULL,NULL,NULL,'Birthday party',1,'2021-08-26 15:47:31','2021-08-26 19:34:11'),(72,'test','1111111111','2021-11-04 17:00:00',5,3,NULL,NULL,'',2,'2021-11-04 15:10:02','2021-11-04 15:10:08'),(73,'Alice','6465258987','2021-11-04 18:00:00',1,NULL,NULL,NULL,'bithday',5,'2021-11-04 15:35:10','2021-11-04 15:35:21'),(74,'Tom','6328595246','2021-11-04 17:00:00',2,1,NULL,NULL,'',5,'2021-11-04 15:35:50','2021-11-04 15:40:39'),(75,'Lee','3526584521','2021-11-05 18:00:00',10,NULL,1,NULL,'',1,'2021-11-04 15:36:25','2021-11-04 15:36:25'),(76,'Tom','6254526521','2021-11-06 16:00:00',3,NULL,NULL,NULL,'',1,'2021-11-04 15:37:44','2021-11-04 15:37:44'),(77,'Lee','9175246325','2021-11-04 20:00:00',3,1,NULL,1,'',1,'2021-11-04 15:41:00','2021-11-04 15:41:00'),(78,'Test','2132132323','2022-04-20 12:00:00',1,NULL,NULL,NULL,'',1,'2022-04-20 15:07:31','2022-04-20 15:07:31'),(79,'test','3333333333','2022-04-21 04:02:00',2,NULL,NULL,NULL,'',-1,'2022-04-20 15:08:06','2022-04-20 15:17:19'),(80,'2','2222222222','2022-10-07 00:00:00',3,NULL,NULL,NULL,'',1,'2022-04-20 15:12:52','2022-04-20 15:12:52'),(81,'33','3333333333','2022-10-21 00:00:00',3,NULL,NULL,NULL,'',1,'2022-04-20 15:13:10','2022-04-20 15:13:10'),(82,'22','4444444444','2022-04-21 00:00:00',33,NULL,NULL,NULL,'',1,'2022-04-20 15:13:56','2022-04-20 15:13:56'),(83,'trt55','6666666666','2022-04-22 18:08:00',55,NULL,NULL,NULL,'',5,'2022-04-22 22:07:13','2022-04-22 22:39:37'),(84,'3333','3333333333','2022-04-22 18:17:00',33,NULL,NULL,NULL,'',-1,'2022-04-22 22:09:34','2022-04-22 22:28:03');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_cash_drawer_lists`
--

DROP TABLE IF EXISTS `setting_cash_drawer_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_cash_drawer_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `device_model` varchar(45) DEFAULT NULL,
  `printer` int unsigned DEFAULT NULL,
  `permission` json DEFAULT NULL,
  `sort` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_cash_drawer_lists`
--

LOCK TABLES `setting_cash_drawer_lists` WRITE;
/*!40000 ALTER TABLE `setting_cash_drawer_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting_cash_drawer_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_cash_history`
--

DROP TABLE IF EXISTS `setting_cash_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_cash_history` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `balance` decimal(10,2) DEFAULT NULL,
  `payto` varchar(245) DEFAULT NULL,
  `notes` varchar(245) DEFAULT NULL,
  `operator_id` int NOT NULL,
  `station_id` int unsigned DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `transaction_group_id` bigint unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_cash_history`
--

LOCK TABLES `setting_cash_history` WRITE;
/*!40000 ALTER TABLE `setting_cash_history` DISABLE KEYS */;
INSERT INTO `setting_cash_history` VALUES (1,1,1221.94,0.00,NULL,NULL,43,1,1,0,'2024-01-11 23:23:27','2024-01-11 23:23:27'),(2,3,5.00,0.00,'Sandy','test',43,1,1,0,'2024-01-11 23:38:42','2024-01-11 23:38:42');
/*!40000 ALTER TABLE `setting_cash_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_config_lists`
--

DROP TABLE IF EXISTS `setting_config_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_config_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `section` varchar(45) DEFAULT NULL,
  `sort` int DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title_UNIQUE` (`title`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_config_lists`
--

LOCK TABLES `setting_config_lists` WRITE;
/*!40000 ALTER TABLE `setting_config_lists` DISABLE KEYS */;
INSERT INTO `setting_config_lists` VALUES (1,'home',NULL,0),(2,'payment',NULL,2),(3,'printer',NULL,3),(4,'dineIn',NULL,2),(5,'receiptList',NULL,5),(6,'themes',NULL,1),(7,'config',NULL,6),(8,'report',NULL,8);
/*!40000 ALTER TABLE `setting_config_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_config_options`
--

DROP TABLE IF EXISTS `setting_config_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_config_options` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `type` int DEFAULT '0',
  `value` varchar(245) DEFAULT NULL,
  `option` text,
  `notes` tinytext,
  `sort` int DEFAULT '1',
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title_UNIQUE` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_config_options`
--

LOCK TABLES `setting_config_options` WRITE;
/*!40000 ALTER TABLE `setting_config_options` DISABLE KEYS */;
INSERT INTO `setting_config_options` VALUES (1,1,'takeorder',1,'1','[{\"Id\":1,\"Name\":\"returnhome\"},{\"Id\":2,\"Name\":\"returnindex\"},{\"Id\":3,\"Name\":\"currentpage\"}]','',0,1,'2020-10-27 16:28:05','2021-12-28 15:06:01'),(2,2,'cdp',34,'3.95',NULL,'8.875',0,0,'2020-10-27 16:28:05','2022-06-14 02:18:11'),(3,2,'discount',1,'1','[{\"Id\":0,\"Name\":\"default\"},{\"Id\":1,\"Name\":\"beforetax\"},{\"Id\":2,\"Name\":\"aftertax\"}]','',1,1,'2020-10-27 16:28:05','2022-09-20 15:18:12'),(4,2,'tipsfortax',1,'1','[{\"Id\":0,\"Name\":\"default\"},{\"Id\":1,\"Name\":\"beforetax\"},{\"Id\":2,\"Name\":\"aftertax\"}]','',2,1,'2020-10-27 16:28:05','2022-09-20 15:18:12'),(5,2,'paymentmethod',4,'2,1,3,6','[{\"Id\":1,\"Name\":\"payment@pay1\"},{\"Id\":2,\"Name\":\"payment@pay2\"},{\"Id\":3,\"Name\":\"payment@pay3\"},{\"Id\":6,\"Name\":\"payment@pay6\"},{\"Id\":7,\"Name\":\"payment@pay7\"}]','',3,1,'2020-10-27 16:28:05','2023-03-29 15:54:44'),(6,2,'nopenny',2,'0',NULL,'',4,1,'2020-10-27 16:28:05','2022-06-27 15:01:47'),(7,3,'receiptbeforepay',2,'0',NULL,'',1,0,'2020-10-27 16:28:05','2023-02-27 16:56:50'),(8,3,'receiptafterpay',2,'0',NULL,'',2,0,'2020-10-27 16:28:05','2021-04-21 15:59:31'),(9,3,'receiptprintrequired',2,'1',NULL,'',3,1,'2020-10-27 16:28:05','2022-06-15 15:03:35'),(10,3,'dineincount',1,'1','[{\"Id\":0,\"Name\":\"0copy\"},{\"Id\":1,\"Name\":\"1copy\"},{\"Id\":2,\"Name\":\"2copy\"},{\"Id\":3,\"Name\":\"3copy\"}]','',4,1,'2020-10-27 16:28:05','2021-04-02 18:42:48'),(11,3,'togocount',1,'1','[{\"Id\":0,\"Name\":\"0copy\"},{\"Id\":1,\"Name\":\"1copy\"},{\"Id\":2,\"Name\":\"2copy\"},{\"Id\":3,\"Name\":\"3copy\"}]','',5,1,'2020-10-27 16:28:05','2021-04-02 18:42:48'),(12,3,'pickupcount',1,'1','[{\"Id\":0,\"Name\":\"0copy\"},{\"Id\":1,\"Name\":\"1copy\"},{\"Id\":2,\"Name\":\"2copy\"},{\"Id\":3,\"Name\":\"3copy\"}]','',6,1,'2020-10-27 16:28:05','2021-04-02 18:42:48'),(13,3,'deliverycount',1,'1','[{\"Id\":0,\"Name\":\"0copy\"},{\"Id\":1,\"Name\":\"1copy\"},{\"Id\":2,\"Name\":\"2copy\"},{\"Id\":3,\"Name\":\"3copy\"}]','',7,1,'2020-10-27 16:28:05','2022-05-13 18:35:33'),(14,3,'kitchenclickpay',2,'1',NULL,'',9,1,'2020-10-27 16:28:05','2021-06-17 21:10:16'),(15,3,'kitchenafterpay',2,'0',NULL,'',10,0,'2020-10-27 16:28:05','2021-06-17 21:10:16'),(16,4,'passwordrequired',2,'1',NULL,'',0,0,'2020-10-27 16:28:05','2021-04-21 15:59:31'),(17,4,'skiptableselect',2,'0',NULL,'',1,1,'2020-10-27 16:28:05','2024-01-11 22:53:03'),(18,4,'ofguest',2,'1',NULL,'',2,0,'2020-10-27 16:28:05','2024-01-11 22:53:03'),(19,5,'checklist',4,'1','[{\"Name\":\"ordertype1\",\"Id\":1,\"DutyFree\":0},{\"Name\":\"ordertype2\",\"Id\":2,\"DutyFree\":0},{\"Name\":\"ordertype3\",\"Id\":3,\"DutyFree\":0},{\"Name\":\"ordertype4\",\"Id\":4,\"DutyFree\":0},{\"Name\":\"ordertype5\",\"Id\":5,\"DutyFree\":0},{\"Name\":\"ordertype6\",\"Id\":6,\"DutyFree\":0},{\"Name\":\"ordertype7\",\"Id\":7,\"DutyFree\":0},{\"Name\":\"ordertype8\",\"Id\":8,\"DutyFree\":0},{\"Name\":\"ordertype9\",\"Id\":9,\"DutyFree\":0}]','',0,1,'2020-10-27 16:28:05','2023-08-29 19:38:36'),(20,3,'voiditem',18,'20','7','',11,1,'2020-11-04 15:07:37','2022-01-04 20:24:10'),(21,3,'voidorder',18,'25','8','',12,0,'2020-11-04 15:07:37','2023-03-06 17:44:45'),(22,3,'voidpayment',18,'17','9','',13,1,'2020-11-04 15:07:37','2022-01-04 20:24:10'),(23,3,'refund',18,'22','10','',14,1,'2020-11-04 15:07:37','2022-01-04 20:24:10'),(24,2,'deliveryfeeforindividual',2,NULL,NULL,NULL,7,1,'2021-04-22 15:35:52','2021-11-10 21:53:42'),(25,1,'individual',2,NULL,NULL,'',1,1,'2020-12-17 16:37:09','2022-05-11 19:41:46'),(26,1,'quicknote',2,NULL,NULL,'',2,0,'2020-12-17 16:37:09','2022-01-03 22:40:56'),(27,3,'showitemdiscount',2,'0',NULL,'',15,0,'2020-12-17 16:37:09','2022-01-04 20:22:47'),(28,3,'paymentreceipt',2,'0',NULL,NULL,0,0,'2021-01-21 21:12:07','2023-03-07 16:23:23'),(29,6,'group',64,'20','{\"fontSizes\":[{\"Id\":16},{\"Id\":17},{\"Id\":18},{\"Id\":19},{\"Id\":20},{\"Id\":21},{\"Id\":22},{\"Id\":23},{\"Id\":24},{\"Id\":25},{\"Id\":26},{\"Id\":27},{\"Id\":28},{\"Id\":29},{\"Id\":30}],\"fontWeight\":[{\"Id\":\"normal\"},{\"Id\":\"bold\"}]}','normal',1,1,'2021-02-01 22:38:32','2021-06-21 16:20:11'),(30,6,'category',64,'20','{\"fontSizes\":[{\"Id\":16},{\"Id\":17},{\"Id\":18},{\"Id\":19},{\"Id\":20},{\"Id\":21},{\"Id\":22},{\"Id\":23},{\"Id\":24},{\"Id\":25},{\"Id\":26},{\"Id\":27},{\"Id\":28},{\"Id\":29},{\"Id\":30}],\"fontWeight\":[{\"Id\":\"normal\"},{\"Id\":\"bold\"}]}','normal',2,1,'2021-02-01 22:38:32','2021-06-21 16:20:11'),(31,6,'categorystyle',2,NULL,'',NULL,0,1,'2021-02-04 19:43:45','2022-09-20 15:20:05'),(33,3,'packeritemincrement',2,'1',NULL,NULL,16,1,'2021-02-26 16:31:50','2022-06-09 20:35:29'),(35,2,'gratuityforindividual',2,NULL,NULL,NULL,17,1,'2021-03-01 17:08:00','2021-11-10 21:53:42'),(36,2,'onekeypayment',2,NULL,NULL,NULL,5,0,'2021-03-17 19:06:17','2022-03-10 22:04:42'),(37,7,'clockinout',2,NULL,NULL,NULL,1,0,'2021-03-19 21:10:59','2022-05-26 19:55:17'),(38,2,'standalonepayment',1,'2','[{\"Name\":\"none\",\"Id\":1},{\"Name\":\"standalone\",\"Id\":2},{\"Name\":\"both\",\"Id\":3}]',NULL,6,1,'2021-03-22 18:38:25','2023-10-18 22:25:29'),(39,7,'happyhour',2,NULL,NULL,NULL,2,1,'2021-03-26 19:06:02','2021-06-16 18:40:12'),(40,6,'item',64,'21','{\"fontSizes\":[{\"Id\":16},{\"Id\":17},{\"Id\":18},{\"Id\":19},{\"Id\":20},{\"Id\":21},{\"Id\":22},{\"Id\":23},{\"Id\":24},{\"Id\":25},{\"Id\":26},{\"Id\":27},{\"Id\":28},{\"Id\":29},{\"Id\":30}],\"fontWeight\":[{\"Id\":\"normal\"},{\"Id\":\"bold\"}]}','normal',10,1,'2021-04-09 17:02:25','2023-10-18 21:41:31'),(41,1,'orderdisplayer',2,'2',NULL,NULL,4,0,'2021-04-19 17:39:59','2021-04-21 15:13:11'),(42,2,'tipsfordiscount',2,'1',NULL,NULL,1,1,'2021-04-20 20:39:15','2022-06-21 22:41:59'),(43,4,'singletableorder',2,'1',NULL,NULL,4,0,'2021-04-20 22:20:23','2021-08-16 14:52:12'),(44,2,'tipsbeforeotherfee',2,NULL,NULL,NULL,2,0,'2021-05-07 21:00:58','2022-06-27 19:06:21'),(45,3,'walkincount',1,'1','[{\"Id\":0,\"Name\":\"0copy\"},{\"Id\":1,\"Name\":\"1copy\"},{\"Id\":2,\"Name\":\"2copy\"},{\"Id\":3,\"Name\":\"3copy\"}]',NULL,8,1,'2021-05-27 16:12:39','2021-05-27 17:05:15'),(46,5,'receiptlist',4,'2,3,1,4','[{\"Name\":\"ordertype1\",\"Id\":1},{\"Name\":\"ordertype2\",\"Id\":2},{\"Name\":\"ordertype3\",\"Id\":3},{\"Name\":\"ordertype4\",\"Id\":4},{\"Name\":\"ordertype5\",\"Id\":5},{\"Name\":\"ordertype6\",\"Id\":6},{\"Name\":\"ordertype7\",\"Id\":7},{\"Name\":\"ordertype8\",\"Id\":8},{\"Name\":\"ordertype9\",\"Id\":9}]',NULL,1,1,'2021-06-15 18:48:34','2023-02-27 16:56:03'),(47,7,'seat-required',2,NULL,NULL,NULL,3,1,'2021-06-17 17:00:42','2021-06-17 22:11:47'),(49,6,'item-price',2,NULL,NULL,NULL,-1,1,'2021-06-21 14:31:53','2021-07-20 15:00:44'),(50,2,'auto-insert-decimal',2,NULL,NULL,NULL,-1,1,'2021-06-21 22:28:00','2022-05-26 16:19:33'),(51,3,'checklistitemincrement',2,'1',NULL,NULL,16,0,'2021-06-25 19:54:36','2021-09-22 19:45:12'),(52,7,'forced-void-item-forbidden',2,'0',NULL,NULL,10,1,'2021-06-28 21:31:13','2021-07-12 18:07:03'),(53,7,'cashdrawer-password-required',2,NULL,NULL,NULL,11,1,'2021-07-06 14:49:13','2021-07-16 17:07:23'),(54,7,'itemfocus',2,'1',NULL,NULL,1,1,'2021-07-06 15:44:14','2021-08-16 16:04:56'),(55,1,'digitalordering',2,NULL,NULL,NULL,10,1,'2021-07-22 13:55:08','2021-09-15 21:46:02'),(56,1,'privatenotes',2,NULL,NULL,NULL,1,1,'2021-07-28 20:27:54','2022-01-03 22:41:20'),(57,8,'reportfilter',2,'1',NULL,NULL,1,1,'2021-08-03 19:24:36','2021-08-04 18:39:32'),(58,3,'auto-packer-reprint',2,NULL,NULL,NULL,17,1,'2021-09-13 18:41:21','2021-09-13 19:00:44'),(59,8,'ignorepaymentmethod',4,'','[{\"Id\":1,\"Name\":\"payment@pay1\"},{\"Id\":2,\"Name\":\"payment@pay2\"},{\"Id\":3,\"Name\":\"payment@pay3\"},{\"Id\":6,\"Name\":\"payment@pay6\"},{\"Id\":7,\"Name\":\"payment@pay7\"}]',NULL,2,1,'2021-10-01 15:10:34','2021-10-12 17:51:41'),(60,2,'otherfeebeforetax',2,'1',NULL,NULL,1,1,'2022-07-01 14:56:15','2022-07-01 14:56:15'),(61,2,'printVoidPacker',2,NULL,NULL,NULL,15,1,'2024-01-31 19:22:49','2024-01-31 19:22:49');
/*!40000 ALTER TABLE `setting_config_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_config_sections`
--

DROP TABLE IF EXISTS `setting_config_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_config_sections` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_config_sections`
--

LOCK TABLES `setting_config_sections` WRITE;
/*!40000 ALTER TABLE `setting_config_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting_config_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_discount_lists`
--

DROP TABLE IF EXISTS `setting_discount_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_discount_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `rate` varchar(45) DEFAULT NULL,
  `sort` int unsigned DEFAULT '1',
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_discount_lists`
--

LOCK TABLES `setting_discount_lists` WRITE;
/*!40000 ALTER TABLE `setting_discount_lists` DISABLE KEYS */;
INSERT INTO `setting_discount_lists` VALUES (3,'15%','15%',NULL,0,'2020-10-23 22:01:31','2022-09-20 16:12:09'),(4,'20%','20%',NULL,1,'2020-10-23 22:01:38','2021-07-14 18:50:28'),(9,'$5','5',NULL,1,'2020-12-13 07:43:08','2021-07-14 18:51:15'),(10,'$10','10',NULL,1,'2020-12-13 07:43:15','2021-07-14 18:51:19'),(11,'$15','15',NULL,1,'2020-12-13 07:43:27','2021-07-14 18:51:23');
/*!40000 ALTER TABLE `setting_discount_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_distance_fee`
--

DROP TABLE IF EXISTS `setting_distance_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_distance_fee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start` float DEFAULT '0',
  `end` float DEFAULT '0',
  `price` decimal(10,2) DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_distance_fee`
--

LOCK TABLES `setting_distance_fee` WRITE;
/*!40000 ALTER TABLE `setting_distance_fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting_distance_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_gratuity_fee`
--

DROP TABLE IF EXISTS `setting_gratuity_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_gratuity_fee` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint DEFAULT '1',
  `name` varchar(45) DEFAULT NULL,
  `quantity` int DEFAULT '0',
  `rate` varchar(45) DEFAULT NULL,
  `sort` int unsigned DEFAULT '1',
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_gratuity_fee`
--

LOCK TABLES `setting_gratuity_fee` WRITE;
/*!40000 ALTER TABLE `setting_gratuity_fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting_gratuity_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_kiosk_images`
--

DROP TABLE IF EXISTS `setting_kiosk_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_kiosk_images` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint DEFAULT '1',
  `title` varchar(45) DEFAULT NULL,
  `image` varchar(245) DEFAULT NULL,
  `sort` int DEFAULT '1',
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_kiosk_images`
--

LOCK TABLES `setting_kiosk_images` WRITE;
/*!40000 ALTER TABLE `setting_kiosk_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting_kiosk_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_menu_type`
--

DROP TABLE IF EXISTS `setting_menu_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_menu_type` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `sort` int unsigned DEFAULT '1',
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_menu_type`
--

LOCK TABLES `setting_menu_type` WRITE;
/*!40000 ALTER TABLE `setting_menu_type` DISABLE KEYS */;
INSERT INTO `setting_menu_type` VALUES (5,'Food',1,1,'2022-05-13 19:28:52','2022-05-13 19:28:52'),(6,'Drink',1,1,'2022-05-13 19:28:57','2022-05-13 19:28:57');
/*!40000 ALTER TABLE `setting_menu_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_modifies_to_items`
--

DROP TABLE IF EXISTS `setting_modifies_to_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_modifies_to_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_id` int unsigned NOT NULL,
  `modify_id` int unsigned NOT NULL,
  `sort` int unsigned DEFAULT '1',
  `status` tinyint unsigned DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_modifies_to_items`
--

LOCK TABLES `setting_modifies_to_items` WRITE;
/*!40000 ALTER TABLE `setting_modifies_to_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting_modifies_to_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_order_displayers`
--

DROP TABLE IF EXISTS `setting_order_displayers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_order_displayers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(245) DEFAULT NULL,
  `order_type` varchar(245) DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_order_displayers`
--

LOCK TABLES `setting_order_displayers` WRITE;
/*!40000 ALTER TABLE `setting_order_displayers` DISABLE KEYS */;
INSERT INTO `setting_order_displayers` VALUES (1,'Display 1','4,3',1,NULL,'2021-07-14 18:35:48'),(2,'Display 2','1',1,NULL,'2021-07-14 21:23:13');
/*!40000 ALTER TABLE `setting_order_displayers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_printer_formats`
--

DROP TABLE IF EXISTS `setting_printer_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_printer_formats` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned DEFAULT NULL,
  `type` int DEFAULT '0' COMMENT '0系统标签 1 文字 2 图片 3空格 4双线 5 单线 6 空行',
  `title` varchar(45) DEFAULT NULL,
  `fontsize` int DEFAULT '10',
  `fontsize_extra` int DEFAULT '0',
  `alignment` tinyint unsigned DEFAULT '0',
  `width` float DEFAULT '1',
  `offset` float DEFAULT '0',
  `fontstyle` tinyint unsigned DEFAULT '0',
  `height` int DEFAULT '0',
  `group_height` int DEFAULT '0',
  `group_line` tinyint DEFAULT '0',
  `padfix` tinyint unsigned DEFAULT '0',
  `key` tinytext,
  `notes` tinytext,
  `content_warp_fix` int DEFAULT '0',
  `sort` int DEFAULT '1',
  `owner` tinyint DEFAULT '0',
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=693 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_printer_formats`
--

LOCK TABLES `setting_printer_formats` WRITE;
/*!40000 ALTER TABLE `setting_printer_formats` DISABLE KEYS */;
INSERT INTO `setting_printer_formats` VALUES (1,1,3,'Top Space',10,10,0,1,0,0,0,0,0,0,NULL,NULL,0,0,0,1,'2020-10-12 06:48:29','2021-06-17 21:44:16'),(2,1,2,'Show logo',10,10,1,0.5,0,0,0,0,0,0,'uploads/20220629/16565226361599924557.jpg','uploads/20220629/16565226361599924557.jpg',0,1,0,1,'2020-10-12 05:53:28','2022-06-29 18:03:56'),(3,1,0,'Order Type',16,10,0,1,0,1,0,0,0,0,'order_type',NULL,0,3,0,1,'2020-10-12 05:59:46','2021-07-21 20:43:28'),(4,1,0,'Ticket Number',13,10,0,1,0,1,0,0,0,0,'ticket',NULL,0,5,0,1,'2020-10-12 06:01:47','2021-07-21 20:43:28'),(5,1,0,'Store Name',10,10,1,1,0,0,0,0,0,0,'store_name',NULL,0,8,0,1,'2020-10-12 05:53:28','2021-07-14 21:26:55'),(6,1,0,'Store Address',10,10,1,1,0,0,0,0,0,0,'store_address',NULL,0,9,0,1,'2020-10-12 05:55:27','2021-07-14 21:26:55'),(7,1,0,'Store Address (Optional)',10,10,1,1,0,0,0,0,0,0,'store_address_option',NULL,0,10,0,1,'2020-10-12 05:55:27','2021-07-14 21:26:55'),(8,1,0,'Store Tel.',10,10,1,1,0,0,0,0,0,0,'store_tel',NULL,0,11,0,1,'2020-10-12 05:56:36','2021-07-14 21:26:55'),(9,1,1,'Header Text',9,10,0,1,0,0,0,0,0,0,'(888)-885-8840',NULL,0,12,0,0,'2020-10-12 06:10:48','2021-07-14 21:26:55'),(10,1,0,'Order Date',9,10,0,1,0,0,0,0,0,0,'order_date',NULL,0,14,0,1,'2020-10-12 06:05:43','2022-04-14 21:14:13'),(11,1,0,'Order Sever ',9,10,2,1,0,0,0,0,0,0,'order_server',NULL,0,15,0,1,'2020-10-12 06:07:55','2021-07-14 21:26:55'),(12,1,5,'One Line',10,10,0,1,0,0,0,0,0,0,NULL,NULL,0,13,0,1,'2020-10-12 06:09:13','2021-07-14 21:26:55'),(13,1,0,'Customer Name',10,10,0,1,0,1,0,0,0,0,'customer_name',NULL,0,19,0,1,'2020-10-12 06:27:07','2021-07-14 21:26:55'),(14,1,0,'Customer Tel.',10,10,0,1,0,1,0,0,0,0,'customer_tel',NULL,0,20,0,1,'2020-10-12 06:28:01','2021-07-14 21:26:55'),(15,1,0,'Customer Address',10,10,0,1,0,1,0,0,0,0,'customer_address',NULL,0,21,0,1,'2020-10-12 06:30:16','2021-07-14 21:26:55'),(16,1,5,'Single Line',10,10,0,1,0,0,0,0,0,0,NULL,NULL,0,23,0,1,'2020-10-12 06:25:58','2021-07-29 14:37:40'),(17,1,0,'Item Header',9,10,0,1,0,0,0,0,0,0,'item_header',NULL,0,24,0,1,'2020-10-12 06:19:30','2021-07-29 14:37:40'),(18,1,0,'Item List111',10,13,1,0.69,0.1,1,0,0,0,0,'item_list',NULL,0,25,0,1,'2020-10-12 06:19:30','2022-06-23 20:08:14'),(19,1,0,'Modify List',9,10,1,1,0.5,0,0,0,0,0,'modify_list',NULL,0,27,0,1,'2020-10-12 06:19:30','2022-06-23 20:08:14'),(20,1,5,'Single Line',10,10,0,1,0,0,0,0,0,0,NULL,NULL,0,29,0,1,'2020-10-12 06:31:13','2022-04-29 16:16:49'),(21,1,0,'Subtotal',10,10,2,1,0,0,0,0,0,0,'order_subtotal_group',NULL,0,30,0,1,'2020-10-12 06:34:03','2022-04-29 16:16:49'),(22,1,0,'Tax',10,10,2,1,0,0,0,0,0,0,'payment_tax',NULL,0,31,0,0,'2020-10-12 06:34:03','2022-04-29 16:16:49'),(23,1,0,'Total Amount',10,10,2,1,0,1,0,0,0,0,'order_total_cdp',NULL,0,34,0,0,'2020-10-12 06:35:11','2022-04-29 16:16:49'),(24,1,5,'Single Line',10,10,0,1,0,0,0,0,0,0,NULL,NULL,0,35,0,1,'2020-10-12 06:36:01','2022-04-29 16:16:49'),(25,1,0,'Payment Type',10,10,1,1,0,1,0,0,0,0,'payment_type',NULL,0,36,0,1,'2020-10-12 06:38:35','2022-04-29 16:16:49'),(26,1,0,'Payment Breakdown',10,10,1,1,0,0,0,0,0,0,'payment_breakdown',NULL,0,38,0,1,'2020-10-12 06:40:13','2022-04-29 16:16:49'),(27,1,2,'QR Code',10,10,1,0.5,0,0,0,0,0,0,'uploads/20201116/16055432541621632157.jpg',NULL,0,41,0,1,'2020-10-12 06:42:27','2022-04-29 16:16:49'),(28,1,0,'Tips Suggest',10,10,1,1,0,0,0,0,0,0,'Payment_qrcode',NULL,0,39,0,0,'2020-10-12 06:43:10','2023-03-13 15:03:04'),(29,1,1,'Foot Text',10,10,1,1,0,0,0,0,0,0,'online order: demo.uorder.io',NULL,0,40,0,0,'2020-10-12 06:44:43','2022-04-29 16:16:49'),(30,1,3,'Footer Space',10,10,0,1,0,0,0,0,0,0,NULL,NULL,0,42,0,1,'2020-10-12 06:49:00','2022-04-29 16:16:49'),(33,1,0,'Customer Notes',10,10,0,1,0,1,0,0,0,0,'customer_notes',NULL,0,18,1,1,'2020-10-21 20:25:34','2021-07-14 21:26:55'),(58,4,0,'Order Type',16,10,0,1,0,0,0,0,0,0,'order_type',NULL,0,2,1,1,'2020-10-22 00:23:05','2021-07-14 15:00:42'),(59,4,0,'Ticket No.',14,10,0,1,0,0,0,0,0,0,'ticket',NULL,0,4,1,1,'2020-10-22 00:28:58','2021-07-14 15:00:42'),(60,4,0,'Store Tel.',10,10,1,1,0,0,0,0,0,0,'store_tel',NULL,0,9,1,1,'2020-10-22 00:28:58','2021-07-14 15:00:42'),(61,4,5,'Single Line',10,10,1,1,0,0,0,0,0,0,'order_server',NULL,0,15,1,1,'2020-10-22 00:28:58','2021-07-14 15:00:42'),(62,4,5,'Single Line',13,10,1,1,0,0,0,0,0,0,'item_header',NULL,0,10,1,1,'2020-10-22 00:28:58','2021-07-14 15:00:42'),(63,4,0,'Item2',13,10,1,0.76,0.1,1,0,0,0,0,'item_list_separate_price',NULL,0,17,1,1,'2020-10-22 00:28:58','2022-03-09 20:35:59'),(64,4,0,'Modifier',13,10,1,1,0,0,0,0,0,0,'modify_list',NULL,0,18,1,1,'2020-10-22 00:28:58','2022-02-18 16:17:24'),(65,4,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,20,1,0,'2020-10-22 00:28:58','2021-07-14 19:51:59'),(66,4,0,'Subtotal',10,10,2,1,0,0,0,0,0,0,'order_subtotal_group',NULL,0,22,1,1,'2020-10-22 00:28:58','2021-08-03 19:42:35'),(77,6,0,'Order Type',14,10,0,1,0,1,0,0,0,0,'order_type',NULL,0,2,1,1,'2020-10-22 18:45:31','2021-07-14 14:18:04'),(78,6,0,'Ticket',13,10,0,1,0,1,0,0,0,0,'ticket',NULL,0,3,1,1,'2020-10-22 18:45:31','2021-07-14 14:18:04'),(79,6,0,'Order Date',10,10,0,1,0,0,0,0,0,0,'order_date',NULL,0,11,1,1,'2020-10-22 18:45:31','2022-04-26 20:10:27'),(80,6,0,'Server',10,10,2,1,0,0,0,0,0,0,'order_server',NULL,0,12,1,1,'2020-10-22 18:45:31','2022-06-23 20:10:37'),(81,6,0,'Item Header',9,10,1,1,0,0,0,0,0,0,'item_header',NULL,0,17,1,1,'2020-10-22 18:45:31','2022-02-17 15:23:03'),(82,6,0,'Itemchufang',10,11,1,0.79,0,1,0,3,0,0,'item_to_kitchen_list',NULL,0,18,1,1,'2020-10-22 18:45:31','2022-06-23 20:09:08'),(83,6,0,'Modifier',10,10,1,1,0,0,0,0,0,0,'modify_list',NULL,0,19,1,1,'2020-10-22 18:48:14','2022-04-26 20:10:27'),(90,8,1,'remove Item',25,20,1,1,0,0,0,0,0,0,'Cancel Item',NULL,0,999,1,1,'2020-10-22 18:51:43','2021-06-16 17:35:02'),(91,8,0,'order info',20,20,1,1,0,0,0,0,0,0,'order_type',NULL,0,999,1,1,'2020-10-22 18:51:43','2021-06-16 17:35:02'),(92,8,0,'ticket info',20,20,1,1,0,0,0,0,0,0,'ticket',NULL,0,999,1,1,'2020-10-22 18:51:43','2021-06-16 17:35:02'),(93,8,0,'item header',10,20,1,1,0,0,0,0,0,0,'item_header',NULL,0,999,1,1,'2020-10-22 18:51:43','2021-06-16 17:35:02'),(94,8,0,'item info',10,20,1,1,0,0,0,0,0,0,'item_list',NULL,0,999,1,1,'2020-10-22 18:51:43','2021-06-16 17:35:02'),(95,8,0,'modifier info',10,20,1,1,0,0,0,0,0,0,'modify_list',NULL,0,999,1,1,'2020-10-22 18:51:43','2021-06-16 17:35:02'),(96,9,0,'Order Type',10,10,0,1,0,0,0,0,0,0,'order_date',NULL,0,10,1,1,'2020-10-22 21:43:49','2022-06-23 20:15:15'),(97,9,0,'Ticket Number',10,10,2,1,0,0,0,0,0,0,'order_server',NULL,0,11,1,1,'2020-10-22 21:43:49','2022-06-23 20:15:15'),(103,9,3,'Top Space',16,10,1,1,0,0,0,0,0,0,'',NULL,0,1,1,1,'2020-10-22 23:46:30','2022-06-23 20:13:56'),(104,9,0,'Subtotal 1',10,10,1,1,0,0,0,0,0,0,'order_subtotal',NULL,0,15,1,0,'2020-10-22 23:46:30','2022-06-23 20:15:15'),(105,9,0,'Tips Suggest',10,10,1,1,0,0,0,0,0,0,'payment_tips_suggest_box',NULL,0,22,1,0,'2020-10-22 23:46:30','2023-03-04 23:54:19'),(119,6,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,10,1,1,'2020-10-23 00:07:34','2022-04-26 20:10:27'),(120,9,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,14,1,1,'2020-10-23 00:10:56','2022-06-23 20:15:15'),(122,9,0,'Subtotal 2',10,10,2,1,0,0,0,0,0,0,'payment_subtotal',NULL,0,16,1,1,'2020-10-23 00:15:34','2022-06-23 20:15:15'),(123,9,0,'Tax',10,10,2,1,0,0,0,0,0,0,'payment_tax',NULL,0,17,1,0,'2020-10-23 00:15:34','2022-06-23 20:15:15'),(124,9,0,'Total Amount',10,10,2,1,0,0,0,0,0,0,'payment_total_amount',NULL,0,18,1,0,'2020-10-23 00:15:34','2022-06-23 20:15:15'),(125,9,0,'Payment Breakdown',10,10,1,1,0,1,0,0,0,0,'payment_type',NULL,0,19,1,0,'2020-10-23 00:15:34','2022-06-23 20:15:15'),(126,9,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,20,1,1,'2020-10-23 00:15:34','2022-06-23 20:15:15'),(128,4,3,'Top Space',16,10,0,1,0,0,0,0,0,0,'CheckList','123',0,0,1,1,'2020-10-23 02:37:09','2021-07-14 14:40:11'),(130,6,3,'Top Space',16,10,1,1,0,0,0,0,0,0,'',NULL,0,1,1,1,'2020-10-23 02:37:48','2021-06-21 21:01:39'),(134,1,0,'Payment Method',10,10,1,1,0,0,0,0,0,0,'payment_method',NULL,0,37,1,0,'2020-10-29 00:55:01','2022-04-29 16:16:49'),(135,12,0,'2',16,20,1,1,0,0,0,0,0,0,'order_type',NULL,0,999,1,1,'2020-10-29 18:56:17','2021-06-16 17:35:02'),(136,13,0,'33',16,20,1,1,0,0,0,0,0,0,'order_type',NULL,0,999,1,1,'2020-10-29 18:58:34','2021-06-16 17:35:02'),(137,1,0,'Station Name',9,10,0,1,0,0,0,0,0,0,'order_station',NULL,0,17,1,0,'2020-10-29 21:22:08','2023-03-13 15:03:04'),(138,1,0,'Order ID',9,10,2,1,0,0,0,0,0,0,'order_id',NULL,0,16,1,0,'2020-10-29 21:22:09','2023-03-13 15:03:04'),(139,6,0,'Station Name',10,10,0,1,0,0,0,0,0,0,'order_station',NULL,0,14,1,1,'2020-10-30 01:14:59','2022-06-23 20:11:07'),(140,6,0,'Order ID',10,10,2,1,0,0,0,0,0,0,'order_id',NULL,0,13,1,1,'2020-10-30 01:14:59','2022-06-23 20:11:07'),(142,6,3,'Space',10,10,1,1,0,0,2,0,0,0,'order_id',NULL,0,6,1,1,'2020-10-30 01:14:59','2021-06-21 21:13:34'),(143,6,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,20,1,1,'2020-10-30 01:35:18','2022-02-17 15:23:03'),(149,6,0,'Printer Name',10,10,0,1,0,0,0,0,0,0,'printer_name',NULL,0,21,1,1,'2020-10-30 01:55:47','2022-02-17 15:23:03'),(150,6,5,'Single Line',10,10,1,1,0,0,0,0,0,0,'--END--',NULL,0,16,1,1,'2020-10-30 01:55:47','2022-02-17 15:23:03'),(151,6,3,'Space',16,10,1,1,0,0,0,0,0,0,'',NULL,0,15,1,0,'2020-10-30 02:28:08','2022-06-23 20:12:01'),(152,14,0,'Order Date',10,10,1,1,0,0,0,0,0,0,'order_date',NULL,0,4,1,0,'2020-10-30 19:06:54','2021-11-16 15:22:21'),(154,9,0,'Store Name',11,10,1,1,0,0,0,0,0,0,'store_name',NULL,0,5,1,1,'2020-10-30 20:45:24','2022-06-23 20:15:15'),(155,9,0,'Signature Title',10,10,0,1,0,0,0,0,0,0,'signature',NULL,0,24,1,0,'2020-10-30 20:45:24','2023-03-04 23:54:19'),(156,9,3,'Space',16,10,1,1,0,0,0,0,0,0,'',NULL,0,26,1,0,'2020-10-30 20:45:24','2023-03-04 23:54:19'),(157,9,0,'Store Address',10,10,1,1,0,0,0,0,0,0,'store_address',NULL,0,6,1,1,'2020-10-30 20:47:32','2022-06-23 20:15:15'),(158,9,0,'Store Address (Optional)',10,10,1,1,0,0,0,0,0,0,'store_address_option',NULL,0,7,1,1,'2020-10-30 20:47:33','2022-06-23 20:15:15'),(159,9,0,'Store Tel.',10,10,1,1,0,0,0,0,0,0,'store_tel',NULL,0,8,1,1,'2020-10-30 20:47:33','2022-06-23 20:15:15'),(160,9,5,'Single Line',9,10,1,1,0,0,0,0,0,0,'',NULL,0,9,1,1,'2020-10-30 20:48:31','2022-06-23 20:15:15'),(161,9,0,'Station Name',10,10,0,1,0,0,0,0,0,0,'order_station',NULL,0,13,1,1,'2020-10-30 20:53:23','2022-06-23 20:15:15'),(162,9,0,'Order ID',10,10,2,1,0,0,0,0,0,0,'order_id',NULL,0,12,1,1,'2020-10-30 20:53:23','2022-06-23 20:15:15'),(163,9,0,'Order Type',13,10,0,1,0,1,0,0,0,0,'order_type',NULL,0,2,1,1,'2020-10-30 20:53:23','2022-06-23 20:14:15'),(164,9,0,'Credit Card Info',10,10,0,1,0,0,0,0,0,0,'credit_card_info',NULL,0,21,1,1,'2020-10-31 00:41:49','2022-06-23 20:15:15'),(165,9,1,'Policy',10,10,1,1,0,0,0,0,0,0,'I agree to pay above total amount    according to card issuer agreement.','I agree to pay above total amount according to card issuer agreement',0,27,1,0,'2020-10-31 00:51:08','2023-03-04 23:54:19'),(171,16,0,'Order Type',16,10,0,1,0,1,0,0,0,0,'order_type',NULL,0,1,1,1,'2020-11-03 22:38:59','2021-07-14 14:26:29'),(172,16,0,'Ticket Number',13,10,0,1,0,1,0,0,0,0,'ticket',NULL,0,3,1,1,'2020-11-03 22:38:59','2021-06-21 21:53:42'),(173,16,5,'Single Line',9,10,0,1,0,0,0,0,0,0,'order_date',NULL,0,10,1,1,'2020-11-03 22:38:59','2021-07-14 19:44:28'),(175,16,0,'Order ID',10,10,2,1,0,0,0,0,0,0,'order_id',NULL,0,13,1,1,'2020-11-03 22:38:59','2021-07-14 19:44:28'),(176,16,0,'Station Name',10,10,0,1,0,0,0,0,0,0,'order_station',NULL,0,14,1,1,'2020-11-03 22:38:59','2021-07-14 19:44:28'),(177,16,0,'Customer Note',10,10,0,1,0,1,0,0,0,0,'customer_notes',NULL,0,16,1,1,'2020-11-03 22:38:59','2021-07-14 19:46:29'),(178,16,0,'Customer Name',10,10,0,1,0,1,0,0,0,0,'customer_name',NULL,0,17,1,1,'2020-11-03 22:38:59','2021-07-14 19:46:29'),(179,16,0,'Customer Tel.',10,10,0,1,0,1,0,0,0,0,'customer_tel',NULL,0,18,1,1,'2020-11-03 22:38:59','2021-07-14 19:46:29'),(180,16,0,'Customer Address',10,10,0,1,0,1,0,0,0,0,'customer_address',NULL,0,19,1,1,'2020-11-03 22:38:59','2021-07-14 19:46:29'),(181,16,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,20,1,1,'2020-11-03 22:38:59','2021-07-14 19:44:28'),(182,16,0,'Item Header',9,10,1,1,0,0,0,0,0,0,'item_header',NULL,0,21,1,1,'2020-11-03 22:38:59','2021-07-14 19:46:46'),(183,16,0,'Item',10,10,1,1,0.1,1,0,0,0,0,'item_list_separate_price',NULL,0,22,1,1,'2020-11-03 22:38:59','2021-12-17 16:13:39'),(184,16,0,'Modifier',10,10,1,1,0,0,0,0,0,0,'modify_list',NULL,0,23,1,1,'2020-11-03 22:38:59','2021-07-14 19:44:28'),(185,16,0,'Subtotal',10,10,2,1,0,0,0,0,0,0,'order_subtotal_group',NULL,0,26,1,1,'2020-11-03 22:38:59','2021-08-03 19:42:48'),(186,16,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,29,1,1,'2020-11-03 22:39:00','2021-07-14 14:31:01'),(187,16,0,'Printer Name',10,10,1,1,0,0,0,0,0,0,'printer_name',NULL,0,31,1,1,'2020-11-03 22:39:00','2021-11-02 17:40:13'),(188,16,1,'Title ',16,10,0,1,0,1,0,0,0,0,'PACKAGE','Packer',0,0,1,1,'2020-11-03 23:41:07','2021-07-14 14:26:29'),(189,14,0,'Ticket Number',10,10,2,0.8,0,1,0,0,0,0,'ticket',NULL,0,0,1,1,'2020-11-04 00:33:59','2021-11-10 22:08:09'),(190,14,0,'Customer Name',10,10,1,1,0,0,0,0,0,0,'customer_name',NULL,0,1,1,1,'2020-11-04 00:33:59','2021-06-21 21:51:42'),(191,14,0,'Item888',10,10,0,1.3,0,1,0,0,0,0,'label_list_merge_modify',NULL,0,2,1,1,'2020-11-04 00:33:59','2023-02-21 21:07:37'),(192,14,0,'Modifier',9,10,0,1,0,0,0,0,0,0,'modify_list',NULL,0,3,1,1,'2020-11-04 00:33:59','2021-11-16 15:22:17'),(193,16,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,24,1,1,'2020-11-04 01:16:15','2021-07-14 19:44:28'),(194,17,3,'Top Space',16,10,1,1,0,0,1,0,0,0,'order_id',NULL,0,0,1,1,'2020-11-04 01:25:48','2021-06-21 22:01:30'),(195,17,0,'Store Name',10,10,1,1,0,1,0,0,0,0,'store_name',NULL,0,6,1,1,'2020-11-04 01:48:54','2021-07-14 21:29:36'),(196,17,0,'Store Address',10,10,1,1,0,0,0,0,0,0,'store_address',NULL,0,7,1,1,'2020-11-04 01:48:54','2021-07-14 21:29:36'),(197,17,0,'Store Address (Optional)',10,10,1,1,0,0,0,0,0,0,'store_address_option',NULL,0,8,1,1,'2020-11-04 01:48:54','2021-07-14 21:29:36'),(198,17,0,'Store Tel.',10,10,1,1,0,0,0,0,0,0,'store_tel',NULL,0,9,1,1,'2020-11-04 01:48:54','2021-07-14 21:29:36'),(199,17,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,10,1,1,'2020-11-04 01:48:54','2021-07-14 21:29:36'),(200,17,0,'Order Date',10,10,0,1,0,0,0,0,0,0,'order_date',NULL,0,11,1,1,'2020-11-04 01:48:54','2021-07-14 21:29:36'),(201,17,0,'Order Sever ',10,10,2,1,0,0,0,0,0,0,'order_server',NULL,0,12,1,0,'2020-11-04 01:48:54','2021-07-14 21:29:36'),(202,17,0,'Order ID',10,10,2,1,0,0,0,0,0,0,'order_id',NULL,0,13,1,1,'2020-11-04 01:48:54','2021-07-14 21:29:36'),(203,17,0,'Station Name',10,10,0,1,0,0,0,0,0,0,'order_station',NULL,0,14,1,0,'2020-11-04 01:48:54','2021-07-14 21:29:36'),(204,17,5,'Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,16,1,1,'2020-11-04 01:48:54','2021-07-14 21:29:36'),(205,17,0,'Ticket Number',13,10,0,1,0,1,0,0,0,0,'ticket',NULL,0,4,1,1,'2020-11-04 01:48:54','2021-07-14 21:29:36'),(207,17,3,'Space',16,10,1,1,0,0,0,0,0,0,'',NULL,0,15,1,1,'2020-11-04 01:48:54','2021-07-14 21:29:36'),(208,17,0,'Subtotal',10,10,1,1,0,0,0,0,0,0,'payment_subtotal',NULL,0,19,1,0,'2020-11-04 01:48:54','2021-07-14 21:29:36'),(209,17,0,'Tax',10,10,1,1,0,0,0,0,0,0,'payment_tax',NULL,0,20,1,0,'2020-11-04 01:48:54','2021-07-14 21:29:36'),(211,17,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,21,1,0,'2020-11-04 01:48:54','2021-07-14 21:29:36'),(212,17,0,'Credit Card Info',10,10,1,1,0,0,0,0,0,0,'credit_card_info',NULL,0,22,1,0,'2020-11-04 01:48:54','2021-07-14 21:29:36'),(213,17,0,'Void Payment',10,10,0,1,0,0,0,0,0,0,'payment_void',NULL,0,23,1,1,'2020-11-04 01:48:54','2021-07-14 21:29:36'),(216,9,0,'Ticket number',16,10,0,1,0,1,0,0,0,0,'ticket',NULL,0,3,1,1,'2020-11-04 01:54:30','2022-06-23 20:14:15'),(219,20,3,'Space',16,10,1,1,0,0,0,0,0,0,'',NULL,0,0,1,1,'2020-11-04 20:37:51','2021-06-21 22:08:55'),(221,22,3,'Top Space',16,10,1,1,0,0,1,0,0,0,'',NULL,0,0,1,1,'2020-11-04 20:39:36','2021-06-21 22:13:24'),(268,22,1,'Title',16,10,1,1,0,1,0,0,0,0,'****REFUND****','Refund',0,1,1,1,'2020-11-05 01:31:58','2021-07-14 19:39:58'),(269,22,0,'Store Name',10,10,1,1,0,0,0,0,0,0,'store_name',NULL,0,3,1,1,'2020-11-05 01:31:58','2021-07-14 22:17:04'),(270,22,0,'Store Address',10,10,1,1,0,0,0,0,0,0,'store_address',NULL,0,4,1,1,'2020-11-05 01:31:58','2021-07-14 22:17:04'),(271,22,0,'Store Address (Optional)',10,10,1,1,0,0,0,0,0,0,'store_address_option',NULL,0,5,1,1,'2020-11-05 01:31:58','2021-07-14 22:17:04'),(272,22,0,'Store Tel.',10,10,1,1,0,0,0,0,0,0,'store_tel',NULL,0,6,1,1,'2020-11-05 01:31:58','2021-07-14 22:17:04'),(273,22,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,7,1,1,'2020-11-05 01:31:58','2021-07-14 22:17:04'),(275,22,0,'Ticket Number',10,10,0,1,0,0,0,0,0,0,'ticket',NULL,0,9,1,1,'2020-11-05 01:31:58','2021-07-14 22:17:04'),(278,22,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,15,1,1,'2020-11-05 01:31:58','2021-07-14 22:17:04'),(280,22,0,'Total Amount',10,10,1,1,0,0,0,0,0,0,'payment_total_amount',NULL,0,12,1,0,'2020-11-05 01:31:58','2021-07-14 22:17:04'),(281,22,0,'Order Station',10,10,0,1,0,0,0,0,0,0,'order_station',NULL,0,13,1,0,'2020-11-05 01:31:58','2021-07-14 22:17:04'),(283,22,0,'Order ID',10,10,2,1,0,0,0,0,0,0,'order_id',NULL,0,8,1,1,'2020-11-05 01:37:29','2021-07-14 22:17:04'),(285,22,3,'Space',16,10,1,1,0,0,2,0,0,0,'',NULL,0,16,1,1,'2020-11-05 01:43:38','2021-07-14 22:17:04'),(286,25,3,'Top Space',16,10,1,1,0,0,0,0,0,0,'',NULL,0,0,1,1,'2020-11-05 02:01:25','2021-06-21 22:19:09'),(287,25,1,'Title',16,10,1,1,0,0,0,0,0,0,'****VOID ORDER****','Void Order',0,1,1,1,'2020-11-05 02:01:25','2021-07-14 19:16:00'),(288,25,0,'Order Type',16,10,0,1,0,0,0,0,0,0,'order_type',NULL,0,2,1,1,'2020-11-05 02:01:25','2021-07-14 19:16:16'),(289,25,0,'Ticket Number',13,10,0,1,0,0,0,0,0,0,'ticket',NULL,0,3,1,1,'2020-11-05 02:01:25','2021-07-14 19:16:21'),(290,25,0,'Store Name',10,10,1,1,0,0,0,0,0,0,'store_name',NULL,0,4,1,0,'2020-11-05 02:01:25','2021-06-21 22:19:44'),(291,25,0,'Store Address',10,10,1,1,0,0,0,0,0,0,'store_address',NULL,0,5,1,0,'2020-11-05 02:01:25','2021-06-21 22:19:44'),(292,25,0,'Store Address (Optional)',10,10,1,1,0,0,0,0,0,0,'store_address_option',NULL,0,6,1,0,'2020-11-05 02:01:25','2021-06-21 22:19:52'),(293,25,0,'Store Tel.',10,10,1,1,0,0,0,0,0,0,'store_tel',NULL,0,7,1,0,'2020-11-05 02:01:25','2021-06-21 22:21:08'),(294,25,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,9,1,1,'2020-11-05 02:01:25','2021-07-14 19:16:33'),(295,25,0,'Order Date',10,10,0,1,0,0,0,0,0,0,'order_date',NULL,0,10,1,1,'2020-11-05 02:01:25','2021-06-22 18:19:46'),(296,25,0,'Order Server',10,10,2,1,0,0,0,0,0,0,'order_server',NULL,0,11,1,1,'2020-11-05 02:01:25','2021-06-22 18:19:46'),(297,25,0,'Order ID',10,10,2,1,0,0,0,0,0,0,'order_id',NULL,0,12,1,1,'2020-11-05 02:01:25','2021-06-22 18:19:46'),(298,25,0,'Order Station',10,10,0,1,0,0,0,0,0,0,'order_station',NULL,0,13,1,1,'2020-11-05 02:01:25','2021-06-22 18:19:46'),(299,25,0,'Customer Name',10,10,1,1,0,0,0,0,0,0,'customer_name',NULL,0,14,1,1,'2020-11-05 02:01:25','2021-06-22 18:19:46'),(300,25,0,'Customer Address',10,10,1,1,0,0,0,0,0,0,'customer_address',NULL,0,15,1,1,'2020-11-05 02:01:25','2021-06-22 18:19:46'),(301,25,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,16,1,1,'2020-11-05 02:01:25','2021-06-22 18:19:46'),(303,25,0,'Item',10,10,1,1,0,8,0,0,0,0,'item_to_kitchen_list_no_price',NULL,0,18,1,1,'2020-11-05 02:01:25','2021-07-19 17:36:10'),(305,25,3,'Space',16,10,1,1,0,0,0,0,0,0,'',NULL,0,21,1,1,'2020-11-05 02:01:25','2021-08-10 14:22:58'),(306,17,1,'Title',16,10,1,1,0,1,0,0,0,0,'****VOID PAYMENT****','Void Payment',0,2,1,1,'2020-11-05 02:08:17','2021-07-14 14:38:57'),(307,17,0,'Item',10,10,1,1,0,0,0,0,0,0,'item_list_no_price',NULL,0,17,1,0,'2020-11-05 02:08:17','2021-07-14 21:29:36'),(308,17,0,'Modifier',10,10,1,1,0,0,0,0,0,0,'modify_list',NULL,0,18,1,0,'2020-11-05 02:08:17','2021-07-14 21:29:36'),(309,17,3,'Space',16,10,1,1,0,0,0,0,0,0,'',NULL,0,24,1,1,'2020-11-05 04:10:55','2021-07-14 21:29:36'),(310,25,0,'Modifier',10,10,1,1,0,0,0,0,0,0,'modify_list',NULL,0,19,1,1,'2020-11-05 20:16:07','2021-07-14 19:17:27'),(312,20,0,'Order Type',16,10,0,1,0,0,0,0,0,0,'order_type',NULL,0,2,1,1,'2020-11-06 22:31:08','2021-07-14 19:13:04'),(313,20,0,'Ticket Number',13,10,0,1,0,0,0,0,0,0,'ticket',NULL,0,3,1,1,'2020-11-06 22:31:08','2021-07-14 19:13:04'),(314,20,0,'Order Date',10,10,0,1,0,0,0,0,0,0,'order_date',NULL,0,6,1,1,'2020-11-06 22:31:08','2021-06-21 22:10:22'),(315,20,0,'Order Server',10,10,2,1,0,0,0,0,0,0,'order_server',NULL,0,7,1,1,'2020-11-06 22:31:08','2021-06-21 22:10:22'),(316,20,0,'Order ID',10,10,2,1,0,0,0,0,0,0,'order_id',NULL,0,8,1,1,'2020-11-06 22:31:08','2021-06-21 22:10:22'),(317,20,0,'Order Station',10,10,0,1,0,0,0,0,0,0,'order_station',NULL,0,9,1,1,'2020-11-06 22:31:08','2021-06-21 22:11:09'),(318,20,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,10,1,1,'2020-11-06 22:31:08','2021-07-14 19:13:34'),(319,20,0,'Item',10,10,1,1,0,8,0,0,0,0,'item_to_kitchen_list_no_price',NULL,0,12,1,1,'2020-11-06 22:31:08','2021-07-19 17:35:58'),(320,20,0,'Modifier',10,10,1,1,0,0,0,0,0,0,'modify_list',NULL,0,13,1,1,'2020-11-06 22:31:08','2021-07-14 19:24:35'),(321,20,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,15,1,1,'2020-11-06 22:31:08','2021-08-10 14:06:34'),(322,20,0,'Printer Name',10,10,0,1,0,0,0,0,0,0,'printer_name',NULL,0,16,1,1,'2020-11-06 22:31:08','2021-08-10 14:06:34'),(324,20,3,'Space',16,10,1,1,0,0,0,0,0,0,'',NULL,0,17,1,1,'2020-11-06 22:31:08','2021-08-10 14:06:34'),(325,20,1,'Title ',16,10,1,1,0,0,0,0,0,0,'***VOID ITEM****','Void Item',0,1,1,1,'2020-11-06 22:32:01','2021-06-21 22:12:49'),(326,22,0,'Refund Information',10,10,0,1,0,0,0,0,0,0,'payment_refund',NULL,0,14,1,1,'2020-11-17 03:47:18','2021-07-14 22:17:04'),(327,22,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,11,1,1,'2020-11-17 03:53:08','2021-07-14 22:17:04'),(328,9,0,'Signature Line',10,10,0,1,0,0,0,0,0,0,'signature_on_screen',NULL,0,25,1,0,'2020-11-17 21:38:36','2023-03-04 23:54:19'),(330,1,0,'Note',13,10,0,1,0,1,0,0,0,0,'order_notes',NULL,0,28,1,1,'2020-11-18 03:45:58','2022-04-29 16:16:49'),(332,6,0,'Table ID',12,10,2,1,0,2,0,0,0,0,'table',NULL,0,4,1,1,'2020-12-02 21:40:25','2021-07-14 14:18:04'),(333,6,3,'Space',16,10,1,1,0,0,2,0,0,0,'',NULL,0,5,1,1,'2020-12-02 21:41:49','2021-07-14 14:18:04'),(334,20,5,'Single Line',10,10,1,1,0,0,0,0,0,0,'',NULL,0,5,1,1,'2020-12-03 00:55:25','2021-07-14 19:24:24'),(336,16,0,'Order Date',10,10,0,1,0,0,0,0,0,0,'order_date',NULL,0,11,1,1,'2020-12-03 01:35:56','2021-07-14 19:44:28'),(337,17,3,'Space',16,10,1,1,0,0,0,0,0,0,'',NULL,0,1,1,1,'2020-12-03 02:19:29','2021-07-14 14:38:57'),(338,9,3,'Space',10,10,1,1,0,0,0,0,0,0,'',NULL,0,0,1,1,'2020-12-03 02:23:06','2022-06-23 20:13:56'),(340,1,3,'Space',16,10,1,1,0,0,0,0,0,0,'',NULL,0,7,1,1,'2020-12-11 05:09:28','2021-07-21 20:43:28'),(341,16,0,'Order Notes',13,10,1,1,0,1,0,0,0,0,'order_notes',NULL,0,9,1,1,'2020-12-11 05:10:09','2021-07-14 19:44:28'),(360,16,0,'Tax',10,10,2,1,0,0,0,0,0,0,'payment_tax',NULL,0,27,1,0,'2020-12-16 06:11:36','2021-08-03 19:42:48'),(361,16,0,'Total Amount',10,10,2,1,0,1,0,0,0,0,'order_total',NULL,0,28,1,1,'2020-12-16 06:11:36','2021-07-14 19:53:24'),(362,16,0,'Store Name',10,10,1,1,0,0,0,0,0,0,'store_name',NULL,0,5,1,1,'2020-12-16 06:33:42','2021-07-14 14:26:29'),(363,16,0,'Store Address (Optional)',10,10,1,1,0,0,0,0,0,0,'store_address_option',NULL,0,7,1,1,'2020-12-16 06:33:42','2021-06-21 21:54:22'),(366,16,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,15,1,0,'2020-12-16 06:43:17','2021-07-14 19:44:28'),(367,16,0,'Store Tel.',10,10,1,1,0,0,0,0,0,0,'store_tel',NULL,0,8,1,1,'2020-12-16 06:56:07','2021-06-21 21:57:02'),(368,16,3,'Space',16,10,1,1,0,0,0,0,0,0,'',NULL,0,30,1,1,'2020-12-16 06:56:07','2021-07-14 14:31:01'),(370,4,0,'Store Name',10,10,1,1,0,0,0,0,0,0,'store_name',NULL,0,6,1,1,'2020-12-24 07:06:43','2021-07-14 15:00:42'),(371,4,0,'Store Address',10,10,1,1,0,0,0,0,0,0,'store_address',NULL,0,7,1,1,'2020-12-24 07:06:43','2021-07-14 15:00:42'),(372,4,0,'Store Address (Optional)',10,10,1,1,0,0,0,0,0,0,'store_address_option',NULL,0,8,1,1,'2020-12-24 07:06:43','2021-07-14 15:00:42'),(373,4,0,'Tax',10,10,2,1,0,0,0,0,0,0,'payment_tax',NULL,0,23,1,0,'2020-12-24 07:06:43','2021-08-03 19:42:35'),(374,4,0,'Total Amount',10,10,2,1,0,1,0,0,0,0,'order_total',NULL,0,24,1,1,'2020-12-24 07:06:43','2021-07-14 15:00:42'),(375,4,0,'Payment Method',10,10,1,1,0,0,0,0,0,0,'payment_method',NULL,0,25,1,1,'2020-12-24 07:06:43','2021-07-14 15:00:42'),(376,4,3,'Space',16,10,1,1,0,0,0,0,0,0,'',NULL,0,5,1,1,'2020-12-24 07:13:39','2021-07-14 15:00:42'),(377,4,0,'Order Note',13,10,0,1,0,1,0,0,0,0,'order_notes',NULL,0,19,1,1,'2020-12-24 07:13:40','2021-07-14 19:51:59'),(378,4,0,'Customer Name',10,10,0,1,0,1,0,0,0,0,'customer_name',NULL,0,12,1,1,'2021-03-21 20:02:15','2021-07-14 19:50:23'),(379,4,0,'Customer Address',10,10,0,1,0,1,0,0,0,0,'customer_address',NULL,0,13,1,1,'2021-03-21 20:02:15','2021-07-14 19:50:23'),(380,4,0,'Customer Tel.',10,10,0,1,0,1,0,0,0,0,'customer_tel',NULL,0,14,1,1,'2021-03-21 20:02:15','2021-07-14 19:50:24'),(381,4,0,'Customer Note',10,10,0,1,0,1,0,0,0,0,'customer_notes',NULL,0,11,1,1,'2021-03-21 20:15:12','2021-07-14 19:50:23'),(382,1,0,'Platform',16,10,0,1,0,1,0,0,0,0,'platform',NULL,0,4,1,1,'2021-03-21 21:12:44','2021-07-21 20:43:28'),(383,4,0,'Platform',16,10,0,1,0,0,0,0,0,0,'platform',NULL,0,3,1,1,'2021-03-21 21:13:08','2021-07-14 15:00:42'),(385,6,0,'Store Name',10,10,1,1,0,0,0,0,0,0,'store_name',NULL,0,7,1,1,'2021-03-22 17:57:44','2021-06-21 21:13:34'),(386,6,0,'Store Address',10,10,1,1,0,0,0,0,0,0,'store_address',NULL,0,8,1,1,'2021-03-22 17:57:44','2021-06-21 21:13:34'),(387,6,0,'Store Tel.',10,10,1,1,0,0,0,0,0,0,'store_tel',NULL,0,9,1,1,'2021-03-22 17:57:44','2021-06-21 21:14:45'),(388,16,0,'Platform',16,10,0,1,0,1,0,0,0,0,'platform',NULL,0,2,1,1,'2021-03-22 18:27:18','2021-07-14 14:26:29'),(389,4,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,26,1,1,'2021-03-22 19:51:51','2021-07-14 15:00:42'),(390,4,0,'Payment Type',10,10,1,1,0,0,0,0,0,0,'payment_type',NULL,0,27,1,1,'2021-03-22 19:51:51','2021-07-14 15:00:42'),(391,6,3,'Top Space',16,10,1,1,0,0,0,0,0,0,'',NULL,0,0,1,1,'2021-03-22 20:18:58','2021-06-21 21:01:34'),(392,16,3,'Space',13,10,0,1,0,0,0,0,0,0,'',NULL,0,4,1,1,'2021-03-22 20:28:57','2021-06-21 21:53:42'),(395,4,0,'Payment Breakdown',10,10,1,1,0,0,0,0,0,0,'payment_breakdown',NULL,0,28,1,1,'2021-03-23 20:17:07','2021-07-14 15:00:42'),(396,4,1,'Text',8,10,1,1,0,0,0,0,0,0,'Thank you for ordering. Hope to see you soon!',NULL,0,29,1,0,'2021-03-23 20:19:10','2021-07-14 15:00:42'),(397,1,0,'Table',13,10,2,1,0,1,0,0,0,0,'table',NULL,0,6,1,0,'2021-03-25 22:00:28','2023-03-13 15:03:04'),(399,4,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,21,1,1,'2021-03-29 20:23:34','2021-07-14 15:00:42'),(400,16,5,'Single Line',16,10,1,1,0,0,0,0,0,0,'',NULL,0,25,1,0,'2021-03-29 20:24:40','2021-07-14 19:43:51'),(440,1,0,'Printer Name',16,10,0,1,0,0,0,0,0,0,'printer_name','',0,43,1,0,'2021-06-18 18:36:16','2022-04-29 16:16:49'),(441,16,0,'Store Address',10,10,1,1,0,0,0,0,0,0,'store_address','',0,6,1,1,'2021-06-21 21:54:22','2021-07-14 14:26:29'),(442,25,3,'Space',16,10,1,1,0,0,0,0,0,0,'','',0,8,1,1,'2021-06-22 18:19:46','2021-06-22 18:19:46'),(443,6,0,'Order Send Date',10,10,2,1,0,0,0,0,0,0,'order_send_time','',0,22,1,1,'2021-06-22 19:05:49','2021-07-14 14:18:04'),(444,16,0,'Order Server',10,10,2,1,0,0,0,0,0,0,'order_server','',0,12,1,1,'2021-07-14 14:31:01','2021-07-14 19:44:28'),(445,4,0,'Item Header',9,10,0,1,0,0,0,0,0,0,'item_header','',0,16,1,1,'2021-07-14 14:50:58','2021-07-14 19:50:42'),(446,4,1,'Title',16,10,1,1,0,0,0,0,0,0,'','Check List',0,1,1,1,'2021-07-14 15:00:24','2021-07-14 15:00:42'),(447,17,3,'Space',16,10,1,1,0,0,0,0,0,0,'','',0,5,1,1,'2021-07-14 19:00:57','2021-07-14 21:29:36'),(448,25,0,'Item Header',9,10,1,1,0,0,0,0,0,0,'item_header','',0,17,1,1,'2021-07-14 19:17:06','2021-07-14 19:17:27'),(449,20,3,'Space',16,10,1,1,0,0,0,0,0,0,'','',0,4,1,1,'2021-07-14 19:23:50','2021-07-14 19:24:24'),(450,20,0,'Item Header',9,10,1,1,0,0,0,0,0,0,'item_header','',0,11,1,1,'2021-07-14 19:24:24','2021-07-14 19:24:35'),(451,9,3,'Space',16,10,1,1,0,0,0,0,0,0,'','',0,23,1,0,'2021-07-14 19:35:20','2023-03-04 23:54:19'),(452,1,0,'Split Ticket',13,10,0,1,0,1,0,0,0,0,'splited_ticket','',0,2,1,1,'2021-07-14 21:16:50','2021-09-28 18:19:01'),(454,17,0,'Split Ticket',13,10,0,1,0,1,0,0,0,0,'splited_ticket','',0,3,1,1,'2021-07-14 21:29:09','2021-07-14 21:29:36'),(455,22,0,'Ticket Number',13,10,0,1,0,0,0,0,0,0,'ticket','',0,2,1,0,'2021-07-14 22:16:18','2021-07-14 22:19:02'),(456,22,3,'Space',16,10,1,1,0,0,0,0,0,0,'','',0,10,1,1,'2021-07-14 22:17:04','2021-07-14 22:17:04'),(457,1,0,'Private Notes',10,10,0,1,0,1,0,0,0,0,'private_notes','',0,22,1,1,'2021-07-29 14:37:40','2021-07-29 14:37:40'),(458,9,0,'Merchant/ Customer',16,10,1,1,0,0,0,0,0,0,'payment_receipt_copy','',0,28,1,1,'2021-08-03 15:15:35','2022-06-23 20:15:16'),(459,20,0,'Notes',16,20,1,1,0,0,0,0,0,0,'order_void_notes','',0,14,1,1,'2021-08-10 14:06:34','2021-08-10 14:06:34'),(460,25,0,'Notes',16,20,1,1,0,0,0,0,0,0,'order_void_notes','',0,20,1,1,'2021-08-10 14:22:58','2021-08-10 14:22:58'),(461,1,0,'Order CDP',11,20,2,1,0,0,0,0,0,0,'order_total','',0,33,1,1,'2021-08-10 18:17:04','2022-04-29 16:16:49'),(507,1,0,'text',10,20,2,1,0,0,0,0,0,0,'order_subtotal_cdp','',0,32,1,0,'2021-09-22 20:21:37','2022-06-23 18:49:16'),(509,1,1,'AMEX',9,20,1,1,0,0,0,0,0,0,'','WE WARMLY WELCOME AMERICAN EXPRESS',0,44,1,1,'2021-11-04 20:11:12','2022-04-29 16:16:49'),(510,1,0,'tips',10,20,1,1,0,0,0,0,0,0,'tips_suggest_box','',0,45,1,0,'2021-12-27 19:54:56','2023-03-13 15:03:04'),(647,34,3,'Top Space',10,10,0,1,0,0,0,0,0,0,NULL,NULL,0,0,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(648,34,2,'Show logo',10,10,1,0.5,0,0,0,0,0,0,'uploads/20201105/1604607988932967930.png','uploads/20220429/16512510772146954485.jpg',0,1,0,0,'2022-06-23 19:40:47','2022-06-23 19:40:47'),(649,34,0,'Split Ticket',13,10,0,1,0,1,0,0,0,0,'splited_ticket','',0,2,1,1,'2022-06-23 19:40:47','2022-06-23 19:40:47'),(650,34,0,'Order Type',16,10,0,1,0,1,0,0,0,0,'order_type',NULL,0,3,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(651,34,0,'Platform',16,10,0,1,0,1,0,0,0,0,'platform',NULL,0,4,1,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(652,34,0,'Ticket Number',13,10,0,1,0,1,0,0,0,0,'ticket',NULL,0,5,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(653,34,0,'Table',13,10,2,1,0,1,0,0,0,0,'table',NULL,0,6,1,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(654,34,3,'Space',16,10,1,1,0,0,0,0,0,0,'',NULL,0,7,1,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(655,34,0,'Store Name',10,10,1,1,0,0,0,0,0,0,'store_name',NULL,0,8,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(656,34,0,'Store Address',10,10,1,1,0,0,0,0,0,0,'store_address',NULL,0,9,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(657,34,0,'Store Address (Optional)',10,10,1,1,0,0,0,0,0,0,'store_address_option',NULL,0,10,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(658,34,0,'Store Tel.',10,10,1,1,0,0,0,0,0,0,'store_tel',NULL,0,11,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(659,34,1,'Header Text',9,10,0,1,0,0,0,0,0,0,'(888)-885-8840',NULL,0,12,0,0,'2022-06-23 19:40:47','2022-06-23 19:40:47'),(660,34,5,'One Line',10,10,0,1,0,0,0,0,0,0,NULL,NULL,0,13,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(661,34,0,'Order Date',9,10,0,1,0,0,0,0,0,0,'order_date',NULL,0,14,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(662,34,0,'Order Sever ',9,10,2,1,0,0,0,0,0,0,'order_server',NULL,0,15,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(663,34,0,'Order ID',9,10,2,1,0,0,0,0,0,0,'order_id',NULL,0,16,1,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(664,34,0,'Station Name',9,10,0,1,0,0,0,0,0,0,'order_station',NULL,0,17,1,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(665,34,0,'Customer Notes',10,10,0,1,0,1,0,0,0,0,'customer_notes',NULL,0,18,1,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(666,34,0,'Customer Name',10,10,0,1,0,1,0,0,0,0,'customer_name',NULL,0,19,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(667,34,0,'Customer Tel.',10,10,0,1,0,1,0,0,0,0,'customer_tel',NULL,0,20,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(668,34,0,'Customer Address',10,10,0,1,0,1,0,0,0,0,'customer_address',NULL,0,21,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(669,34,0,'Private Notes',10,10,0,1,0,1,0,0,0,0,'private_notes','',0,22,1,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(670,34,5,'Single Line',10,10,0,1,0,0,0,0,0,0,NULL,NULL,0,23,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(671,34,0,'Item Header',9,10,0,1,0,0,0,0,0,0,'item_header',NULL,0,24,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(672,34,0,'Item List111',12,13,1,0.69,0.1,1,0,0,0,0,'item_list',NULL,0,25,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(673,34,0,'Modify List',10,10,1,1,0.5,4,0,0,0,0,'modify_list',NULL,0,27,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(674,34,0,'Note',13,10,0,1,0,1,0,0,0,0,'order_notes',NULL,0,28,1,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(675,34,5,'Single Line',10,10,0,1,0,0,0,0,0,0,NULL,NULL,0,29,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(676,34,0,'Subtotal',10,10,2,1,0,0,0,0,0,0,'order_subtotal_group',NULL,0,30,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(677,34,0,'Tax',10,10,2,1,0,0,0,0,0,0,'payment_tax',NULL,0,31,0,0,'2022-06-23 19:40:47','2022-06-23 19:40:47'),(678,34,0,'text',10,20,2,1,0,0,0,0,0,0,'order_subtotal_cdp','',0,32,1,0,'2022-06-23 19:40:47','2022-06-23 19:40:47'),(679,34,0,'Order CDP',11,20,2,1,0,0,0,0,0,0,'order_total','',0,33,1,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(680,34,0,'Total Amount',10,10,2,1,0,1,0,0,0,0,'order_total_cdp',NULL,0,34,0,0,'2022-06-23 19:40:47','2022-06-23 19:40:47'),(681,34,5,'Single Line',10,10,0,1,0,0,0,0,0,0,NULL,NULL,0,35,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(682,34,0,'Payment Type',10,10,1,1,0,1,0,0,0,0,'payment_type',NULL,0,36,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(683,34,0,'Payment Method',10,10,1,1,0,0,0,0,0,0,'payment_method',NULL,0,37,1,0,'2022-06-23 19:40:47','2022-06-23 19:40:47'),(684,34,0,'Payment Breakdown',10,10,1,1,0,0,0,0,0,0,'payment_breakdown',NULL,0,38,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(685,34,0,'Tips Suggest',10,10,1,1,0,0,0,0,0,0,'Payment_qrcode',NULL,0,39,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(686,34,1,'Foot Text',10,10,1,1,0,0,0,0,0,0,'online order: demo.uorder.io',NULL,0,40,0,0,'2022-06-23 19:40:47','2022-06-23 19:40:47'),(687,34,2,'QR Code',10,10,1,0.5,0,0,0,0,0,0,'uploads/20201116/16055432541621632157.jpg',NULL,0,41,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(688,34,3,'Footer Space',10,10,0,1,0,0,0,0,0,0,NULL,NULL,0,42,0,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(689,34,0,'Printer Name',16,10,0,1,0,0,0,0,0,0,'printer_name','',0,43,1,0,'2022-06-23 19:40:47','2022-06-23 19:40:47'),(690,34,1,'AMEX',9,20,1,1,0,0,0,0,0,0,'','WE WARMLY WELCOME AMERICAN EXPRESS',0,44,1,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(691,34,0,'tips',10,20,1,1,0,0,0,0,0,0,'tips_suggest_box','',0,45,1,0,'2022-06-23 19:40:47','2022-06-23 19:41:15'),(692,9,3,'SPACE',16,20,1,1,0,0,0,0,0,0,'','',0,4,1,1,'2022-06-23 20:15:15','2022-06-23 20:15:15');
/*!40000 ALTER TABLE `setting_printer_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_printer_lists`
--

DROP TABLE IF EXISTS `setting_printer_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_printer_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `printer_name` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `paper_size` double DEFAULT '76',
  `paper_height` int DEFAULT '0',
  `sort` int unsigned DEFAULT NULL,
  `type` tinyint unsigned DEFAULT '1',
  `com_type` tinyint unsigned DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `format_id` int unsigned DEFAULT NULL,
  `package` varchar(45) DEFAULT NULL COMMENT '打包单类型列表',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_printer_lists`
--

LOCK TABLES `setting_printer_lists` WRITE;
/*!40000 ALTER TABLE `setting_printer_lists` DISABLE KEYS */;
INSERT INTO `setting_printer_lists` VALUES (11,'Receipt','Receipt','Default',80,0,NULL,1,0,NULL,1,'1,2,4,3','2020-09-27 19:58:10','2023-10-18 22:14:32'),(23,'Cashdrawer','POS-80','Default',76,0,NULL,1,0,'',1,'2,3,4','2021-08-19 18:30:27','2023-10-18 22:15:04'),(27,'Label','iDPRT SP410','Default',60,120,NULL,3,0,'',14,'2,3,4','2023-02-21 20:59:41','2023-02-21 20:59:41'),(28,'Sushi Bar','Microsoft Print to PDF','Default',76,0,NULL,2,0,'',6,'2,3,4','2023-10-18 21:44:09','2023-10-18 21:48:58'),(29,'Kitchen ','Microsoft Print to PDF','Default',76,0,NULL,2,0,'',6,'2,3,4','2023-10-18 22:30:46','2023-10-24 01:46:14');
/*!40000 ALTER TABLE `setting_printer_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_printer_templates`
--

DROP TABLE IF EXISTS `setting_printer_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_printer_templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint DEFAULT '1' COMMENT '1 receipt 2 kitchen 3 label',
  `title` varchar(45) DEFAULT NULL,
  `owner` tinyint unsigned DEFAULT '0' COMMENT '0表示系统的，无法删除',
  `sort` int DEFAULT '1',
  `copies` tinyint unsigned DEFAULT '1',
  `copies_style` tinyint unsigned DEFAULT '1',
  `language` varchar(45) DEFAULT NULL,
  `separate` tinyint DEFAULT '0',
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_printer_templates`
--

LOCK TABLES `setting_printer_templates` WRITE;
/*!40000 ALTER TABLE `setting_printer_templates` DISABLE KEYS */;
INSERT INTO `setting_printer_templates` VALUES (1,1,'Receipt',1,1,1,1,'1',0,1,'2020-10-12 05:51:33','2022-06-23 18:49:20'),(4,1,'Check list',1,1,1,1,'2,1',0,1,'2020-10-22 00:23:04','2022-03-09 20:35:34'),(6,2,'Send to Kitchen',1,1,1,1,'2',0,1,'2020-10-22 18:45:31','2022-06-23 18:39:25'),(9,1,'Credit Card Receipt',1,1,1,1,'1',0,1,'2020-10-22 21:43:49','2023-02-27 16:59:47'),(14,3,'Label',1,1,1,1,'1',1,1,'2020-10-30 19:06:54','2021-06-21 21:51:42'),(16,4,'Packer',1,1,1,1,'1,2',0,1,'2020-11-02 22:24:07','2022-03-09 20:15:43'),(17,9,'Void/Cancel Payment',1,1,1,1,'2',0,1,'2020-11-04 01:25:47','2021-06-21 21:50:17'),(20,7,'Void Item',1,1,1,1,'1',0,1,'2020-11-04 20:37:51','2021-03-22 18:06:20'),(22,10,'Refund',1,1,1,1,'1',0,1,'2020-11-04 20:39:36','2020-11-04 20:39:36'),(25,8,'Void Order',1,1,1,1,'1',0,1,'2020-11-05 02:01:25','2021-06-21 22:08:06'),(34,1,'CopyReceipt',1,1,1,1,'1',0,1,'2022-06-23 19:40:47','2022-06-23 19:40:47');
/*!40000 ALTER TABLE `setting_printer_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_screen_images`
--

DROP TABLE IF EXISTS `setting_screen_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_screen_images` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint DEFAULT '1',
  `title` varchar(45) DEFAULT NULL,
  `image` varchar(245) DEFAULT NULL,
  `sort` int DEFAULT '1',
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_screen_images`
--

LOCK TABLES `setting_screen_images` WRITE;
/*!40000 ALTER TABLE `setting_screen_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting_screen_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_section_to_items`
--

DROP TABLE IF EXISTS `setting_section_to_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_section_to_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int unsigned NOT NULL,
  `section_id` int unsigned NOT NULL,
  `min` int unsigned DEFAULT '0',
  `max` int unsigned DEFAULT '9999999',
  `repeat` tinyint unsigned DEFAULT '0',
  `sort` int unsigned DEFAULT '1',
  `status` tinyint unsigned DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_section_to_items`
--

LOCK TABLES `setting_section_to_items` WRITE;
/*!40000 ALTER TABLE `setting_section_to_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting_section_to_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_service_fee`
--

DROP TABLE IF EXISTS `setting_service_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_service_fee` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `rate` varchar(45) DEFAULT NULL,
  `sort` int unsigned DEFAULT '1',
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_service_fee`
--

LOCK TABLES `setting_service_fee` WRITE;
/*!40000 ALTER TABLE `setting_service_fee` DISABLE KEYS */;
INSERT INTO `setting_service_fee` VALUES (15,'15%','15%',NULL,1,'2021-07-14 18:49:41','2021-07-14 18:49:41'),(16,'18%','18%',NULL,1,'2021-07-14 18:49:51','2021-07-14 18:49:51'),(17,'20%','20%',NULL,1,'2021-07-14 18:49:58','2021-07-14 18:49:58'),(18,'5%','5%',NULL,1,'2021-10-01 15:35:34','2021-10-01 15:35:34');
/*!40000 ALTER TABLE `setting_service_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_station_lists`
--

DROP TABLE IF EXISTS `setting_station_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_station_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `serial_number` varchar(145) DEFAULT NULL,
  `receipt_printer` int unsigned DEFAULT NULL,
  `checklist_printer` int unsigned DEFAULT NULL,
  `cash_drawer` int unsigned DEFAULT NULL,
  `caller_id` tinyint DEFAULT '0',
  `terminal` int unsigned DEFAULT NULL,
  `payment_method` varchar(245) DEFAULT NULL,
  `dashboard` varchar(245) DEFAULT NULL,
  `takeorder` varchar(245) DEFAULT NULL,
  `payment_template` int DEFAULT NULL,
  `checklist_template` int DEFAULT NULL,
  `modify_row` smallint DEFAULT '1',
  `modify_col` smallint DEFAULT '5',
  `modify_list_col` smallint DEFAULT '4',
  `item_col` smallint DEFAULT '4',
  `is_menu_pagination` tinyint DEFAULT '0',
  `is_master` tinyint DEFAULT '0',
  `order_displayer` varchar(245) DEFAULT NULL,
  `sort` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_station_lists`
--

LOCK TABLES `setting_station_lists` WRITE;
/*!40000 ALTER TABLE `setting_station_lists` DISABLE KEYS */;
INSERT INTO `setting_station_lists` VALUES (1,'Station1',NULL,11,0,1,1,0,'','','1',9,0,1,6,6,4,0,1,'',1,'2020-09-27 16:03:41','2023-10-18 21:54:25'),(14,'kiosk',NULL,11,11,0,1,1,'','','1',1,4,7,5,5,4,0,0,'',1,'2022-01-21 16:57:27','2023-08-21 16:42:04');
/*!40000 ALTER TABLE `setting_station_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_station_lists_to_menu_category`
--

DROP TABLE IF EXISTS `setting_station_lists_to_menu_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_station_lists_to_menu_category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `station_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=742 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_station_lists_to_menu_category`
--

LOCK TABLES `setting_station_lists_to_menu_category` WRITE;
/*!40000 ALTER TABLE `setting_station_lists_to_menu_category` DISABLE KEYS */;
INSERT INTO `setting_station_lists_to_menu_category` VALUES (133,8,12,'2021-08-03 15:03:42','2021-08-03 15:03:42'),(668,14,1,'2023-09-05 19:48:28','2023-09-05 19:48:28'),(669,14,2,'2023-09-05 19:48:28','2023-09-05 19:48:28'),(670,14,3,'2023-09-05 19:48:28','2023-09-05 19:48:28'),(671,14,4,'2023-09-05 19:48:28','2023-09-05 19:48:28'),(672,14,5,'2023-09-05 19:48:28','2023-09-05 19:48:28'),(673,14,6,'2023-09-05 19:48:28','2023-09-05 19:48:28'),(674,14,7,'2023-09-05 19:48:28','2023-09-05 19:48:28'),(675,14,8,'2023-09-05 19:48:28','2023-09-05 19:48:28'),(676,14,9,'2023-09-05 19:48:28','2023-09-05 19:48:28'),(677,14,10,'2023-09-05 19:48:28','2023-09-05 19:48:28'),(678,14,11,'2023-09-05 19:48:28','2023-09-05 19:48:28'),(679,14,12,'2023-09-05 19:48:28','2023-09-05 19:48:28'),(680,14,13,'2023-09-05 19:48:28','2023-09-05 19:48:28'),(681,14,14,'2023-09-05 19:48:28','2023-09-05 19:48:28'),(682,14,15,'2023-09-05 19:48:28','2023-09-05 19:48:28'),(683,14,16,'2023-09-05 19:48:28','2023-09-05 19:48:28'),(684,14,17,'2023-09-05 19:48:28','2023-09-05 19:48:28');
/*!40000 ALTER TABLE `setting_station_lists_to_menu_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_station_options`
--

DROP TABLE IF EXISTS `setting_station_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_station_options` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `station_id` int unsigned DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `type` int DEFAULT '0',
  `value` varchar(245) DEFAULT NULL,
  `notes` tinytext,
  `sort` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_station_options`
--

LOCK TABLES `setting_station_options` WRITE;
/*!40000 ALTER TABLE `setting_station_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting_station_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_tax_lists`
--

DROP TABLE IF EXISTS `setting_tax_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_tax_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `rate` varchar(45) DEFAULT NULL,
  `sort` int unsigned DEFAULT '1',
  `status` tinyint DEFAULT NULL,
  `scope` varchar(145) DEFAULT NULL,
  `tax_include` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_tax_lists`
--

LOCK TABLES `setting_tax_lists` WRITE;
/*!40000 ALTER TABLE `setting_tax_lists` DISABLE KEYS */;
INSERT INTO `setting_tax_lists` VALUES (8,'Tax','9.5',NULL,NULL,'',NULL,'2023-02-17 17:24:36','2023-09-25 18:00:08');
/*!40000 ALTER TABLE `setting_tax_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_terminal_lists`
--

DROP TABLE IF EXISTS `setting_terminal_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_terminal_lists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `manufacturer` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `port` varchar(45) DEFAULT NULL,
  `communication_type` varchar(45) DEFAULT NULL,
  `serial_port` varchar(45) DEFAULT NULL,
  `baud_rate` varchar(45) DEFAULT NULL,
  `time_out` varchar(45) DEFAULT '-1',
  `additional` varchar(45) DEFAULT NULL,
  `mid` varchar(100) DEFAULT NULL,
  `pinpad_tip_adjustment` tinyint DEFAULT NULL,
  `pinpad_signature` tinyint DEFAULT NULL,
  `format_id` int DEFAULT NULL,
  `sort` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_terminal_lists`
--

LOCK TABLES `setting_terminal_lists` WRITE;
/*!40000 ALTER TABLE `setting_terminal_lists` DISABLE KEYS */;
INSERT INTO `setting_terminal_lists` VALUES (1,'T1','PAX','s300 8','10.0.0.6','10009','TCP',NULL,NULL,'-1',NULL,'',0,0,9,1,'2020-09-28 04:47:07','2023-03-05 18:09:00');
/*!40000 ALTER TABLE `setting_terminal_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_tickets`
--

DROP TABLE IF EXISTS `setting_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_tickets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `init_number` int unsigned NOT NULL DEFAULT '1',
  `roll_over` int DEFAULT '-1',
  `current_number` int unsigned NOT NULL DEFAULT '1',
  `is_crossing` tinyint DEFAULT '0',
  `reset_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `batch_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_tickets`
--

LOCK TABLES `setting_tickets` WRITE;
/*!40000 ALTER TABLE `setting_tickets` DISABLE KEYS */;
INSERT INTO `setting_tickets` VALUES (1,1,-1,0,0,'2024-02-13 09:00:00','2023-03-30 01:00:00');
/*!40000 ALTER TABLE `setting_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_tips_lists`
--

DROP TABLE IF EXISTS `setting_tips_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_tips_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `rate` varchar(45) DEFAULT NULL,
  `sort` int unsigned DEFAULT '1',
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_tips_lists`
--

LOCK TABLES `setting_tips_lists` WRITE;
/*!40000 ALTER TABLE `setting_tips_lists` DISABLE KEYS */;
INSERT INTO `setting_tips_lists` VALUES (17,'15','15',NULL,1,'2020-10-29 01:27:37','2020-12-08 22:51:14'),(18,'18','18',NULL,1,'2020-10-29 01:28:01','2020-12-08 22:51:14'),(19,'20','20',NULL,1,'2020-10-29 01:28:06','2020-12-08 22:51:14');
/*!40000 ALTER TABLE `setting_tips_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_virtual_credit`
--

DROP TABLE IF EXISTS `setting_virtual_credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_virtual_credit` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `sort` int unsigned DEFAULT '1',
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `SORT` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_virtual_credit`
--

LOCK TABLES `setting_virtual_credit` WRITE;
/*!40000 ALTER TABLE `setting_virtual_credit` DISABLE KEYS */;
INSERT INTO `setting_virtual_credit` VALUES (10,'UberEats',NULL,1,'2022-04-06 17:30:25','2022-04-06 17:30:25');
/*!40000 ALTER TABLE `setting_virtual_credit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_warehouse_lists`
--

DROP TABLE IF EXISTS `setting_warehouse_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting_warehouse_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint DEFAULT '1',
  `quantity` int DEFAULT '0',
  `item_id` int unsigned DEFAULT NULL,
  `item_name` varchar(45) DEFAULT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  `notes` varchar(245) DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_warehouse_lists`
--

LOCK TABLES `setting_warehouse_lists` WRITE;
/*!40000 ALTER TABLE `setting_warehouse_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting_warehouse_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_button_custom_action`
--

DROP TABLE IF EXISTS `system_button_custom_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_button_custom_action` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `slug_key` varchar(45) DEFAULT NULL,
  `icon` varchar(145) DEFAULT NULL,
  `url` varchar(145) DEFAULT NULL,
  `font_size` smallint DEFAULT '10',
  `font_color` varchar(45) DEFAULT NULL,
  `background` varchar(45) DEFAULT NULL,
  `permission` varchar(45) DEFAULT NULL,
  `sort` int DEFAULT '1',
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_key_UNIQUE` (`slug_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_button_custom_action`
--

LOCK TABLES `system_button_custom_action` WRITE;
/*!40000 ALTER TABLE `system_button_custom_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_button_custom_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_button_custom_operation`
--

DROP TABLE IF EXISTS `system_button_custom_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_button_custom_operation` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `slug_key` varchar(45) DEFAULT NULL,
  `icon` varchar(145) DEFAULT NULL,
  `url` varchar(145) DEFAULT NULL,
  `font_size` smallint DEFAULT '10',
  `font_color` varchar(45) DEFAULT NULL,
  `background` varchar(45) DEFAULT NULL,
  `permission` varchar(45) DEFAULT NULL,
  `sort` int DEFAULT '1',
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_key_UNIQUE` (`slug_key`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_button_custom_operation`
--

LOCK TABLES `system_button_custom_operation` WRITE;
/*!40000 ALTER TABLE `system_button_custom_operation` DISABLE KEYS */;
INSERT INTO `system_button_custom_operation` VALUES (17,'sendall','icon-sendall',NULL,10,'#fff','#642d12',NULL,0,1,'2021-04-22 14:35:42','2021-07-14 17:53:26'),(18,'save','icon-save',NULL,10,'#fff','#30BF6E',NULL,1,1,'2021-04-22 14:35:42','2021-12-27 18:08:29'),(19,'pay','icon-pay',NULL,10,'#fff','#DD524B',NULL,2,1,'2021-04-22 14:35:42','2021-12-27 18:08:29'),(20,'partialkitchen','icon-partial',NULL,10,'#fff','#f0543e',NULL,5,0,'2021-04-22 14:35:42','2022-09-20 15:21:21'),(21,'print','icon-printer',NULL,10,'#fff','#f8c368',NULL,3,1,'2021-04-22 14:35:42','2022-09-20 15:21:21'),(22,'checklist','icon-checklist',NULL,10,NULL,'#4DAFD5',NULL,3,0,'2021-04-22 15:30:23','2022-09-20 15:21:21'),(23,'packer','icon-checklist',NULL,10,NULL,'#f37a6d',NULL,5,0,'2021-06-14 15:15:11','2021-10-13 21:31:56');
/*!40000 ALTER TABLE `system_button_custom_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_dashboard_lists`
--

DROP TABLE IF EXISTS `system_dashboard_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_dashboard_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `slug_key` varchar(45) DEFAULT NULL,
  `icon` varchar(145) DEFAULT NULL,
  `url` varchar(145) DEFAULT NULL,
  `font_size` smallint DEFAULT '10',
  `font_color` varchar(45) DEFAULT NULL,
  `background` varchar(45) DEFAULT NULL,
  `permission` varchar(45) DEFAULT NULL,
  `sort` int DEFAULT '1',
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_key_UNIQUE` (`slug_key`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_dashboard_lists`
--

LOCK TABLES `system_dashboard_lists` WRITE;
/*!40000 ALTER TABLE `system_dashboard_lists` DISABLE KEYS */;
INSERT INTO `system_dashboard_lists` VALUES (1,'ordertype1','./assets/images/home/DineIn.svg','/home/dinein',10,'#000','#f14e49',NULL,0,1,'2021-02-01 15:30:35','2022-06-14 15:10:07'),(2,'ordertype2','./assets/images/home/TakeOut.svg','/orderDishes',10,'#fff','#f3746d',NULL,1,1,'2021-02-01 15:30:35','2022-06-23 18:28:06'),(3,'ordertype3','./assets/images/home/Pickup.svg','/orderDishes',10,'#000','#F2C14E',NULL,2,1,'2021-02-01 15:30:35','2022-06-23 18:28:06'),(4,'ordertype4','./assets/images/home/Delivery.svg','/orderDishes',10,'#000','#108c8a',NULL,3,1,'2021-02-01 15:30:35','2022-09-20 16:11:17'),(5,'recall','./assets/images/home/OrderRecall.svg','/home/recall',10,'#fff','#0679C1','',4,1,'2021-02-01 15:30:35','2022-09-20 16:11:17'),(6,'cashdrawer','./assets/images/home/CashDrawer.svg',NULL,10,'#fff','#2c9694','cashDrawer',6,1,'2021-02-01 15:30:35','2022-09-20 16:11:17'),(7,'callidhistory','./assets/images/home/CallHistory.svg','/home/history',10,'#fff','#e5b952',NULL,16,0,'2021-02-01 15:30:35','2022-05-13 19:20:47'),(8,'giftcard','./assets/images/home/GiftCard.svg',NULL,10,'#fff','#13203f','giftCard',7,1,'2021-02-01 15:30:35','2022-09-20 16:11:17'),(9,'staffreport','./assets/images/home/StaffReport.svg','/home/staffreport',10,'#fff','#f69c98','',11,0,'2021-02-01 15:30:35','2023-03-27 18:54:59'),(10,'settlement','./assets/images/home/Closeout.svg','/home/batchtips',10,'#fff','#6A5D7B','closeBatch',5,1,'2021-02-01 15:30:35','2022-09-20 16:11:17'),(11,'clockinout','./assets/images/home/ClockInOut.svg','/home/clockinout',10,'#000','#cdb8a8',NULL,10,1,'2021-02-01 15:30:35','2022-09-20 16:11:17'),(12,'onlineorder','./assets/images/home/OnlineOrder.svg','/home/online',10,'#fff','#70594c',NULL,13,0,'2021-02-01 15:30:35','2022-05-13 19:20:47'),(13,'backoffice','./assets/images/home/BackOffice.svg','/backoffice/overview',10,'#fff','#333333','backoffice',11,1,'2021-02-01 22:28:59','2023-03-27 18:54:59'),(14,'ordertype5','./assets/images/home/Walkin.svg','/orderDishes',10,NULL,'#479763',NULL,3,0,'2021-02-02 16:05:59','2022-09-20 16:11:17'),(15,'ordertype6','./assets/images/home/Drivethru.svg','/orderDishes',10,'#000','#6A5D7B',NULL,3,0,'2021-02-02 16:06:00','2022-02-10 18:30:21'),(16,'ordertype7','./assets/images/home/Retail.svg','/orderDishes',10,NULL,'#6A5D7B',NULL,10,0,'2021-02-02 16:06:00','2022-04-21 15:25:00'),(17,'reservation','./assets/images/home/reservations.svg','/home/reservation',10,NULL,'#F88C34',NULL,12,0,'2021-08-18 19:23:17','2022-05-13 19:20:47'),(18,'cashpayout','./assets/images/home/CashDrawer.svg','/home/cashpayout',10,NULL,'#654f10',NULL,9,1,'2021-09-29 14:32:10','2022-09-20 16:11:17'),(19,'ordernow','./assets/images/home/OrderRecall.svg','/home/ordernowdinein',10,NULL,'#6A5D7B',NULL,9,0,'2021-11-10 23:06:22','2022-04-21 15:25:00'),(20,'cashinout','./assets/images/home/OrderRecall.svg','/home/cashinout',10,NULL,'#479763',NULL,8,1,'2021-11-16 22:09:16','2022-09-20 16:11:17');
/*!40000 ALTER TABLE `system_dashboard_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_order_type`
--

DROP TABLE IF EXISTS `system_order_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_order_type` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `is_ignore` tinyint DEFAULT '0',
  `slug` varchar(45) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `scope` int DEFAULT NULL,
  `notes` varchar(245) DEFAULT NULL,
  `is_print` tinyint DEFAULT '1',
  `sort` int DEFAULT '1',
  `duty_free` tinyint DEFAULT '0',
  `type` tinyint DEFAULT '0',
  `status` tinyint DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_UNIQUE` (`slug`),
  UNIQUE KEY `title_UNIQUE` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_order_type`
--

LOCK TABLES `system_order_type` WRITE;
/*!40000 ALTER TABLE `system_order_type` DISABLE KEYS */;
INSERT INTO `system_order_type` VALUES (1,0,'Dine_In','Dine In',1,NULL,1,1,0,0,1),(2,0,'To_Go','To Go',2,NULL,1,2,0,0,1),(3,0,'Pick_Up','Pick Up',3,NULL,1,3,0,1,1),(4,0,'Delivery','Delivery',4,NULL,1,4,0,1,1),(5,0,'Walk_In','Walk In',5,NULL,1,5,0,0,1),(6,0,'Drive_Thru','Drive Thru',6,NULL,1,6,0,0,1),(7,0,'Retail','Retail',7,NULL,1,7,0,0,1),(8,0,'Online_Pick_Up','Online Pick Up',8,NULL,1,8,0,1,1),(9,0,'Online_Delivery','Online Delivery',9,NULL,1,9,0,1,1);
/*!40000 ALTER TABLE `system_order_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_order_type_to_menu_category`
--

DROP TABLE IF EXISTS `system_order_type_to_menu_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_order_type_to_menu_category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_type_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1493 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_order_type_to_menu_category`
--

LOCK TABLES `system_order_type_to_menu_category` WRITE;
/*!40000 ALTER TABLE `system_order_type_to_menu_category` DISABLE KEYS */;
INSERT INTO `system_order_type_to_menu_category` VALUES (1142,4,1,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1143,4,2,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1144,4,3,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1145,4,4,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1146,4,5,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1147,4,6,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1148,4,7,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1149,4,8,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1150,4,9,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1151,4,10,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1152,4,11,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1153,4,12,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1154,4,13,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1155,4,14,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1156,4,15,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1157,4,16,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1158,4,17,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1159,4,18,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1160,4,19,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1161,4,20,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1162,4,21,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1163,4,22,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1164,4,23,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1165,4,24,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1166,4,25,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1167,4,26,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1168,4,27,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1169,4,28,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1170,4,29,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1171,4,30,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1172,4,31,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1173,4,32,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1174,4,33,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1175,4,34,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1176,4,35,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1177,4,36,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1178,4,37,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1179,4,38,'2023-10-19 19:01:45','2023-10-19 19:01:45'),(1180,5,1,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1181,5,2,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1182,5,3,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1183,5,4,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1184,5,5,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1185,5,6,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1186,5,7,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1187,5,8,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1188,5,9,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1189,5,10,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1190,5,11,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1191,5,12,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1192,5,13,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1193,5,14,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1194,5,15,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1195,5,16,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1196,5,17,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1197,5,18,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1198,5,19,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1199,5,20,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1200,5,21,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1201,5,22,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1202,5,23,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1203,5,24,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1204,5,25,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1205,5,26,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1206,5,27,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1207,5,28,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1208,5,29,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1209,5,30,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1210,5,31,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1211,5,32,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1212,5,33,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1213,5,34,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1214,5,35,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1215,5,36,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1216,5,37,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1217,5,38,'2023-10-19 19:01:48','2023-10-19 19:01:48'),(1218,6,1,'2023-10-19 19:01:50','2023-10-19 19:01:50'),(1219,6,2,'2023-10-19 19:01:50','2023-10-19 19:01:50'),(1220,6,3,'2023-10-19 19:01:50','2023-10-19 19:01:50'),(1221,6,4,'2023-10-19 19:01:50','2023-10-19 19:01:50'),(1222,6,5,'2023-10-19 19:01:50','2023-10-19 19:01:50'),(1223,6,6,'2023-10-19 19:01:50','2023-10-19 19:01:50'),(1224,6,7,'2023-10-19 19:01:50','2023-10-19 19:01:50'),(1225,6,8,'2023-10-19 19:01:50','2023-10-19 19:01:50'),(1226,6,9,'2023-10-19 19:01:50','2023-10-19 19:01:50'),(1227,6,10,'2023-10-19 19:01:50','2023-10-19 19:01:50'),(1228,6,11,'2023-10-19 19:01:50','2023-10-19 19:01:50'),(1229,6,12,'2023-10-19 19:01:50','2023-10-19 19:01:50'),(1230,6,13,'2023-10-19 19:01:50','2023-10-19 19:01:50'),(1231,6,14,'2023-10-19 19:01:50','2023-10-19 19:01:50'),(1232,6,15,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1233,6,16,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1234,6,17,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1235,6,18,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1236,6,19,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1237,6,20,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1238,6,21,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1239,6,22,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1240,6,23,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1241,6,24,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1242,6,25,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1243,6,26,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1244,6,27,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1245,6,28,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1246,6,29,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1247,6,30,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1248,6,31,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1249,6,32,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1250,6,33,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1251,6,34,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1252,6,35,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1253,6,36,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1254,6,37,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1255,6,38,'2023-10-19 19:01:51','2023-10-19 19:01:51'),(1256,7,1,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1257,7,2,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1258,7,3,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1259,7,4,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1260,7,5,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1261,7,6,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1262,7,7,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1263,7,8,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1264,7,9,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1265,7,10,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1266,7,11,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1267,7,12,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1268,7,13,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1269,7,14,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1270,7,15,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1271,7,16,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1272,7,17,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1273,7,18,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1274,7,19,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1275,7,20,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1276,7,21,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1277,7,22,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1278,7,23,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1279,7,24,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1280,7,25,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1281,7,26,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1282,7,27,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1283,7,28,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1284,7,29,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1285,7,30,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1286,7,31,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1287,7,32,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1288,7,33,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1289,7,34,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1290,7,35,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1291,7,36,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1292,7,37,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1293,7,38,'2023-10-19 19:01:54','2023-10-19 19:01:54'),(1294,8,1,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1295,8,2,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1296,8,3,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1297,8,4,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1298,8,5,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1299,8,6,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1300,8,7,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1301,8,8,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1302,8,9,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1303,8,10,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1304,8,11,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1305,8,12,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1306,8,13,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1307,8,14,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1308,8,15,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1309,8,16,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1310,8,17,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1311,8,18,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1312,8,19,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1313,8,20,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1314,8,21,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1315,8,22,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1316,8,23,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1317,8,24,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1318,8,25,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1319,8,26,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1320,8,27,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1321,8,28,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1322,8,29,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1323,8,30,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1324,8,31,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1325,8,32,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1326,8,33,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1327,8,34,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1328,8,35,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1329,8,36,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1330,8,37,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1331,8,38,'2023-10-19 19:01:57','2023-10-19 19:01:57'),(1389,1,1,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1390,1,2,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1391,1,3,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1392,1,4,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1393,1,5,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1394,1,6,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1395,1,7,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1396,1,8,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1397,1,9,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1398,1,10,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1399,1,11,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1400,1,12,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1401,1,13,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1402,1,14,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1403,1,15,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1404,1,16,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1405,1,17,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1406,1,18,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1407,1,19,'2024-01-11 22:48:21','2024-01-11 22:48:21'),(1408,3,1,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1409,3,2,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1410,3,3,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1411,3,4,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1412,3,5,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1413,3,6,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1414,3,7,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1415,3,8,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1416,3,9,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1417,3,10,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1418,3,11,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1419,3,12,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1420,3,13,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1421,3,14,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1422,3,15,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1423,3,16,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1424,3,17,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1425,3,18,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1426,3,19,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1427,3,20,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1428,3,21,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1429,3,22,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1430,3,23,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1431,3,24,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1432,3,25,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1433,3,26,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1434,3,27,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1435,3,28,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1436,3,29,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1437,3,30,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1438,3,31,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1439,3,32,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1440,3,33,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1441,3,34,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1442,3,35,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1443,3,36,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1444,3,37,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1445,3,38,'2024-01-11 22:52:33','2024-01-11 22:52:33'),(1465,2,1,'2024-01-22 23:44:16','2024-01-22 23:44:16'),(1466,2,2,'2024-01-22 23:44:16','2024-01-22 23:44:16'),(1467,2,3,'2024-01-22 23:44:16','2024-01-22 23:44:16'),(1468,2,4,'2024-01-22 23:44:16','2024-01-22 23:44:16'),(1469,2,5,'2024-01-22 23:44:16','2024-01-22 23:44:16'),(1470,2,6,'2024-01-22 23:44:16','2024-01-22 23:44:16'),(1471,2,7,'2024-01-22 23:44:16','2024-01-22 23:44:16'),(1472,2,8,'2024-01-22 23:44:16','2024-01-22 23:44:16'),(1473,2,9,'2024-01-22 23:44:16','2024-01-22 23:44:16'),(1474,2,10,'2024-01-22 23:44:16','2024-01-22 23:44:16'),(1475,2,11,'2024-01-22 23:44:16','2024-01-22 23:44:16'),(1476,2,12,'2024-01-22 23:44:16','2024-01-22 23:44:16'),(1477,2,13,'2024-01-22 23:44:16','2024-01-22 23:44:16'),(1478,2,14,'2024-01-22 23:44:16','2024-01-22 23:44:16'),(1479,9,1,'2024-01-22 23:44:22','2024-01-22 23:44:22'),(1480,9,2,'2024-01-22 23:44:22','2024-01-22 23:44:22'),(1481,9,3,'2024-01-22 23:44:22','2024-01-22 23:44:22'),(1482,9,4,'2024-01-22 23:44:22','2024-01-22 23:44:22'),(1483,9,5,'2024-01-22 23:44:22','2024-01-22 23:44:22'),(1484,9,6,'2024-01-22 23:44:22','2024-01-22 23:44:22'),(1485,9,7,'2024-01-22 23:44:22','2024-01-22 23:44:22'),(1486,9,8,'2024-01-22 23:44:22','2024-01-22 23:44:22'),(1487,9,9,'2024-01-22 23:44:22','2024-01-22 23:44:22'),(1488,9,10,'2024-01-22 23:44:22','2024-01-22 23:44:22'),(1489,9,11,'2024-01-22 23:44:22','2024-01-22 23:44:22'),(1490,9,12,'2024-01-22 23:44:22','2024-01-22 23:44:22'),(1491,9,13,'2024-01-22 23:44:22','2024-01-22 23:44:22'),(1492,9,14,'2024-01-22 23:44:22','2024-01-22 23:44:22');
/*!40000 ALTER TABLE `system_order_type_to_menu_category` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_permissions`
--

LOCK TABLES `system_permissions` WRITE;
/*!40000 ALTER TABLE `system_permissions` DISABLE KEYS */;
INSERT INTO `system_permissions` VALUES (13,3,1,'unlimited','unlimited','[{\"Key\":\"View\",\"Value\":\"unlimited\"}]','',1,NULL,NULL),(15,1,1,'cashDrawer','cashDrawer','[{\"Key\":\"View\",\"Value\":\"cashDrawer\"}]','33',3,NULL,NULL),(16,2,1,'voidPayment','voidPayment','[{\"Key\":\"View\",\"Value\":\"voidPayment\"}]','',22,NULL,NULL),(17,2,1,'refundPayment','refundPayment','[{\"Key\":\"View\",\"Value\":\"refundPayment\"}]','',23,NULL,NULL),(18,2,1,'voidOrder','voidOrder','[{\"Key\":\"View\",\"Value\":\"voidOrder\"}]','',21,NULL,NULL),(19,2,1,'discount','discount','[{\"Key\":\"View\",\"Value\":\"discount\"}]','',2,NULL,NULL),(21,2,1,'addTips','addTips','[{\"Key\":\"View\",\"Value\":\"addTips\"}]','',3,NULL,NULL),(22,1,1,'staffReport','staffReport','[{\"Key\":\"View\",\"Value\":\"staffReport\"}]','',4,NULL,NULL),(23,2,1,'changePrice','changePrice','[{\"Key\":\"View\",\"Value\":\"changePrice\"}]','',13,NULL,NULL),(24,1,1,'giftCard','giftCard','[{\"Key\":\"View\",\"Value\":\"giftCard\"}]','',11,NULL,NULL),(25,2,1,'cashPay','cashPay','[{\"Key\":\"View\",\"Value\":\"cashPay\"}]','',15,NULL,NULL),(26,2,1,'voidItem','voidItem','[{\"Key\":\"View\",\"Value\":\"voidItem\"}]','',20,NULL,NULL),(27,2,1,'virtualPay','virtualPay','[{\"Key\":\"View\",\"Value\":\"virtualPay\"}]','',18,NULL,NULL),(28,2,1,'creditPay','creditPay','[{\"Key\":\"View\",\"Value\":\"creditPay\"}]','',16,NULL,NULL),(29,2,1,'giftCardPay','giftCardPay','[{\"Key\":\"View\",\"Value\":\"giftCardPay\"}]','',17,NULL,NULL),(30,2,1,'tableSplit','tableSplit','[{\"Key\":\"View\",\"Value\":\"tableSplit\"}]',NULL,9,NULL,NULL),(31,2,1,'paymentSplit','paymentSplit','[{\"Key\":\"View\",\"Value\":\"paymentSplit\"}]',NULL,10,NULL,NULL),(32,2,1,'editOrder','editOrder','[{\"Key\":\"View\",\"Value\":\"editOrder\"}]',NULL,1,NULL,NULL),(33,2,1,'changeServer','changeServer','[{\"Key\":\"View\",\"Value\":\"changeServer\"}]',NULL,14,NULL,NULL),(35,1,1,'closeBatch','closeBatch','[{\"Key\":\"View\",\"Value\":\"closeBatch\"}]',NULL,19,NULL,NULL),(36,2,1,'recallReport','recallReport','[{\"Key\":\"View\",\"Value\":\"recallReport\"}]',NULL,11,NULL,NULL),(37,2,1,'dutyFree','dutyFree','[{\"Key\":\"View\",\"Value\":\"dutyFree\"}]',NULL,5,NULL,NULL),(38,3,1,'clockInOut','clockInOut','[{\"Key\":\"View\",\"Value\":\"clockInOut\"}]',NULL,17,NULL,NULL),(39,2,1,'recallvisible','recallvisible','[{\"Key\":\"View\",\"Value\":\"recallvisible\"}]',NULL,12,NULL,NULL),(40,2,1,'gratuity','gratuity','[{\"Key\":\"View\",\"Value\":\"gratuity\"}]',NULL,4,NULL,NULL),(41,2,1,'moveItem','moveItem','[{\"Key\":\"View\",\"Value\":\"moveItem\"}]',NULL,6,NULL,NULL),(43,2,1,'clearTable','clearTable','[{\"Key\":\"View\",\"Value\":\"clearTable\"}]',NULL,7,NULL,NULL),(44,2,1,'resend','resend','[{\"Key\":\"View\",\"Value\":\"resend\"}]',NULL,8,NULL,NULL),(45,2,1,'thirdPay','thirdPay','[{\"Key\":\"View\",\"Value\":\"thirdPay\"}]',NULL,19,NULL,NULL),(46,4,1,'reports','reports','[{\"Key\":\"View\",\"Value\":\"reports\"}]',NULL,1,NULL,NULL),(47,4,1,'menu','menu','[{\"Key\":\"View\",\"Value\":\"menu\"}]',NULL,2,NULL,NULL),(48,4,1,'promotion','promotion','[{\"Key\":\"View\",\"Value\":\"promotion\"}]',NULL,3,NULL,NULL),(49,4,1,'customer','customer','[{\"Key\":\"View\",\"Value\":\"customer\"}]',NULL,4,NULL,NULL),(50,4,1,'giftcards','giftcards','[{\"Key\":\"View\",\"Value\":\"giftcards\"}]',NULL,5,NULL,NULL),(51,4,1,'setting','setting','[{\"Key\":\"View\",\"Value\":\"setting\"}]',NULL,6,NULL,NULL),(52,4,1,'tablelayout','tablelayout','[{\"Key\":\"View\",\"Value\":\"tablelayout\"}]',NULL,7,NULL,NULL),(53,4,1,'warehouse','warehouse','[{\"Key\":\"View\",\"Value\":\"warehouse\"}]',NULL,8,NULL,NULL),(54,4,1,'administration','administration','[{\"Key\":\"View\",\"Value\":\"administration\"}]',NULL,9,NULL,NULL);
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
INSERT INTO `system_role_permissions` VALUES (8,14,'backoffice',NULL,NULL),(8,15,'cashdrawer',NULL,NULL),(8,22,'staffreport',NULL,NULL),(8,19,'discount',NULL,NULL),(8,24,'giftcard',NULL,NULL),(8,35,'closebatch',NULL,NULL),(6,13,'unlimited',NULL,NULL),(6,30,'tablesplit',NULL,NULL),(6,31,'paymentsplit',NULL,NULL),(6,32,'editorder',NULL,NULL),(6,41,'moveitem',NULL,NULL),(6,14,'backoffice',NULL,NULL),(6,33,'changeserver',NULL,NULL),(6,15,'cashdrawer',NULL,NULL),(6,22,'staffreport',NULL,NULL),(6,17,'refundpayment',NULL,NULL),(6,16,'voidpayment',NULL,NULL),(6,19,'discount',NULL,NULL),(6,21,'addtips',NULL,NULL),(6,23,'changeprice',NULL,NULL),(6,24,'giftcard',NULL,NULL),(6,26,'voiditem',NULL,NULL),(6,18,'voidorder',NULL,NULL),(6,40,'gratuity',NULL,NULL),(6,38,'clockinout',NULL,NULL),(6,37,'dutyfree',NULL,NULL),(6,35,'closebatch',NULL,NULL),(6,36,'recallreport',NULL,NULL),(6,28,'creditpay',NULL,NULL),(6,25,'cashpay',NULL,NULL),(6,29,'giftcardpay',NULL,NULL),(6,27,'virtualpay',NULL,NULL),(25,15,'cashdrawer',NULL,NULL),(25,22,'staffreport',NULL,NULL),(25,24,'giftcard',NULL,NULL),(25,35,'closebatch',NULL,NULL),(25,45,'thirdpay',NULL,NULL),(25,44,'resend',NULL,NULL),(25,43,'cleartable',NULL,NULL),(25,41,'moveitem',NULL,NULL),(25,30,'tablesplit',NULL,NULL),(25,31,'paymentsplit',NULL,NULL),(25,32,'editorder',NULL,NULL),(25,33,'changeserver',NULL,NULL),(25,17,'refundpayment',NULL,NULL),(25,16,'voidpayment',NULL,NULL),(25,19,'discount',NULL,NULL),(25,21,'addtips',NULL,NULL),(25,23,'changeprice',NULL,NULL),(25,26,'voiditem',NULL,NULL),(25,18,'voidorder',NULL,NULL),(25,40,'gratuity',NULL,NULL),(25,39,'recallvisible',NULL,NULL),(25,37,'dutyfree',NULL,NULL),(25,36,'recallreport',NULL,NULL),(25,28,'creditpay',NULL,NULL),(25,25,'cashpay',NULL,NULL),(25,29,'giftcardpay',NULL,NULL),(25,27,'virtualpay',NULL,NULL),(25,13,'unlimited',NULL,NULL),(25,46,'reports',NULL,NULL),(25,47,'menu',NULL,NULL),(25,48,'promotion',NULL,NULL),(25,49,'customer',NULL,NULL),(25,50,'giftcards',NULL,NULL),(25,51,'setting',NULL,NULL),(25,52,'tablelayout',NULL,NULL),(25,53,'warehouse',NULL,NULL),(25,22,'reports',NULL,NULL),(4,15,'cashdrawer',NULL,NULL),(4,22,'staffreport',NULL,NULL),(4,24,'giftcard',NULL,NULL),(4,35,'closebatch',NULL,NULL),(4,45,'thirdpay',NULL,NULL),(4,44,'resend',NULL,NULL),(4,43,'cleartable',NULL,NULL),(4,41,'moveitem',NULL,NULL),(4,30,'tablesplit',NULL,NULL),(4,31,'paymentsplit',NULL,NULL),(4,32,'editorder',NULL,NULL),(4,33,'changeserver',NULL,NULL),(4,17,'refundpayment',NULL,NULL),(4,16,'voidpayment',NULL,NULL),(4,19,'discount',NULL,NULL),(4,21,'addtips',NULL,NULL),(4,23,'changeprice',NULL,NULL),(4,26,'voiditem',NULL,NULL),(4,18,'voidorder',NULL,NULL),(4,40,'gratuity',NULL,NULL),(4,39,'recallvisible',NULL,NULL),(4,37,'dutyfree',NULL,NULL),(4,36,'recallreport',NULL,NULL),(4,28,'creditpay',NULL,NULL),(4,25,'cashpay',NULL,NULL),(4,29,'giftcardpay',NULL,NULL),(4,27,'virtualpay',NULL,NULL),(4,13,'unlimited',NULL,NULL),(4,46,'reports',NULL,NULL),(4,47,'menu',NULL,NULL),(4,48,'promotion',NULL,NULL),(4,49,'customer',NULL,NULL),(4,50,'giftcards',NULL,NULL),(4,51,'setting',NULL,NULL),(4,52,'tablelayout',NULL,NULL),(4,53,'warehouse',NULL,NULL),(4,54,'administration',NULL,NULL),(5,15,'cashdrawer',NULL,NULL),(5,22,'staffreport',NULL,NULL),(5,24,'giftcard',NULL,NULL),(5,35,'closebatch',NULL,NULL),(5,32,'editorder',NULL,NULL),(5,19,'discount',NULL,NULL),(5,21,'addtips',NULL,NULL),(5,40,'gratuity',NULL,NULL),(5,37,'dutyfree',NULL,NULL),(5,41,'moveitem',NULL,NULL),(5,43,'cleartable',NULL,NULL),(5,44,'resend',NULL,NULL),(5,30,'tablesplit',NULL,NULL),(5,31,'paymentsplit',NULL,NULL),(5,36,'recallreport',NULL,NULL),(5,39,'recallvisible',NULL,NULL),(5,23,'changeprice',NULL,NULL),(5,33,'changeserver',NULL,NULL),(5,25,'cashpay',NULL,NULL),(5,28,'creditpay',NULL,NULL),(5,29,'giftcardpay',NULL,NULL),(5,27,'virtualpay',NULL,NULL),(5,45,'thirdpay',NULL,NULL),(5,26,'voiditem',NULL,NULL),(5,18,'voidorder',NULL,NULL),(5,16,'voidpayment',NULL,NULL),(5,17,'refundpayment',NULL,NULL),(5,13,'unlimited',NULL,NULL),(5,47,'menu',NULL,NULL);
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
INSERT INTO `system_role_users` VALUES (4,48,NULL,NULL),(5,48,NULL,NULL),(6,48,NULL,NULL),(8,48,NULL,NULL),(9,48,NULL,NULL),(12,48,NULL,NULL),(14,48,NULL,NULL),(15,48,NULL,NULL),(16,48,NULL,NULL),(17,48,NULL,NULL),(19,48,NULL,NULL),(4,50,NULL,NULL),(5,50,NULL,NULL),(4,51,NULL,NULL),(5,51,NULL,NULL),(5,47,NULL,NULL),(20,11,'2021-04-19 19:28:47','2021-04-19 19:28:47'),(21,59,'2021-04-21 14:18:57','2021-04-21 14:18:57'),(6,62,'2021-06-01 14:27:40','2021-06-01 14:27:40'),(4,52,'2021-06-08 14:46:09','2021-06-08 14:46:09'),(20,53,'2021-06-14 17:41:44','2021-06-14 17:41:44'),(20,10,'2021-07-14 17:31:29','2021-07-14 17:31:29'),(5,58,'2021-09-28 20:45:55','2021-09-28 20:45:55'),(4,63,'2022-04-22 16:12:11','2022-04-22 16:12:11'),(5,61,'2022-04-28 14:18:18','2022-04-28 14:18:18'),(6,9,'2022-06-10 19:47:14','2022-06-10 19:47:14'),(4,60,'2022-06-10 20:10:24','2022-06-10 20:10:24'),(25,76,'2022-06-17 19:06:45','2022-06-17 19:06:45'),(4,86,'2023-03-03 18:30:36','2023-03-03 18:30:36'),(5,82,'2023-03-13 14:57:16','2023-03-13 14:57:16'),(5,83,'2023-03-13 14:57:19','2023-03-13 14:57:19'),(5,84,'2023-03-13 14:57:23','2023-03-13 14:57:23'),(5,85,'2023-03-13 14:57:48','2023-03-13 14:57:48'),(5,87,'2023-03-14 23:07:13','2023-03-14 23:07:13'),(5,88,'2023-03-20 15:10:34','2023-03-20 15:10:34'),(4,79,'2023-10-18 22:48:00','2023-10-18 22:48:00'),(4,43,'2023-10-18 22:48:02','2023-10-18 22:48:02'),(5,43,'2023-10-18 22:48:02','2023-10-18 22:48:02'),(25,43,'2023-10-18 22:48:02','2023-10-18 22:48:02');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_roles`
--

LOCK TABLES `system_roles` WRITE;
/*!40000 ALTER TABLE `system_roles` DISABLE KEYS */;
INSERT INTO `system_roles` VALUES (4,'Owner','Owner',NULL,NULL),(5,'Cashier','Cashier',NULL,NULL),(6,'Server','Server',NULL,NULL),(8,'Bartender','Bartender',NULL,NULL),(25,'Manager','00000000',NULL,NULL);
/*!40000 ALTER TABLE `system_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_third_party_payments`
--

DROP TABLE IF EXISTS `system_third_party_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_third_party_payments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `key` varchar(45) DEFAULT NULL,
  `parameters` text,
  `api` varchar(245) DEFAULT NULL,
  `status` tinyint DEFAULT '0',
  `notes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_third_party_payments`
--

LOCK TABLES `system_third_party_payments` WRITE;
/*!40000 ALTER TABLE `system_third_party_payments` DISABLE KEYS */;
INSERT INTO `system_third_party_payments` VALUES (3,'YuansferPay','YuansferPay','{\"merchantNo\":\"200043\",\"storeNo\":\"302747\",\"token\":\"50a1632fe462e44b18b2809a0cebe851\",\"tipsRequired\":\"true\",\"testMode\":\"true\"}','sdk',1,''),(6,'Liven Pay','LivenPay','{\"testMode\":\"true\",\"branchId\":\"3710\",\"passcode\":\"5273\"}','Liven Pay',1,'Liven Pay');
/*!40000 ALTER TABLE `system_third_party_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_void_notes`
--

DROP TABLE IF EXISTS `system_void_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_void_notes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `note` varchar(245) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_void_notes`
--

LOCK TABLES `system_void_notes` WRITE;
/*!40000 ALTER TABLE `system_void_notes` DISABLE KEYS */;
INSERT INTO `system_void_notes` VALUES (1,'Foreign Objects in Food','2021-08-09 21:01:08','2021-08-09 21:55:44'),(2,'Food  Allergy','2021-08-09 21:14:44','2021-08-09 21:55:31'),(3,'Servers Mistake','2021-08-09 21:55:52','2021-08-09 21:55:52'),(4,'Waited Too Long','2021-08-09 21:56:01','2021-08-09 21:56:01'),(5,'Food is Undecooked','2021-08-09 21:56:12','2021-08-09 21:56:12'),(6,'Improperly Prepared','2021-08-09 21:56:24','2021-08-09 21:56:24'),(7,'Orders Arriving Not as Described','2021-08-09 21:56:40','2021-08-09 21:56:40');
/*!40000 ALTER TABLE `system_void_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salt` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `icon` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int DEFAULT '1',
  `punch` int unsigned DEFAULT '0',
  `punch_time` time DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pin_UNIQUE` (`pin`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `barcode_UNIQUE` (`barcode`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (0,'Online Order',NULL,NULL,NULL,'000000',NULL,NULL,NULL,NULL,1,0,NULL,1,'2022-09-20 15:05:24','2022-09-20 15:05:24'),(43,'Owner',NULL,NULL,NULL,'1','000501','jsWfTnFwsRI=',NULL,NULL,NULL,0,NULL,1,NULL,'2023-10-18 22:48:02'),(79,'uServe',NULL,NULL,NULL,'0826',NULL,'hoRICU3zu4g=',NULL,'',NULL,0,NULL,1,'2022-06-23 14:44:07','2023-10-18 22:48:00'),(92,'Online Order',NULL,NULL,NULL,'up2018',NULL,'Z/iR3l80abU=',NULL,NULL,NULL,0,NULL,1,'2023-10-18 22:48:27','2023-10-18 22:48:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone_table_reserve`
--

DROP TABLE IF EXISTS `zone_table_reserve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zone_table_reserve` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `table_id` int unsigned DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `notes` varchar(245) DEFAULT NULL,
  `status` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_table_reserve`
--

LOCK TABLES `zone_table_reserve` WRITE;
/*!40000 ALTER TABLE `zone_table_reserve` DISABLE KEYS */;
/*!40000 ALTER TABLE `zone_table_reserve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone_tables`
--

DROP TABLE IF EXISTS `zone_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zone_tables` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` int unsigned DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `seats` tinyint unsigned DEFAULT NULL,
  `width` float unsigned DEFAULT NULL,
  `height` float unsigned DEFAULT NULL,
  `shape` varchar(45) DEFAULT NULL,
  `background` varchar(45) DEFAULT NULL,
  `font_color` varchar(45) DEFAULT NULL,
  `bg_color` varchar(45) DEFAULT NULL,
  `position_x` double DEFAULT NULL,
  `position_y` double DEFAULT NULL,
  `is_decoration` tinyint unsigned DEFAULT '0',
  `table_status` tinyint unsigned NOT NULL DEFAULT '0',
  `merge_key` varchar(45) DEFAULT NULL,
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `MERGE` (`merge_key`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_tables`
--

LOCK TABLES `zone_tables` WRITE;
/*!40000 ALTER TABLE `zone_tables` DISABLE KEYS */;
INSERT INTO `zone_tables` VALUES (10,1,'Front Desk',0,286,73,'decoration_square','#17749b',NULL,NULL,227,395,1,0,NULL,1,'2020-10-23 01:03:41','2021-04-05 22:25:42'),(39,1,'1',1,66,48,'rectangle',NULL,NULL,NULL,212,77,0,0,NULL,0,'2020-11-25 22:21:31','2021-05-07 17:29:53'),(40,1,'',0,10,263,'decoration_square','#999999',NULL,NULL,176,32,1,0,NULL,1,'2020-11-25 22:21:31','2021-04-05 22:25:42'),(41,1,'',0,784,14,'decoration_square','#999999',NULL,NULL,176,30,1,0,NULL,1,'2020-11-25 22:21:31','2021-04-05 22:25:42'),(42,1,'Test2',1,66,48,'rectangle',NULL,NULL,NULL,312,77,0,0,NULL,0,'2020-11-25 22:21:31','2021-05-07 17:30:16'),(43,1,'3',1,66,48,'rectangle',NULL,NULL,NULL,409,78,0,0,NULL,0,'2020-11-25 22:21:31','2021-05-07 17:31:38'),(44,1,'4',1,66,48,'rectangle',NULL,NULL,NULL,539,127,0,0,NULL,0,'2020-11-25 22:21:31','2021-05-07 17:33:03'),(45,1,'5',1,66,48,'rectangle',NULL,NULL,NULL,661,126,0,0,NULL,0,'2020-11-25 22:21:31','2021-05-07 17:34:24'),(46,1,'6',1,66,48,'rectangle',NULL,NULL,NULL,219,221,0,0,NULL,0,'2020-11-25 22:21:31','2021-05-07 17:35:16'),(48,1,'',0,121,17,'decoration_square','#999999',NULL,NULL,178,489,1,0,NULL,1,'2020-11-25 22:21:31','2021-04-05 22:25:42'),(49,1,'',0,12,288,'decoration_square','#999999',NULL,NULL,949,35,1,0,NULL,1,'2020-11-25 22:21:31','2021-04-05 22:25:42'),(57,1,'',0,509,17,'decoration_square','#999999',NULL,NULL,446,489,1,0,NULL,1,'2020-11-25 22:23:21','2021-04-05 22:25:42'),(58,1,'Restroom',0,95,108,'decoration_circle','#999999',NULL,NULL,975,216,1,0,NULL,1,'2020-11-25 22:24:03','2021-04-05 22:25:42'),(59,1,'',0,6,113,'decoration_square','#999999',NULL,NULL,952,445,1,0,NULL,1,'2020-11-30 22:10:43','2021-04-05 22:25:42'),(60,1,'',0,6,113,'decoration_square','#999999',NULL,NULL,1054,448,1,0,NULL,1,'2020-11-30 22:10:43','2021-04-05 22:25:42'),(61,1,'',0,108,11,'decoration_square','#999999',NULL,NULL,952,465,1,0,NULL,1,'2020-11-30 22:11:09','2021-04-05 22:25:42'),(62,1,'',0,108,11,'decoration_square','#999999',NULL,NULL,953,498,1,0,NULL,1,'2020-11-30 22:11:09','2021-04-05 22:25:42'),(63,1,'',0,108,11,'decoration_square','#999999',NULL,NULL,953,534,1,0,NULL,1,'2020-11-30 22:11:09','2021-04-05 22:25:42'),(64,2,'',0,8,407,'decoration_square','#999999',NULL,NULL,110,66,1,0,NULL,1,'2020-11-30 22:14:56','2020-12-09 12:20:25'),(65,2,'',0,844,10,'decoration_square','#999999',NULL,NULL,111,65,1,0,NULL,1,'2020-11-30 22:14:56','2020-12-09 12:20:25'),(66,2,'',0,8,407,'decoration_square','#999999',NULL,NULL,947,70,1,0,NULL,1,'2020-11-30 22:14:56','2020-12-09 12:20:25'),(67,2,'',0,711,9,'decoration_square','#999999',NULL,NULL,243,468,1,0,NULL,1,'2020-11-30 22:15:14','2020-12-09 12:20:25'),(80,1,'7',1,79,50,'rectangle',NULL,NULL,NULL,310,222,0,0,NULL,0,'2020-12-09 12:07:44','2021-04-05 22:25:42'),(81,1,'8',1,79,50,'rectangle',NULL,NULL,NULL,424,222,0,0,NULL,0,'2020-12-09 12:07:44','2021-04-05 22:25:42'),(82,1,'9',1,79,50,'rectangle',NULL,NULL,NULL,546,224,0,0,NULL,0,'2020-12-09 12:07:44','2021-04-05 22:25:42'),(83,1,'10',1,79,50,'rectangle',NULL,NULL,NULL,669,225,0,0,NULL,0,'2020-12-09 12:07:44','2021-04-05 22:25:42'),(84,2,'1',1,80,50,'rectangle',NULL,NULL,NULL,209,123,0,0,NULL,0,'2020-12-09 12:21:56','2020-12-09 12:21:56'),(85,2,'2',1,80,50,'rectangle',NULL,NULL,NULL,353,122,0,0,NULL,0,'2020-12-09 12:21:56','2020-12-09 12:21:56'),(86,2,'3',1,80,50,'rectangle',NULL,NULL,NULL,504,121,0,0,NULL,0,'2020-12-09 12:21:56','2020-12-09 12:21:56'),(87,2,'4',1,80,50,'rectangle',NULL,NULL,NULL,646,177,0,0,NULL,0,'2020-12-09 12:21:56','2020-12-09 12:21:56'),(88,2,'5',1,80,50,'rectangle',NULL,NULL,NULL,776,176,0,0,NULL,0,'2020-12-09 12:21:56','2020-12-09 12:21:56'),(89,2,'6',1,80,50,'rectangle',NULL,NULL,NULL,216,360,0,0,NULL,0,'2020-12-09 12:21:56','2020-12-09 12:21:56'),(90,2,'7',1,80,50,'rectangle',NULL,NULL,NULL,343,358,0,0,NULL,0,'2020-12-09 12:21:56','2020-12-09 12:21:56'),(91,2,'8',1,80,50,'rectangle',NULL,NULL,NULL,484,361,0,0,NULL,0,'2020-12-09 12:21:56','2020-12-09 12:21:56'),(92,2,'9',1,80,50,'rectangle',NULL,NULL,NULL,624,360,0,0,NULL,0,'2020-12-09 12:21:56','2020-12-09 12:21:56'),(93,2,'10',1,80,50,'rectangle',NULL,NULL,NULL,759,359,0,0,NULL,0,'2020-12-09 12:21:56','2020-12-09 12:21:56'),(94,6,'1',1,80,50,'rectangle',NULL,NULL,NULL,83,222,0,0,NULL,0,'2020-12-09 12:24:01','2020-12-09 12:24:01'),(95,6,'2',1,80,55,'rectangle',NULL,NULL,NULL,173,219,0,0,NULL,0,'2020-12-09 12:24:01','2020-12-09 12:24:01'),(96,6,'3',1,80,50,'rectangle',NULL,NULL,NULL,261,221,0,0,NULL,0,'2020-12-09 12:24:01','2020-12-09 12:24:01'),(97,6,'4',1,80,50,'rectangle',NULL,NULL,NULL,350,222,0,0,NULL,0,'2020-12-09 12:24:01','2020-12-09 12:24:01'),(98,6,'5',1,80,50,'rectangle',NULL,NULL,NULL,440,222,0,0,NULL,0,'2020-12-09 12:24:01','2020-12-09 12:24:01'),(99,6,'6',1,80,50,'rectangle',NULL,NULL,NULL,532,223,0,0,NULL,0,'2020-12-09 12:24:01','2020-12-09 12:24:01'),(100,6,'7',1,80,50,'rectangle',NULL,NULL,NULL,620,224,0,0,NULL,0,'2020-12-09 12:24:01','2020-12-09 12:24:01'),(101,6,'8',1,80,50,'rectangle',NULL,NULL,NULL,711,224,0,0,NULL,0,'2020-12-09 12:24:01','2020-12-09 12:24:01'),(102,6,'9',1,80,50,'rectangle',NULL,NULL,NULL,805,224,0,0,NULL,0,'2020-12-09 12:24:01','2020-12-09 12:24:01'),(103,6,'10',1,80,50,'rectangle',NULL,NULL,NULL,898,223,0,0,NULL,0,'2020-12-09 12:24:01','2020-12-09 12:24:01'),(104,6,'',0,906,38,'decoration_square','#623737',NULL,NULL,76,277,1,0,NULL,0,'2020-12-09 12:24:01','2020-12-09 12:24:01'),(105,7,'',0,1262,50,'decoration_square','#999999',NULL,NULL,213,356,1,0,NULL,0,'2020-12-09 12:24:13','2021-04-22 17:59:38'),(106,7,'S1',1,112,62,'rectangle',NULL,NULL,NULL,238,281,0,0,NULL,0,'2020-12-09 12:24:13','2021-04-22 17:59:38'),(107,7,'S2',1,112,62,'rectangle',NULL,NULL,NULL,361,282,0,0,NULL,0,'2020-12-09 12:24:13','2021-04-22 17:59:38'),(108,7,'S3',1,112,62,'rectangle',NULL,NULL,NULL,481,283,0,0,NULL,0,'2020-12-09 12:24:13','2021-04-22 17:59:38'),(109,7,'S4',1,112,62,'rectangle',NULL,NULL,NULL,601,283,0,0,NULL,0,'2020-12-09 12:24:13','2021-04-22 17:59:38'),(110,7,'S5',1,112,62,'rectangle',NULL,NULL,NULL,722,283,0,0,NULL,0,'2020-12-09 12:24:13','2021-04-22 17:59:38'),(111,7,'S6',1,112,62,'rectangle',NULL,NULL,NULL,844,284,0,0,NULL,0,'2020-12-09 12:24:13','2021-04-22 17:59:38'),(112,7,'S7',1,112,62,'rectangle',NULL,NULL,NULL,967,284,0,0,NULL,0,'2020-12-09 12:24:13','2021-04-22 17:59:38'),(113,7,'S8',1,112,62,'rectangle',NULL,NULL,NULL,1092,286,0,0,NULL,0,'2020-12-09 12:24:13','2021-04-22 17:59:38'),(114,7,'S9',1,112,62,'rectangle',NULL,NULL,NULL,1213,284,0,0,NULL,0,'2020-12-09 12:24:13','2021-04-22 17:59:38'),(115,7,'S10',1,112,62,'rectangle',NULL,NULL,NULL,1336,284,0,0,NULL,0,'2020-12-09 12:24:18','2021-04-22 17:59:38'),(116,8,'',0,201,204,'decoration_circle','#999999',NULL,NULL,148,68,1,0,NULL,0,'2021-07-01 20:39:22','2021-07-02 19:13:29'),(117,8,'1',1,62,67,'square',NULL,NULL,NULL,85,29,0,0,NULL,0,'2021-07-01 20:39:22','2021-07-02 19:13:29'),(118,8,'2',1,67,61,'rectangle',NULL,NULL,NULL,49,164,0,0,NULL,0,'2021-07-01 20:39:22','2021-07-02 19:13:29'),(119,8,'',0,959,11,'decoration_square','#999999',NULL,NULL,14,339,1,0,NULL,0,'2021-07-02 19:13:29','2021-07-02 19:13:29'),(120,8,'',0,12,326,'decoration_square','#999999',NULL,NULL,394,10,1,0,NULL,0,'2021-07-02 19:13:29','2021-07-02 19:13:29'),(121,9,'1',1,218,116,'square',NULL,NULL,NULL,549,147,0,0,NULL,0,'2021-07-13 21:59:41','2021-07-13 21:59:41'),(122,9,'2',1,50,50,'square',NULL,NULL,NULL,245,143,0,0,NULL,0,'2021-07-13 21:59:41','2021-07-13 21:59:41'),(123,9,'3',1,80,50,'rectangle',NULL,NULL,NULL,418,50,0,0,NULL,0,'2021-07-13 21:59:41','2021-07-13 21:59:41'),(154,11,'T-07',1,173,144,'rectangle',NULL,NULL,NULL,198,109,0,0,NULL,0,'2021-07-14 17:11:10','2021-07-14 17:17:32'),(155,11,'T-08',1,173,144,'rectangle',NULL,NULL,NULL,510,107,0,0,NULL,0,'2021-07-14 17:11:10','2021-07-14 17:17:37'),(156,11,'T-09',1,173,144,'rectangle',NULL,NULL,NULL,200,344,0,0,NULL,0,'2021-07-14 17:11:10','2021-07-14 17:17:43'),(157,11,'T-10',1,173,144,'rectangle',NULL,NULL,NULL,513,344,0,0,NULL,0,'2021-07-14 17:11:10','2021-07-14 17:17:50'),(160,11,'RT-06',1,130,127,'circle',NULL,NULL,NULL,858,354,0,0,NULL,0,'2021-07-14 17:11:10','2021-07-14 17:20:51'),(161,11,'Bar',0,914,39,'decoration_square','#999999',NULL,NULL,356,714,1,0,NULL,0,'2021-07-14 17:11:10','2021-07-14 17:20:51'),(162,11,'B-01',1,68,63,'circle',NULL,NULL,NULL,454,622,0,0,NULL,0,'2021-07-14 17:17:18','2021-07-14 17:18:22'),(163,11,'B-02',1,68,63,'circle',NULL,NULL,NULL,591,622,0,0,NULL,0,'2021-07-14 17:17:18','2021-07-14 17:18:29'),(164,11,'B-03',1,68,63,'circle',NULL,NULL,NULL,735,624,0,0,NULL,0,'2021-07-14 17:17:18','2021-07-14 17:18:35'),(165,11,'B-04',1,68,63,'circle',NULL,NULL,NULL,862,623,0,0,NULL,0,'2021-07-14 17:17:18','2021-07-14 17:19:02'),(166,11,'B-05',1,68,63,'circle',NULL,NULL,NULL,990,624,0,0,NULL,0,'2021-07-14 17:17:18','2021-07-14 17:19:08'),(167,11,'B-06',1,68,63,'circle',NULL,NULL,NULL,1119,623,0,0,NULL,0,'2021-07-14 17:17:18','2021-07-14 17:19:14'),(168,11,'RT-07',1,130,127,'circle',NULL,NULL,NULL,1153,364,0,0,NULL,0,'2021-07-14 17:17:18','2021-07-14 17:20:51'),(169,11,'RT-05',1,130,127,'circle',NULL,NULL,NULL,1000,105,0,0,NULL,0,'2021-07-14 17:17:18','2021-07-14 17:20:51'),(170,11,'Restroom',0,182,264,'decoration_square','#999999',NULL,NULL,1414,16,1,0,NULL,0,'2021-07-14 17:20:51','2021-07-14 17:20:51'),(171,12,'1',1,60,56,'circle',NULL,NULL,NULL,80,126,0,0,NULL,0,'2021-07-14 17:25:29','2021-11-03 14:40:11'),(172,12,'2',1,60,56,'circle',NULL,NULL,NULL,257,128,0,0,NULL,0,'2021-07-14 17:25:29','2021-11-03 14:40:11'),(174,12,'4',1,60,56,'circle',NULL,NULL,NULL,171,353,0,0,NULL,0,'2021-07-14 17:25:29','2021-11-03 14:40:11'),(175,12,'5',1,60,56,'circle',NULL,NULL,NULL,168,201,0,0,NULL,0,'2021-07-14 17:25:29','2021-11-03 14:40:11'),(177,12,'7',1,60,56,'circle',NULL,NULL,NULL,266,424,0,0,NULL,0,'2021-07-14 17:25:29','2021-11-03 14:40:11'),(178,12,'8',1,60,56,'circle',NULL,NULL,NULL,77,430,0,0,NULL,0,'2021-07-14 17:25:29','2021-11-03 14:40:11'),(179,12,'9',1,60,56,'circle',NULL,NULL,NULL,267,271,0,0,NULL,0,'2021-07-14 17:25:29','2021-11-03 14:40:11'),(180,12,'10',1,60,56,'circle',NULL,NULL,NULL,73,278,0,0,NULL,0,'2021-07-14 17:25:29','2021-11-03 14:40:11'),(184,12,'Stage',0,299,59,'decoration_square','#999999',NULL,NULL,57,6,1,0,NULL,0,'2021-07-14 17:26:18','2021-11-03 14:40:11'),(185,12,'11',1,141,69,'rectangle',NULL,NULL,NULL,524,51,0,0,NULL,0,'2021-07-14 17:27:00','2021-11-03 14:40:11'),(186,12,'12',1,141,69,'rectangle',NULL,NULL,NULL,820,292,0,0,NULL,0,'2021-07-14 17:27:00','2021-11-03 14:40:11'),(187,12,'13',1,141,69,'rectangle',NULL,NULL,NULL,818,165,0,0,NULL,0,'2021-07-14 17:27:00','2021-11-03 14:40:11'),(188,12,'14',1,141,69,'rectangle',NULL,NULL,NULL,814,48,0,0,NULL,0,'2021-07-14 17:27:00','2021-11-03 14:40:11'),(189,12,'15',1,141,69,'rectangle',NULL,NULL,NULL,525,167,0,0,NULL,0,'2021-07-14 17:27:00','2021-11-03 14:40:11'),(190,12,'16',1,141,69,'rectangle',NULL,NULL,NULL,527,297,0,0,NULL,0,'2021-07-14 17:27:00','2021-11-03 14:40:11'),(191,12,'17',1,141,69,'rectangle',NULL,NULL,NULL,528,420,0,0,NULL,0,'2021-07-14 17:27:00','2021-11-03 14:40:11'),(192,12,'18',1,141,69,'rectangle',NULL,NULL,NULL,820,419,0,0,NULL,0,'2021-07-14 17:27:00','2021-11-03 14:40:11'),(193,12,'',0,6,134,'decoration_square','#999999',NULL,NULL,426,376,1,0,NULL,0,'2021-07-14 18:31:17','2021-11-03 14:40:11'),(194,12,'19',0,7,156,'decoration_square','#999999',NULL,NULL,421,23,1,0,NULL,0,'2021-07-14 18:31:17','2021-11-03 14:40:11'),(198,10,'B1',1,90,50,'square',NULL,NULL,NULL,138,93,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(199,10,'B2',1,90,50,'square',NULL,NULL,NULL,321,94,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(200,10,'B3',1,90,50,'square',NULL,NULL,NULL,505,93,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(201,10,'B4',1,90,50,'square',NULL,NULL,NULL,680,94,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(202,10,'B5',1,90,50,'square',NULL,NULL,NULL,856,93,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(203,10,'B6',1,90,50,'square',NULL,NULL,NULL,1029,93,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(204,10,'B7',1,90,50,'square',NULL,NULL,NULL,1201,91,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(205,10,'T1',1,90,50,'square',NULL,NULL,NULL,132,257,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(206,10,'T2',1,90,50,'square',NULL,NULL,NULL,130,416,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(207,10,'T3',1,90,50,'square',NULL,NULL,NULL,127,588,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(208,10,'T8',1,90,50,'square',NULL,NULL,NULL,414,252,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(209,10,'T9',1,90,50,'square',NULL,NULL,NULL,409,362,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(210,10,'T10',1,90,50,'square',NULL,NULL,NULL,407,480,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(211,10,'T11',1,90,50,'square',NULL,NULL,NULL,407,593,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(212,10,'T7',1,90,50,'square',NULL,NULL,NULL,751,590,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(213,10,'T6',1,90,50,'square',NULL,NULL,NULL,753,473,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(214,10,'T5',1,90,50,'square',NULL,NULL,NULL,751,355,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(215,10,'T4',1,90,50,'square',NULL,NULL,NULL,755,254,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(216,10,'EX1',1,99,61,'rectangle',NULL,NULL,NULL,1282,242,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18'),(217,10,'EX2',1,99,61,'rectangle',NULL,NULL,NULL,1278,360,0,0,NULL,1,'2023-10-23 22:15:18','2023-10-23 22:15:18');
/*!40000 ALTER TABLE `zone_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zones`
--

DROP TABLE IF EXISTS `zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zones` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `font_color` varchar(45) DEFAULT NULL,
  `bg_color` varchar(45) DEFAULT NULL,
  `width` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `background` varchar(45) DEFAULT NULL,
  `sort` int unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zones`
--

LOCK TABLES `zones` WRITE;
/*!40000 ALTER TABLE `zones` DISABLE KEYS */;
INSERT INTO `zones` VALUES (10,'T7',NULL,'#FFFFFF',1615,832,NULL,1,1,'2021-07-14 16:51:24','2023-10-23 22:15:18');
/*!40000 ALTER TABLE `zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-12 17:39:25
