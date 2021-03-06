CREATE DATABASE  IF NOT EXISTS `adms` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `adms`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: adms
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `Booking`
--

DROP TABLE IF EXISTS `Booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Booking` (
                           `booking_id` int NOT NULL AUTO_INCREMENT,
                           `booking_date` date NOT NULL,
                           `booking_time` time NOT NULL,
                           `User_user_id` int NOT NULL,
                           `Desk_desk_id` int NOT NULL,
                           `transaction_timestamp` timestamp NULL DEFAULT NULL,
                           PRIMARY KEY (`booking_id`,`User_user_id`,`Desk_desk_id`),
                           KEY `fk_Booking_User1_idx` (`User_user_id`),
                           KEY `fk_Booking_Desk1_idx` (`Desk_desk_id`),
                           CONSTRAINT `fk_Booking_Desk1` FOREIGN KEY (`Desk_desk_id`) REFERENCES `Desk` (`desk_id`),
                           CONSTRAINT `fk_Booking_User1` FOREIGN KEY (`User_user_id`) REFERENCES `User` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Booking`
--

LOCK TABLES `Booking` WRITE;
/*!40000 ALTER TABLE `Booking` DISABLE KEYS */;
INSERT INTO `Booking` VALUES (1,'2021-11-20','13:00:00',24,14,NULL);
/*!40000 ALTER TABLE `Booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Desk`
--

DROP TABLE IF EXISTS `Desk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Desk` (
                        `desk_id` int NOT NULL,
                        `has_window` tinyint NOT NULL,
                        `desk_location` int DEFAULT NULL,
                        PRIMARY KEY (`desk_id`),
                        KEY `location_id_idx` (`desk_location`),
                        CONSTRAINT `location_id` FOREIGN KEY (`desk_location`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Desk`
--

LOCK TABLES `Desk` WRITE;
/*!40000 ALTER TABLE `Desk` DISABLE KEYS */;
INSERT INTO `Desk` VALUES (10,1,1),(11,0,1),(12,0,1),(13,0,2),(14,1,1),(15,0,2),(16,0,1),(17,1,2);
/*!40000 ALTER TABLE `Desk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
                            `location_id` int NOT NULL AUTO_INCREMENT,
                            `city` varchar(50) NOT NULL,
                            `building_name` varchar(45) DEFAULT NULL,
                            PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Bristol','A311'),(2,'Cardiff','Ca11');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
                        `user_id` int NOT NULL,
                        `first_name` varchar(50) NOT NULL,
                        `last_name` varchar(50) NOT NULL,
                        `email` varchar(50) NOT NULL,
                        `department` varchar(50) DEFAULT NULL,
                        `password` varchar(20) NOT NULL,
                        PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

CREATE TABLE `admin` (
                        `admin_id` int NOT NULL,
                        `first_name` varchar(50) NOT NULL,
                        `last_name` varchar(50) NOT NULL,
                        `email` varchar(50) NOT NULL,
                        `department` varchar(50) DEFAULT NULL,
                        `password` varchar(20) NOT NULL,
                        PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (21,'Abdullah','Alotaibi','abdullah.alotaibi@me.com','HR','123456'),(22,'Daniel','Harling','adaniel@harling.com','IT','123456'),(23,'Mahad','Khurshid','MahadKhurshid@Khurshid.com','Sales','123456'),(24,'Shuwen','Chen','Chen@Shuwen.com','IT','123456');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-18  1:16:55
