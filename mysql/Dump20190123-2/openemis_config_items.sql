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
-- Table structure for table `config_items`
--

DROP TABLE IF EXISTS `config_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_items` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `label` varchar(100) NOT NULL,
  `value` varchar(500) NOT NULL,
  `default_value` varchar(500) DEFAULT NULL,
  `editable` int(1) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '1',
  `field_type` varchar(50) NOT NULL,
  `option_type` varchar(50) NOT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_items`
--

LOCK TABLES `config_items` WRITE;
/*!40000 ALTER TABLE `config_items` DISABLE KEYS */;
INSERT INTO `config_items` VALUES (1,'Database Version','db_version','System','Database Version','3.10.11','1.0',0,0,'','',1,'2013-12-12 13:56:00',1,'1970-01-01 00:00:00'),(2,'Title','adaptation','System','Title','OpenEMIS Core','OpenEMIS Core',1,1,'','',1,'2014-07-04 17:52:44',1,'1970-01-01 00:00:00'),(3,'Footer','footer','System','Footer','Copyright &copy; year OpenEMIS. All rights reserved.','Copyright &copy; 2015 OpenEMIS. All rights reserved.',0,1,'','',1,'2013-12-12 13:56:00',1,'1970-01-01 00:00:00'),(4,'Time Format','time_format','System','Time Format','H:i:s','H:i:s',0,1,'','',1,'2013-12-12 13:56:00',1,'1970-01-01 00:00:00'),(5,'Date Format','date_format','System','Date Format','F d, Y','Y-m-d',1,1,'Dropdown','date_format',108,'2014-04-02 16:48:23',1,'1970-01-01 00:00:00'),(7,'Image Width','dashboard_img_width','System','Image Width','700','700',0,0,'','',1,'2013-12-12 13:56:00',1,'1970-01-01 00:00:00'),(8,'Image Height','dashboard_img_height','System','Image Height','320','320',0,0,'','',1,'2013-12-12 13:56:00',1,'1970-01-01 00:00:00'),(9,'Image Default Id','dashboard_img_default','System','Image Default Id','1','1',0,0,'','',1,'2013-12-12 13:56:00',1,'1970-01-01 00:00:00'),(10,'File Size Limit','dashboard_img_size_limit','System','File Size Limit','2097152','2097152',0,0,'','',1,'2013-12-12 13:56:00',1,'1970-01-01 00:00:00'),(11,'Telephone','support_phone','Help','Telephone','+65 6659 6068','+65 6659 6068',0,1,'','',1,'2013-12-12 13:56:00',1,'1970-01-01 00:00:00'),(12,'Email','support_email','Help','Email','support@openemis.org','support@openemis.org',0,1,'','',1,'2013-12-12 13:56:00',1,'1970-01-01 00:00:00'),(13,'Address','support_address','Help','Address','18 Sin Ming Lane #06-38 Midview City Singapore 573960','18 Sin Ming Lane #06-38 Midview City Singapore 573960',0,1,'','',1,'2013-12-12 13:56:00',1,'1970-01-01 00:00:00'),(14,'Currency','currency','System','Currency','PM','$',1,1,'','',108,'2014-04-02 16:48:23',1,'2013-01-07 00:00:00'),(15,'Lowest Year','lowest_year','System','Lowest Year','1950','1950',0,1,'','',NULL,NULL,1,'2013-01-07 00:00:00'),(16,'Language','language','System','Language','en','en',1,1,'Dropdown','language',108,'2014-04-02 16:48:23',1,'2013-01-07 00:00:00'),(17,'Data Discrepancy Variation(%)','report_discrepancy_variationpercent','Data Discrepancy','Data Discrepancy','12','0',1,1,'','',1,'2014-04-24 13:32:48',1,'1970-01-01 00:00:00'),(18,'Maximum Student Age','report_outlier_max_age','Data Outliers','Data Outliers','21','0',1,1,'','',1,'2014-04-24 13:43:09',1,'1970-01-01 00:00:00'),(19,'Minimum Student Age','report_outlier_min_age','Data Outliers','Minimum Student Age','1','0',1,1,'','',108,'2014-04-02 16:48:23',1,'1970-01-01 00:00:00'),(20,'Maximum Student Number','report_outlier_max_student','Data Outliers','Maximum Student Number','21','0',1,1,'','',108,'2014-04-02 16:48:23',1,'1970-01-01 00:00:00'),(21,'Minimum Student Number','report_outlier_min_student','Data Outliers','Minimum Student Number','23131230','0',1,1,'','',108,'2014-04-02 16:48:24',1,'1970-01-01 00:00:00'),(35,'Institution Code','institution_code','Custom Validation','Institution Code','','',1,1,'','',108,'2014-04-02 16:48:24',0,'1970-01-01 00:00:00'),(36,'Institution Telephone','institution_telephone','Custom Validation','Institution Telephone','','',1,1,'','',108,'2014-04-02 16:48:24',0,'1970-01-01 00:00:00'),(37,'Institution Fax','institution_fax','Custom Validation','Institution Fax','','',1,1,'','',108,'2014-04-02 16:48:24',0,'1970-01-01 00:00:00'),(38,'Postal Code','postal_code','Custom Validation','Postal Code','','',1,1,'','',108,'2014-04-02 16:48:24',0,'2016-10-14 06:16:09'),(48,'Change Administrator password','change_password','System','Change Administrator password','1','1',0,0,'','',NULL,NULL,0,'1970-01-01 00:00:00'),(49,'LDAP Server','host','LDAP Configuration','LDAP Server','ldap.testathon.net','ldap.testathon.net',1,1,'','',108,'2014-04-02 16:48:25',1,'2013-08-20 14:46:02'),(50,'Port','port','LDAP Configuration','Port','389','389',1,1,'','',108,'2014-04-02 16:48:25',1,'2013-08-20 14:46:02'),(51,'Version','ldap_version','LDAP Configuration','Version','3','3',1,1,'','',108,'2014-04-02 16:48:25',1,'2013-08-20 14:46:02'),(52,'Base DN','base_dn','LDAP Configuration','Base DN','OU=users,DC=testathon,DC=net','OU=users,DC=testathon,DC=net',1,1,'','',108,'2014-04-02 16:48:25',1,'2013-08-20 14:46:02'),(53,'Test Connection','test_connection','LDAP Configuration','Test Connection','','',1,1,'','',108,'2014-04-02 16:48:25',1,'2013-08-20 14:46:02'),(55,'Title','where_is_my_school_title','Where\'s My School Config','Title','Where is My School?','',1,1,'','',1,'2014-10-20 17:41:38',1,'1970-01-01 00:00:00'),(56,'Where is my School URL','where_is_my_school_url','Where\'s My School Config','Where is my School URL','http://www.openemis.org/demo','http://www.openemis.org/demo',1,1,'','',1,'2014-10-20 17:41:57',1,'1970-01-01 00:00:00'),(57,'Starting Longitude','where_is_my_school_start_long','Where\'s My School Config','Starting Longitude','-88.53892','0',1,1,'','',1,'2014-10-20 17:40:28',1,'1970-01-01 00:00:00'),(58,'Starting Latitude','where_is_my_school_start_lat','Where\'s My School Config','Starting Latitude','17.048877','0',1,1,'','',1,'2014-10-20 17:40:16',1,'1970-01-01 00:00:00'),(59,'Starting Range','where_is_my_school_start_range','Where\'s My School Config','Starting Range','2613016','2000000',1,1,'','',108,'2014-04-02 16:48:25',1,'1970-01-01 00:00:00'),(60,'Allow Users to change Language','language_menu','System','Allow Users to change Language','1','0',1,1,'Dropdown','yes_no',1,'2014-04-24 11:47:38',1,'1970-01-01 00:00:00'),(61,'SMS Provider URL','sms_provider_url','SMS','SMS Provider URL','http://www.smsdome.com/api/http/sendsms.aspx?login=KORD&password=KT131210&responseformat=JSON','http://www.smsdome.com/api/http/sendsms.aspx?login=KORD&password=KT131210&responseformat=JSON',1,1,'','',108,'2014-04-02 16:48:25',1,'2013-12-19 10:53:33'),(62,'SMS Number','sms_number','SMS','SMS Number','receivers','receivers',1,1,'','',108,'2014-04-02 16:48:25',1,'2013-12-19 10:53:33'),(63,'SMS Content','sms_content','SMS','SMS Content','content','content',1,1,'','',108,'2014-04-02 16:48:25',1,'2013-12-19 10:53:33'),(64,'SMS Retry Times','sms_retry_times','SMS','SMS Retry Times','10','3',1,1,'','',108,'2014-04-02 16:48:25',1,'2013-12-19 10:53:33'),(65,'SMS Retry Delay','sms_retry_wait','SMS','SMS Retry Delay','5','5',1,1,'','',108,'2014-04-02 16:48:25',1,'2013-12-19 10:53:33'),(66,'Maximum Credits','training_credit_hour','Training','Maximum Credits','2','10',1,1,'','',1,'2014-04-24 13:48:41',0,'2014-02-21 00:00:00'),(69,'Contacts','StudentContacts','Add New Student','Contacts','0','0',1,1,'Dropdown','wizard',108,'2014-04-02 16:48:25',0,'1970-01-01 00:00:00'),(70,'Identities','StudentIdentities','Add New Student','Identities','0','0',1,1,'Dropdown','wizard',108,'2014-04-02 16:48:25',0,'1970-01-01 00:00:00'),(71,'Nationalities','StudentNationalities','Add New Student','Nationalities','0','0',1,1,'Dropdown','wizard',108,'2014-04-02 16:48:25',0,'1970-01-01 00:00:00'),(75,'Special Needs','StudentSpecialNeeds','Add New Student','Special Needs','2','0',1,1,'Dropdown','wizard',1,'2015-07-10 06:26:28',1,'1970-01-01 00:00:00'),(93,'Contacts','StaffContacts','Add New Staff','Contacts','0','0',1,1,'Dropdown','wizard',108,'2014-04-02 16:48:26',0,'1970-01-01 00:00:00'),(94,'Identities','StaffIdentities','Add New Staff','Identities','0','0',1,1,'Dropdown','wizard',108,'2014-04-02 16:48:26',0,'1970-01-01 00:00:00'),(95,'Nationalities','StaffNationalities','Add New Staff','Nationalities','0','0',1,1,'Dropdown','wizard',108,'2014-04-02 16:48:26',0,'1970-01-01 00:00:00'),(99,'Special Needs','StaffSpecialNeeds','Add New Staff','Special Needs','0','0',1,1,'Dropdown','wizard',108,'2014-04-02 16:48:26',0,'1970-01-01 00:00:00'),(100,'Area Education API','area_api','Administrative Boundaries','Area Education API','','',0,1,'','',2,'2016-11-11 15:44:18',2,'2016-09-13 05:53:52'),(104,'Display Area Level','institution_area_level_id','Institution','Display Area Level','1','1',1,1,'Dropdown','database:Area.AreaLevels',2,'2017-10-27 14:32:53',1,'2015-08-12 00:00:00'),(105,'Number of Shifts','no_of_shifts','System','Number of Shifts','3','1',1,1,'','',1,'2014-04-24 13:46:52',1,'1970-01-01 00:00:00'),(106,'Admission Age Plus','admission_age_plus','Student Admission Age','Admission Age Plus','0','0',1,1,'','',1,'2014-04-24 13:46:27',1,'2014-03-21 00:00:00'),(107,'Admission Age Minus','admission_age_minus','Student Admission Age','Admission Age Minus','0','0',1,1,'','',108,'2014-04-02 16:48:26',1,'2014-03-21 00:00:00'),(108,'First Day of Week','first_day_of_week','Attendance','First Day of Week','1','1',1,1,'Dropdown','first_day_of_week',NULL,NULL,1,'1970-01-01 00:00:00'),(109,'Hours per Day','hours_per_day','Attendance','Hours per Day','','6',1,1,'','',NULL,NULL,1,'1970-01-01 00:00:00'),(110,'Start Time','start_time','Attendance','Start Time','','08:00 AM',1,1,'','',1,'2014-06-12 10:42:48',1,'1970-01-01 00:00:00'),(111,'Days per Week','days_per_week','Attendance','Days per Week','','5',1,1,'','',1,'2014-06-12 10:34:07',1,'1970-01-01 00:00:00'),(112,'Frequency','alert_frequency','Alerts','Frequency','1','1',1,0,'','',NULL,NULL,1,'1970-01-01 00:00:00'),(113,'Retry','alert_retry','Alerts','Retry','0','0',1,0,'','',NULL,NULL,1,'1970-01-01 00:00:00'),(114,'SMS Content Length','sms_content_length','SMS','SMS Content Length','','160',1,1,'','',NULL,NULL,1,'1970-01-01 00:00:00'),(116,'Url','support_url','Help','Url','https://support.openemis.org/core/','https://support.openemis.org/core/',0,1,'','',NULL,NULL,1,'2015-12-02 11:08:14'),(118,'Google Map Center Longitude','google_map_center_longitude','Map','Google Map Center Longitude','103.81','0',1,1,'','',2,'2016-05-05 06:15:11',1,'2016-01-12 16:03:37'),(119,'Google Map Center Latitude','google_map_center_latitude','Map','Google Map Center Latitude','1.35','0',1,1,'','',2,'2016-05-05 06:15:25',1,'2016-01-12 16:03:37'),(120,'Google Map Zoom','google_map_zoom','Map','Google Map Zoom','10','10',1,1,'','',NULL,NULL,1,'2016-01-12 16:03:37'),(121,'Minimum Length','password_min_length','Password','Min Length','6','6',0,1,'','',NULL,NULL,1,'2016-03-10 10:30:42'),(122,'Has at least 1 Uppercase Character','password_has_uppercase','Password','Has Uppercase','0','0',0,1,'Dropdown','yes_no',NULL,NULL,1,'2016-03-10 10:30:42'),(123,'Has at least 1 Lowercase Character','password_has_lowercase','Password','Has Lowercase','0','0',0,1,'Dropdown','yes_no',NULL,NULL,1,'2016-03-10 10:30:42'),(124,'Has at least 1 Number','password_has_number','Password','Has Number','0','0',0,1,'Dropdown','yes_no',NULL,NULL,1,'2016-03-10 10:30:42'),(125,'Has at least 1 Non-alphanumeric Character','password_has_non_alpha','Password','Has Non Alpha','0','0',0,1,'Dropdown','yes_no',NULL,NULL,1,'2016-03-10 10:30:42'),(126,'Validate Area Level','institution_validate_area_level_id','Institution','Validate Area Level','3','1',1,1,'Dropdown','database:Area.AreaLevels',1,'2019-01-23 07:59:27',1,'2017-03-08 00:00:00'),(127,'Validate Area Administrative Level','institution_validate_area_administrative_level_id','Institution','Validate Area Administrative Level','4','1',1,1,'Dropdown','database:Area.AreaAdministrativeLevels',1,'2019-01-23 07:59:37',1,'2017-03-08 00:00:00'),(200,'Version Support Emails','version_support_emails','System','Version Support Emails','support@openemis.org,shasanuddin@kordit.com','support@openemis.org',0,0,'','',NULL,NULL,1,'2017-01-03 10:12:18'),(201,'Version API Domain','version_api_domain','System','Version API Domain','https://demo.openemis.org/core','https://demo.openemis.org/core',0,0,'','',NULL,NULL,1,'2017-01-03 10:12:18'),(1000,'Product Lists','product_lists','Product Lists','Product Lists','0','0',0,1,'','',NULL,NULL,1,'2016-09-13 05:53:53'),(1001,'Enable Local Login','enable_local_login','Authentication','Enable Local Login','1','1',1,1,'Dropdown','yes_no',1,'2014-04-24 12:58:00',1,'2013-08-20 14:46:02'),(1002,'Type','external_data_source_type','External Data Source','Type','None','None',1,1,'Dropdown','external_data_source_type',2,'2017-09-26 10:41:01',1,'2016-10-24 10:19:01'),(1003,'OpenEMIS ID Prefix','openemis_id_prefix','Auto Generated OpenEMIS ID','OpenEMIS ID Prefix',',0',',0',1,1,'','',NULL,NULL,1,'2016-12-09 10:47:52'),(1004,'Webhooks','webhooks','Webhooks','Webhooks','0','0',1,1,'','',NULL,NULL,1,'2017-03-20 11:43:54');
/*!40000 ALTER TABLE `config_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-23 15:49:01
