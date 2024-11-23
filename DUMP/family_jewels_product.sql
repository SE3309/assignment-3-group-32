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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `creatorId` int NOT NULL,
  `ringId` int DEFAULT NULL,
  `necklaceId` int DEFAULT NULL,
  `gemId` int DEFAULT NULL,
  `metalId` int NOT NULL,
  `type` enum('Ring','Necklace') NOT NULL,
  `name` varchar(30) NOT NULL,
  `mass` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`productId`),
  KEY `creatorId` (`creatorId`),
  KEY `ringId` (`ringId`),
  KEY `necklaceId` (`necklaceId`),
  KEY `gemId` (`gemId`),
  KEY `metalId` (`metalId`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`creatorId`) REFERENCES `user` (`userId`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`ringId`) REFERENCES `ring` (`ringId`),
  CONSTRAINT `product_ibfk_3` FOREIGN KEY (`necklaceId`) REFERENCES `necklace` (`necklaceId`),
  CONSTRAINT `product_ibfk_4` FOREIGN KEY (`gemId`) REFERENCES `gem` (`gemId`),
  CONSTRAINT `product_ibfk_5` FOREIGN KEY (`metalId`) REFERENCES `metal` (`metalId`),
  CONSTRAINT `product_chk_1` CHECK ((((`ringId` is null) and (`necklaceId` is not null)) or ((`ringId` is not null) and (`necklaceId` is null))))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-22 19:07:45
