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
-- Table structure for table `counties`
--

DROP TABLE IF EXISTS `counties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counties` (
  `county` varchar(64) NOT NULL,
  `cases` int(11) DEFAULT NULL,
  `deaths` int(11) DEFAULT NULL,
  PRIMARY KEY (`county`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counties`
--

LOCK TABLES `counties` WRITE;
/*!40000 ALTER TABLE `counties` DISABLE KEYS */;
INSERT INTO `counties` VALUES ('Adams',148,4),('Allegheny',1365,102),('Armstrong',52,2),('Beaver',458,68),('Bedford ',24,1),('Berks',2948,118),('Blair',25,0),('Bradford',35,2),('Bucks',3356,240),('Butler',180,6),('Cambria',34,1),('Cameron',1,0),('Carbon',185,15),('Centre',105,1),('Chester',1560,118),('Clarion',23,1),('Clearfield',21,0),('Clinton',33,0),('Columbia',296,13),('Crawford',19,0),('Cumberland',375,18),('Dauphin',652,28),('Delaware',4198,258),('Elk',4,0),('Erie',91,2),('Fayette',83,4),('Forest',7,0),('Franklin',377,8),('Fulton',6,0),('Greene',27,1),('Huntingdon',57,0),('Indiana',70,4),('Jefferson',6,0),('Juniata',86,1),('Lackawanna',1017,87),('Lancaster',1991,113),('Lawrence',65,6),('Lebanon',756,10),('Lehigh',2963,83),('Luzerne',2255,101),('Lycoming',86,3),('McKean',6,0),('Mercer',66,1),('Mifflin',39,0),('Monroe',1173,55),('Montgomery',4645,382),('Montour',50,0),('Northampton',2240,94),('Northumberland',100,0),('Perry',34,1),('Philadelphia',13316,424),('Pike',408,17),('Potter',4,0),('Schuylkill',398,7),('Snyder',33,1),('Somerset',30,1),('Sullivan',1,0),('Susquehanna',86,9),('Tioga',16,1),('Union',38,0),('Venango',7,0),('Warren',1,0),('Washington',120,2),('Wayne',109,5),('Westmoreland',403,26),('Wyoming',27,2),('York',702,11);
/*!40000 ALTER TABLE `counties` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-05  4:46:52
