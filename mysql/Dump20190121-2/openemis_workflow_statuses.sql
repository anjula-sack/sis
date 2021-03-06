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
-- Table structure for table `workflow_statuses`
--

DROP TABLE IF EXISTS `workflow_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `is_editable` int(1) NOT NULL,
  `is_removable` int(1) NOT NULL,
  `workflow_model_id` int(11) NOT NULL COMMENT 'links to workflow_models.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_model_id` (`workflow_model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_statuses`
--

LOCK TABLES `workflow_statuses` WRITE;
/*!40000 ALTER TABLE `workflow_statuses` DISABLE KEYS */;
INSERT INTO `workflow_statuses` VALUES (1,'PENDING','Pending',0,0,15,NULL,NULL,1,'2019-01-21 15:24:21'),(2,'APPROVED','Approved',0,0,15,NULL,NULL,1,'2019-01-21 15:24:21'),(3,'REJECTED','Rejected',0,0,15,NULL,NULL,1,'2019-01-21 15:24:21'),(4,'CANCELLED','Cancelled',0,0,15,NULL,NULL,1,'2019-01-21 15:24:21'),(5,'PENDING','Pending',0,0,16,NULL,NULL,1,'2019-01-21 15:24:23'),(6,'APPROVED','Approved',0,0,16,NULL,NULL,1,'2019-01-21 15:24:23'),(7,'REJECTED','Rejected',0,0,16,NULL,NULL,1,'2019-01-21 15:24:23'),(8,'CANCELLED','Cancelled',0,0,16,NULL,NULL,1,'2019-01-21 15:24:23'),(9,'PENDING','Pending',0,0,17,NULL,NULL,1,'2019-01-21 15:24:23'),(10,'APPROVED','Approved',0,0,17,NULL,NULL,1,'2019-01-21 15:24:23'),(11,'REJECTED','Rejected',0,0,17,NULL,NULL,1,'2019-01-21 15:24:23'),(12,'CANCELLED','Cancelled',0,0,17,NULL,NULL,1,'2019-01-21 15:24:23'),(13,'PENDING','Pending',0,0,18,NULL,NULL,1,'2019-01-21 15:24:24'),(14,'APPROVED','Approved',0,0,18,NULL,NULL,1,'2019-01-21 15:24:24'),(15,'REJECTED','Rejected',0,0,18,NULL,NULL,1,'2019-01-21 15:24:24'),(16,'CANCELLED','Cancelled',0,0,18,NULL,NULL,1,'2019-01-21 15:24:24'),(17,'PENDING_REVIEW','Pending Review',0,0,20,NULL,NULL,1,'2019-01-21 15:24:27'),(18,'PENDING_APPROVAL','Pending Approval',0,0,20,NULL,NULL,1,'2019-01-21 15:24:27'),(19,'APPROVED','Approved',0,0,20,NULL,NULL,1,'2019-01-21 15:24:27'),(20,'REJECTED','Rejected',0,0,20,NULL,NULL,1,'2019-01-21 15:24:27');
/*!40000 ALTER TABLE `workflow_statuses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-21 21:45:41
