-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: family_jewels
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `necklace`
--

DROP TABLE IF EXISTS `necklace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `necklace` (
  `necklaceId` int NOT NULL AUTO_INCREMENT,
  `linkId` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `linkAmount` int DEFAULT '20',
  `size` float DEFAULT NULL,
  `totalVolume` float DEFAULT NULL,
  PRIMARY KEY (`necklaceId`),
  KEY `linkId` (`linkId`),
  CONSTRAINT `necklace_ibfk_1` FOREIGN KEY (`linkId`) REFERENCES `link` (`linkId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `necklace`
--

LOCK TABLES `necklace` WRITE;
/*!40000 ALTER TABLE `necklace` DISABLE KEYS */;
INSERT INTO `necklace` VALUES (1,1,'Cuban Link Necklace, 315mm',30,315,369),(2,1,'Cuban Link Necklace, 367.5mm',35,367.5,430.5),(3,1,'Cuban Link Necklace, 420mm',40,420,492),(4,1,'Cuban Link Necklace, 472.5mm',45,472.5,553.5),(5,1,'Cuban Link Necklace, 525mm',50,525,615),(6,2,'Cuban Link Necklace, 330mm',30,330,390),(7,2,'Cuban Link Necklace, 385mm',35,385,455),(8,2,'Cuban Link Necklace, 440mm',40,440,520),(9,7,'Curb Chain Necklace, 255mm',30,255,300),(10,8,'Curb Chain Necklace, 240mm',30,240,285),(11,10,'Curb Chain Necklace, 264.0000057220459mm',30,264,306),(12,11,'Figaro Chain Necklace, 270mm',30,270,303),(13,12,'Figaro Chain Necklace, 279mm',30,279,315),(14,12,'Figaro Chain Necklace, 325.5mm',35,325.5,367.5),(15,12,'Figaro Chain Necklace, 372mm',40,372,420),(16,12,'Figaro Chain Necklace, 418.5mm',45,418.5,472.5),(17,51,'Singapore Chain Necklace, 315mm',45,315,369),(18,54,'Singapore Chain Necklace, 324mm',45,324,373.5),(19,55,'Singapore Chain Necklace, 337.5mm',45,337.5,391.5),(20,66,'Bar Chain Necklace, 279mm',45,279,337.5),(21,67,'Bar Chain Necklace, 292.5mm',45,292.5,351),(22,68,'Bar Chain Necklace, 270mm',45,270,328.5);
/*!40000 ALTER TABLE `necklace` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-22 19:46:06
