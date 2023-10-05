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

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `firstName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `secondName` varchar(100) DEFAULT NULL,
  `patronymic` varchar(100) DEFAULT NULL,
  `gender` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `course` int DEFAULT NULL,
  `group` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `roomNumber` int DEFAULT NULL,
  `studentId` int NOT NULL AUTO_INCREMENT,
  `isSettled` tinyint DEFAULT NULL,
  PRIMARY KEY (`studentId`),
  UNIQUE KEY `studentId_UNIQUE` (`studentId`),
  KEY `roomNumber_idx` (`roomNumber`),
  CONSTRAINT `roomNumber` FOREIGN KEY (`roomNumber`) REFERENCES `rooms` (`roomNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('Кишкурно','Мария','Вячеславовна','Женский',3,'10702220','+375296237948',306,10,1),('Давидович','Елизавета','Николаевна','Женский',3,'10702220','+375296237948',207,11,1),('Парахневич','Елена','Сергеевна','Женский',3,'10702220','+375297543908',509,12,1),('Бартось','Павел','Юрьевич','Мужской',2,'10702121','+375298765290',209,13,1),('Борейко','Богдан','Александрович','Мужской',2,'10703221','+375293456793',209,14,1),('Бондарук','Вероника','Сергеевна','Женский',3,'10706120','+375446538907',306,16,1),('Правошинский','Владислав','Михайлович','Мужской',3,'10701220','+375299087647',407,20,1),('Говор','Виктория','Владимировна','Женский',1,'10702222','+375297081576',308,21,1),('Рудых','Екатерина','Гордеевна','Женский',1,'10705222','+375297088762',207,22,1),('Жлобинский','Анатолий','Александрович','Мужской',5,'10706118','+375297658766',508,24,1),('Авсиевич','Андрей','Михайлович','Мужской',1,'10706122','+375445678903',209,25,1),('Копилкин','Михаил','Вадимович','Мужской',3,'10702220','+3759488003',404,27,1),('Володько','Вадим','Артурович','Мужской',3,'10702220','+375447656331',404,28,1),('Тарасовец','Вадим','Андреевич','Мужской',1,'10702220','+375291770300',201,29,1),('Куцанова','Мария','Вячеславовна','Женский',2,'10702221','+375296237968',NULL,32,0),('Пильневич','Анатолий','Александрович','Мужской',5,'10705218','+375442657896',NULL,33,0),('Рыжко','Татьяна','Егоровна','Женский',1,'10701122','+375447876567',NULL,34,0),('Кишкурно','Михаил','Вячеславович','Мужской',1,'10701322','+375297643219',NULL,37,0);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-07 15:58:09
