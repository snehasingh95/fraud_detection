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
-- Table structure for table `abnormal_amount_frauds`
--

DROP TABLE IF EXISTS `abnormal_amount_frauds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abnormal_amount_frauds` (
  `customer_name` varchar(40) NOT NULL,
  `account_number` int NOT NULL,
  `transaction_number` int NOT NULL,
  `merchant_number` varchar(30) NOT NULL,
  `merchant_description` varchar(100) DEFAULT NULL,
  `transaction_amount` float NOT NULL,
  PRIMARY KEY (`account_number`,`transaction_number`),
  CONSTRAINT `abnormal_amount_frauds_ibfk_1` FOREIGN KEY (`account_number`) REFERENCES `account_info` (`account_number`),
  CONSTRAINT `abnormal_amount_frauds_ibfk_2` FOREIGN KEY (`account_number`, `transaction_number`) REFERENCES `transactions` (`account_number`, `transaction_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abnormal_amount_frauds`
--

LOCK TABLES `abnormal_amount_frauds` WRITE;
/*!40000 ALTER TABLE `abnormal_amount_frauds` DISABLE KEYS */;
INSERT INTO `abnormal_amount_frauds` VALUES ('Michael Smith',11111,15,'90282822','KROGER #2 4000 POLK    HOUSTON',2300),('Michael Smith',11111,26,'4.45E+12','COSMO BLEU             HOUSTON',276.52),('Albares Cammy',14829,26,'1VKWOGBF44BU45L','DOORDASH*7-ELEVEN      SAN FRANCISCO',10.2),('Albares Cammy',14829,30,'1VKWOGBF44BU45L','DOORDASH*RAOS          SAN FRANCISCO',50.07),('Gibes Cory',17538,4,'8027784068','AMC SCC CHOICES CAFE   ALBANY',1.37),('Wieser Sage',18054,27,'8.44E+11','TXTAG 888 468 9824     8884689824',100),('Wieser Sage',18054,30,'2.95E+13','BIRYANI POT            HOUSTON',65),('Vocelka Francine',20759,27,'4.69E+14','CENTRAL MARKET #747    DALLAS',75.06),('Vocelka Francine',20759,58,'4.45E+12','TST* BOB S STEAK & CHO DALLAS',387.34),('Vocelka Francine',20759,77,'4.45E+12','CVS/PHARMACY #11065    DALLAS',299.39),('John Doe',22222,10,'4.45E+12','Best Buy		New York',10000),('Tollner Mitsue',25643,4,'4.45E+12','TST* DESSERT GALLERY B CHICAGO',40.5),('Tollner Mitsue',25643,35,'5.39E+13','SQ *BLACK HOLE COFFEE  Chicago',11.74),('Klonowski Karl',25770,30,'7.20E+13','CHARLESTON S 60        MESA',246.65),('Whobrey Yuki',26607,30,'8.00E+14','PEET\'S #04403          NEWPORT BEACH',5.45),('Whobrey Yuki',26607,47,'8.00E+14','CITY OF LAGUNA BEACH I LAGUNA BEACH',2.75),('Sawchuk Nelida',28064,4,'3.90E+11','USA*FIVE STAR FOOD VEN KNOXVILLE',3.7),('Amigon Minna',28226,43,'1VKWOGBF44BU45L','DOORDASH DASHPASS      SAN FRANCISCO',9.99),('Amigon Minna',28226,76,'1VKWOGBF44BU45L','DOORDASH*DAIRY QUEEN   SAN FRANCISCO',29.11),('Pugh Blondell',30808,2,'EFT','EFT                    Santa Fe',393.25),('Venere Art',31094,28,'4.45E+12','EL TIEMPO CANTINA WEBS WEBSTER',95.57),('Venere Art',31094,36,'4.45E+12','TST* GEORGIA JAMES     HOUSTON',50.22),('Venere Art',31094,40,'8.50E+11','EMPIRE CAFE            HOUSTON',47.68),('Venere Art',31094,51,'8.50E+11','EMPIRE CAFE            HOUSTON',39.64),('Venere Art',31094,53,'4.45E+12','TEASE COLOR & STYLE BA HOUSTON',80.7),('Venere Art',31094,66,'8.50E+11','EMPIRE CAFE            HOUSTON',47.39),('Garufi Meaghan',31452,18,'4.45E+12','TARGET        00014597 PEARLAND',95.57),('Garufi Meaghan',31452,20,'4.45E+12','WM SUPERCENTER #3510   PEARLAND',139.49),('Garufi Meaghan',31452,57,'4.45E+12','TARGET        00014597 PEARLAND',200.21),('Rulapaugh Kati',31593,12,'4.45E+12','SPEC\'S LIQUOR #186     SPRING',111.72),('Dilliard Leota',32628,18,'4.45E+12','TST* THE PIT ROOM      HOUSTON',34.53),('Monica Abel',33555,10,'4.45E+12','Best Buy		New York',10000),('Inouye Veronika',33717,55,'4.45E+12','TST* NOMAD - POLARIS   COLUMBUS',205.89),('Inouye Veronika',33717,108,'8.79E+12','JIMMY JOHNS - 426      EASTON',8.41),('Ruta Graciela',33945,12,'7.20E+14','SHOPRITE PARAMUS S1    PARAMUS',12.64),('Maclead Abel',37226,57,'7.20E+14','PARTY CITY 948         SCOTTSDALE',49.65),('Maclead Abel',37226,62,'7.20E+14','SAKS O5 SCOTTSDALE 844 SCOTTSDALE',86.43),('Foller Donette',37466,3,'6.94E+14','TRADER JOE\'S #427 QPS  HOUSTON',24.72),('Foller Donette',37466,6,'5.39E+13','SQ *BLACK HOLE COFFEE  Houston',19.13),('Foller Donette',37466,8,'8.50E+11','EMPIRE CAFE            HOUSTON',37.15),('Foller Donette',37466,29,'5.35E+14','DUO COFFEE & PILATES   HOUSTON',10.72),('Foller Donette',37466,32,'5.35E+14','THAI SPICE RESTAURANT  HOUSTON',42.65),('Foller Donette',37466,73,'8.50E+11','EMPIRE CAFE            HOUSTON',4.19),('Foller Donette',37466,95,'5.39E+13','SQ *BLACK HOLE COFFEE  Houston',19.57),('Foller Donette',37466,150,'8.50E+11','EMPIRE CAFE            HOUSTON',40.42),('Foller Donette',37466,172,'5.39E+13','SQ *TOUT SUITE - EADO  Houston',20.8),('Foller Donette',37466,175,'5.39E+13','SQ *TOUT SUITE - EADO  Houston',20.8),('Morasca Simona',38829,70,'2.25E+11','CHAPULTEPEC LUPITA     HOUSTON',11.5),('Morasca Simona',38829,88,'2.25E+11','CHAPULTEPEC LUPITA     HOUSTON',11.5),('Morasca Simona',38829,104,'2.25E+11','CHAPULTEPEC LUPITA     HOUSTON',11.5),('Morasca Simona',38829,125,'2.25E+11','CHAPULTEPEC LUPITA     HOUSTON',11),('Morasca Simona',38829,141,'2.25E+11','CHAPULTEPEC LUPITA     HOUSTON',11.5),('Joseph Dark',43991,26,'4.45E+12','COSMO BLEU             BRIGHTON',276.52),('Artie Venn',44891,10,'4.45E+12','Best Buy		New York',10000),('Don Fuller',53111,26,'4.45E+12','COSMO BLEU             Hamilton',276.52),('Mirasca Sam',53222,9,'4.45E+12','CKE*EL CHARRO MEXICA 3 Ashland',13),('Mirasca Sam',53222,10,'4.45E+12','Kohls		Ashland',725.51),('Anthony West',54891,9,'4.45E+12','CKE*EL CHARRO MEXICA 3 Sioux Falls',13);
/*!40000 ALTER TABLE `abnormal_amount_frauds` ENABLE KEYS */;
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
