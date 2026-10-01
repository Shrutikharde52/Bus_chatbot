-- MySQL dump 10.13  Distrib 8.4.7, for Linux (x86_64)
--
-- Host: localhost    Database: bus_chatbot
-- ------------------------------------------------------
-- Server version	8.4.7-0ubuntu0.25.04.2

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
-- Table structure for table `Bus`
--

DROP TABLE IF EXISTS `Bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bus` (
  `bus_id` int NOT NULL,
  `bus_no` varchar(20) DEFAULT NULL,
  `bus_name` varchar(50) DEFAULT NULL,
  `bus_type` varchar(10) DEFAULT NULL,
  `total_seats` int DEFAULT NULL,
  PRIMARY KEY (`bus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bus`
--

LOCK TABLES `Bus` WRITE;
/*!40000 ALTER TABLE `Bus` DISABLE KEYS */;
INSERT INTO `Bus` VALUES (1,'MH17XY2001','Ordinary','Non-AC',50),(2,'MH17CD1111','Ordinary','Non-AC',45),(3,'MH17AB3322','Shivshahi','AC',45),(4,'MH17OS4724','Shivshahi','Non-AC',45),(5,'MH17OS4554','Shivneri','AC',40),(6,'MH17PQ1265','Ordinary','Non-AC',50),(7,'MH17RT3488','Ordinary','Non-AC',45),(8,'MH17KL5621','Shivshahi','AC',45),(9,'MH17MN7834','Shivshahi','Non-AC',45),(10,'MH17UV9042','Shivneri','AC',40),(11,'MH17GH2156','Ordinary','Non-AC',50),(12,'MH17JK4379','Ordinary','Non-AC',45),(13,'MH17LM6583','Shivshahi','AC',45),(14,'MH17NR8217','Shivshahi','Non-AC',45),(15,'MH17ST9365','Shivneri','AC',40);
/*!40000 ALTER TABLE `Bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FAQ`
--

DROP TABLE IF EXISTS `FAQ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FAQ` (
  `faq_id` int NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`faq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FAQ`
--

LOCK TABLES `FAQ` WRITE;
/*!40000 ALTER TABLE `FAQ` DISABLE KEYS */;
INSERT INTO `FAQ` VALUES (1,'What is the luggage limit?','The standard luggage limit is 15 kg per passenger.','Luggage'),(2,'How can I track my bus?','You can track your bus using the bus number in the tracking option.','Tracking'),(3,'What does ETA mean?','ETA means Estimated Time of Arrival. It shows the expected arrival time of the bus.','General'),(4,'What facilities are available on the bus?','Facilities depend on the bus type. AC buses provide air conditioning and other facilities may vary.','Facilities'),(5,'How can I find the bus route?','Enter the source and destination to find buses and their routes.','Route'),(6,'What should I do if the bus is delayed?','Check the latest tracking information to see the current location and updated ETA of the bus.','Delay'),(7,'Where can I find the bus timetable?','You can check the timetable using the source, destination, bus number, departure time and arrival time.','Timetable'),(8,'How can I check available seats?','Enter the bus number to view the available and occupied seats.','Seats'),(9,'How many seats does the bus have?','The total number of seats depends on the bus. It can be checked using the bus information.','Seats'),(10,'How can I find buses from Pune?','Enter Pune as the source location to find available buses from Pune.','Bus Search'),(11,'How can I find buses going to Mumbai?','Enter Mumbai as the destination to find buses going to Mumbai.','Bus Search'),(12,'How can I know the bus type?','The bus type is displayed in the bus information, such as AC or Non-AC.','Bus Information'),(13,'What is the departure time of a bus?','The departure time can be checked in the timetable for the selected bus.','Timetable'),(14,'What is the arrival time of a bus?','The arrival time can be checked in the timetable for the selected bus.','Timetable'),(15,'How can I find the next stop?','The next stop can be identified using the stop order of the selected bus route.','Stops'),(16,'How can I check all stops of a bus?','Select the bus to view all stops on its route in the correct order.','Stops'),(17,'Can I check the current speed of the bus?','Yes. The current sample tracking information shows the speed of the bus.','Tracking'),(18,'Can I see the current location of the bus?','Yes. The tracking information provides the latitude and longitude of the bus.','Tracking'),(19,'What is the difference between AC and Non-AC buses?','AC buses provide air conditioning, while Non-AC buses do not.','Bus Information'),(20,'How can I find the distance of a route?','The distance of the selected route can be viewed in the route information.','Route');
/*!40000 ALTER TABLE `FAQ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Route`
--

DROP TABLE IF EXISTS `Route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Route` (
  `route_id` int NOT NULL,
  `bus_id` int DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  PRIMARY KEY (`route_id`),
  KEY `bus_id` (`bus_id`),
  CONSTRAINT `Route_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `Bus` (`bus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Route`
--

LOCK TABLES `Route` WRITE;
/*!40000 ALTER TABLE `Route` DISABLE KEYS */;
INSERT INTO `Route` VALUES (101,1,'Pune','Mumbai',150),(102,2,'Pune','Nashik',215),(103,3,'Nashik','Sambhajinagar',195),(104,4,'Shirdi','pune',190),(105,5,'Kolhapur','pune',230),(106,6,'Mumbai','Nashik',165),(107,7,'Kolhapur','Goa',230),(108,8,'Nashik','Shirdi',90),(109,9,'Satara','Kolhapur',120),(110,10,'Mumbai','Kolhapur',375),(111,11,'Solapur','Hyderabad',305),(112,12,'Nashik','Mumbai',170),(113,13,'Shirdi','Sambhajinagar',125),(114,14,'Lonavala','Mumbai',85),(115,15,'Sambhajinagar','Nashik',215);
/*!40000 ALTER TABLE `Route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Seat`
--

DROP TABLE IF EXISTS `Seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Seat` (
  `seat_id` int NOT NULL,
  `bus_id` int DEFAULT NULL,
  `seat_no` int DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`seat_id`),
  KEY `bus_id` (`bus_id`),
  CONSTRAINT `Seat_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `Bus` (`bus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Seat`
--

LOCK TABLES `Seat` WRITE;
/*!40000 ALTER TABLE `Seat` DISABLE KEYS */;
INSERT INTO `Seat` VALUES (1,1,1,'Available'),(2,1,2,'Occupied'),(3,1,3,'Available'),(4,1,4,'Available'),(5,1,5,'Occupied'),(6,1,6,'Available'),(7,1,7,'Available'),(8,1,8,'Occupied'),(9,1,9,'Available'),(10,1,10,'Available'),(11,1,11,'Occupied'),(12,1,12,'Available'),(13,1,13,'Available'),(14,1,14,'Occupied'),(15,1,15,'Available'),(16,1,16,'Available'),(17,1,17,'Occupied'),(18,1,18,'Available'),(19,1,19,'Available'),(20,1,20,'Occupied'),(21,1,21,'Available'),(22,1,22,'Available'),(23,1,23,'Occupied'),(24,1,24,'Available'),(25,1,25,'Available'),(26,1,26,'Occupied'),(27,1,27,'Available'),(28,1,28,'Available'),(29,1,29,'Occupied'),(30,1,30,'Available'),(31,1,31,'Available'),(32,1,32,'Occupied'),(33,1,33,'Available'),(34,1,34,'Available'),(35,1,35,'Occupied'),(36,1,36,'Available'),(37,1,37,'Available'),(38,1,38,'Occupied'),(39,1,39,'Available'),(40,1,40,'Available'),(41,1,41,'Occupied'),(42,1,42,'Available'),(43,1,43,'Available'),(44,1,44,'Occupied'),(45,1,45,'Available'),(46,1,46,'Available'),(47,1,47,'Occupied'),(48,1,48,'Available'),(49,1,49,'Available'),(50,1,50,'Occupied'),(51,2,1,'Available'),(52,2,2,'Occupied'),(53,2,3,'Available'),(54,2,4,'Available'),(55,2,5,'Occupied'),(56,2,6,'Available'),(57,2,7,'Available'),(58,2,8,'Occupied'),(59,2,9,'Available'),(60,2,10,'Available'),(61,2,11,'Occupied'),(62,2,12,'Available'),(63,2,13,'Available'),(64,2,14,'Occupied'),(65,2,15,'Available'),(66,2,16,'Available'),(67,2,17,'Occupied'),(68,2,18,'Available'),(69,2,19,'Available'),(70,2,20,'Occupied'),(71,2,21,'Available'),(72,2,22,'Available'),(73,2,23,'Occupied'),(74,2,24,'Available'),(75,2,25,'Available'),(76,2,26,'Occupied'),(77,2,27,'Available'),(78,2,28,'Available'),(79,2,29,'Occupied'),(80,2,30,'Available'),(81,2,31,'Available'),(82,2,32,'Occupied'),(83,2,33,'Available'),(84,2,34,'Available'),(85,2,35,'Occupied'),(86,2,36,'Available'),(87,2,37,'Available'),(88,2,38,'Occupied'),(89,2,39,'Available'),(90,2,40,'Available'),(91,2,41,'Occupied'),(92,2,42,'Available'),(93,2,43,'Available'),(94,2,44,'Occupied'),(95,2,45,'Available'),(96,3,1,'Available'),(97,3,2,'Occupied'),(98,3,3,'Available'),(99,3,4,'Available'),(100,3,5,'Occupied'),(101,3,6,'Available'),(102,3,7,'Available'),(103,3,8,'Occupied'),(104,3,9,'Available'),(105,3,10,'Available'),(106,3,11,'Occupied'),(107,3,12,'Available'),(108,3,13,'Available'),(109,3,14,'Occupied'),(110,3,15,'Available'),(111,3,16,'Available'),(112,3,17,'Occupied'),(113,3,18,'Available'),(114,3,19,'Available'),(115,3,20,'Occupied'),(116,3,21,'Available'),(117,3,22,'Available'),(118,3,23,'Occupied'),(119,3,24,'Available'),(120,3,25,'Available'),(121,3,26,'Occupied'),(122,3,27,'Available'),(123,3,28,'Available'),(124,3,29,'Occupied'),(125,3,30,'Available'),(126,3,31,'Available'),(127,3,32,'Occupied'),(128,3,33,'Available'),(129,3,34,'Available'),(130,3,35,'Occupied'),(131,3,36,'Available'),(132,3,37,'Available'),(133,3,38,'Occupied'),(134,3,39,'Available'),(135,3,40,'Available'),(136,3,41,'Occupied'),(137,3,42,'Available'),(138,3,43,'Available'),(139,3,44,'Occupied'),(140,3,45,'Available'),(141,4,1,'Available'),(142,4,2,'Occupied'),(143,4,3,'Available'),(144,4,4,'Available'),(145,4,5,'Occupied'),(146,4,6,'Available'),(147,4,7,'Available'),(148,4,8,'Occupied'),(149,4,9,'Available'),(150,4,10,'Available'),(151,4,11,'Occupied'),(152,4,12,'Available'),(153,4,13,'Available'),(154,4,14,'Occupied'),(155,4,15,'Available'),(156,4,16,'Available'),(157,4,17,'Occupied'),(158,4,18,'Available'),(159,4,19,'Available'),(160,4,20,'Occupied'),(161,4,21,'Available'),(162,4,22,'Available'),(163,4,23,'Occupied'),(164,4,24,'Available'),(165,4,25,'Available'),(166,4,26,'Occupied'),(167,4,27,'Available'),(168,4,28,'Available'),(169,4,29,'Occupied'),(170,4,30,'Available'),(171,4,31,'Available'),(172,4,32,'Occupied'),(173,4,33,'Available'),(174,4,34,'Available'),(175,4,35,'Occupied'),(176,4,36,'Available'),(177,4,37,'Available'),(178,4,38,'Occupied'),(179,4,39,'Available'),(180,4,40,'Available'),(181,4,41,'Occupied'),(182,4,42,'Available'),(183,4,43,'Available'),(184,4,44,'Occupied'),(185,4,45,'Available'),(186,5,1,'Available'),(187,5,2,'Occupied'),(188,5,3,'Available'),(189,5,4,'Available'),(190,5,5,'Occupied'),(191,5,6,'Available'),(192,5,7,'Available'),(193,5,8,'Occupied'),(194,5,9,'Available'),(195,5,10,'Available'),(196,5,11,'Occupied'),(197,5,12,'Available'),(198,5,13,'Available'),(199,5,14,'Occupied'),(200,5,15,'Available'),(201,5,16,'Available'),(202,5,17,'Occupied'),(203,5,18,'Available'),(204,5,19,'Available'),(205,5,20,'Occupied'),(206,5,21,'Available'),(207,5,22,'Available'),(208,5,23,'Occupied'),(209,5,24,'Available'),(210,5,25,'Available'),(211,5,26,'Occupied'),(212,5,27,'Available'),(213,5,28,'Available'),(214,5,29,'Occupied'),(215,5,30,'Available'),(216,5,31,'Available'),(217,5,32,'Occupied'),(218,5,33,'Available'),(219,5,34,'Available'),(220,5,35,'Occupied'),(221,5,36,'Available'),(222,5,37,'Available'),(223,5,38,'Occupied'),(224,5,39,'Available'),(225,5,40,'Available'),(226,6,1,'Available'),(227,6,2,'Available'),(228,6,3,'Available'),(229,6,4,'Available'),(230,6,5,'Occupied'),(231,6,6,'Available'),(232,6,7,'Available'),(233,6,8,'Available'),(234,6,9,'Available'),(235,6,10,'Occupied'),(236,6,11,'Available'),(237,6,12,'Available'),(238,6,13,'Available'),(239,6,14,'Available'),(240,6,15,'Occupied'),(241,6,16,'Available'),(242,6,17,'Available'),(243,6,18,'Available'),(244,6,19,'Available'),(245,6,20,'Occupied'),(246,6,21,'Available'),(247,6,22,'Available'),(248,6,23,'Available'),(249,6,24,'Available'),(250,6,25,'Occupied'),(251,6,26,'Available'),(252,6,27,'Available'),(253,6,28,'Available'),(254,6,29,'Available'),(255,6,30,'Occupied'),(256,6,31,'Available'),(257,6,32,'Available'),(258,6,33,'Available'),(259,6,34,'Available'),(260,6,35,'Occupied'),(261,6,36,'Available'),(262,6,37,'Available'),(263,6,38,'Available'),(264,6,39,'Available'),(265,6,40,'Occupied'),(266,6,41,'Available'),(267,6,42,'Available'),(268,6,43,'Available'),(269,6,44,'Available'),(270,6,45,'Occupied'),(271,6,46,'Available'),(272,6,47,'Available'),(273,6,48,'Available'),(274,6,49,'Available'),(275,6,50,'Occupied'),(276,7,1,'Available'),(277,7,2,'Available'),(278,7,3,'Available'),(279,7,4,'Available'),(280,7,5,'Occupied'),(281,7,6,'Available'),(282,7,7,'Available'),(283,7,8,'Available'),(284,7,9,'Available'),(285,7,10,'Occupied'),(286,7,11,'Available'),(287,7,12,'Available'),(288,7,13,'Available'),(289,7,14,'Available'),(290,7,15,'Occupied'),(291,7,16,'Available'),(292,7,17,'Available'),(293,7,18,'Available'),(294,7,19,'Available'),(295,7,20,'Occupied'),(296,7,21,'Available'),(297,7,22,'Available'),(298,7,23,'Available'),(299,7,24,'Available'),(300,7,25,'Occupied'),(301,7,26,'Available'),(302,7,27,'Available'),(303,7,28,'Available'),(304,7,29,'Available'),(305,7,30,'Occupied'),(306,7,31,'Available'),(307,7,32,'Available'),(308,7,33,'Available'),(309,7,34,'Available'),(310,7,35,'Occupied'),(311,7,36,'Available'),(312,7,37,'Available'),(313,7,38,'Available'),(314,7,39,'Available'),(315,7,40,'Occupied'),(316,7,41,'Available'),(317,7,42,'Available'),(318,7,43,'Available'),(319,7,44,'Available'),(320,7,45,'Occupied'),(321,8,1,'Available'),(322,8,2,'Available'),(323,8,3,'Available'),(324,8,4,'Available'),(325,8,5,'Occupied'),(326,8,6,'Available'),(327,8,7,'Available'),(328,8,8,'Available'),(329,8,9,'Available'),(330,8,10,'Occupied'),(331,8,11,'Available'),(332,8,12,'Available'),(333,8,13,'Available'),(334,8,14,'Available'),(335,8,15,'Occupied'),(336,8,16,'Available'),(337,8,17,'Available'),(338,8,18,'Available'),(339,8,19,'Available'),(340,8,20,'Occupied'),(341,8,21,'Available'),(342,8,22,'Available'),(343,8,23,'Available'),(344,8,24,'Available'),(345,8,25,'Occupied'),(346,8,26,'Available'),(347,8,27,'Available'),(348,8,28,'Available'),(349,8,29,'Available'),(350,8,30,'Occupied'),(351,8,31,'Available'),(352,8,32,'Available'),(353,8,33,'Available'),(354,8,34,'Available'),(355,8,35,'Occupied'),(356,8,36,'Available'),(357,8,37,'Available'),(358,8,38,'Available'),(359,8,39,'Available'),(360,8,40,'Occupied'),(361,8,41,'Available'),(362,8,42,'Available'),(363,8,43,'Available'),(364,8,44,'Available'),(365,8,45,'Occupied'),(366,9,1,'Available'),(367,9,2,'Available'),(368,9,3,'Available'),(369,9,4,'Available'),(370,9,5,'Occupied'),(371,9,6,'Available'),(372,9,7,'Available'),(373,9,8,'Available'),(374,9,9,'Available'),(375,9,10,'Occupied'),(376,9,11,'Available'),(377,9,12,'Available'),(378,9,13,'Available'),(379,9,14,'Available'),(380,9,15,'Occupied'),(381,9,16,'Available'),(382,9,17,'Available'),(383,9,18,'Available'),(384,9,19,'Available'),(385,9,20,'Occupied'),(386,9,21,'Available'),(387,9,22,'Available'),(388,9,23,'Available'),(389,9,24,'Available'),(390,9,25,'Occupied'),(391,9,26,'Available'),(392,9,27,'Available'),(393,9,28,'Available'),(394,9,29,'Available'),(395,9,30,'Occupied'),(396,9,31,'Available'),(397,9,32,'Available'),(398,9,33,'Available'),(399,9,34,'Available'),(400,9,35,'Occupied'),(401,9,36,'Available'),(402,9,37,'Available'),(403,9,38,'Available'),(404,9,39,'Available'),(405,9,40,'Occupied'),(406,9,41,'Available'),(407,9,42,'Available'),(408,9,43,'Available'),(409,9,44,'Available'),(410,9,45,'Occupied'),(411,10,1,'Available'),(412,10,2,'Available'),(413,10,3,'Available'),(414,10,4,'Available'),(415,10,5,'Occupied'),(416,10,6,'Available'),(417,10,7,'Available'),(418,10,8,'Available'),(419,10,9,'Available'),(420,10,10,'Occupied'),(421,10,11,'Available'),(422,10,12,'Available'),(423,10,13,'Available'),(424,10,14,'Available'),(425,10,15,'Occupied'),(426,10,16,'Available'),(427,10,17,'Available'),(428,10,18,'Available'),(429,10,19,'Available'),(430,10,20,'Occupied'),(431,10,21,'Available'),(432,10,22,'Available'),(433,10,23,'Available'),(434,10,24,'Available'),(435,10,25,'Occupied'),(436,10,26,'Available'),(437,10,27,'Available'),(438,10,28,'Available'),(439,10,29,'Available'),(440,10,30,'Occupied'),(441,10,31,'Available'),(442,10,32,'Available'),(443,10,33,'Available'),(444,10,34,'Available'),(445,10,35,'Occupied'),(446,10,36,'Available'),(447,10,37,'Available'),(448,10,38,'Available'),(449,10,39,'Available'),(450,10,40,'Occupied'),(451,11,1,'Available'),(452,11,2,'Available'),(453,11,3,'Available'),(454,11,4,'Available'),(455,11,5,'Occupied'),(456,11,6,'Available'),(457,11,7,'Available'),(458,11,8,'Available'),(459,11,9,'Available'),(460,11,10,'Occupied'),(461,11,11,'Available'),(462,11,12,'Available'),(463,11,13,'Available'),(464,11,14,'Available'),(465,11,15,'Occupied'),(466,11,16,'Available'),(467,11,17,'Available'),(468,11,18,'Available'),(469,11,19,'Available'),(470,11,20,'Occupied'),(471,11,21,'Available'),(472,11,22,'Available'),(473,11,23,'Available'),(474,11,24,'Available'),(475,11,25,'Occupied'),(476,11,26,'Available'),(477,11,27,'Available'),(478,11,28,'Available'),(479,11,29,'Available'),(480,11,30,'Occupied'),(481,11,31,'Available'),(482,11,32,'Available'),(483,11,33,'Available'),(484,11,34,'Available'),(485,11,35,'Occupied'),(486,11,36,'Available'),(487,11,37,'Available'),(488,11,38,'Available'),(489,11,39,'Available'),(490,11,40,'Occupied'),(491,11,41,'Available'),(492,11,42,'Available'),(493,11,43,'Available'),(494,11,44,'Available'),(495,11,45,'Occupied'),(496,11,46,'Available'),(497,11,47,'Available'),(498,11,48,'Available'),(499,11,49,'Available'),(500,11,50,'Occupied'),(501,12,1,'Available'),(502,12,2,'Available'),(503,12,3,'Available'),(504,12,4,'Available'),(505,12,5,'Occupied'),(506,12,6,'Available'),(507,12,7,'Available'),(508,12,8,'Available'),(509,12,9,'Available'),(510,12,10,'Occupied'),(511,12,11,'Available'),(512,12,12,'Available'),(513,12,13,'Available'),(514,12,14,'Available'),(515,12,15,'Occupied'),(516,12,16,'Available'),(517,12,17,'Available'),(518,12,18,'Available'),(519,12,19,'Available'),(520,12,20,'Occupied'),(521,12,21,'Available'),(522,12,22,'Available'),(523,12,23,'Available'),(524,12,24,'Available'),(525,12,25,'Occupied'),(526,12,26,'Available'),(527,12,27,'Available'),(528,12,28,'Available'),(529,12,29,'Available'),(530,12,30,'Occupied'),(531,12,31,'Available'),(532,12,32,'Available'),(533,12,33,'Available'),(534,12,34,'Available'),(535,12,35,'Occupied'),(536,12,36,'Available'),(537,12,37,'Available'),(538,12,38,'Available'),(539,12,39,'Available'),(540,12,40,'Occupied'),(541,12,41,'Available'),(542,12,42,'Available'),(543,12,43,'Available'),(544,12,44,'Available'),(545,12,45,'Occupied'),(546,13,1,'Available'),(547,13,2,'Available'),(548,13,3,'Available'),(549,13,4,'Available'),(550,13,5,'Occupied'),(551,13,6,'Available'),(552,13,7,'Available'),(553,13,8,'Available'),(554,13,9,'Available'),(555,13,10,'Occupied'),(556,13,11,'Available'),(557,13,12,'Available'),(558,13,13,'Available'),(559,13,14,'Available'),(560,13,15,'Occupied'),(561,13,16,'Available'),(562,13,17,'Available'),(563,13,18,'Available'),(564,13,19,'Available'),(565,13,20,'Occupied'),(566,13,21,'Available'),(567,13,22,'Available'),(568,13,23,'Available'),(569,13,24,'Available'),(570,13,25,'Occupied'),(571,13,26,'Available'),(572,13,27,'Available'),(573,13,28,'Available'),(574,13,29,'Available'),(575,13,30,'Occupied'),(576,13,31,'Available'),(577,13,32,'Available'),(578,13,33,'Available'),(579,13,34,'Available'),(580,13,35,'Occupied'),(581,13,36,'Available'),(582,13,37,'Available'),(583,13,38,'Available'),(584,13,39,'Available'),(585,13,40,'Occupied'),(586,13,41,'Available'),(587,13,42,'Available'),(588,13,43,'Available'),(589,13,44,'Available'),(590,13,45,'Occupied'),(591,14,1,'Available'),(592,14,2,'Available'),(593,14,3,'Available'),(594,14,4,'Available'),(595,14,5,'Occupied'),(596,14,6,'Available'),(597,14,7,'Available'),(598,14,8,'Available'),(599,14,9,'Available'),(600,14,10,'Occupied'),(601,14,11,'Available'),(602,14,12,'Available'),(603,14,13,'Available'),(604,14,14,'Available'),(605,14,15,'Occupied'),(606,14,16,'Available'),(607,14,17,'Available'),(608,14,18,'Available'),(609,14,19,'Available'),(610,14,20,'Occupied'),(611,14,21,'Available'),(612,14,22,'Available'),(613,14,23,'Available'),(614,14,24,'Available'),(615,14,25,'Occupied'),(616,14,26,'Available'),(617,14,27,'Available'),(618,14,28,'Available'),(619,14,29,'Available'),(620,14,30,'Occupied'),(621,14,31,'Available'),(622,14,32,'Available'),(623,14,33,'Available'),(624,14,34,'Available'),(625,14,35,'Occupied'),(626,14,36,'Available'),(627,14,37,'Available'),(628,14,38,'Available'),(629,14,39,'Available'),(630,14,40,'Occupied'),(631,14,41,'Available'),(632,14,42,'Available'),(633,14,43,'Available'),(634,14,44,'Available'),(635,14,45,'Occupied'),(636,15,1,'Available'),(637,15,2,'Available'),(638,15,3,'Available'),(639,15,4,'Available'),(640,15,5,'Occupied'),(641,15,6,'Available'),(642,15,7,'Available'),(643,15,8,'Available'),(644,15,9,'Available'),(645,15,10,'Occupied'),(646,15,11,'Available'),(647,15,12,'Available'),(648,15,13,'Available'),(649,15,14,'Available'),(650,15,15,'Occupied'),(651,15,16,'Available'),(652,15,17,'Available'),(653,15,18,'Available'),(654,15,19,'Available'),(655,15,20,'Occupied'),(656,15,21,'Available'),(657,15,22,'Available'),(658,15,23,'Available'),(659,15,24,'Available'),(660,15,25,'Occupied'),(661,15,26,'Available'),(662,15,27,'Available'),(663,15,28,'Available'),(664,15,29,'Available'),(665,15,30,'Occupied'),(666,15,31,'Available'),(667,15,32,'Available'),(668,15,33,'Available'),(669,15,34,'Available'),(670,15,35,'Occupied'),(671,15,36,'Available'),(672,15,37,'Available'),(673,15,38,'Available'),(674,15,39,'Available'),(675,15,40,'Occupied');
/*!40000 ALTER TABLE `Seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stop`
--

DROP TABLE IF EXISTS `Stop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Stop` (
  `stop_id` int NOT NULL,
  `route_id` int DEFAULT NULL,
  `stop_name` varchar(50) DEFAULT NULL,
  `stop_order` int DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  PRIMARY KEY (`stop_id`),
  KEY `route_id` (`route_id`),
  CONSTRAINT `Stop_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `Route` (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stop`
--

LOCK TABLES `Stop` WRITE;
/*!40000 ALTER TABLE `Stop` DISABLE KEYS */;
INSERT INTO `Stop` VALUES (1,101,'Pune',1,'04:50:00','05:00:00'),(2,101,'Lonavala',2,'05:25:00','05:35:00'),(3,101,'Khandala',3,'06:10:00','06:15:00'),(4,101,'Khopoli',4,'06:45:00','06:55:00'),(5,101,'Panvel',5,'07:20:00','07:25:00'),(6,101,'Vashi',6,'07:50:00','07:55:00'),(7,101,'Thane',7,'08:15:00','08:30:00'),(8,101,'Mumbai',8,'08:30:00','08:45:00'),(9,102,'Pune',1,'06:05:00','06:15:00'),(10,102,'Chakan',2,'06:45:00','06:50:00'),(11,102,'Rajgurunagar',3,'07:15:00','07:20:00'),(12,102,'Manchar',4,'07:35:00','07:40:00'),(13,102,'narayangao',5,'08:10:00','08:15:00'),(14,102,'Ale phata',6,'08:55:00','09:00:00'),(15,102,'Sangamner',7,'09:25:00','09:30:00'),(16,102,'Sinner',8,'10:00:00','10:10:00'),(17,102,'Nashik',9,'10:30:00','10:40:00'),(18,103,'Nashik',1,'06:25:00','06:35:00'),(19,103,'Sinnar',2,'07:00:00','07:05:00'),(20,103,'Yeola',3,'07:40:00','07:45:00'),(21,103,'Kopargaon',4,'08:15:00','08:20:00'),(22,103,'Vaijapur',5,'08:50:00','08:55:00'),(23,103,'Lasur',6,'09:35:00','09:40:00'),(24,103,'Waluj',7,'10:15:00','10:20:00'),(25,103,'Sambhajinagar',8,'10:45:00','10:55:00'),(26,104,'Shirdi',1,'06:50:00','07:00:00'),(27,104,'Rahata',2,'07:20:00','07:25:00'),(28,104,'Sangamner',3,'08:10:00','08:15:00'),(29,104,'Ale Phata',4,'09:10:00','09:15:00'),(30,104,'Narayangaon',5,'09:45:00','09:50:00'),(31,104,'Rajgurunagar',6,'10:25:00','10:30:00'),(32,104,'Chakan',7,'11:00:00','11:05:00'),(33,104,'Pune',8,'11:55:00','12:05:00'),(34,105,'Kolhapur',1,'07:00:00','07:10:00'),(35,105,'Peth Vadgaon',2,'07:35:00','07:40:00'),(36,105,'Karad',3,'08:10:00','08:15:00'),(37,105,'Satara',4,'09:00:00','09:05:00'),(38,105,'Wai',5,'09:35:00','09:40:00'),(39,105,'Shirwal',6,'10:05:00','10:10:00'),(40,105,'Katraj',7,'11:20:00','11:25:00'),(41,105,'Pune',8,'11:50:00','12:00:00'),(42,106,'Mumbai',1,'05:20:00','05:30:00'),(43,106,'Thane',2,'06:05:00','06:10:00'),(44,106,'Bhiwandi',3,'06:30:00','06:35:00'),(45,106,'Shahapur',4,'07:00:00','07:05:00'),(46,106,'Kasara',5,'07:30:00','07:35:00'),(47,106,'Igatpuri',6,'07:40:00','07:45:00'),(48,106,'Ghoti',7,'07:55:00','08:00:00'),(49,106,'Nashik',8,'08:05:00','08:15:00'),(50,107,'Kolhapur',1,'05:50:00','06:00:00'),(51,107,'Kagal',2,'06:20:00','06:25:00'),(52,107,'Nipani',3,'06:55:00','07:00:00'),(53,107,'Belgaum',4,'07:30:00','07:35:00'),(54,107,'Dharwad',5,'08:45:00','08:50:00'),(55,107,'Hubli',6,'09:05:00','09:10:00'),(56,107,'Dandeli',7,'09:50:00','09:55:00'),(57,107,'Panaji',8,'10:20:00','10:30:00'),(58,108,'Nashik',1,'06:35:00','06:45:00'),(59,108,'Sinnar',2,'07:15:00','07:20:00'),(60,108,'Yeola',3,'07:45:00','07:50:00'),(61,108,'Kopargaon',4,'07:55:00','08:00:00'),(62,108,'Rahata',5,'08:20:00','08:25:00'),(63,108,'Shirdi',6,'08:35:00','08:45:00'),(64,109,'Satara',1,'07:10:00','07:20:00'),(65,109,'Karad',2,'08:05:00','08:10:00'),(66,109,'Uran Islampur',3,'08:35:00','08:40:00'),(67,109,'Peth Vadgaon',4,'08:55:00','09:00:00'),(68,109,'Hatkanangale',5,'09:20:00','09:25:00'),(69,109,'Kolhapur',6,'09:40:00','09:50:00'),(70,110,'Mumbai',1,'05:35:00','05:45:00'),(71,110,'Panvel',2,'06:35:00','06:40:00'),(72,110,'Khopoli',3,'07:30:00','07:35:00'),(73,110,'Lonavala',4,'08:00:00','08:05:00'),(74,110,'Pune',5,'08:50:00','09:00:00'),(75,110,'Satara',6,'10:15:00','10:20:00'),(76,110,'Karad',7,'11:00:00','11:05:00'),(77,110,'Kolhapur',8,'11:50:00','12:00:00'),(78,111,'Solapur',1,'06:20:00','06:30:00'),(79,111,'Akkalkot',2,'07:15:00','07:20:00'),(80,111,'Aland',3,'08:00:00','08:05:00'),(81,111,'Gulbarga',4,'08:40:00','08:45:00'),(82,111,'Humnabad',5,'09:30:00','09:35:00'),(83,111,'Zaheerabad',6,'10:15:00','10:20:00'),(84,111,'Sangareddy',7,'10:45:00','10:50:00'),(85,111,'Hyderabad',8,'11:05:00','11:15:00'),(86,112,'Nashik',1,'07:05:00','07:15:00'),(87,112,'Igatpuri',2,'08:00:00','08:05:00'),(88,112,'Kasara',3,'08:35:00','08:40:00'),(89,112,'Shahapur',4,'09:10:00','09:15:00'),(90,112,'Bhiwandi',5,'09:35:00','09:40:00'),(91,112,'Thane',6,'09:45:00','09:50:00'),(92,112,'Mulund',7,'10:05:00','10:10:00'),(93,112,'Mumbai',8,'10:35:00','10:45:00'),(94,113,'Shirdi',1,'07:50:00','08:00:00'),(95,113,'Rahata',2,'08:20:00','08:25:00'),(96,113,'Kopargaon',3,'08:30:00','08:35:00'),(97,113,'Vaijapur',4,'09:20:00','09:25:00'),(98,113,'Lasur',5,'09:50:00','09:55:00'),(99,113,'Waluj',6,'10:10:00','10:15:00'),(100,113,'Sambhajinagar',7,'10:20:00','10:30:00'),(101,114,'Lonavala',1,'06:10:00','06:20:00'),(102,114,'Khandala',2,'06:30:00','06:35:00'),(103,114,'Khopoli',3,'07:05:00','07:10:00'),(104,114,'Panvel',4,'07:40:00','07:45:00'),(105,114,'Vashi',5,'07:55:00','08:00:00'),(106,114,'Navi Mumbai',6,'08:05:00','08:10:00'),(107,114,'Bandra',7,'08:30:00','08:35:00'),(108,114,'Mumbai',8,'08:45:00','08:55:00'),(109,115,'Sambhajinagar',1,'07:30:00','07:40:00'),(110,115,'Waluj',2,'08:00:00','08:05:00'),(111,115,'Vaijapur',3,'08:35:00','08:40:00'),(112,115,'Kopargaon',4,'09:05:00','09:10:00'),(113,115,'Yeola',5,'09:35:00','09:40:00'),(114,115,'Sinnar',6,'10:45:00','10:50:00'),(115,115,'Nashik',7,'11:20:00','11:30:00');
/*!40000 ALTER TABLE `Stop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Timetable`
--

DROP TABLE IF EXISTS `Timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Timetable` (
  `timetable_id` int NOT NULL,
  `bus_id` int DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  PRIMARY KEY (`timetable_id`),
  KEY `bus_id` (`bus_id`),
  CONSTRAINT `Timetable_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `Bus` (`bus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Timetable`
--

LOCK TABLES `Timetable` WRITE;
/*!40000 ALTER TABLE `Timetable` DISABLE KEYS */;
INSERT INTO `Timetable` VALUES (1001,1,'05:00:00','08:30:00'),(1002,2,'06:15:00','10:50:00'),(1003,3,'06:35:00','10:45:00'),(1004,4,'07:00:00','12:05:00'),(1005,5,'07:10:00','12:00:00'),(1006,6,'05:30:00','08:15:00'),(1007,7,'06:00:00','10:30:00'),(1008,8,'06:45:00','08:45:00'),(1009,9,'07:20:00','09:50:00'),(1010,10,'05:45:00','12:00:00'),(1011,11,'06:30:00','11:15:00'),(1012,12,'07:15:00','10:45:00'),(1013,13,'08:00:00','10:30:00'),(1014,14,'06:20:00','08:05:00'),(1015,15,'07:40:00','11:30:00');
/*!40000 ALTER TABLE `Timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tracking`
--

DROP TABLE IF EXISTS `Tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tracking` (
  `tracking_id` int NOT NULL,
  `bus_id` int DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `speed` float DEFAULT NULL,
  `ETA` time DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`tracking_id`),
  KEY `bus_id` (`bus_id`),
  CONSTRAINT `Tracking_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `Bus` (`bus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tracking`
--

LOCK TABLES `Tracking` WRITE;
/*!40000 ALTER TABLE `Tracking` DISABLE KEYS */;
INSERT INTO `Tracking` VALUES (1,1,18.5204000,73.8567000,52.5,'08:30:00','2026-09-29 07:15:00'),(2,2,18.6800000,73.8500000,48,'10:50:00','2026-09-29 07:20:00'),(3,3,20.0059000,73.7622000,55.5,'10:45:00','2026-09-29 07:25:00'),(4,4,19.7667000,74.4767000,45,'12:05:00','2026-09-29 07:30:00'),(5,5,16.7050000,74.2433000,60,'12:00:00','2026-09-29 07:35:00'),(6,6,19.0760000,72.8777000,51,'08:15:00','2026-09-29 07:40:00'),(7,7,16.7050000,74.2433000,54.5,'10:30:00','2026-09-29 07:45:00'),(8,8,20.0059000,73.7622000,49,'08:45:00','2026-09-29 07:50:00'),(9,9,17.6805000,74.0183000,46.5,'09:50:00','2026-09-29 07:55:00'),(10,10,19.0760000,72.8777000,58,'12:00:00','2026-09-29 08:00:00'),(11,11,17.6599000,75.9064000,52,'11:15:00','2026-09-29 08:05:00'),(12,12,20.0059000,73.7622000,50.5,'10:45:00','2026-09-29 08:10:00'),(13,13,19.7667000,74.4767000,44,'10:30:00','2026-09-29 08:15:00'),(14,14,18.7481000,73.4072000,56.5,'08:05:00','2026-09-29 08:20:00'),(15,15,19.8762000,75.3433000,48.5,'11:30:00','2026-09-29 08:25:00');
/*!40000 ALTER TABLE `Tracking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-01 11:26:38
