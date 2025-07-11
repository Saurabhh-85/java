/*## 💾 Database Import Instructions
The file `bds_backup.sql` contains the full MySQL database structure and data.

To import:
mysql -u root -p BDS < bds_backup.sql*/;
-- MySQL dump 10.11
--
-- Host: localhost    Database: BDS
-- ------------------------------------------------------
-- Server version	5.0.77-community-nt

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
-- Table structure for table `assignproject`
--

DROP TABLE IF EXISTS `assignproject`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `assignproject` (
  `projectID` int(11) default NULL,
  `empCode` int(11) default NULL,
  KEY `projectID` (`projectID`),
  KEY `empCode` (`empCode`),
  CONSTRAINT `assignproject_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `project` (`projectID`),
  CONSTRAINT `assignproject_ibfk_2` FOREIGN KEY (`empCode`) REFERENCES `employee` (`empCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `assignproject`
--

LOCK TABLES `assignproject` WRITE;
/*!40000 ALTER TABLE `assignproject` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignproject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugreport`
--

DROP TABLE IF EXISTS `bugreport`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bugreport` (
  `bugNo` int(11) NOT NULL,
  `bugCode` int(11) default NULL,
  `projectID` int(11) default NULL,
  `TCode` int(11) default NULL,
  `ECode` int(11) default NULL,
  `status` varchar(20) default NULL,
  `bugDes` varchar(100) default NULL,
  PRIMARY KEY  (`bugNo`),
  KEY `bugCode` (`bugCode`),
  KEY `projectID` (`projectID`),
  KEY `TCode` (`TCode`),
  KEY `ECode` (`ECode`),
  CONSTRAINT `bugreport_ibfk_1` FOREIGN KEY (`bugCode`) REFERENCES `bugtype` (`bugCode`),
  CONSTRAINT `bugreport_ibfk_2` FOREIGN KEY (`projectID`) REFERENCES `project` (`projectID`),
  CONSTRAINT `bugreport_ibfk_3` FOREIGN KEY (`TCode`) REFERENCES `employee` (`empCode`),
  CONSTRAINT `bugreport_ibfk_4` FOREIGN KEY (`ECode`) REFERENCES `employee` (`empCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `bugreport`
--

LOCK TABLES `bugreport` WRITE;
/*!40000 ALTER TABLE `bugreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugtype`
--

DROP TABLE IF EXISTS `bugtype`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bugtype` (
  `bugCode` int(11) NOT NULL,
  `bugCatgory` varchar(30) default NULL,
  `bugSeverty` varchar(20) default NULL,
  PRIMARY KEY  (`bugCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `bugtype`
--

LOCK TABLES `bugtype` WRITE;
/*!40000 ALTER TABLE `bugtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `employee` (
  `empCode` int(11) NOT NULL,
  `empName` varchar(30) default NULL,
  `empEmail` varchar(40) default NULL,
  `empPassword` varchar(20) default NULL,
  `gender` varchar(10) default NULL,
  `DOB` varchar(20) default NULL,
  `mobileNo` bigint(20) default NULL,
  `Role` varchar(20) default NULL,
  PRIMARY KEY  (`empCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1101,'Amit Saraswat','amit_saraswat@gmail.com','amitsar@1234','Male','2.10.2024',9998888000,'Junior');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `project` (
  `projectID` int(11) NOT NULL,
  `projectName` varchar(30) default NULL,
  `SDate` varchar(30) default NULL,
  `EDate` varchar(30) default NULL,
  `projectDec` varchar(200) default NULL,
  PRIMARY KEY  (`projectID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-30 15:03:41
