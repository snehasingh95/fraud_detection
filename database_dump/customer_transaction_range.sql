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
-- Table structure for table `transaction_range`
--

DROP TABLE IF EXISTS `transaction_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_range` (
  `account_number` int NOT NULL,
  `merchant_number` varchar(30) NOT NULL,
  `min_amt` float NOT NULL,
  `max_amt` float NOT NULL,
  PRIMARY KEY (`account_number`,`merchant_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_range`
--

LOCK TABLES `transaction_range` WRITE;
/*!40000 ALTER TABLE `transaction_range` DISABLE KEYS */;
INSERT INTO `transaction_range` VALUES (11111,'4.45E+12',0,26.135),(11111,'90282822',0,122.285),(14829,'1VKWOGBF44BU45L',11.16,48.04),(14829,'2.43E+14',0,693.25),(14829,'4.45E+12',0,68.095),(15041,'4.45E+12',0,213.045),(15482,'4.45E+12',0,217.265),(15971,'2.35E+14',0.0150011,17.495),(15971,'4.45E+11',0,125.925),(16068,'8.00E+14',0,39.485),(17032,'18777015',5.32,5.32),(17079,'4.60E+14',0,113.245),(17538,'8027784068',4.12,9.24),(18054,'2.95E+13',13,13),(18054,'3.74E+11',45.52,114.48),(18054,'4.45E+12',0,36.8),(18054,'6.22E+14',0,27.065),(18054,'8.44E+11',0,67.125),(18054,'8BRVVOYESPTC0OI',8.315,25.635),(18393,'48201409991',0,112.025),(19485,'3.35E+11',0,257.5),(19485,'3.96E+11',0,75.765),(19485,'5.27E+14',0,49.78),(20759,'2.66E+11',0,455.8),(20759,'21652460000',16.275,179.195),(20759,'3.13E+11',0,420.665),(20759,'4.33E+11',5.06,11.22),(20759,'4.45E+12',0,121.785),(20759,'4.69E+14',0,71.255),(20759,'469222',0,61.09),(20759,'5186484',0,216.225),(20759,'8.49E+11',0,253.235),(21455,'3.50E+14',2.75,2.75),(22222,'4.45E+12',0,4163.68),(22782,'3.42E+14',0,17.915),(23427,'4941145',0.625,1.625),(24029,'4.45E+12',0,226.65),(24732,'8030346368',0.700001,18.3),(25643,'2.43E+14',0,21.58),(25643,'3.41E+11',0,33.99),(25643,'4.45E+12',0,26.385),(25643,'4.98E+11',7.59,16.23),(25643,'5.39E+13',4.79,6.95),(25643,'5.64E+14',5.845,11.885),(25643,'5.98E+12',0,30.665),(25770,'3.73E+11',10.735,59.575),(25770,'4.45E+12',0,54.65),(25770,'4.59E+14',0,220.825),(25770,'5.17E+14',0,64.93),(25770,'57441822509',0,33.915),(25770,'7.20E+13',0,186.005),(25770,'7.20E+14',0,164.18),(26603,'1VKWOGBF44BU45L',0,68.115),(26603,'3.08E+14',5.085,13.845),(26603,'3.51E+11',5.86,18.98),(26603,'4.45E+12',0,46.315),(26603,'5.42E+14',0,21.345),(26603,'7.20E+14',4.5,18.5),(26607,'4.45E+12',0,207.58),(26607,'6.94E+14',0,136.05),(26607,'8.00E+14',4.675,4.875),(26669,'257469',0,26.61),(26669,'3.01E+14',0,51.06),(26777,'18777015',1.49,5.49),(26995,'5.27E+14',0,92.91),(26995,'900000105',2.525,4.405),(27014,'4.45E+12',0,54.2),(28064,'3.90E+11',0.55,2.95),(28226,'1VKWOGBF44BU45L',14.24,20.4),(28226,'2.35E+14',0,59.45),(28226,'2.43E+14',0,43.4),(28226,'3.37E+14',0,23.49),(28226,'3.72E+11',0,38.035),(28226,'4.45E+12',0,79.145),(28226,'5.39E+13',0,35.94),(28226,'5.99E+14',0,106.37),(28440,'4532092',0,23.515),(28440,'77010577',0,15.425),(30808,'5.10E+14',0,68.32),(30808,'EFT',10.75,70.75),(30881,'4.45E+12',0,62.775),(30881,'4.60E+14',0,42.73),(30881,'5.32E+14',0,305.8),(31094,'10895509',12.195,43.675),(31094,'2.43E+14',0,29.07),(31094,'4.45E+12',0,49.345),(31094,'5.13E+14',9.835,33.475),(31094,'5.39E+13',0,18.99),(31094,'7.20E+14',6,18.72),(31094,'8.00E+14',5.75,11.75),(31094,'8.39E+14',0,26.315),(31094,'8.50E+11',0,37),(31094,'9.93E+13',7.835,45.075),(31452,'10764655',0,48.705),(31452,'3.73E+11',62.5,130.5),(31452,'4.45E+12',0,87.83),(31452,'5.05E+14',4.025,16.945),(31452,'7.20E+14',0,430.91),(31452,'8.39E+14',0,46.01),(31593,'3.13E+11',0,116.75),(31593,'3.38E+14',0,112.35),(31593,'3.96E+11',0,312.5),(31593,'4.45E+12',0,95.675),(31815,'7.20E+14',10.99,10.99),(31815,'8.25E+11',6.01,6.01),(31815,'8.79E+12',1.34,5.74),(31938,'3.32E+14',0,8.23),(32307,'5.27E+14',0,28.5),(32628,'3.37E+14',0,82.26),(32628,'3.45E+11',9.09,9.09),(32628,'4.45E+12',1.525,30.525),(33452,'4.45E+12',3.215,7.495),(33452,'5.27E+14',12.28,20.36),(33555,'4.45E+12',0,4163.68),(33717,'1.47E+14',0,47.895),(33717,'1.75E+11',0,1030.56),(33717,'2.15E+11',0,8703.16),(33717,'2.43E+14',0,57.775),(33717,'3.56E+11',0,1056.35),(33717,'3.72E+11',0,418.375),(33717,'4.45E+12',0,174.95),(33717,'8.79E+12',16.65,42.81),(33945,'7.20E+14',20.415,138.535),(33945,'8.49E+11',0,28.165),(34729,'4.45E+11',0,98.5),(36717,'2.87E+14',0,16.09),(36717,'3.35E+11',0,51.015),(36717,'4.45E+12',0,304.28),(36717,'8.00E+14',3.18,10.7),(36827,'1VKWOGBF44BU45L',6.605,36.805),(37226,'1.47E+14',0,18.405),(37226,'1.62E+14',2.795,8.355),(37226,'2.29E+14',0,25.335),(37226,'3.73E+11',7.32,7.32),(37226,'4.45E+12',0,1145.05),(37226,'4.96E+11',2.07,20.55),(37226,'5.43E+14',0,160.395),(37226,'6.80E+14',0.919999,15.72),(37226,'7.20E+14',0,26.475),(37466,'1.60E+14',1.08,9.72),(37466,'135810',0,62.565),(37466,'2.43E+14',0,61.695),(37466,'2.47E+14',0,64.935),(37466,'2737425389',30.225,53.705),(37466,'4.45E+12',0,111.745),(37466,'47405048002',0,154.18),(37466,'5.13E+14',9.085,34.725),(37466,'5.35E+14',15.605,36.365),(37466,'5.39E+13',0,15.285),(37466,'6.94E+14',26.3,127.98),(37466,'8.50E+11',5.86,35.7),(38829,'2.25E+11',11.75,17.75),(38829,'2.28E+14',55.29,55.29),(38829,'2.34E+14',152.525,227.845),(38829,'2.43E+14',0,41),(38829,'4.45E+12',0,26.135),(38829,'4301167',1.49,1.49),(38829,'5.27E+14',0,2488.23),(38829,'5.39E+13',0,14.535),(38829,'5.50E+14',22.5,34.5),(38829,'6.50E+14',1.49,1.49),(38829,'8031117859',1.75,1.75),(38829,'9.44E+14',3.855,12.055),(39184,'9.00E+11',0,9.305),(43991,'4.45E+12',0,26.135),(43991,'7.20E+14',0,907.745),(43991,'90282822',0,122.285),(44891,'4.45E+12',0,4163.68),(53111,'4.45E+12',0,26.135),(53111,'7.20E+14',0,907.745),(53111,'90282822',0,122.285),(53222,'4.45E+12',30.91,230.91),(54891,'4.45E+12',114.325,211.405);
/*!40000 ALTER TABLE `transaction_range` ENABLE KEYS */;
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