-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: hw5
-- ------------------------------------------------------
-- Server version	5.7.29

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
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `state` varchar(64) NOT NULL,
  `cases` int(11) DEFAULT NULL,
  `deaths` int(11) DEFAULT NULL,
  `todayCases` int(11) DEFAULT NULL,
  `todayDeaths` int(11) DEFAULT NULL,
  PRIMARY KEY (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES ('Alabama',8112,298,8112,298),('Alaska',370,9,370,9),('Arizona',8924,362,8924,362),('Arkansas',3469,80,3469,80),('California',56135,2289,56135,2289),('Colorado',16918,851,16918,851),('Connecticut',29973,2556,29973,2556),('Delaware',5288,182,5288,182),('District of Columbia',5170,258,5170,258),('Florida',36897,1399,36897,1399),('Georgia',29452,1246,29452,1246),('Guam',145,5,145,5),('Hawaii',621,17,621,17),('Idaho',2106,64,2106,64),('Illinois',63777,2659,63777,2659),('Indiana',20507,1151,20507,1151),('Iowa',9703,188,9703,188),('Kansas',5383,156,5383,156),('Kentucky',5245,261,5245,261),('Louisiana',29673,2064,29673,2064),('Maine',1205,57,1205,57),('Maryland',26408,1317,26408,1317),('Massachusetts',69087,4090,69087,4090),('Michigan',43990,4139,43990,4139),('Minnesota',7234,427,7234,427),('Mississippi',7877,310,7877,310),('Missouri',8946,386,8946,386),('Montana',457,16,457,16),('Nebraska',6037,78,6037,78),('Nevada',5630,265,5630,265),('New Hampshire',2588,86,2588,86),('New Jersey',128269,7910,128269,7910),('New Mexico',4031,156,4031,156),('New York',318953,24999,318953,24999),('North Carolina',11971,442,11971,442),('North Dakota',1225,25,1225,25),('Ohio',20474,1057,20474,1057),('Oklahoma',4044,238,4044,238),('Oregon',2759,109,2759,109),('Pennsylvania',52816,2838,52816,2838),('Puerto Rico',1843,97,1843,97),('Rhode Island',9652,341,9652,341),('South Carolina',6757,283,6757,283),('South Dakota',2668,21,2668,21),('Tennessee',13571,219,13571,219),('Texas',32812,902,32812,902),('Utah',5317,50,5317,50),('Vermont',902,52,902,52),('Virgin Islands',66,4,66,4),('Virginia',19493,684,19493,684),('Washington',15462,841,15462,841),('West Virginia',1224,48,1224,48),('Wisconsin',8236,340,8236,340),('Wyoming',596,7,596,7);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-05  4:46:35
