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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` varchar(10) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(1) NOT NULL,
  `phone_no` bigint NOT NULL,
  `points` int DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('cust1','Shubham','Kumar','2002-01-01','M',2225340299,100,'3, Warden Court, August Kranti Marg, Peddar Road'),('cust11','Santhosh','K','2002-01-10','M',20204248249,700,'150c, Pkt-a, Mayur Vihar'),('cust12','Stephen','Hawking','2002-01-11','M',22002139044,775,'Sardar Bhavan Lane, Opp. Shiv Plywood, Raopura'),('cust13','John','Wright','2002-01-12','M',23800029839,850,'Sharda Puri'),('cust14','Palak','Gupta','2002-01-13','F',25597920634,925,': 150, A, Ghatkopar Indl Estate, Lbs Marg, Ghatkopar (west)'),('cust15','Akshitha','Ashok','2002-01-14','F',27395811429,1000,'511, Sterling Chambers, Poona Street, Masjid Bunder (east)'),('cust16','Neha','Sridhar','2002-01-15','F',29193702224,1075,'Ground Floor, Hind Service Indl Est, Dnyaneshwar Mandir Rd, Shivaji, Dadar(w)'),('cust17','Divya','KK','2002-01-16','F',30991593019,1150,'13b Bhaktawar, Yogakshema (nariman Point)'),('cust18','Pooja','Anand','2002-01-17','F',32789483814,1225,'Pimpi Pada, Malad (e)'),('cust19','Ragashree','Vikas','2002-01-18','F',34587374609,1300,'H2/7, Sunder Nagar, S V Road, Malad (west)'),('cust2','Shams','Ahmed','2002-01-02','M',4023231094,25,'19, 9th Cross, J P Nagar'),('cust20','Samyuktha','Hegde','2002-01-19','F',36385265404,1375,'34, 34bvkiyngrrdblr-53, Bvk Iyengar Road'),('cust3','Vishwas','Gowda','2002-01-03','M',5821121889,100,'Plot No.90/91/1, Odha'),('cust4','Shrey','Singh','2002-01-04','M',7619012684,175,'Shop 109, 9 & 10 Dividing Road, Sector 10, Faridabad'),('cust5','Vikas','S','2002-01-05','M',9416903479,250,'Bmc Stall, New Prabhadevi Road, Dhan Mill Naka, Prabhadevi'),('cust6','Udupi','Aditya','2002-01-06','M',11214794274,325,'2nd Floor, Manjula Arcade, Gokhale Road, Near Ice Factory, Thane (w)'),('cust7','Swaroop','Raj','2002-01-07','M',13012685069,400,'10, Usha Niketan, Mahant Rd., Vile Parle(e)'),('cust8','Tejas','R','2002-01-08','M',14810575864,475,'M 155, Part 2, Greater Kailash'),('cust9','Tanmay','V','2002-01-09','M',16608466659,550,'B-383, Vashi Plaza, Sector 17, Vashi, Navi Mumbai');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 22:37:43
