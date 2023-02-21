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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_id` varchar(10) NOT NULL,
  `emp_fname` varchar(45) NOT NULL,
  `emp_lname` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(1) NOT NULL,
  `phone` bigint NOT NULL,
  `address` varchar(100) NOT NULL,
  `salary` int NOT NULL,
  `job_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  KEY `job_id_idx` (`job_id`),
  CONSTRAINT `job_id` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('emp1','Akash','Angdi','1980-12-11','M',2230208056,'277, Opp M J Market, Opp I C I C I Bank, New Javeri Market, Kalbadevi',25000,'job1'),('emp10','Sakshi','Reddy','1995-09-15','F',2224928994,'Hari Niwas, Dattatray Road, Santacruz West',20000,'job3'),('emp2','Avinash','Adiga','1995-10-24','M',3322200434,'8, Bonny Plaza, S V Road, Nr Post Office, Andheri (west)',30000,'job2'),('emp3','Manish','Kumar','1976-01-17','M',2223825375,'8, 26, 8, Raja Bldg., 2nd Floor, 26, Mandvi',30000,'job2'),('emp5','Sajith','Sen','1999-04-05','M',2225823087,'Unique House, Cardinal Graciuos Rd, Andheri(e)',20000,'job3'),('emp6','Akshatha','Shetty','2000-07-19','F',2222658501,'110, Diamond Indl.estate, Western Express Highway, Dahisar (east)',20000,'job3'),('emp7','Zaheer','Khan','1990-02-21','M',2225470806,'6, Himgiri Chs, Opp Jankalyan Bank, Panvel, Navi Mumbai',25000,'job1'),('emp8','Sunitha','Pandey','2004-10-07','F',2266310787,'6, 2nd Flr, 34/36, Lokhandwala Bldg, V V Chandan Street, Masjid Bunder (west)',20000,'job3'),('emp9','Vicky','Karthik','2009-11-21','M',2225517327,'95, Galleria Shopping Centre, Hiranandani Gardens, Powai',20000,'job3');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 22:37:41
