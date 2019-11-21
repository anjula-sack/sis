-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: openemis
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `area_administratives`
--

DROP TABLE IF EXISTS `area_administratives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area_administratives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(60) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_main_country` int(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `area_administrative_level_id` int(11) NOT NULL COMMENT 'links to area_administrative_levels.id',
  `order` int(3) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `area_administrative_level_id` (`area_administrative_level_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_administratives`
--

LOCK TABLES `area_administratives` WRITE;
/*!40000 ALTER TABLE `area_administratives` DISABLE KEYS */;
INSERT INTO `area_administratives` VALUES (1,'World','World',0,NULL,1,72,1,1,1,0,'1990-01-01 00:00:00',1,'2015-01-01 00:00:00'),(2,'LK','Sri Lanka',1,1,2,71,2,1,1,NULL,NULL,1,'2019-01-23 06:22:10'),(3,'WP','Western Province',0,2,3,10,3,1,1,NULL,NULL,1,'2019-01-23 07:32:57'),(4,'CP','Central Province',0,2,11,18,3,2,1,NULL,NULL,1,'2019-01-23 07:33:27'),(5,'SP','Southern Province',0,2,19,26,3,3,1,NULL,NULL,1,'2019-01-23 07:33:46'),(6,'UP','Uva Province',0,2,27,32,3,4,1,NULL,NULL,1,'2019-01-23 07:34:10'),(7,'SG','Sabaragamuwa Province',0,2,33,38,3,5,1,NULL,NULL,1,'2019-01-23 07:34:33'),(8,'NW','North Western Province',0,2,39,44,3,6,1,NULL,NULL,1,'2019-01-23 07:34:57'),(9,'NC','North Central Province',0,2,45,50,3,7,1,NULL,NULL,1,'2019-01-23 07:35:22'),(10,'NP','Nothern Province',0,2,51,62,3,8,1,NULL,NULL,1,'2019-01-23 07:35:44'),(11,'EP','Eastern Province',0,2,63,70,3,9,1,NULL,NULL,1,'2019-01-23 07:36:09'),(12,'COLOMBO','COLOMBO',0,3,4,5,4,1,1,NULL,NULL,1,'2019-01-23 07:41:46'),(13,'GAMPAHA','GAMPAHA',0,3,6,7,4,2,1,NULL,NULL,1,'2019-01-23 07:42:31'),(14,'KALUTARA','KALUTARA',0,3,8,9,4,3,1,NULL,NULL,1,'2019-01-23 07:42:52'),(15,'KANDY','KANDY',0,4,12,13,4,1,1,NULL,NULL,1,'2019-01-23 07:46:34'),(16,'MATALE','MATALE',0,4,14,15,4,2,1,NULL,NULL,1,'2019-01-23 07:46:59'),(17,'NUWARA ELIYA','NUWARA ELIYA',0,4,16,17,4,3,1,NULL,NULL,1,'2019-01-23 07:47:28'),(18,'GALLE','GALLE',0,5,20,21,4,1,1,NULL,NULL,1,'2019-01-23 07:48:00'),(19,'HAMBANTOTA','HAMBANTOTA',0,5,22,23,4,2,1,NULL,NULL,1,'2019-01-23 07:48:28'),(20,'MATARA','MATARA',0,5,24,25,4,3,1,NULL,NULL,1,'2019-01-23 07:48:42'),(21,'BADULLA','BADULLA',0,6,28,29,4,1,1,NULL,NULL,1,'2019-01-23 07:49:06'),(22,'MONARAGALA','MONARAGALA',0,6,30,31,4,2,1,NULL,NULL,1,'2019-01-23 07:49:23'),(23,'KEGALLE','KEGALLE',0,7,34,35,4,1,1,NULL,NULL,1,'2019-01-23 07:49:53'),(24,'RATNAPURA','RATNAPURA',0,7,36,37,4,2,1,NULL,NULL,1,'2019-01-23 07:50:10'),(25,'KURUNEGALA','KURUNEGALA',0,8,40,41,4,1,1,NULL,NULL,1,'2019-01-23 07:51:20'),(26,'PUTTALAM','PUTTALAM',0,8,42,43,4,2,1,NULL,NULL,1,'2019-01-23 07:51:36'),(27,'ANURADHAPURA','ANURADHAPURA',0,9,46,47,4,1,1,NULL,NULL,1,'2019-01-23 07:52:52'),(28,'POLANNARUWA','POLANNARUWA',0,9,48,49,4,2,1,NULL,NULL,1,'2019-01-23 07:53:14'),(29,'JAFFNA','JAFFNA',0,10,52,53,4,1,1,NULL,NULL,1,'2019-01-23 07:53:44'),(30,'MANNAR','MANNAR',0,10,54,55,4,3,1,NULL,NULL,1,'2019-01-23 07:53:58'),(31,'MULLAITIVU','MULLAITIVU',0,10,56,57,4,4,1,NULL,NULL,1,'2019-01-23 07:54:21'),(32,'VAVUNIYA','VAVUNIYA',0,10,58,59,4,5,1,NULL,NULL,1,'2019-01-23 07:54:48'),(33,'KILINOCHCHI','KILINOCHCHI',0,10,60,61,4,2,1,NULL,NULL,1,'2019-01-23 07:55:55'),(34,'AMPARA','AMPARA',0,11,64,65,4,1,1,NULL,NULL,1,'2019-01-23 07:56:49'),(35,'BATTICALOA','BATTICALOA',0,11,66,67,4,2,1,NULL,NULL,1,'2019-01-23 07:57:46'),(36,'TRINCOMALEE','TRINCOMALEE',0,11,68,69,4,3,1,NULL,NULL,1,'2019-01-23 07:58:11');
/*!40000 ALTER TABLE `area_administratives` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-23 15:49:24
