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
-- Table structure for table `gem`
--

DROP TABLE IF EXISTS `gem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gem` (
  `gemId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `quality` varchar(30) NOT NULL,
  `carat` float NOT NULL,
  `shape` varchar(30) NOT NULL,
  `stock` int NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`gemId`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gem`
--

LOCK TABLES `gem` WRITE;
/*!40000 ALTER TABLE `gem` DISABLE KEYS */;
INSERT INTO `gem` VALUES (1,'Diamond','Excellent',1.2,'Round',50,5000),(2,'Diamond','Good',0.8,'Princess',30,3500),(3,'Ruby','Excellent',1.5,'Oval',40,4500),(4,'Ruby','Good',1,'Cushion',35,2500),(5,'Sapphire','Excellent',2,'Round',60,4000),(6,'Sapphire','Good',1.2,'Oval',45,2200),(7,'Emerald','Excellent',1.3,'Emerald',25,6000),(8,'Emerald','Good',1,'Round',30,3000),(9,'Amethyst','Excellent',2.5,'Cushion',100,500),(10,'Amethyst','Good',1.8,'Oval',150,350),(11,'Topaz','Excellent',1,'Oval',200,600),(12,'Topaz','Good',0.7,'Round',220,400),(13,'Aquamarine','Excellent',1.7,'Round',80,1200),(14,'Aquamarine','Good',1.2,'Emerald',70,900),(15,'Garnet','Excellent',1,'Heart',90,350),(16,'Garnet','Good',0.8,'Round',100,250),(17,'Opal','Excellent',1.5,'Oval',45,1800),(18,'Opal','Good',1,'Cushion',60,1200),(19,'Peridot','Excellent',1.2,'Round',50,700),(20,'Peridot','Good',1,'Oval',55,500),(21,'Tourmaline','Excellent',1.3,'Cushion',40,1500),(22,'Tourmaline','Good',1,'Round',45,1200),(23,'Citrine','Excellent',2,'Round',75,400),(24,'Citrine','Good',1.5,'Oval',85,300),(25,'Morganite','Excellent',1.4,'Oval',60,2200),(26,'Morganite','Good',1.1,'Round',50,1500),(27,'Tanzanite','Excellent',1.6,'Cushion',45,2500),(28,'Tanzanite','Good',1.2,'Round',60,1800),(29,'Spinel','Excellent',1.8,'Oval',40,1800),(30,'Spinel','Good',1,'Round',55,1200),(31,'Alexandrite','Excellent',1,'Emerald',20,8000),(32,'Alexandrite','Good',0.8,'Round',30,6500),(33,'Zircon','Excellent',1.2,'Cushion',70,700),(34,'Zircon','Good',1,'Oval',80,500),(35,'Moonstone','Excellent',1,'Oval',90,900),(36,'Moonstone','Good',0.7,'Round',100,600),(37,'Labradorite','Excellent',1.5,'Cushion',60,700),(38,'Labradorite','Good',1,'Oval',70,500),(39,'Iolite','Excellent',1.2,'Round',80,1000),(40,'Iolite','Good',0.9,'Cushion',90,750),(41,'Sunstone','Excellent',1.4,'Oval',40,1500),(42,'Sunstone','Good',1,'Round',50,1100),(43,'Kunzite','Excellent',1.5,'Emerald',25,2000),(44,'Kunzite','Good',1,'Cushion',30,1500),(45,'Chrysoprase','Excellent',1.3,'Round',60,500),(46,'Chrysoprase','Good',1,'Oval',75,400),(47,'Jade','Excellent',1.2,'Oval',80,2200),(48,'Jade','Good',1,'Cushion',90,1600);
/*!40000 ALTER TABLE `gem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-22 19:07:46
