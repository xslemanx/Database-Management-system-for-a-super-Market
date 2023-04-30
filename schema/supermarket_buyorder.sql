-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: supermarket
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `buyorder`
--

DROP TABLE IF EXISTS `buyorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
-- Create a new table called "buyorder"
CREATE TABLE `buyorder` (
  -- Column to store the order ID, set as the primary key
  `Order_id` int NOT NULL,
  -- Column to store the supplier ID
  `supplier_id` int NOT NULL,
  -- Column to store the date the order was made
  `Date` date NOT NULL,
  -- Column to store the total price of the order
  `totalPrice` double DEFAULT NULL,
  -- Column to store the product ID
  `product_id` int DEFAULT NULL,
  
  -- Set the order ID as the primary key
  PRIMARY KEY (`Order_id`),
  -- Create an index on the supplier ID for faster searches
  KEY `supplier_id_idx` (`supplier_id`),
  -- Create an index on the product ID for faster searches
  KEY `product_id_idx` (`product_id`),
  -- Create a foreign key constraint on the product ID to reference the "product" table
  CONSTRAINT `productID` FOREIGN KEY (`product_id`) REFERENCES `product` (`Product_id`),
  -- Create a foreign key constraint on the supplier ID to reference the "supplier" table
  CONSTRAINT `supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`sup_id`) 
  -- Specify that when the referenced supplier is deleted, the corresponding data in this table should be deleted as well
  ON DELETE CASCADE ON UPDATE CASCADE
) 
-- Specify the engine to be used for this table, InnoDB
ENGINE=InnoDB 
-- Set the default character set and collation for this table
DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyorder`
--

LOCK TABLES `buyorder` WRITE;
/*!40000 ALTER TABLE `buyorder` DISABLE KEYS */;
INSERT INTO `buyorder` VALUES (12,501,'2021-01-07',231,10001),(13,503,'2021-06-02',489,10009),(14,505,'2020-05-05',156,10005),(15,509,'2020-12-12',564,10013);
/*!40000 ALTER TABLE `buyorder` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

