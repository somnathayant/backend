-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: librarydb
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` varchar(40) NOT NULL,
  `bookid` varchar(45) DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  `available` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `bookauthor` varchar(45) DEFAULT NULL,
  `bookcondition` varchar(45) DEFAULT NULL,
  `usrid` varchar(40) DEFAULT NULL,
  `loc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_auth_idx` (`usrid`),
  CONSTRAINT `user_auth` FOREIGN KEY (`usrid`) REFERENCES `user_auth` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `id` varchar(40) NOT NULL,
  `party1` varchar(45) DEFAULT NULL,
  `party2` varchar(45) DEFAULT NULL,
  `bookid` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `duration` varchar(45) DEFAULT NULL,
  `method` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES ('chk1','s1@gmail.comaW1sZWdlbmQ=','s2@gmail.comaW1sZWdlbmQ=','bk1','avilable','5','currier');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth`
--

DROP TABLE IF EXISTS `user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_auth` (
  `userid` varchar(40) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth`
--

LOCK TABLES `user_auth` WRITE;
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
INSERT INTO `user_auth` VALUES ('aaaaacXFxcXE=','aaaaa','cXFxcXE=','aaaaacXFxcXE='),('aaac3NzZGQ=','aaa','c3NzZGQ=','aaac3NzZGQ='),('ccccYmJiYmI=','cccc','YmJiYmI=','ccccYmJiYmI='),('eeeea2tra2s=','eeee','a2tra2s=','eeeea2tra2s='),('qwqwqe@gmail.comZGZkZmRm','qwqwqe@gmail.com','ZGZkZmRm','qwqwqe@gmail.comZGZkZmRm'),('s1@gmail.comaW1sZWdlbmQ=','s1@gmail.com','aW1sZWdlbmQ=','s1@gmail.comaW1sZWdlbmQ='),('s2@gmail.comaW1sZWdlbmQ=','s2@gmail.com','aW1sZWdlbmQ=','s2@gmail.comaW1sZWdlbmQ='),('s5@gmail.comaW1sZWdlbmQ=','s5@gmail.com','aW1sZWdlbmQ=','s5@gmail.comaW1sZWdlbmQ='),('s5@gmail.comYVcxc1pXZGxibVE9','s5@gmail.com','YVcxc1pXZGxibVE9','s5@gmail.comYVcxc1pXZGxibVE9'),('ssssc3Nzc3M=','ssss','c3Nzc3M=','ssssc3Nzc3M='),('ttttb29vb28=','tttt','b29vb28=','ttttb29vb28=');
/*!40000 ALTER TABLE `user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'librarydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-17 23:03:54
