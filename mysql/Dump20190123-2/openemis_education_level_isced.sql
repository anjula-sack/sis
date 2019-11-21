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
-- Table structure for table `education_level_isced`
--

DROP TABLE IF EXISTS `education_level_isced`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_level_isced` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `isced_level` int(2) NOT NULL,
  `isced_version` varchar(50) NOT NULL,
  `order` int(3) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_level_isced`
--

LOCK TABLES `education_level_isced` WRITE;
/*!40000 ALTER TABLE `education_level_isced` DISABLE KEYS */;
INSERT INTO `education_level_isced` VALUES (1,'EARLY CHILDHOOD EDUCATION','',0,'2011',1,1,NULL,NULL,1,'2013-02-06 15:07:10'),(2,'PRIMARY','',1,'2011',2,1,NULL,NULL,1,'2013-02-06 15:07:10'),(3,'LOWER SECONDARY','',2,'2011',3,1,NULL,NULL,1,'2013-02-06 15:07:10'),(4,'UPPER SECONDARY','',3,'2011',4,1,NULL,NULL,1,'2013-02-06 15:07:10'),(5,'POST-SECONDARY NON-TERTIARY','',4,'2011',5,1,NULL,NULL,1,'2013-02-06 15:07:10'),(6,'SHORT-CYCLE TERTIARY','',5,'2011',6,1,NULL,NULL,1,'2013-02-06 15:07:10'),(7,'BACHELOR OR EQUIVALENT','',6,'2011',7,1,NULL,NULL,1,'2013-02-06 15:07:10'),(8,'MASTER OR EQUIVALENT','',7,'2011',8,1,NULL,NULL,1,'2013-02-06 15:07:10'),(9,'DOCTORAL OR EQUIVALENT','',8,'2011',9,1,NULL,NULL,1,'2013-02-06 15:07:10'),(10,'OTHERS','',-1,'2011',10,1,NULL,NULL,1,'2013-02-06 15:07:10');
/*!40000 ALTER TABLE `education_level_isced` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-23 15:49:11
