CREATE DATABASE  IF NOT EXISTS `hostel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hostel`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: hostel
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `roomNumber` int NOT NULL,
  `Floor` int DEFAULT NULL,
  `roomGender` varchar(45) DEFAULT NULL,
  `studentsCount` int DEFAULT NULL,
  PRIMARY KEY (`roomNumber`),
  UNIQUE KEY `RoomNumber_UNIQUE` (`roomNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (101,1,'',0),(102,1,'',0),(103,1,'',0),(104,1,'',0),(105,1,'',0),(106,1,'',0),(107,1,'',0),(108,1,'',0),(109,1,'',0),(110,1,'',0),(201,2,'Мужской',1),(202,2,'',0),(203,2,'',0),(204,2,'',0),(205,2,'',0),(206,2,'',0),(207,2,'Женский',2),(208,2,'',0),(209,2,'Мужской',3),(210,2,'',0),(301,3,'',0),(302,3,'',0),(303,3,'',0),(304,3,'',0),(305,3,'',0),(306,3,'Женский',2),(307,3,'',0),(308,3,'Женский',1),(309,3,'',0),(310,3,'',0),(401,4,'',0),(402,4,'',0),(403,4,'',0),(404,4,'Мужской',2),(405,4,'',0),(406,4,'',0),(407,4,'Мужской',1),(408,4,'',0),(409,4,'',0),(410,4,'',0),(501,5,'',0),(502,5,'',0),(503,5,'',0),(504,5,'',0),(505,5,'',0),(506,5,'',0),(507,5,'',0),(508,5,'Мужской',1),(509,5,'Женский',1),(510,5,'',0);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-07 15:57:26
