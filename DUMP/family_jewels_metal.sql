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
-- Table structure for table `metal`
--

DROP TABLE IF EXISTS `metal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metal` (
  `metalId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `purity` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `costPerGram` float NOT NULL,
  `density` float NOT NULL,
  PRIMARY KEY (`metalId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metal`
--

LOCK TABLES `metal` WRITE;
/*!40000 ALTER TABLE `metal` DISABLE KEYS */;
INSERT INTO `metal` VALUES (1,'Gold','99.9%','Precious',60,19.32),(2,'Gold','92.5%','Precious',55,18.45),(3,'Silver','99.9%','Precious',0.8,10.49),(4,'Silver','92.5%','Precious',0.75,10.3),(5,'Platinum','99.9%','Precious',70,21.45),(6,'Platinum','95.0%','Precious',68,20.8),(7,'Palladium','99.5%','Precious',65,12.02),(8,'Palladium','98.0%','Precious',63,11.8),(9,'Titanium','99.5%','Base',0.045,4.51),(10,'Titanium','96.0%','Base',0.043,4.3),(11,'Copper','99.9%','Base',0.009,8.96),(12,'Copper','97.0%','Base',0.0085,8.72),(13,'Bronze','90.0%','Alloy',0.0065,8.9),(14,'Bronze','88.0%','Alloy',0.006,8.8),(15,'Brass','90.0%','Alloy',0.0055,8.5),(16,'Brass','88.0%','Alloy',0.0052,8.4),(17,'Rhodium','99.9%','Precious',250,12.41),(18,'Rhodium','95.0%','Precious',240,12),(19,'Nickel','99.9%','Base',0.03,8.9),(20,'Nickel','95.0%','Base',0.028,8.65),(21,'Zinc','99.9%','Base',0.003,7.14),(22,'Zinc','97.0%','Base',0.0028,7),(23,'Iridium','99.9%','Precious',150,22.56),(24,'Iridium','95.0%','Precious',145,22),(25,'Osmium','99.9%','Precious',200,22.59),(26,'Osmium','95.0%','Precious',190,22.1),(27,'Tungsten','99.5%','Base',0.07,19.25),(28,'Tungsten','97.0%','Base',0.068,19);
/*!40000 ALTER TABLE `metal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-22 19:12:58
