-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: carrentdb
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (2,'Acura'),(4,'Alfa Romeo'),(7,'Aston Martin'),(8,'Audi'),(9,'Bentley'),(11,'BMW'),(1,'Bugatti'),(3,'Cadillac'),(5,'Chery'),(6,'Chevrolet'),(10,'Chrysler'),(12,'Citroen'),(13,'Dacia'),(14,'Dodge'),(15,'Ferrari'),(16,'Fiat'),(17,'Ford '),(18,'Honda'),(19,'Hyundai'),(20,'Infiniti'),(21,'Jaguar'),(22,'Jeep'),(24,'Kia'),(25,'Lamborghini'),(26,'Land Rover'),(27,'Lexus'),(28,'Mazda'),(29,'Mercedes-Benz'),(30,'Mitsubishi'),(31,'Nissan'),(32,'Opel'),(33,'Peugeot'),(34,'Porsche'),(35,'Renault'),(36,'Rolls-Royce'),(37,'Seat'),(38,'Skoda'),(39,'Subaru'),(40,'Suzuki'),(41,'Tesla'),(42,'Toyota'),(43,'Volkswagen'),(44,'Volvo'),(23,'Камаз');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) DEFAULT NULL,
  `price` int(10) unsigned NOT NULL,
  `doors_count` int(10) unsigned NOT NULL,
  `has_conditioner` tinyint(1) NOT NULL,
  `big_luggage_count` int(10) unsigned NOT NULL,
  `small_luggage_count` int(10) unsigned NOT NULL,
  `sits_count` int(10) unsigned NOT NULL,
  `classes_id` int(11) NOT NULL,
  `colors_id` int(11) NOT NULL,
  `statuses_id` int(11) NOT NULL,
  `brands_id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_cars_classes_idx` (`classes_id`),
  KEY `fk_cars_colors1_idx` (`colors_id`),
  KEY `fk_cars_statuses1_idx` (`statuses_id`),
  KEY `fk_cars_brands1_idx` (`brands_id`),
  CONSTRAINT `fk_cars_brands1` FOREIGN KEY (`brands_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cars_classes` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cars_colors1` FOREIGN KEY (`colors_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cars_statuses1` FOREIGN KEY (`statuses_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Aygo',1214,3,0,0,2,4,1,4,2,42,'1.jpg'),(2,'2',1219,4,0,1,1,4,1,8,2,28,'2.png'),(3,'i20',1224,5,0,1,1,4,1,7,2,19,'3.png'),(4,'Fabia',1561,4,1,1,3,5,1,11,2,38,'4.png'),(5,'Fiesta',1571,4,1,1,2,5,1,2,2,17,'5.png'),(6,'Octavia',1741,4,1,2,1,5,2,12,2,38,'6.png'),(7,'Focus',2087,4,1,2,1,5,2,3,2,17,'7.png'),(8,'Octavia Estate',3018,5,1,3,2,5,2,2,2,38,'8.png'),(9,'Lacetti',3084,4,1,2,1,5,2,1,2,6,'9.png'),(10,'Mondeo',3397,4,1,2,2,5,3,2,2,17,'10.png'),(11,'E-Class',3648,4,1,2,3,5,3,8,2,29,'11.png'),(12,'Land Cruiser',6008,5,1,2,2,5,3,2,2,42,'12.png'),(19,'Aygo',1214,3,0,0,2,4,1,4,2,42,'1.jpg'),(21,'Symbol',8825,4,1,2,1,5,2,8,2,35,'13.jpg'),(22,'Alto',2064,3,1,0,2,4,1,7,2,40,'14.jpg'),(23,'Jetta',3140,4,1,2,2,5,2,8,2,43,'15.jpg'),(24,'Tucson',3530,5,1,1,2,5,3,2,2,19,'0a04c578-d61f-40a3-b7ca-95503ed144a2.jpg'),(25,'Camry',3670,4,1,2,3,5,2,2,2,42,'acf66b95-c03c-43c5-8397-8d3782d45155.jpg');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checks`
--

DROP TABLE IF EXISTS `checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sum` int(10) unsigned NOT NULL DEFAULT '0',
  `is_payed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checks`
--

LOCK TABLES `checks` WRITE;
/*!40000 ALTER TABLE `checks` DISABLE KEYS */;
INSERT INTO `checks` VALUES (1,9054,1),(2,3142,1),(3,4683,1),(5,1214,1),(6,21210,1),(7,5676,1),(8,5283,1),(9,6208,0),(10,1741,0);
/*!40000 ALTER TABLE `checks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'Economy'),(2,'Intermediate'),(3,'Premium');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'Red'),(2,'Black'),(3,'Blue'),(4,'Green'),(5,'Orange'),(6,'Yellow'),(7,'White'),(8,'Silver'),(9,'Gold'),(10,'Pink'),(11,'Granit'),(12,'Grey');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `damages`
--

DROP TABLE IF EXISTS `damages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `damages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `sum` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `damages`
--

LOCK TABLES `damages` WRITE;
/*!40000 ALTER TABLE `damages` DISABLE KEYS */;
INSERT INTO `damages` VALUES (1,'Scratch',400),(2,'Salon spot',100),(3,'Dirty salon',700),(4,'Broken windshield',4000),(5,'Broken rear window',3000),(6,'Broken side window',2500),(7,'Audio damage',5000),(8,'Technique damage',7000),(9,'Conditioner damage',6000);
/*!40000 ALTER TABLE `damages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `damages_checks`
--

DROP TABLE IF EXISTS `damages_checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `damages_checks` (
  `damages_id` int(11) NOT NULL,
  `checks_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `fk_damages_has_checks_checks1_idx` (`checks_id`),
  KEY `fk_damages_has_checks_damages1_idx` (`damages_id`),
  CONSTRAINT `fk_damages_has_checks_checks1` FOREIGN KEY (`checks_id`) REFERENCES `checks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_damages_has_checks_damages1` FOREIGN KEY (`damages_id`) REFERENCES `damages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `damages_checks`
--

LOCK TABLES `damages_checks` WRITE;
/*!40000 ALTER TABLE `damages_checks` DISABLE KEYS */;
/*!40000 ALTER TABLE `damages_checks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `declines`
--

DROP TABLE IF EXISTS `declines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `declines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `declines`
--

LOCK TABLES `declines` WRITE;
/*!40000 ALTER TABLE `declines` DISABLE KEYS */;
INSERT INTO `declines` VALUES (1,'Bad reputation'),(2,'Damages the car'),(3,'Fake data'),(4,'Theft');
/*!40000 ALTER TABLE `declines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rents`
--

DROP TABLE IF EXISTS `rents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_driven` tinyint(1) NOT NULL DEFAULT '0',
  `cars_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `declines_id` int(11) DEFAULT NULL,
  `checks_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `is_returned` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `is_finished` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_rents_cars1_idx` (`cars_id`),
  KEY `fk_rents_users1_idx` (`users_id`),
  KEY `fk_rents_declines1_idx` (`declines_id`),
  KEY `fk_rents_checks1_idx` (`checks_id`),
  CONSTRAINT `fk_rents_cars1` FOREIGN KEY (`cars_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_rents_checks1` FOREIGN KEY (`checks_id`) REFERENCES `checks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_rents_declines1` FOREIGN KEY (`declines_id`) REFERENCES `declines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_rents_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rents`
--

LOCK TABLES `rents` WRITE;
/*!40000 ALTER TABLE `rents` DISABLE KEYS */;
INSERT INTO `rents` VALUES (5,0,4,27,1,3,'2015-08-02 00:00:00','2015-08-05 00:00:00',1,1,0),(7,1,2,19,1,7,'2015-08-16 00:00:00','2015-08-20 00:00:00',0,1,0),(8,1,4,19,3,8,'2015-08-16 00:00:00','2015-08-19 00:00:00',0,0,0),(10,1,8,1,NULL,1,'2015-08-20 00:00:00','2015-08-22 00:00:00',0,0,0),(11,1,5,27,NULL,2,'2015-08-24 00:00:00','2015-08-16 00:00:00',0,0,1),(12,1,1,27,NULL,6,'2015-08-15 00:00:00','2015-08-30 00:00:00',0,1,0),(13,0,6,27,NULL,10,'2015-08-19 00:00:00','2015-08-20 00:00:00',0,0,0);
/*!40000 ALTER TABLE `rents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin'),(2,'User'),(3,'Unregistered user'),(4,'Manager');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (3,'Broken'),(2,'Free'),(1,'Rent'),(4,'Reserved');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `is_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `is_registered` tinyint(1) NOT NULL DEFAULT '0',
  `registration_token` varchar(255) DEFAULT NULL,
  `passport_number` varchar(45) NOT NULL,
  `roles_id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `login` varchar(45) NOT NULL,
  `registration_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `userscol_UNIQUE` (`login`),
  KEY `fk_users_roles1_idx` (`roles_id`),
  CONSTRAINT `fk_users_roles1` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Victor Kravchenko',0,1,NULL,'MT 174582',2,'user.png','5f4dcc3b5aa765d61d8327deb882cf99','user_mail@gmail.com','2015-08-02 12:13:14'),(14,'Admin',0,1,'a0161212-7a2c-4259-9bc3-8b6bc27be5f4','admin',1,'user.png','25d55ad283aa400af464c76d713c07ad','admin@gmail.com','2015-08-10 17:10:42'),(18,'Manager',0,1,'7fe0a75c-c926-4fab-93b7-76b24780a2ca','MT 145678',4,'69bf8c55-2a9c-4c58-bc5f-231083683c3d.jpg','25d55ad283aa400af464c76d713c07ad','mailmail@mail.ru','2015-08-12 17:22:24'),(19,'Мария Войтенко',0,1,'4a8b7785-aa57-4b6e-8af7-bdbb67ff9e2f','MT 145698',2,'user.png','25d55ad283aa400af464c76d713c07ad','mariia.voitenko@gmail.com','2015-08-14 15:24:23'),(20,'Петр Симачев',0,1,'0e4043cb-7109-4b44-bede-17f94406edab','ЕН 124587',2,'73d7b92e-ddcd-4be8-b345-e5f5a0e69dc6.jpg','25d55ad283aa400af464c76d713c07ad','petr_simachov@mail.ru','2015-08-16 10:53:37'),(24,'Ирина Карпова',0,1,'0de07ab8-7d83-4dcc-9b06-5146534cd491','ГР 369852',2,'42e1a8b3-0b58-4a7a-8457-4d5070748330.jpg','25d55ad283aa400af464c76d713c07ad','irinakarpova@gmail.com','2015-08-16 11:15:34'),(27,'Jane McGrey',0,1,'b3f58197-cd5f-4d9e-a918-39008334e915','HU 14668511645',2,'0b4b18fc-9750-4bf4-b1c5-564e54b92486.jpg','25d55ad283aa400af464c76d713c07ad','jane@gmail.com','2015-08-16 11:35:18');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-18 21:59:17
