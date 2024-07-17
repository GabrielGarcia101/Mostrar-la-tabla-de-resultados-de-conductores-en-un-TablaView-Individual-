-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: programacion_proyecto
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `sprintresults`
--

DROP TABLE IF EXISTS `sprintresults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sprintresults` (
  `sprintResultId` int NOT NULL,
  `raceId` int DEFAULT NULL,
  `driverId` int DEFAULT NULL,
  `constructorId` int DEFAULT NULL,
  `number` int DEFAULT NULL,
  `grid` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  `positionText` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `positionOrder` int DEFAULT NULL,
  `points` float DEFAULT NULL,
  `laps` int DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `miliseconds` int DEFAULT NULL,
  `fastestLap` int DEFAULT NULL,
  `fastestLapTime` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  PRIMARY KEY (`sprintResultId`),
  KEY `raceId` (`raceId`),
  KEY `driverId` (`driverId`),
  KEY `constructorId` (`constructorId`),
  KEY `statusId` (`statusId`),
  CONSTRAINT `sprintresults_ibfk_1` FOREIGN KEY (`raceId`) REFERENCES `races` (`raceId`),
  CONSTRAINT `sprintresults_ibfk_2` FOREIGN KEY (`driverId`) REFERENCES `drivers` (`driverId`),
  CONSTRAINT `sprintresults_ibfk_3` FOREIGN KEY (`constructorId`) REFERENCES `constructors` (`constructorId`),
  CONSTRAINT `sprintresults_ibfk_4` FOREIGN KEY (`statusId`) REFERENCES `status` (`statusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sprintresults`
--

LOCK TABLES `sprintresults` WRITE;
/*!40000 ALTER TABLE `sprintresults` DISABLE KEYS */;
/*!40000 ALTER TABLE `sprintresults` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-16 10:14:34
