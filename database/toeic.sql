-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: toeic
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer` (
  `answerId` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(45) DEFAULT NULL,
  `isCorrect` int(11) DEFAULT '0',
  `questionCode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`answerId`),
  KEY `questionCode_idx` (`questionCode`),
  KEY `idx_answer_questionCode` (`questionCode`),
  CONSTRAINT `questionCode` FOREIGN KEY (`questionCode`) REFERENCES `question` (`questionCode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=428 DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (1,'A',0,'a1a1'),(2,'B',0,'a1a1'),(3,'C',0,'a1a1'),(4,'D',1,'a1a1'),(5,'A',0,'a1a2'),(6,'B',0,'a1a2'),(7,'C',1,'a1a2'),(8,'D',0,'a1a2'),(9,'A',0,'a1a3'),(10,'B',0,'a1a3'),(11,'C',1,'a1a3'),(12,'D',0,'a1a3'),(13,'A',0,'a1a4'),(14,'B',0,'a1a4'),(15,'C',1,'a1a4'),(16,'D',0,'a1a4'),(17,'A',0,'a1a5'),(18,'B',0,'a1a5'),(19,'C',1,'a1a5'),(20,'D',0,'a1a5'),(21,'A',0,'a1a6'),(22,'B',0,'a1a6'),(23,'C',1,'a1a6'),(24,'D',0,'a1a6'),(25,'A',0,'a1a7'),(26,'B',0,'a1a7'),(27,'C',1,'a1a7'),(28,'D',0,'a1a7'),(29,'A',0,'a1a8'),(30,'B',0,'a1a8'),(31,'C',1,'a1a8'),(32,'D',0,'a1a8'),(33,'A',0,'a1a9'),(34,'B',0,'a1a9'),(35,'C',1,'a1a9'),(36,'D',0,'a1a9'),(37,'A',0,'a1a10'),(38,'B',0,'a1a10'),(39,'C',1,'a1a10'),(40,'D',0,'a1a10'),(41,'A',0,'a2a1'),(42,'B',0,'a2a1'),(43,'C',1,'a2a1'),(45,'A',0,'a2a2'),(46,'B',0,'a2a2'),(47,'C',1,'a2a2'),(49,'A',0,'a2a3'),(50,'B',0,'a2a3'),(51,'C',1,'a2a3'),(53,'A',0,'a2a4'),(54,'B',0,'a2a4'),(55,'C',1,'a2a4'),(57,'A',0,'a2a5'),(58,'B',0,'a2a5'),(59,'C',1,'a2a5'),(61,'A',0,'a2a6'),(62,'B',0,'a2a6'),(63,'C',1,'a2a6'),(65,'A',0,'a2a7'),(66,'B',0,'a2a7'),(67,'C',1,'a2a7'),(69,'A',0,'a2a8'),(70,'B',0,'a2a8'),(71,'C',1,'a2a8'),(73,'A',0,'a2a9'),(74,'B',0,'a2a9'),(75,'C',1,'a2a9'),(77,'A',0,'a2a10'),(78,'B',0,'a2a10'),(79,'C',1,'a2a10'),(81,'A',0,'a2a11'),(82,'B',0,'a2a11'),(83,'C',1,'a2a11'),(85,'A',0,'a2a12'),(86,'B',0,'a2a12'),(87,'C',1,'a2a12'),(89,'A',0,'a2a13'),(90,'B',0,'a2a13'),(91,'C',1,'a2a13'),(93,'A',0,'a2a14'),(94,'B',0,'a2a14'),(95,'C',1,'a2a14'),(97,'A',0,'a2a15'),(98,'B',0,'a2a15'),(99,'C',1,'a2a15'),(101,'A',0,'a2a16'),(102,'B',0,'a2a16'),(103,'C',1,'a2a16'),(105,'A',0,'a2a17'),(106,'B',0,'a2a17'),(107,'C',1,'a2a17'),(109,'A',0,'a2a18'),(110,'B',0,'a2a18'),(111,'C',1,'a2a18'),(113,'A',0,'a2a19'),(114,'B',0,'a2a19'),(115,'C',1,'a2a19'),(117,'A',0,'a2a20'),(118,'B',0,'a2a20'),(119,'C',1,'a2a20'),(121,'A',0,'a2a21'),(122,'B',0,'a2a21'),(123,'C',1,'a2a21'),(125,'A',0,'a2a22'),(126,'B',0,'a2a22'),(127,'C',1,'a2a22'),(129,'A',0,'a2a23'),(130,'B',0,'a2a23'),(131,'C',1,'a2a23'),(133,'A',0,'a2a24'),(134,'B',0,'a2a24'),(135,'C',1,'a2a24'),(137,'A',0,'a2a25'),(138,'B',0,'a2a25'),(139,'C',1,'a2a25'),(141,'A',0,'a2a26'),(142,'B',0,'a2a26'),(143,'C',1,'a2a26'),(145,'A',0,'a2a27'),(146,'B',0,'a2a27'),(147,'C',1,'a2a27'),(149,'A',0,'a2a28'),(150,'B',0,'a2a28'),(151,'C',1,'a2a28'),(153,'A',0,'a2a29'),(154,'B',0,'a2a29'),(155,'C',1,'a2a29'),(157,'A',0,'a2a30'),(158,'B',0,'a2a30'),(159,'C',1,'a2a30'),(161,'A rush delivery for a customer',0,'a3a1'),(162,'Pictures for a publication',0,'a3a1'),(163,'Volunteers for a survey',1,'a3a1'),(164,'Suggestions for a campaign',0,'a3a1'),(165,'A staff plan will be announced.',0,'a3a2'),(166,'A project will be completed.',0,'a3a2'),(167,'A special program will take place.',1,'a3a2'),(168,'A new office will be inaugurated.',0,'a3a2'),(169,'Sportswear',0,'a3a3'),(170,'Dresses',0,'a3a3'),(171,'Accessories',1,'a3a3'),(172,'Footwear',0,'a3a3'),(173,'A rush delivery for a customer',0,'a3a4'),(174,'Pictures for a publication',0,'a3a4'),(175,'Volunteers for a survey',1,'a3a4'),(176,'Suggestions for a campaign',0,'a3a4'),(177,'A staff plan will be announced.',0,'a3a5'),(178,'A project will be completed.',0,'a3a5'),(179,'A special program will take place.',1,'a3a5'),(180,'A new office will be inaugurated.',0,'a3a5'),(181,'Sportswear',0,'a3a6'),(182,'Dresses',0,'a3a6'),(183,'Accessories',1,'a3a6'),(184,'Footwear',0,'a3a6'),(185,'Sportswear',0,'a3a7'),(186,'Dresses',0,'a3a7'),(187,'Accessories',1,'a3a7'),(188,'Footwear',0,'a3a7'),(189,'Sportswear',0,'a3a8'),(190,'Dresses',0,'a3a8'),(191,'Accessories',1,'a3a8'),(192,'Footwear',0,'a3a8'),(193,'Sportswear',0,'a3a9'),(194,'Dresses',0,'a3a9'),(195,'Accessories',1,'a3a9'),(196,'Footwear',0,'a3a9'),(197,'Sportswear',0,'a3a10'),(198,'Dresses',0,'a3a10'),(199,'Accessories',1,'a3a10'),(200,'Footwear',0,'a3a10'),(201,'Sportswear',0,'a3a11'),(202,'Dresses',0,'a3a11'),(203,'Accessories',1,'a3a11'),(204,'Footwear',0,'a3a11'),(205,'Sportswear',0,'a3a12'),(206,'Dresses',0,'a3a12'),(207,'Accessories',1,'a3a12'),(208,'Footwear',0,'a3a12'),(209,'Sportswear',0,'a3a13'),(210,'Dresses',0,'a3a13'),(211,'Accessories',1,'a3a13'),(212,'Footwear',0,'a3a13'),(213,'Sportswear',0,'a3a14'),(214,'Dresses',0,'a3a14'),(215,'Accessories',1,'a3a14'),(216,'Footwear',0,'a3a14'),(217,'Sportswear',0,'a3a15'),(218,'Dresses',0,'a3a15'),(219,'Accessories',1,'a3a15'),(220,'Footwear',0,'a3a15'),(221,'Sportswear',0,'a3a16'),(222,'Dresses',0,'a3a16'),(223,'Accessories',1,'a3a16'),(224,'Footwear',0,'a3a16'),(225,'Sportswear',0,'a3a17'),(226,'Dresses',0,'a3a17'),(227,'Accessories',1,'a3a17'),(228,'Footwear',0,'a3a17'),(229,'A rush delivery for a customer',0,'a3a18'),(230,'Pictures for a publication',0,'a3a18'),(231,'Volunteers for a survey',1,'a3a18'),(232,'Suggestions for a campaign',0,'a3a18'),(233,'A staff plan will be announced.',0,'a3a19'),(234,'A project will be completed.',0,'a3a19'),(235,'A special program will take place.',1,'a3a19'),(236,'A new office will be inaugurated.',0,'a3a19'),(237,'Sportswear',0,'a3a20'),(238,'Dresses',0,'a3a20'),(239,'Accessories',1,'a3a20'),(240,'Footwear',0,'a3a20'),(241,'A rush delivery for a customer',0,'a3a21'),(242,'Pictures for a publication',0,'a3a21'),(243,'Volunteers for a survey',1,'a3a21'),(244,'Suggestions for a campaign',0,'a3a21'),(245,'A staff plan will be announced.',0,'a3a22'),(246,'A project will be completed.',0,'a3a22'),(247,'A special program will take place.',1,'a3a22'),(248,'A new office will be inaugurated.',0,'a3a22'),(249,'Sportswear',0,'a3a23'),(250,'Dresses',0,'a3a23'),(251,'Accessories',1,'a3a23'),(252,'Footwear',0,'a3a23'),(253,'Sportswear',0,'a3a24'),(254,'Dresses',0,'a3a24'),(255,'Accessories',1,'a3a24'),(256,'Footwear',0,'a3a24'),(257,'Sportswear',0,'a3a25'),(258,'Dresses',0,'a3a25'),(259,'Accessories',1,'a3a25'),(260,'Footwear',0,'a3a25'),(261,'Sportswear',0,'a3a26'),(262,'Dresses',0,'a3a26'),(263,'Accessories',1,'a3a26'),(264,'Footwear',0,'a3a26'),(265,'Sportswear',0,'a3a27'),(266,'Dresses',0,'a3a27'),(267,'Accessories',1,'a3a27'),(268,'Footwear',0,'a3a27'),(269,'Sportswear',0,'a3a28'),(270,'Dresses',0,'a3a28'),(271,'Accessories',1,'a3a28'),(272,'Footwear',0,'a3a28'),(273,'Sportswear',0,'a3a29'),(274,'Dresses',0,'a3a29'),(275,'Accessories',1,'a3a29'),(276,'Footwear',0,'a3a29'),(277,'Sportswear',0,'a3a30'),(278,'Dresses',0,'a3a30'),(279,'Accessories',1,'a3a30'),(280,'Footwear',0,'a3a30'),(282,'Because of heavy traffic.',0,'a4a1'),(283,'Because of heavy fog.',0,'a4a1'),(284,'Because of strong winds.',1,'a4a1'),(285,'Because of falling snow.',0,'a4a1'),(286,'Because of heavy traffic.',0,'a4a2'),(287,'Because of heavy fog.',0,'a4a2'),(288,'Because of strong winds.',1,'a4a2'),(289,'Because of falling snow.',0,'a4a2'),(290,'Because of heavy traffic.',0,'a4a3'),(291,'Because of heavy fog.',0,'a4a3'),(292,'Because of strong winds.',1,'a4a3'),(293,'Because of falling snow.',0,'a4a3'),(294,'Because of heavy traffic.',0,'a4a4'),(295,'Because of heavy fog.',0,'a4a4'),(296,'Because of strong winds.',1,'a4a4'),(297,'Because of falling snow.',0,'a4a4'),(298,'Because of heavy traffic.',0,'a4a5'),(299,'Because of heavy fog.',0,'a4a5'),(300,'Because of strong winds.',1,'a4a5'),(301,'Because of falling snow.',0,'a4a5'),(302,'Because of heavy traffic.',0,'a4a6'),(303,'Because of heavy fog.',0,'a4a6'),(304,'Because of strong winds.',1,'a4a6'),(305,'Because of falling snow.',0,'a4a6'),(306,'Because of heavy traffic.',0,'a4a7'),(307,'Because of heavy fog.',0,'a4a7'),(308,'Because of strong winds.',1,'a4a7'),(309,'Because of falling snow.',0,'a4a7'),(310,'Because of heavy traffic.',0,'a4a8'),(311,'Because of heavy fog.',0,'a4a8'),(312,'Because of strong winds.',1,'a4a8'),(313,'Because of falling snow.',0,'a4a8'),(314,'Because of heavy traffic.',0,'a4a9'),(315,'Because of heavy fog.',0,'a4a9'),(316,'Because of strong winds.',1,'a4a9'),(317,'Because of falling snow.',0,'a4a9'),(318,'Because of heavy traffic.',0,'a4a10'),(319,'Because of heavy fog.',0,'a4a10'),(320,'Because of strong winds.',1,'a4a10'),(321,'Because of falling snow.',0,'a4a10'),(322,'Because of heavy traffic.',0,'a4a11'),(323,'Because of heavy fog.',0,'a4a11'),(324,'Because of strong winds.',1,'a4a11'),(325,'Because of falling snow.',0,'a4a11'),(326,'Because of heavy traffic.',0,'a4a12'),(327,'Because of heavy fog.',0,'a4a12'),(328,'Because of strong winds.',1,'a4a12'),(329,'Because of falling snow.',0,'a4a12'),(330,'Because of heavy traffic.',0,'a4a13'),(331,'Because of heavy fog.',0,'a4a13'),(332,'Because of strong winds.',1,'a4a13'),(333,'Because of falling snow.',0,'a4a13'),(334,'Because of heavy traffic.',0,'a4a14'),(335,'Because of heavy fog.',0,'a4a14'),(336,'Because of strong winds.',1,'a4a14'),(337,'Because of falling snow.',0,'a4a14'),(338,'Because of heavy traffic.',0,'a4a15'),(339,'Because of heavy fog.',0,'a4a15'),(340,'Because of strong winds.',1,'a4a15'),(341,'Because of falling snow.',0,'a4a15'),(342,'Because of heavy traffic.',0,'a4a16'),(343,'Because of heavy fog.',0,'a4a16'),(344,'Because of strong winds.',1,'a4a16'),(345,'Because of falling snow.',0,'a4a16'),(346,'Because of heavy traffic.',0,'a4a17'),(347,'Because of heavy fog.',0,'a4a17'),(348,'Because of strong winds.',1,'a4a17'),(349,'Because of falling snow.',0,'a4a17'),(350,'Because of heavy traffic.',0,'a4a18'),(351,'Because of heavy fog.',0,'a4a18'),(352,'Because of strong winds.',1,'a4a18'),(353,'Because of falling snow.',0,'a4a18'),(354,'Because of heavy traffic.',0,'a4a19'),(355,'Because of heavy fog.',0,'a4a19'),(356,'Because of strong winds.',1,'a4a19'),(357,'Because of falling snow.',0,'a4a19'),(358,'Because of heavy traffic.',0,'a4a20'),(359,'Because of heavy fog.',0,'a4a20'),(360,'Because of strong winds.',1,'a4a20'),(361,'Because of falling snow.',0,'a4a20'),(362,'Because of heavy traffic.',0,'a4a21'),(363,'Because of heavy fog.',0,'a4a21'),(364,'Because of strong winds.',1,'a4a21'),(365,'Because of falling snow.',0,'a4a21'),(366,'Because of heavy traffic.',0,'a4a22'),(367,'Because of heavy fog.',0,'a4a22'),(368,'Because of strong winds.',1,'a4a22'),(369,'Because of falling snow.',0,'a4a22'),(370,'Because of heavy traffic.',0,'a4a23'),(371,'Because of heavy fog.',0,'a4a23'),(372,'Because of strong winds.',1,'a4a23'),(373,'Because of falling snow.',0,'a4a23'),(374,'Because of heavy traffic.',0,'a4a24'),(375,'Because of heavy fog.',0,'a4a24'),(376,'Because of strong winds.',1,'a4a24'),(377,'Because of falling snow.',0,'a4a24'),(378,'Because of heavy traffic.',0,'a4a25'),(379,'Because of heavy fog.',0,'a4a25'),(380,'Because of strong winds.',1,'a4a25'),(381,'Because of falling snow.',0,'a4a25'),(382,'Because of heavy traffic.',0,'a4a26'),(383,'Because of heavy fog.',0,'a4a26'),(384,'Because of strong winds.',1,'a4a26'),(385,'Because of falling snow.',0,'a4a26'),(386,'Because of heavy traffic.',0,'a4a27'),(387,'Because of heavy fog.',0,'a4a27'),(388,'Because of strong winds.',1,'a4a27'),(389,'Because of falling snow.',0,'a4a27'),(390,'Because of heavy traffic.',0,'a4a28'),(391,'Because of heavy fog.',0,'a4a28'),(392,'Because of strong winds.',1,'a4a28'),(393,'Because of falling snow.',0,'a4a28'),(394,'Because of heavy traffic.',0,'a4a29'),(395,'Because of heavy fog.',0,'a4a29'),(396,'Because of strong winds.',1,'a4a29'),(397,'Because of falling snow.',0,'a4a29'),(398,'Because of heavy traffic.',0,'a4a30'),(399,'Because of heavy fog.',0,'a4a30'),(400,'Because of strong winds.',1,'a4a30'),(401,'Because of falling snow.',0,'a4a30'),(404,'he',0,'na-1244746321na1060493871'),(405,'his',1,'na-1244746321na1060493871'),(406,'him ',0,'na-1244746321na1060493871'),(407,'himself',0,'na-1244746321na1060493871'),(408,'equal',0,'na815na123'),(409,'equally',1,'na815na123'),(410,'equality',0,'na815na123'),(411,'equalize',0,'na815na123'),(412,'offers',1,'na684na885'),(413,'buys',0,'na684na885'),(414,'tells',0,'na684na885'),(415,'travels',0,'na684na885'),(416,'during',1,'na943na735'),(417,'after',0,'na943na735'),(418,'along',0,'na943na735'),(419,'while',0,'na943na735'),(420,'profit',0,'na91na265'),(421,'profitable',0,'na91na265'),(422,'profits',0,'na91na265'),(423,'profited',1,'na91na265'),(424,'',1,'na448na1326'),(425,'',0,'na448na1326'),(426,'',0,'na448na1326'),(427,'',0,'na448na1326');
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `direction` text,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Part 1','For each question in this part, you will hear four statements about a picture in your test book. When you hear the statements, you must select the one statement that best describes what you see in the picture. Then, find the number of the question on your answer sheet and mark your answer. The statements will not be printed in your test book and will be spoken only one time.',NULL),(2,'Part 2','You will hear a question or statement and three responses spoken .in English. They will not be printed in your test book and will be spoken only one time. Select the best response to the question or statement and mark the letter (A), (B), or (C) on your answer sheet.',NULL),(3,'Part 3','You will hear some conversations between two people. You will be asked to answer three questions about what the speakers say in each conversation. Select the best response to each question and mark the letter (A), (B), (C), or (D) on your answer sheet. The conversations will not be printed in your test book and will be spoken only one time.',NULL),(4,'Part 4','You will hear some talks given by a single speaker. You will be askpd to answer three questions about what the speaker says in each talk. Select the best response to each question and mark the letter (A), (B), (C), or (D) on your answer sheet. The talks will not be printed in your test book and will be spoken only one time.',NULL),(5,'Part 5','A word or phrase is missing in each of the sentences below. Four answer choices are given below each sentence. Select the best answer to complete the sentence. Then mark the letter (A), (B), (C), or (D) on your answer sheet.',NULL),(6,'Part 6','Read the texts on the following pages. A word or phrase is missing in some of the sentences. Four answer choices are given below each of these sentences. Select the best answer to complete the text. Then mark the letter (A), (B), (C), or (D) on your answer sheet.',NULL),(7,'Part 7','In this part, you will read a selection of texts, such as magazine and newspaper articles, letters, and advertisements. Each text is followed by several questions. Select the best answer for each question and mark the letter (A), (B), (C), or (D) on your answer sheet.',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam` (
  `examId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) CHARACTER SET utf8 NOT NULL,
  `audioPath` varchar(45) DEFAULT NULL,
  `imagePath` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`examId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` VALUES (1,'ETS 1000 (Đề 1)','test01.mp3','exam1.jpg'),(2,'ETS 1000 (Đề 2)','test02.mp3','exam2.jpg'),(3,'ETS 1000 (Đề 3)','test03.mp3','exam3.jpg'),(4,'ETS 1000 (Đề 4)','test04.mp3','exam4.jpg'),(5,'ETS 1000 (Đề 5)','test05.mp3','exam5.jpg'),(6,'ETS 1000 (Đề 6)',NULL,'exam6.jpg');
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `questionId` int(11) NOT NULL AUTO_INCREMENT,
  `questionCode` varchar(45) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `categoryID` int(11) NOT NULL,
  PRIMARY KEY (`questionId`),
  UNIQUE KEY `questionCode_UNIQUE` (`questionCode`),
  KEY `categoryID_idx` (`categoryID`),
  CONSTRAINT `categoryID` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'a1a1',NULL,'1.jpg',1),(2,'a1a2',NULL,'2.jpg',1),(3,'a1a3',NULL,'3.jpg',1),(4,'a1a4',NULL,'4.jpg',1),(5,'a1a5',NULL,'5.jpg',1),(6,'a1a6',NULL,'6.jpg',1),(7,'a1a7',NULL,'7.jpg',1),(8,'a1a8',NULL,'8.jpg',1),(9,'a1a9',NULL,'9.jpg',1),(10,'a1a10',NULL,'10.jpg',1),(99,'a2a1',NULL,NULL,2),(100,'a2a2',NULL,NULL,2),(101,'a2a3',NULL,NULL,2),(102,'a2a4',NULL,NULL,2),(103,'a2a5',NULL,NULL,2),(104,'a2a6',NULL,NULL,2),(105,'a2a7',NULL,NULL,2),(106,'a2a8',NULL,NULL,2),(107,'a2a9',NULL,NULL,2),(108,'a2a10',NULL,NULL,2),(109,'a2a11',NULL,NULL,2),(110,'a2a12',NULL,NULL,2),(111,'a2a13',NULL,NULL,2),(112,'a2a14',NULL,NULL,2),(113,'a2a15',NULL,NULL,2),(114,'a2a16',NULL,NULL,2),(115,'a2a17',NULL,NULL,2),(116,'a2a18',NULL,NULL,2),(117,'a2a19',NULL,NULL,2),(118,'a2a20',NULL,NULL,2),(119,'a2a21',NULL,NULL,2),(120,'a2a22',NULL,NULL,2),(121,'a2a23',NULL,NULL,2),(122,'a2a24',NULL,NULL,2),(123,'a2a25',NULL,NULL,2),(124,'a2a26',NULL,NULL,2),(125,'a2a27',NULL,NULL,2),(126,'a2a28',NULL,NULL,2),(127,'a2a29',NULL,NULL,2),(128,'a2a30',NULL,NULL,2),(158,'a3a1','Where does the conversation most likely take place?',NULL,3),(159,'a3a2','What is the woman at business',NULL,3),(160,'a3a3','What does the woman want?',NULL,3),(161,'a3a4','What will happen tomorrow?',NULL,3),(162,'a3a5','What will the man probably do next?',NULL,3),(163,'a3a6','What is the woman looking for?',NULL,3),(164,'a3a7','What problem does the man mention?',NULL,3),(165,'a3a8','What does the man suggest?',NULL,3),(166,'a3a9','Where is this conversation taking place?',NULL,3),(167,'a3a10','Why is Amy unavailable?',NULL,3),(168,'a3a11','What will probably happen next?',NULL,3),(169,'a3a12','What does the woman want to know?',NULL,3),(170,'a3a13','What is said about express mail?',NULL,3),(171,'a3a14','What will the man probably do next?',NULL,3),(172,'a3a15','What does the woman want the man to do?',NULL,3),(173,'a3a16','What happened last week?',NULL,3),(174,'a3a17','Who most likely is Hari?',NULL,3),(175,'a3a18','Why did the man go to France?',NULL,3),(176,'a3a19','When did the woman visit France?',NULL,3),(177,'a3a20','What does the man offer to do?',NULL,3),(178,'a3a21','What is the woman doing?',NULL,3),(179,'a3a22','Who most likely is the man?',NULL,3),(180,'a3a23','Why does the woman need to e-mail Mary?',NULL,3),(181,'a3a24','What system is being changed?',NULL,3),(182,'a3a25','When does the new system go into effect?',NULL,3),(183,'a3a26','What department will she send a copy to?',NULL,3),(184,'a3a27','What are the speakers discussing?',NULL,3),(185,'a3a28','What is the woman planning to do later this week?',NULL,3),(186,'a3a29','What does the man give the woman?',NULL,3),(187,'a3a30','Who is waiting for the man?',NULL,3),(189,'a4a1','Where is the announcement being made?',NULL,4),(190,'a4a2','When should the authorities be contacted?',NULL,4),(191,'a4a3','Where should people meet incoming passengers?',NULL,4),(192,'a4a4','Who is this talk intended for?',NULL,4),(193,'a4a5','What are the audience members requested to do?',NULL,4),(194,'a4a6','What will happen next?',NULL,4),(195,'a4a7','What is the purpose of this announcement?',NULL,4),(196,'a4a8','How will it most likely affect listeners?',NULL,4),(197,'a4a9','What does the speaker say would happen within a year?',NULL,4),(198,'a4a10','Why is Terry Allen calling Mr. Schultz?',NULL,4),(199,'a4a11','Where is the address information provided?',NULL,4),(200,'a4a12','What can be inferred about the gift certificate?',NULL,4),(201,'a4a13','What is the View-R?',NULL,4),(202,'a4a14','What benefit will buyers get this month?',NULL,4),(203,'a4a15','How can buyers get a discount?',NULL,4),(204,'a4a16','What will the weather be like in Seattle?',NULL,4),(205,'a4a17','What area is predicted to have sunshine?',NULL,4),(206,'a4a18','What does the speaker say about Georgia?',NULL,4),(207,'a4a19','Who is the message for?',NULL,4),(208,'a4a20','What is suggested about the staff?',NULL,4),(209,'a4a21','What information is available online?',NULL,4),(210,'a4a22','What is the main topic of the report?',NULL,4),(211,'a4a23','What are residents reported to be doing?',NULL,4),(212,'a4a24','What report will follow this news item?',NULL,4),(213,'a4a25','How can listeners avoid being delayed on Highway 18?',NULL,4),(214,'a4a26','Why is Trafford Bridge mentioned?',NULL,4),(215,'a4a27','What are some listeners asked to do?',NULL,4),(216,'a4a28','Who most likely is the speaker?',NULL,4),(217,'a4a29','What is special about Latong station?',NULL,4),(218,'a4a30','What has the speaker done?',NULL,4),(221,'na-1244746321na1060493871','Ms. Bradshaw informed Mr. Tanner that she would be working for ------- office as an intern over the summer',NULL,5),(224,'na815na123','The marketing director showed the annual profits distributed ------- between the corporate executives and the shareholders to the CEO.',NULL,5),(225,'na684na885','Queens Hotel ------- substantial discounts to corporations that often lodge their employees there',NULL,5),(226,'na943na735','Our store is closed this week ------- the security system is enhanced.',NULL,5),(227,'na91na265','Market analysts are surprised that Xcell Electric\'s quarterly ------- have been steadily increasing by about 4 percent',NULL,5),(228,'na448na1326','',NULL,4);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionexam`
--

DROP TABLE IF EXISTS `questionexam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questionexam` (
  `examId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL,
  PRIMARY KEY (`examId`,`questionId`),
  KEY `questionId_idx` (`questionId`),
  KEY `examId_idx` (`examId`),
  CONSTRAINT `examId` FOREIGN KEY (`examId`) REFERENCES `exam` (`examId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `questionId` FOREIGN KEY (`questionId`) REFERENCES `question` (`questionId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionexam`
--

LOCK TABLES `questionexam` WRITE;
/*!40000 ALTER TABLE `questionexam` DISABLE KEYS */;
INSERT INTO `questionexam` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,99),(1,100),(1,101),(1,102),(1,103),(1,104),(1,105),(1,106),(1,107),(1,108),(1,109),(1,110),(1,111),(1,112),(1,113),(1,114),(1,115),(1,116),(1,117),(1,118),(1,119),(1,120),(1,121),(1,122),(1,123),(1,124),(1,125),(1,126),(1,127),(1,128),(1,158),(1,159),(1,160),(1,161),(1,162),(1,163),(1,164),(1,165),(1,166),(1,167),(1,168),(1,169),(1,170),(1,171),(1,172),(1,173),(1,174),(1,175),(1,176),(1,177),(1,178),(1,179),(1,180),(1,181),(1,182),(1,183),(1,184),(1,185),(1,186),(1,187),(1,189),(1,190),(1,191),(1,192),(1,193),(1,194),(1,195),(1,196),(1,197),(1,198),(1,199),(1,200),(1,201),(1,202),(1,203),(1,204),(1,205),(1,206),(1,207),(1,208),(1,209),(1,210),(1,211),(1,212),(1,213),(1,214),(1,215),(1,216),(1,217),(1,218);
/*!40000 ALTER TABLE `questionexam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `resultId` int(11) NOT NULL AUTO_INCREMENT,
  `userExamId` int(11) DEFAULT NULL,
  `answerSelected` int(11) DEFAULT NULL,
  PRIMARY KEY (`resultId`),
  KEY `userExamId_idx` (`userExamId`),
  KEY `answerId_idx` (`answerSelected`),
  CONSTRAINT `answerId` FOREIGN KEY (`answerSelected`) REFERENCES `answer` (`answerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `userExamId` FOREIGN KEY (`userExamId`) REFERENCES `userexam` (`userExamId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,1,4),(2,1,7),(3,1,12),(4,1,13),(5,1,18),(6,1,24),(7,1,26),(8,1,29),(9,1,35),(10,1,40),(11,2,4),(12,2,7),(13,2,12),(14,2,13),(15,2,18),(16,2,24),(17,2,26),(18,2,29),(19,2,35),(20,2,40),(21,3,4),(22,3,7),(23,3,12),(24,3,13),(25,3,18),(26,3,24),(27,3,26),(28,3,29),(29,3,35),(30,3,40),(31,4,4),(32,4,7),(33,4,12),(34,4,13),(35,4,18),(36,4,24),(37,4,26),(38,4,29),(39,4,35),(40,4,40),(65,8,4),(66,8,8),(67,9,4),(68,9,8),(69,9,12),(70,9,16),(71,9,19),(72,9,24),(73,9,41),(74,9,63),(75,9,73),(76,9,164),(77,9,176),(78,9,282),(79,9,296),(198,11,4),(199,11,8),(200,11,12),(201,11,17),(202,11,23),(203,11,43),(204,11,47),(205,11,155),(206,11,159),(207,11,164),(208,11,168),(209,11,280),(210,11,285),(211,11,401),(212,12,4),(213,12,8),(214,12,12),(215,12,17),(216,12,23),(217,12,43),(218,12,47),(219,12,155),(220,12,159),(221,12,164),(222,12,168),(223,12,280),(224,12,285),(225,12,397),(226,12,401);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role` int(11) DEFAULT '0',
  `job` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Scofield Nguyễn','ngocanhtc4s@outlook.com','0965262801','2d06fd826da6111a5ac0fff5d26ec36b',1,'lập trình viên','1997-12-06',0),(2,'Nguyễn Bá Hoàn','hoan@gmail.com','1261761','2d06fd826da6111a5ac0fff5d26ec36b',0,'sinh viên','1997-12-01',0),(3,'Nguyễn Đinh Sửu','suu@gmail.com','0785968985','25f9e794323b453885f5181f1b624d0b',0,'sinh viên','1997-01-02',0),(5,'Đỗ Xuân Phương','phuong@gmail.com','0964789624','2d06fd826da6111a5ac0fff5d26ec36b',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userexam`
--

DROP TABLE IF EXISTS `userexam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userexam` (
  `userExamId` int(11) NOT NULL AUTO_INCREMENT,
  `times` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `examId` int(11) NOT NULL,
  `correctNumber` int(11) DEFAULT '0',
  PRIMARY KEY (`userExamId`),
  KEY `examidx_idx` (`examId`),
  KEY `userId_idx` (`userId`),
  CONSTRAINT `examidx` FOREIGN KEY (`examId`) REFERENCES `exam` (`examId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userexam`
--

LOCK TABLES `userexam` WRITE;
/*!40000 ALTER TABLE `userexam` DISABLE KEYS */;
INSERT INTO `userexam` VALUES (1,0,3,1,0),(2,1,3,1,0),(3,2,3,1,0),(4,3,3,1,0),(8,4,3,1,0),(9,5,3,1,0),(11,0,2,1,6),(12,1,2,1,6),(13,0,2,2,50),(14,1,2,2,51),(15,2,2,2,10),(16,2,2,1,10);
/*!40000 ALTER TABLE `userexam` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-30 19:48:59
