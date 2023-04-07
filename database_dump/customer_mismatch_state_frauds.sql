-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: customer
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `mismatch_state_frauds`
--

DROP TABLE IF EXISTS `mismatch_state_frauds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mismatch_state_frauds` (
  `customer_name` varchar(40) NOT NULL,
  `account_number` int NOT NULL,
  `transaction_number` int NOT NULL,
  `expected_transaction_location` varchar(2) NOT NULL,
  `actual_transaction_location` varchar(2) NOT NULL,
  PRIMARY KEY (`account_number`,`transaction_number`),
  CONSTRAINT `mismatch_state_frauds_ibfk_1` FOREIGN KEY (`account_number`) REFERENCES `account_info` (`account_number`),
  CONSTRAINT `mismatch_state_frauds_ibfk_2` FOREIGN KEY (`account_number`, `transaction_number`) REFERENCES `transactions` (`account_number`, `transaction_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mismatch_state_frauds`
--

LOCK TABLES `mismatch_state_frauds` WRITE;
/*!40000 ALTER TABLE `mismatch_state_frauds` DISABLE KEYS */;
INSERT INTO `mismatch_state_frauds` VALUES ('Michael Smith',11111,25,'TX','FL'),('John Doe',22222,10,'CA','NY'),('Jane Doe',33333,2,'NY','NJ'),('Monica Abel',33555,13,'NY','CA'),('Ruth Green',37222,1,'OH','CA'),('Ruth Green',37222,2,'OH','CA'),('Ruth Green',37222,3,'OH','CA'),('Ruth Green',37222,4,'OH','CA'),('Ruth Green',37222,5,'OH','CA'),('Ruth Green',37222,6,'OH','GA'),('Joseph Dark',43991,16,'MI','NY'),('Artie Venn',44891,10,'NJ','NY'),('Don Fuller',53111,16,'OH','NY'),('Anthony West',54891,7,'SD','MD'),('Anthony West',54891,10,'SD','NY'),('Anthony West',54891,13,'SD','CA');
/*!40000 ALTER TABLE `mismatch_state_frauds` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-07  3:42:46
