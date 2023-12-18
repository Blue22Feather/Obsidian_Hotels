-- MariaDB dump 10.19-11.2.2-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: obsidian_systems
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `casino_services`
--

DROP TABLE IF EXISTS `casino_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casino_services` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(40) DEFAULT NULL,
  `service_status` varchar(12) DEFAULT NULL,
  `service_category` varchar(40) DEFAULT NULL,
  `service_value` int(9) NOT NULL,
  `service_detail` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casino_services`
--

LOCK TABLES `casino_services` WRITE;
/*!40000 ALTER TABLE `casino_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `casino_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casino_transactions`
--

DROP TABLE IF EXISTS `casino_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casino_transactions` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `transaction_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `transaction_value` int(9) NOT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `transaction_total` int(20) NOT NULL,
  `transaction_detail` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `person_id` (`person_id`),
  KEY `service_id` (`service_id`),
  KEY `promotion_id` (`promotion_id`),
  CONSTRAINT `casino_transactions_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `guests` (`person_id`),
  CONSTRAINT `casino_transactions_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `casino_services` (`service_id`),
  CONSTRAINT `casino_transactions_ibfk_3` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casino_transactions`
--

LOCK TABLES `casino_transactions` WRITE;
/*!40000 ALTER TABLE `casino_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `casino_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guests` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(40) NOT NULL,
  `lastnames` varchar(40) NOT NULL,
  `phone_number` int(10) NOT NULL,
  `mail` varchar(80) NOT NULL,
  `pswd` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` VALUES
(1,'ALGO','BETO',1122334455,'algobeto@example',NULL);
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_items`
--

DROP TABLE IF EXISTS `hotel_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_items` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `product_name` varchar(40) NOT NULL,
  `product_type` varchar(40) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_detail` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `hotel_id` (`hotel_id`),
  CONSTRAINT `hotel_items_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_items`
--

LOCK TABLES `hotel_items` WRITE;
/*!40000 ALTER TABLE `hotel_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_services`
--

DROP TABLE IF EXISTS `hotel_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_services` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(40) DEFAULT NULL,
  `service_status` varchar(12) DEFAULT NULL,
  `service_category` varchar(40) DEFAULT NULL,
  `service_value` int(9) NOT NULL,
  `service_detail` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_services`
--

LOCK TABLES `hotel_services` WRITE;
/*!40000 ALTER TABLE `hotel_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_transactions`
--

DROP TABLE IF EXISTS `hotel_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel_transactions` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `transaction_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `transaction_value` int(9) NOT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `transaction_total` int(20) NOT NULL,
  `transaction_detail` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `person_id` (`person_id`),
  KEY `service_id` (`service_id`),
  KEY `promotion_id` (`promotion_id`),
  KEY `hotel_id` (`hotel_id`),
  CONSTRAINT `hotel_transactions_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `guests` (`person_id`),
  CONSTRAINT `hotel_transactions_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `hotel_services` (`service_id`),
  CONSTRAINT `hotel_transactions_ibfk_3` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`promotion_id`),
  CONSTRAINT `hotel_transactions_ibfk_4` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_transactions`
--

LOCK TABLES `hotel_transactions` WRITE;
/*!40000 ALTER TABLE `hotel_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotels` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(40) NOT NULL,
  `branch_location` varchar(40) NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership` (
  `membership_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `DNI` int(9) DEFAULT NULL,
  `membership_start` datetime DEFAULT NULL,
  `membership_end` datetime DEFAULT NULL,
  `membership_cicle` int(2) DEFAULT NULL,
  `membership_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`membership_id`),
  KEY `person_id` (`person_id`),
  CONSTRAINT `membership_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `guests` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership`
--

LOCK TABLES `membership` WRITE;
/*!40000 ALTER TABLE `membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotions` (
  `promotion_id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_name` varchar(40) DEFAULT NULL,
  `promotion_category` varchar(40) DEFAULT NULL,
  `promotion_start` date NOT NULL,
  `promotion_end` date NOT NULL,
  `promotion_value` int(9) NOT NULL,
  `promotion_detail` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_transactions`
--

DROP TABLE IF EXISTS `restaurant_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_transactions` (
  `transactions_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_amount` int(3) NOT NULL,
  `transaction_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `detail` varchar(80) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `product_total` int(20) NOT NULL,
  PRIMARY KEY (`transactions_id`),
  KEY `person_id` (`person_id`),
  KEY `product_id` (`product_id`),
  KEY `promotion_id` (`promotion_id`),
  CONSTRAINT `restaurant_transactions_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `guests` (`person_id`),
  CONSTRAINT `restaurant_transactions_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `hotel_items` (`product_id`),
  CONSTRAINT `restaurant_transactions_ibfk_3` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_transactions`
--

LOCK TABLES `restaurant_transactions` WRITE;
/*!40000 ALTER TABLE `restaurant_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurant_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_reservations`
--

DROP TABLE IF EXISTS `room_reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_reservations` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `date_checkIn` date NOT NULL,
  `date_checkOut` date NOT NULL,
  `date_book` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`book_id`),
  KEY `person_id` (`person_id`),
  KEY `room_id` (`room_id`),
  CONSTRAINT `room_reservations_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `guests` (`person_id`),
  CONSTRAINT `room_reservations_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_reservations`
--

LOCK TABLES `room_reservations` WRITE;
/*!40000 ALTER TABLE `room_reservations` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `room_num` int(4) NOT NULL,
  `room_status` varchar(12) DEFAULT NULL,
  `room_type` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`room_id`),
  KEY `hotel_id` (`hotel_id`),
  CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'obsidian_systems'
--
