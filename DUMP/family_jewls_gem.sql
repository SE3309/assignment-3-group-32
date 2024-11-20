-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: family_jewls
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
  PRIMARY KEY (`gemId`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gem`
--

LOCK TABLES `gem` WRITE;
/*!40000 ALTER TABLE `gem` DISABLE KEYS */;
INSERT INTO `gem` VALUES (1,'Ruby','High',1.5,'Round',20),(2,'Sapphire','Medium',2,'Oval',15),(3,'Emerald','Premium',1.2,'Square',10),(4,'Diamond','Luxury',2.5,'Princess',8),(5,'Topaz','Standard',1.8,'Marquise',25),(6,'Amethyst','Medium',3,'Round',18),(7,'Citrine','Low',2.1,'Pear',30),(8,'Aquamarine','Premium',1.9,'Oval',12),(9,'Garnet','Standard',1.4,'Cushion',22),(10,'Opal','Medium',2.3,'Round',14),(11,'Peridot','High',1.7,'Oval',16),(12,'Spinel','Medium',2.4,'Round',9),(13,'Tanzanite','Luxury',1.6,'Pear',11),(14,'Tourmaline','Premium',2.2,'Square',13),(15,'Morganite','Standard',1.5,'Marquise',27),(16,'Zircon','Low',1.8,'Round',35),(17,'Alexandrite','Premium',1.3,'Oval',7),(18,'Carnelian','Standard',2,'Cushion',29),(19,'Chrysoberyl','High',1.9,'Round',10),(20,'Moonstone','Medium',2.1,'Pear',24),(21,'Kyanite','Low',1.6,'Oval',18),(22,'Bloodstone','Standard',1.4,'Round',22),(23,'Heliodor','Premium',2,'Square',14),(24,'Labradorite','Medium',1.9,'Cushion',19),(25,'Iolite','High',2.5,'Round',10),(26,'Turquoise','Low',1.8,'Marquise',26),(27,'Jasper','Standard',2.2,'Oval',20),(28,'Chrysoprase','Medium',2.4,'Pear',12),(29,'Malachite','Premium',1.6,'Round',15),(30,'Obsidian','Low',2.3,'Oval',28),(31,'Onyx','Standard',2.1,'Square',23),(32,'Fluorite','Medium',2,'Round',17),(33,'Beryl','Premium',1.7,'Cushion',9),(34,'Sunstone','Low',1.5,'Marquise',33),(35,'Prehnite','Standard',2.4,'Oval',21),(36,'Rhodonite','Medium',1.8,'Round',14),(37,'Amazonite','Premium',2.2,'Pear',8),(38,'Sugilite','Low',1.6,'Square',27),(39,'Ametrine','High',1.9,'Cushion',13),(40,'Andalusite','Standard',2,'Round',30),(41,'Spessartine','Medium',2.3,'Oval',16),(42,'Hessonite','Premium',2.1,'Pear',11),(43,'Danburite','Low',1.7,'Round',25),(44,'Kunzite','Standard',2.5,'Oval',9),(45,'Larimar','Medium',1.6,'Cushion',18),(46,'Petalite','Premium',1.4,'Square',6),(47,'Sphene','Low',1.3,'Marquise',31),(48,'Zoisite','High',2.4,'Oval',20),(49,'Scapolite','Standard',1.8,'Round',22);
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

-- Dump completed on 2024-11-20 15:49:47
