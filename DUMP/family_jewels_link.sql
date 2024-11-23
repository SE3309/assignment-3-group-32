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
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link` (
  `linkId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `size` float NOT NULL,
  `volume` float NOT NULL,
  PRIMARY KEY (`linkId`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
INSERT INTO `link` VALUES (1,'Cuban Link',10.5,12.3),(2,'Cuban Link',11,13),(3,'Cuban Link',9.8,11.5),(4,'Cuban Link',10.2,12.7),(5,'Cuban Link',11.5,13.8),(6,'Curb Chain',8.2,9.7),(7,'Curb Chain',8.5,10),(8,'Curb Chain',8,9.5),(9,'Curb Chain',7.9,9.4),(10,'Curb Chain',8.8,10.2),(11,'Figaro Chain',9,10.1),(12,'Figaro Chain',9.3,10.5),(13,'Figaro Chain',8.8,9.9),(14,'Figaro Chain',9.1,10.2),(15,'Figaro Chain',9.5,10.7),(16,'Rope Chain',7.8,8.5),(17,'Rope Chain',8,8.8),(18,'Rope Chain',7.5,8.2),(19,'Rope Chain',7.9,8.7),(20,'Rope Chain',8.2,9),(21,'Box Chain',6.5,7.2),(22,'Box Chain',6.8,7.5),(23,'Box Chain',6.2,7),(24,'Box Chain',6.7,7.4),(25,'Box Chain',6.9,7.6),(26,'Snake Chain',8,9.3),(27,'Snake Chain',8.2,9.6),(28,'Snake Chain',7.8,9),(29,'Snake Chain',8.1,9.4),(30,'Snake Chain',8.4,9.8),(31,'Anchor Chain',12,14.8),(32,'Anchor Chain',12.5,15.2),(33,'Anchor Chain',11.8,14.5),(34,'Anchor Chain',12.3,15),(35,'Anchor Chain',12.8,15.5),(36,'Belcher Chain',7.5,8.9),(37,'Belcher Chain',7.8,9.3),(38,'Belcher Chain',7.2,8.6),(39,'Belcher Chain',7.6,8.8),(40,'Belcher Chain',7.9,9.4),(41,'Byzantine Chain',11.2,13.5),(42,'Byzantine Chain',11.5,13.8),(43,'Byzantine Chain',10.8,13),(44,'Byzantine Chain',11.3,13.7),(45,'Byzantine Chain',11.7,14.1),(46,'Cable Chain',6,7.1),(47,'Cable Chain',6.2,7.3),(48,'Cable Chain',5.8,6.9),(49,'Cable Chain',6.3,7.4),(50,'Cable Chain',6.4,7.5),(51,'Singapore Chain',7,8.2),(52,'Singapore Chain',7.3,8.5),(53,'Singapore Chain',6.8,7.9),(54,'Singapore Chain',7.2,8.3),(55,'Singapore Chain',7.5,8.7),(56,'Wheat Chain',9.8,11.3),(57,'Wheat Chain',10.2,11.7),(58,'Wheat Chain',9.5,11),(59,'Wheat Chain',9.9,11.4),(60,'Wheat Chain',10.5,12),(61,'Herringbone Chain',10,12),(62,'Herringbone Chain',10.3,12.4),(63,'Herringbone Chain',9.8,11.6),(64,'Herringbone Chain',10.2,12.2),(65,'Herringbone Chain',10.5,12.7),(66,'Bar Chain',6.2,7.5),(67,'Bar Chain',6.5,7.8),(68,'Bar Chain',6,7.3),(69,'Bar Chain',6.4,7.6),(70,'Bar Chain',6.6,7.9),(71,'Ball Chain',5.8,6.8),(72,'Ball Chain',6,7),(73,'Ball Chain',5.6,6.5),(74,'Ball Chain',6.1,7.2),(75,'Ball Chain',6.2,7.4);
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
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
