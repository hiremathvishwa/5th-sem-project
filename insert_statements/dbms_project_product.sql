-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: dbms_project
-- ------------------------------------------------------
-- Server version	8.0.31

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
  `productid` varchar(10) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `category_id` varchar(10) DEFAULT NULL,
  `price` int NOT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`productid`),
  UNIQUE KEY `product_name_UNIQUE` (`product_name`),
  KEY `catwgory_id_idx` (`category_id`),
  CONSTRAINT `catwgory_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('10p1','Bucket','10',300,10),('10p2','Mug','10',80,10),('11p1','Clove','11',250,3),('11p2','Cardamom','11',200,3),('12p1','Rice','12',54,30),('12p2','Wheat','12',45,30),('13p1','Red lentils','13',100,10),('13p2','Green gram','13',120,10),('14p1','Sunflower oil','14',140,15),('14p2','Groundnut oil','14',125,15),('15p1','Milk bread','15',30,10),('15p2','Wheat bread','15',35,10),('1p1','milk','1',25,20),('1p2','curd','1',25,20),('2p1','soap','2',50,18),('2p2','shampoo','2',75,10),('3p1','Nachos','3',15,10),('3p2','Noodles','3',20,15),('3p3','Biscuts','3',10,19),('4p1','Maaza','4',30,8),('4p2','Fanta','4',25,5),('5p1','Incense sticks','5',10,10),('5p2','Camphor','5',10,10),('6p1','Onion','6',24,25),('6p2','Tomato','6',13,15),('7p1','Butter','7',60,8),('7p2','Ice cream','7',30,14),('8p1','Apple','8',100,5),('8p2','Banana','8',45,7),('9p1','Books','9',55,16),('9p2','Pencil','9',5,47);
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

-- Dump completed on 2023-01-30 22:37:42
