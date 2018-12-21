-- MySQL dump 10.17  Distrib 10.3.11-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: shopee_db
-- ------------------------------------------------------
-- Server version	10.3.11-MariaDB-1:10.3.11+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `items_tab`
--

DROP TABLE IF EXISTS `items_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items_tab` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(150) NOT NULL,
  `tax_code` tinyint(1) NOT NULL DEFAULT 1,
  `price` decimal(10,2) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `index2` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_tab`
--

LOCK TABLES `items_tab` WRITE;
/*!40000 ALTER TABLE `items_tab` DISABLE KEYS */;
INSERT INTO `items_tab` VALUES (1,'Marlboro',2,22000.00,'active'),(2,'Chitato',1,5000.00,'active'),(3,'Movie',3,15000.00,'active');
/*!40000 ALTER TABLE `items_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail_tab`
--

DROP TABLE IF EXISTS `order_detail_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_detail_tab` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `tax_code` tinyint(1) NOT NULL DEFAULT 1,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `item_index` (`item_id`),
  KEY `status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail_tab`
--

LOCK TABLES `order_detail_tab` WRITE;
/*!40000 ALTER TABLE `order_detail_tab` DISABLE KEYS */;
INSERT INTO `order_detail_tab` VALUES (1,1,1,22000.00,2,'active'),(2,1,2,5000.00,1,'active'),(3,2,1,22000.00,2,'active'),(4,2,2,5000.00,1,'active'),(5,3,1,22000.00,2,'active'),(6,3,2,5000.00,1,'active'),(7,3,3,15000.00,3,'active'),(8,4,1,22000.00,2,'active'),(9,4,2,5000.00,1,'active'),(10,4,3,15000.00,3,'active'),(11,5,1,22000.00,2,'active'),(12,5,2,5000.00,1,'active'),(13,5,3,15000.00,3,'active'),(14,6,1,22000.00,2,'active'),(15,6,2,5000.00,1,'active'),(16,6,3,15000.00,3,'active'),(17,7,1,22000.00,2,'active'),(18,7,2,5000.00,1,'active'),(19,7,3,15000.00,3,'active'),(20,8,1,22000.00,2,'active'),(21,8,2,5000.00,1,'active'),(22,8,3,15000.00,3,'active'),(23,9,1,22000.00,2,'active'),(24,9,2,5000.00,1,'active'),(25,9,3,15000.00,3,'active');
/*!40000 ALTER TABLE `order_detail_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_tab`
--

DROP TABLE IF EXISTS `order_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_tab` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `orderdate` datetime NOT NULL,
  `duedate` datetime NOT NULL,
  `status` enum('paid','unpaid','canceled') NOT NULL DEFAULT 'unpaid',
  PRIMARY KEY (`id`),
  KEY `status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_tab`
--

LOCK TABLES `order_tab` WRITE;
/*!40000 ALTER TABLE `order_tab` DISABLE KEYS */;
INSERT INTO `order_tab` VALUES (1,1,'2018-12-21 02:14:49','2018-12-21 02:14:49','unpaid'),(2,1,'2018-12-21 02:17:32','2018-12-21 02:17:32','unpaid'),(3,1,'2018-12-21 02:23:27','2018-12-21 02:23:27','unpaid'),(4,1,'2018-12-21 02:26:26','2018-12-21 02:26:26','unpaid'),(5,1,'2018-12-21 02:38:17','2018-12-21 02:38:17','unpaid'),(6,1,'2018-12-21 02:38:50','2018-12-21 02:38:50','unpaid'),(7,1,'2018-12-21 02:39:32','2018-12-21 02:39:32','unpaid'),(8,1,'2018-12-21 02:39:53','2018-12-21 02:39:53','unpaid'),(9,1,'2018-12-21 02:40:19','2018-12-21 02:40:19','unpaid');
/*!40000 ALTER TABLE `order_tab` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-20 19:58:03
