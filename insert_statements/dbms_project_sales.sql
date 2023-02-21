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
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `sales_id` varchar(10) NOT NULL,
  `emp_id` varchar(10) DEFAULT NULL,
  `product_id` varchar(10) DEFAULT NULL,
  `customet_id` varchar(10) DEFAULT NULL,
  `bill_id` int NOT NULL,
  `quantity` int NOT NULL,
  `total_amount` int DEFAULT NULL,
  `sales_date` date NOT NULL,
  PRIMARY KEY (`sales_id`),
  KEY `emp_id_idx` (`emp_id`),
  KEY `product_id_idx` (`product_id`),
  KEY `customer_id_idx` (`customet_id`),
  CONSTRAINT `a` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `b` FOREIGN KEY (`product_id`) REFERENCES `product` (`productid`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES ('sales1','emp10','2p2','cust1',1,4,NULL,'2020-05-01'),('sales10','emp2','5p1','cust2',10,5,NULL,'2020-05-10'),('sales11','emp7','8p1','cust19',11,2,NULL,'2020-05-11'),('sales12','emp8','6p2','cust15',12,4,NULL,'2020-05-12'),('sales13','emp5','1p2','cust14',13,7,NULL,'2020-05-13'),('sales15','emp8','3p3','cust15',15,4,NULL,'2020-05-15'),('sales16','emp5','3p3','cust3',16,2,NULL,'2020-05-16'),('sales17','emp5','10p1','cust14',17,1,NULL,'2020-05-17'),('sales18','emp3','14p2','cust17',18,4,NULL,'2020-05-18'),('sales19','emp6','15p1','cust18',19,4,NULL,'2020-05-19'),('sales2','emp2','3p1','cust3',2,10,NULL,'2020-05-02'),('sales20','emp10','12p2','cust15',20,10,NULL,'2020-05-20'),('sales3','emp5','1p1','cust5',3,6,NULL,'2020-05-03'),('sales4','emp3','10p2','cust3',4,5,NULL,'2020-05-04'),('sales6','emp10','9p1','cust6',6,8,NULL,'2020-05-06'),('sales7','emp9','7p2','cust7',7,9,NULL,'2020-05-07'),('sales8','emp10','3p3','cust8',8,3,NULL,'2020-05-08'),('sales9','emp1','4p2','cust9',9,3,NULL,'2020-05-09');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
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
