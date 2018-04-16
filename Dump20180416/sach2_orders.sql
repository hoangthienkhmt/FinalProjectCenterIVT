-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: sach2
-- ------------------------------------------------------
-- Server version	5.7.11-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5ul5qtyh6slfyq8i4jby7qecx` (`username`),
  CONSTRAINT `FK5ul5qtyh6slfyq8i4jby7qecx` FOREIGN KEY (`username`) REFERENCES `users` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'',NULL,NULL,'','',NULL,'',NULL,4,NULL),(2,'',NULL,NULL,'','',NULL,'',NULL,2,NULL),(3,'',NULL,NULL,'','',NULL,'',NULL,6,NULL),(4,'',NULL,NULL,'','',NULL,'',NULL,28,NULL),(5,'12eewsz',NULL,NULL,'hoangthienkhmt@gmail.com','TEST USER',NULL,'01653561285',NULL,30,NULL),(6,'',NULL,NULL,'','',NULL,'',NULL,23,NULL),(7,'123 cambridge university',NULL,NULL,'hoangthienkhmt@gmail.com','TEST USER',NULL,'190010508',NULL,28,NULL),(8,'',NULL,NULL,'','',NULL,'',NULL,21,NULL),(9,'',NULL,NULL,'','',NULL,'',NULL,20,NULL),(10,'',NULL,NULL,'','',NULL,'',NULL,0,NULL),(11,'',NULL,NULL,'','',NULL,'',NULL,0,NULL),(12,'',NULL,NULL,'','',NULL,'',NULL,22,NULL),(13,'',NULL,NULL,'','',NULL,'',NULL,2,NULL),(14,'152 ham nghi dong ha',NULL,NULL,'','',NULL,'',NULL,21,NULL),(15,'aa','2018-03-26 11:18:24',NULL,'a',NULL,NULL,'01234567',NULL,2,'s1'),(16,'aa',NULL,NULL,'a','',NULL,'01234567',NULL,84,NULL),(17,'136 Trần đại nghĩa, P. Hòa Quý, Quận Ngũ Hành Sơn, Đà Nẵng',NULL,NULL,'hoangthienkhmt@gmail.com','',NULL,'01653561285',NULL,2,NULL),(18,'136 Trần đại nghĩa, P. Hòa Quý, Quận Ngũ Hành Sơn, Đà Nẵng',NULL,NULL,'hoangthienkhmt@gmail.com','',NULL,'01653561285',NULL,4,NULL),(19,'aa',NULL,NULL,'a',NULL,NULL,'01234567',NULL,2,'s1'),(20,'136 Trần đại nghĩa, P. Hòa Quý, Quận Ngũ Hành Sơn, Đà Nẵng',NULL,NULL,'hoangthienkhmt@gmail.com',NULL,NULL,'01653561285',NULL,2,'hoang thien'),(21,'136 Trần đại nghĩa, P. Hòa Quý, Quận Ngũ Hành Sơn, Đà Nẵng',NULL,NULL,'hoangthienkhmt@gmail.com',NULL,'','01653561285',NULL,23,'hoang thien');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-16 16:18:40
