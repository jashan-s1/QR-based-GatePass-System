-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: gps
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gatepass_requests`
--

DROP TABLE IF EXISTS `gatepass_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gatepass_requests` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(255) NOT NULL,
  `time_out` time NOT NULL,
  `time_in` time NOT NULL,
  `gatepass_type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatepass_requests`
--

LOCK TABLES `gatepass_requests` WRITE;
/*!40000 ALTER TABLE `gatepass_requests` DISABLE KEYS */;
INSERT INTO `gatepass_requests` VALUES ('1','Jashandeep Singh','21bcs7554','dfds','5255-05-04','chandigarh','00:00:00','00:00:00','dayout','Pending'),('10','Jashandeep Singh','21bcs7554','df','0022-02-23','chandigarh','14:32:00','00:00:00','dayout','Pending'),('11','Jashandeep Singh','21bcs7554','df','0022-02-23','chandigarh','14:32:00','00:00:00','dayout','Pending'),('12','Jashandeep Singh','21bcs7554','df','0022-02-23','chandigarh','14:32:00','00:00:00','dayout','Pending'),('13','Jashandeep Singh','21bcs7554','df','0022-02-23','chandigarh','14:32:00','00:00:00','dayout','Pending'),('14','Jashandeep Singh','21bcs7554','df','0022-02-23','chandigarh','14:32:00','00:00:00','dayout','Pending'),('15','Jashandeep Singh','21bcs7554','csre','0023-12-31','chandigarh','00:00:00','00:00:00','dayout','Pending'),('16','Jashandeep Singh','21bcs7554','csre','0223-03-23','chandigarh','00:00:00','14:23:00','dayout','Pending'),('17','Jashandeep Singh','21bcs7554','csre','0223-03-23','chandigarh','00:00:00','14:23:00','dayout','Pending'),('18','Jashandeep Singh','21bcs7554','csre','0223-03-23','chandigarh','00:00:00','14:23:00','dayout','Pending'),('19','Jashandeep Singh','21bcs7554','dfds','0032-02-02','chandigarh','14:10:00','12:00:00','dayout','Pending'),('2','Jashandeep Singh','21bcs7554','dfds','4232-02-05','chandigarh','00:00:00','00:00:00','dayout','Pending'),('20','Jashandeep Singh','21bcs7554','dfds','0002-02-02','chandigarh','14:20:00','14:02:00','dayout','Pending'),('21','Jashandeep Singh','21bcs7554','CSE AIML','2003-06-07','chandigarh','14:00:00','17:00:00','nightout','Pending'),('22','Jashandeep Singh','21bcs7554','CSE AIML','2003-06-07','chandigarh','14:00:00','17:00:00','nightout','Pending'),('23','Jashandeep Singh','21bcs7554','CSE AIML','2003-06-07','chandigarh','14:00:00','17:00:00','nightout','Pending'),('24','Jashandeep Singh','21bcs7554','csre','3332-02-03','chandigarh','14:02:00','14:02:00','dayout','Pending'),('25','Jashandeep Singh','21bcs7554','csre','3332-02-03','chandigarh','14:02:00','14:02:00','dayout','Pending'),('26','Jashandeep Singh','21bcs7554','csre','0220-02-01','chandigarh','12:22:00','14:00:00','dayout','Pending'),('27','Jashandeep Singh','21bcs7554','dfds','0022-02-20','chandigarh','14:20:00','14:02:00','dayout','Pending'),('28','Jashandeep Singh','21bcs7554','dfds','0022-02-20','chandigarh','14:20:00','14:02:00','dayout','Pending'),('29','Jashandeep Singh','21bcs7554','csre','2200-02-02','chandigarh','14:02:00','14:02:00','dayout','Pending'),('3','Jashandeep Singh','21bcs7554','csre','2002-03-02','chandigarh','00:00:00','00:00:00','dayout','Pending'),('30','rssfsdfdsf','21bcs7554','csre','0002-03-23','chandigarh','00:00:00','00:00:00','dayout','Pending'),('31','rssfsdfdsf','21bcs7554','csre','0002-03-23','chandigarh','15:43:00','15:43:00','dayout','Pending'),('32','Jashandeep Singh','21bcs7554','csre','2022-02-02','chandigarh','14:02:00','12:22:00','dayout','Pending'),('33','Jashandeep Singh','21bcs7554','csre','0003-03-22','chandigarh','14:32:00','15:43:00','dayout','Approved'),('34','Jashandeep Singh','21bcs7554','csre','0033-12-22','chandigarh','15:23:00','15:23:00','dayout','Approved'),('35','Jashandeep Singh','21bcs7554','csre','0023-03-23','chandigarh','00:00:00','00:00:00','dayout','Approved'),('36','Jashandeep Singh','21bcs7554','csre','2003-02-02','chandigarh','14:22:00','14:02:00','dayout','Approved'),('37','Jashandeep Singh','21bcs7554','dsfasd','2003-12-12','chandigarh','14:03:00','14:03:00','dayout','Pending'),('38','Jashandeep Singh','21bcs7554','csre','2002-02-02','chandigarh','14:00:00','02:02:00','dayout','Approved'),('39','Jashandeep Singh','21bcs7554','csre','2002-02-02','chandigarh','14:00:00','02:02:00','dayout','Approved'),('4','Jashandeep Singh','21bcs7554','csre','2002-03-02','chandigarh','00:00:00','00:00:00','dayout','Pending'),('40','Jashandeep Singh','21bcs7554','cse','2003-12-02','chandigarh','12:22:00','02:02:00','dayout','Approved'),('41','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','14:03:00','02:03:00','nightout','Approved'),('42','Jashandeep Singh','21bcs7554','csre','2003-02-02','chandigarh','14:03:00','17:02:00','dayout','Pending'),('43','Jashandeep Singh','21BCS7554','CSE AIML','2003-02-05','chandigarh','14:03:00','18:03:00','dayout','Approved'),('44','Jashandeep Singh','21bcs7554','csre','2003-02-03','chandigarh','14:03:00','14:06:00','dayout','Approved'),('45','Jashandeep Singh','21bcs7554','cse','2003-03-02','chandigarh','14:30:00','04:02:00','dayout','Approved'),('46','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','15:00:00','17:00:00','dayout','Approved'),('47','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','18:00:00','17:00:00','dayout','Approved'),('48','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','14:03:00','17:00:00','dayout','Approved'),('49','Jashandeep Singh','21bcs7554','cse','2003-08-02','chandigarh','14:03:00','17:00:00','dayout','Approved'),('5','Jashandeep Singh','21bcs7554','csre','2002-03-02','chandigarh','00:00:00','00:00:00','dayout','Pending'),('50','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','14:00:00','15:00:00','dayout','Approved'),('51','Jashandeep Singh','21bcs7554','cse','2003-02-01','chandigarh','14:00:00','15:02:00','dayout','Pending'),('52','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','14:03:00','15:02:00','dayout','Pending'),('53','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','14:03:00','15:03:00','dayout','Pending'),('54','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','15:02:00','17:02:00','nightout','Pending'),('55','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','14:03:00','17:02:00','dayout','Approved'),('56','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','14:03:00','17:01:00','dayout','Approved'),('57','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','14:03:00','17:01:00','dayout','Approved'),('58','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','14:03:00','17:01:00','dayout','Approved'),('59','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','14:03:00','17:02:00','dayout','Approved'),('6','Jashandeep Singh','21bcs7554','cse','2002-02-02','chandigarh','14:00:00','15:00:00','dayout','Pending'),('60','Jashandeep Singh','21bcs7554','cse','2003-01-03','chandigarh','14:03:00','17:02:00','dayout','Approved'),('61','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','17:02:00','14:02:00','dayout','Approved'),('62','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','14:03:00','13:05:00','dayout','Approved'),('63','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','14:03:00','17:01:00','dayout','Approved'),('64','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','14:01:00','17:02:00','dayout','Approved'),('65','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','14:03:00','17:02:00','dayout','Approved'),('66','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','14:03:00','14:00:00','dayout','Approved'),('67','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','14:02:00','15:02:00','dayout','Pending'),('68','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','13:00:00','14:00:00','dayout','Pending'),('69','Jashandeep Singh','21bcs7554','cse','2002-02-02','chandigarh','15:02:00','17:20:00','dayout','Approved'),('7','Jashandeep Singh','21bcs7554','cse','2002-02-02','chandigarh','14:00:00','15:00:00','dayout','Pending'),('70','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','14:03:00','17:02:00','dayout','Approved'),('71','Jashandeep Singh','21bcs7554','cse','2003-02-03','chandigarh','17:03:00','18:30:00','dayout','Approved'),('72','Jashandeep Singh','21bcs7554','cse','0003-02-03','chandigarh','15:20:00','14:00:00','dayout','Approved'),('8','Jashandeep Singh','21bcs7554','df','0022-02-23','chandigarh','14:32:00','00:00:00','dayout','Pending'),('9','Jashandeep Singh','21bcs7554','df','0022-02-23','chandigarh','14:32:00','00:00:00','dayout','Pending');
/*!40000 ALTER TABLE `gatepass_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_data`
--

DROP TABLE IF EXISTS `student_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_data` (
  `Serial_No` int NOT NULL AUTO_INCREMENT,
  `UID` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`Serial_No`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_data`
--

LOCK TABLES `student_data` WRITE;
/*!40000 ALTER TABLE `student_data` DISABLE KEYS */;
INSERT INTO `student_data` VALUES (1,'21BCS11862','Naman02@'),(2,'21BCS10159','Akash02@'),(3,'21BCS7554','Jashan02@'),(4,'21BCS1111','Divyanshi02@');
/*!40000 ALTER TABLE `student_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warden_data`
--

DROP TABLE IF EXISTS `warden_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warden_data` (
  `EID` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warden_data`
--

LOCK TABLES `warden_data` WRITE;
/*!40000 ALTER TABLE `warden_data` DISABLE KEYS */;
INSERT INTO `warden_data` VALUES ('E12','Prem12@'),('E123','Rajendra123@'),('E1234','Sukhwinder1234@');
/*!40000 ALTER TABLE `warden_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-25 17:46:06
