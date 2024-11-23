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
  `price` decimal(10,2) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1240,331,NULL,7,12,'Ring','zwuvpo',1.0709,6000.01),(2,172,111,NULL,27,1,'Ring','hntjtxbk',3.06659,2684.00),(3,924,NULL,22,NULL,13,'Necklace','cbty',2923.65,19.00),(4,547,187,NULL,1,25,'Ring','gmptxuhj',9.49186,6898.37),(5,820,NULL,5,4,13,'Necklace','mqomkab',5473.5,2535.58),(6,1231,95,NULL,34,9,'Ring','utfcil',1.2436,500.06),(7,314,NULL,4,47,3,'Necklace','auktmng',5806.21,6844.97),(9,326,NULL,6,16,27,'Necklace','uhegjlaj',7507.5,775.53),(10,946,NULL,5,10,17,'Necklace','vrfkvwkki',7632.15,1908387.50),(11,205,NULL,14,16,28,'Necklace','gmcyinbyxi',6982.5,724.81),(12,150,NULL,18,13,21,'Necklace','hthot',2666.79,1208.00),(14,525,160,NULL,19,28,'Ring','yvbodej',4.39895,700.30),(15,337,NULL,3,26,10,'Necklace','pnvt',2115.6,1590.97),(16,22,NULL,20,6,18,'Necklace','dcssaebaij',4050,974200.00),(17,806,NULL,2,43,19,'Necklace','vsufuq',3831.45,2114.94),(18,1346,NULL,22,18,19,'Necklace','matnuucxg',2923.65,1287.71),(19,193,NULL,5,47,1,'Necklace','amsdesl',11881.8,715108.00),(20,336,NULL,12,30,9,'Necklace','mcyusnhey',1366.53,1261.49),(21,218,NULL,4,14,26,'Necklace','wrin',12232.4,2325046.50),(22,816,NULL,8,12,10,'Necklace','ehsxrbrhv',2236,496.15),(23,1043,64,NULL,7,12,'Ring','gqfup',5.80914,6000.05),(24,839,NULL,10,40,13,'Necklace','mozwwr',2536.5,766.49),(26,1422,NULL,5,37,24,'Necklace','irttnksrp',13530,1962550.00),(27,86,NULL,21,27,3,'Necklace','rmujilylxd',3681.99,5445.59),(28,836,185,NULL,36,6,'Ring','pcnggihq',7.64727,1120.01),(29,335,NULL,21,29,19,'Necklace','cwumxy',3123.9,1893.72),(30,604,NULL,8,48,3,'Necklace','yfpwqc',5454.8,5963.84),(31,233,258,NULL,25,28,'Ring','wgql',7.93572,2200.54),(32,203,137,NULL,32,8,'Ring','lcbasawvw',3.18997,6700.97),(33,1430,NULL,13,9,22,'Necklace','acuz',2205,506.17),(34,1068,NULL,4,14,6,'Necklace','uawbcrzzt',11512.8,783770.38),(35,336,152,NULL,3,22,'Ring','nnpupb',4.73088,4500.01),(37,684,NULL,20,11,24,'Necklace','dnfnqmtirb',7425,1077225.00),(38,395,NULL,13,44,28,'Necklace','ymmhnjek',5985,1906.98),(39,1407,NULL,17,24,21,'Necklace','cgcizndeq',2634.66,307.90),(40,442,NULL,19,22,23,'Necklace','arecyiohyb',8832.24,1326036.00),(43,399,NULL,6,45,14,'Necklace','onsnbut',3432,520.59),(44,740,NULL,7,39,5,'Necklace','uyyj',9759.75,684182.50),(46,1198,NULL,20,42,21,'Necklace','mucjsv',2409.75,1107.23),(47,1308,NULL,19,18,10,'Necklace','dagkj',1683.45,1272.39),(48,1102,373,NULL,15,20,'Ring','hoqmu',3.99534,350.11),(49,234,310,NULL,23,4,'Ring','gcqhftwvt',1.64283,401.23),(50,595,NULL,9,45,23,'Necklace','koqiyjihm',6768,1015700.00),(51,946,NULL,18,28,28,'Necklace','kgtmdtiih',7096.5,2282.56),(52,696,NULL,14,43,6,'Necklace','ebhafj',7644,521791.97),(53,801,NULL,12,1,14,'Necklace','jrejnktqk',2666.4,5016.00),(54,1352,NULL,10,25,12,'Necklace','elfdkm',2485.2,2221.12),(55,758,386,NULL,11,20,'Ring','rsbs',2.89628,600.08),(56,1333,NULL,20,39,10,'Necklace','myaj',1451.25,1062.40),(57,947,NULL,10,29,22,'Necklace','gjlguy',1995,1805.59),(58,1011,256,NULL,32,12,'Ring','dpcdtlkqk',3.29521,6500.03),(59,83,NULL,12,42,22,'Necklace','ewmj',2121,1105.94),(60,105,NULL,17,24,13,'Necklace','ribl',3284.1,321.35),(61,416,NULL,3,34,23,'Necklace','qsqsrwx',11099.5,1665428.00),(62,1349,259,NULL,10,18,'Ring','fvnfkkd',5.2507,1610.17),(63,180,NULL,20,7,9,'Necklace','kqhwddam',1522.13,6068.50),(64,1120,NULL,1,28,18,'Necklace','zrferofyp',4428,1064520.00),(65,1258,NULL,18,38,25,'Necklace','rzdx',8437.37,1687973.00),(66,101,NULL,22,14,4,'Necklace','rmxkeuggnd',3383.55,3437.66),(67,1090,NULL,6,40,13,'Necklace','orpxdmai',3471,772.56),(68,141,NULL,10,48,9,'Necklace','jrgwfwlo',1285.35,1657.84),(69,47,NULL,14,39,21,'Necklace','tomi',2623.95,1007.87),(70,715,NULL,4,47,23,'Necklace','eunw',12487,1875244.00),(71,1143,18,NULL,28,17,'Ring','cvirb',8.15713,3839.28),(72,33,283,NULL,34,28,'Ring','awcywnfay',10.2141,500.69),(73,1295,NULL,2,42,19,'Necklace','etgvuwrmb',3831.45,1214.94),(74,465,NULL,10,19,4,'Necklace','nbguis',2935.5,2901.63),(75,216,415,NULL,39,1,'Ring','bhqkswmca',13.0722,1784.33),(76,1049,264,NULL,36,25,'Ring','sudxjkzzg',12.1309,3026.18),(77,349,NULL,2,9,2,'Necklace','hjdybli',7942.73,437349.91),(78,480,NULL,11,25,23,'Necklace','xkkdtofgq',6903.36,1037704.00),(79,1286,NULL,3,6,17,'Necklace','zywtgik',6105.72,1528630.00),(80,129,307,NULL,18,8,'Ring','ebicjyzegt',6.8721,1632.94),(81,1055,NULL,1,25,27,'Necklace','rldlm',7103.25,2697.23),(82,585,11,NULL,31,10,'Ring','wtlgo',1.96619,8000.08),(83,1284,302,NULL,16,27,'Ring','gsepeunca',9.05491,250.63),(84,1322,NULL,16,31,10,'Necklace','ckkgsh',2031.75,8087.37),(85,292,NULL,12,19,6,'Necklace','knnvlghx',6302.4,429263.19),(86,413,NULL,16,22,10,'Necklace','lpgjh',2031.75,1287.37),(87,369,NULL,5,9,26,'Necklace','crvqkttvti',13591.5,2582885.00),(88,1302,NULL,9,16,13,'Necklace','lnqafns',2670,267.36),(90,237,357,NULL,25,11,'Ring','ozbzou',1.59174,2200.01),(93,529,335,NULL,8,20,'Ring','gvdilhd',1.77051,3000.05),(94,377,NULL,6,31,6,'Necklace','rjtwblxb',8112,559616.00),(95,375,49,NULL,33,1,'Ring','ltot',5.14828,1008.90),(96,338,NULL,8,16,4,'Necklace','uelzjpdmy',5356,4267.00),(97,151,NULL,9,37,9,'Necklace','uywyh',1353,760.89),(98,949,NULL,22,42,4,'Necklace','mcvbw',3383.55,3637.66),(99,1101,NULL,11,38,20,'Necklace','xkqwhlgkcw',2646.9,574.11),(100,1151,NULL,5,10,5,'Necklace','pbzsomqvb',13191.8,923772.56);
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

-- Dump completed on 2024-11-22 20:52:46
