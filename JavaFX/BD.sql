-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: db_esqui
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `botes`
--

DROP TABLE IF EXISTS `botes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `botes` (
  `id` int NOT NULL,
  `talla` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `botes_ibfk_1` FOREIGN KEY (`id`) REFERENCES `material` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `botes`
--

LOCK TABLES `botes` WRITE;
/*!40000 ALTER TABLE `botes` DISABLE KEYS */;
INSERT INTO `botes` VALUES (3,'39'),(7,'25'),(9,'42'),(12,'41'),(14,'41'),(16,'42'),(17,'39'),(18,'42'),(21,'25'),(29,'25'),(30,'25'),(31,'25'),(32,'25'),(33,'25'),(34,'25');
/*!40000 ALTER TABLE `botes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `dni` varchar(9) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `cognom` varchar(25) NOT NULL,
  `telefon` int DEFAULT NULL,
  `email` varchar(55) NOT NULL,
  `usuari` varchar(55) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES ('12345678a','Joan','Vilaseca',645456456,'jvilaseca@hotmail.com','user1','827ccb0eea8a706c4c34a16891f84e7b'),('12345678b','Pep','Plaza',645985456,'plaza@hotmail.es','user2','827ccb0eea8a706c4c34a16891f84e7b'),('12345678c','Marta','Capellades',623556456,'suica@gmail.com','user3','827ccb0eea8a706c4c34a16891f84e7b'),('12345678d','Montse','García',600256456,'montseGarcia@gmail.com','user4','827ccb0eea8a706c4c34a16891f84e7b'),('12345678e','Tom','Holland',64545961,'hello@outlook.com','user5','827ccb0eea8a706c4c34a16891f84e7b');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curs`
--

DROP TABLE IF EXISTS `curs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) DEFAULT NULL,
  `dni_monitor` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dni_monitor` (`dni_monitor`),
  CONSTRAINT `curs_ibfk_1` FOREIGN KEY (`dni_monitor`) REFERENCES `monitor` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curs`
--

LOCK TABLES `curs` WRITE;
/*!40000 ALTER TABLE `curs` DISABLE KEYS */;
INSERT INTO `curs` VALUES (1,'Curs esquí Iniciació','12345678o'),(2,'Curs Snow','12345678s'),(3,'Curs esquí avançat','12345678p'),(4,'Curs natació a la neu','12345678q'),(5,'Curs reabilitació','12345678p'),(6,'Curs esqui infantil','12345678r'),(7,'Curs fer la croqueta','12345678o');
/*!40000 ALTER TABLE `curs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curs_colectiu`
--

DROP TABLE IF EXISTS `curs_colectiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curs_colectiu` (
  `id` int NOT NULL,
  `data` date NOT NULL,
  `preu` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curs_colectiu`
--

LOCK TABLES `curs_colectiu` WRITE;
/*!40000 ALTER TABLE `curs_colectiu` DISABLE KEYS */;
INSERT INTO `curs_colectiu` VALUES (1,'2022-06-21',200),(3,'2022-06-14',100),(4,'2022-06-12',10);
/*!40000 ALTER TABLE `curs_colectiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curs_competicio`
--

DROP TABLE IF EXISTS `curs_competicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curs_competicio` (
  `id` int NOT NULL,
  `nivell` int NOT NULL,
  `data_inici` date NOT NULL,
  `data_fi` date NOT NULL,
  `preu` double NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `curs_competicio_ibfk_1` FOREIGN KEY (`id`) REFERENCES `curs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curs_competicio`
--

LOCK TABLES `curs_competicio` WRITE;
/*!40000 ALTER TABLE `curs_competicio` DISABLE KEYS */;
INSERT INTO `curs_competicio` VALUES (6,6,'2022-06-12','2022-07-18',550.99),(7,4,'2022-05-29','2022-07-11',740.39);
/*!40000 ALTER TABLE `curs_competicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curs_individual`
--

DROP TABLE IF EXISTS `curs_individual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curs_individual` (
  `id` int NOT NULL,
  `preu_hora` double NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `curs_individual_ibfk_1` FOREIGN KEY (`id`) REFERENCES `curs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curs_individual`
--

LOCK TABLES `curs_individual` WRITE;
/*!40000 ALTER TABLE `curs_individual` DISABLE KEYS */;
INSERT INTO `curs_individual` VALUES (2,12),(5,8);
/*!40000 ALTER TABLE `curs_individual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataa`
--

DROP TABLE IF EXISTS `dataa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dataa` (
  `iddata` int NOT NULL AUTO_INCREMENT,
  `datacol` date DEFAULT NULL,
  PRIMARY KEY (`iddata`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataa`
--

LOCK TABLES `dataa` WRITE;
/*!40000 ALTER TABLE `dataa` DISABLE KEYS */;
INSERT INTO `dataa` VALUES (54,'2022-05-11');
/*!40000 ALTER TABLE `dataa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `esquis`
--

DROP TABLE IF EXISTS `esquis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `esquis` (
  `id` int NOT NULL,
  `talla` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `esquis_ibfk_1` FOREIGN KEY (`id`) REFERENCES `material` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esquis`
--

LOCK TABLES `esquis` WRITE;
/*!40000 ALTER TABLE `esquis` DISABLE KEYS */;
INSERT INTO `esquis` VALUES (2,'183'),(4,'177'),(5,'115'),(8,'157'),(13,'132'),(15,'190'),(19,'115'),(20,'190'),(24,'153'),(27,'183'),(28,'183');
/*!40000 ALTER TABLE `esquis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fam_num`
--

DROP TABLE IF EXISTS `fam_num`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fam_num` (
  `dni` varchar(9) NOT NULL,
  `num_fam` int NOT NULL,
  `data_caducitat` date NOT NULL,
  KEY `dni` (`dni`),
  CONSTRAINT `fam_num_ibfk_1` FOREIGN KEY (`dni`) REFERENCES `client` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fam_num`
--

LOCK TABLES `fam_num` WRITE;
/*!40000 ALTER TABLE `fam_num` DISABLE KEYS */;
INSERT INTO `fam_num` VALUES ('12345678a',1095,'2025-02-28'),('12345678c',20159,'2030-10-14');
/*!40000 ALTER TABLE `fam_num` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `federat`
--

DROP TABLE IF EXISTS `federat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `federat` (
  `dni` varchar(9) NOT NULL,
  `nivell` int NOT NULL,
  `num_federacio` int NOT NULL,
  `data_caducitat` date NOT NULL,
  PRIMARY KEY (`dni`),
  CONSTRAINT `federat_ibfk_1` FOREIGN KEY (`dni`) REFERENCES `client` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `federat`
--

LOCK TABLES `federat` WRITE;
/*!40000 ALTER TABLE `federat` DISABLE KEYS */;
INSERT INTO `federat` VALUES ('12345678b',6,5,'2025-02-28'),('12345678d',9,155,'2030-10-14');
/*!40000 ALTER TABLE `federat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kit`
--

DROP TABLE IF EXISTS `kit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kit` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kit`
--

LOCK TABLES `kit` WRITE;
/*!40000 ALTER TABLE `kit` DISABLE KEYS */;
INSERT INTO `kit` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14);
/*!40000 ALTER TABLE `kit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kit_format`
--

DROP TABLE IF EXISTS `kit_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kit_format` (
  `id_kit` int NOT NULL,
  `id_pals` int NOT NULL,
  `id_esquis` int NOT NULL,
  `id_botes` int NOT NULL,
  PRIMARY KEY (`id_kit`),
  KEY `id_pals` (`id_pals`),
  KEY `id_esquis` (`id_esquis`),
  KEY `id_botes` (`id_botes`),
  CONSTRAINT `kit_format_ibfk_1` FOREIGN KEY (`id_kit`) REFERENCES `kit` (`id`),
  CONSTRAINT `kit_format_ibfk_2` FOREIGN KEY (`id_pals`) REFERENCES `pals` (`id`),
  CONSTRAINT `kit_format_ibfk_3` FOREIGN KEY (`id_esquis`) REFERENCES `esquis` (`id`),
  CONSTRAINT `kit_format_ibfk_4` FOREIGN KEY (`id_botes`) REFERENCES `botes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kit_format`
--

LOCK TABLES `kit_format` WRITE;
/*!40000 ALTER TABLE `kit_format` DISABLE KEYS */;
INSERT INTO `kit_format` VALUES (1,1,2,3),(2,6,4,7),(3,10,5,9),(4,11,8,12);
/*!40000 ALTER TABLE `kit_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lloga_kit`
--

DROP TABLE IF EXISTS `lloga_kit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lloga_kit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_kit` int NOT NULL,
  `data` date NOT NULL,
  `preu` double NOT NULL,
  `dni` varchar(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_kit` (`id_kit`),
  KEY `dni` (`dni`),
  CONSTRAINT `lloga_kit_ibfk_1` FOREIGN KEY (`id_kit`) REFERENCES `kit` (`id`),
  CONSTRAINT `lloga_kit_ibfk_2` FOREIGN KEY (`dni`) REFERENCES `client` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lloga_kit`
--

LOCK TABLES `lloga_kit` WRITE;
/*!40000 ALTER TABLE `lloga_kit` DISABLE KEYS */;
INSERT INTO `lloga_kit` VALUES (1,2,'2022-01-05',60,'12345678a'),(2,2,'2022-02-14',105,'12345678c'),(3,3,'2021-11-24',75,'12345678e');
/*!40000 ALTER TABLE `lloga_kit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lloga_material`
--

DROP TABLE IF EXISTS `lloga_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lloga_material` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_material` int NOT NULL,
  `data` date NOT NULL,
  `preu` double NOT NULL,
  `dni` varchar(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_material` (`id_material`),
  KEY `dni` (`dni`),
  CONSTRAINT `lloga_material_ibfk_1` FOREIGN KEY (`id_material`) REFERENCES `material` (`id`),
  CONSTRAINT `lloga_material_ibfk_2` FOREIGN KEY (`dni`) REFERENCES `client` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lloga_material`
--

LOCK TABLES `lloga_material` WRITE;
/*!40000 ALTER TABLE `lloga_material` DISABLE KEYS */;
INSERT INTO `lloga_material` VALUES (1,3,'2020-12-09',24.99,'12345678b'),(2,3,'2021-09-09',24.99,'12345678a'),(3,7,'2021-08-11',77.99,'12345678b'),(4,7,'2021-03-27',77.99,'12345678a'),(5,7,'2021-02-18',77.99,'12345678d'),(6,7,'2021-09-29',77.99,'12345678b'),(7,7,'2021-01-11',77.99,'12345678e'),(8,9,'2021-10-17',77.99,'12345678a'),(9,14,'2022-02-04',55.99,'12345678e'),(10,14,'2021-07-12',55.99,'12345678c'),(11,16,'2021-07-09',112.99,'12345678a'),(12,16,'2022-11-03',112.99,'12345678b'),(13,17,'2019-11-06',55.99,'12345678e'),(14,17,'2020-10-13',55.99,'12345678d'),(15,18,'2021-09-09',55.99,'12345678c'),(16,18,'2021-07-11',55.99,'12345678e'),(17,29,'2022-12-14',77.99,'12345678a'),(18,29,'2021-10-17',77.99,'12345678b'),(19,29,'2021-11-09',77.99,'12345678b'),(20,29,'2021-09-22',77.99,'12345678c'),(21,29,'2021-08-23',77.99,'12345678d'),(22,29,'2021-02-13',77.99,'12345678c'),(23,29,'2021-09-01',77.99,'12345678d'),(24,30,'2021-04-26',77.99,'12345678b'),(25,30,'2021-07-15',77.99,'12345678d'),(26,30,'2021-04-15',77.99,'12345678d'),(27,30,'2021-06-26',77.99,'12345678e'),(28,30,'2021-02-12',77.99,'12345678b'),(29,30,'2021-04-22',77.99,'12345678b'),(30,30,'2021-04-26',77.99,'12345678a'),(31,31,'2022-01-07',77.99,'12345678a'),(32,31,'2022-01-07',77.99,'12345678a'),(33,31,'2022-01-07',77.99,'12345678b'),(34,31,'2022-01-07',77.99,'12345678c'),(35,31,'2022-01-07',77.99,'12345678c'),(36,31,'2022-01-07',77.99,'12345678e'),(37,31,'2022-01-07',77.99,'12345678e'),(38,5,'2021-09-09',55.99,'12345678c'),(39,8,'2021-07-16',12.99,'12345678c'),(40,8,'2021-04-13',12.99,'12345678b'),(41,13,'2021-09-26',78.99,'12345678a'),(42,13,'2021-07-17',78.99,'12345678c'),(43,13,'2021-11-08',78.99,'12345678d'),(44,13,'2021-11-11',78.99,'12345678e'),(45,15,'2022-04-09',42.99,'12345678e'),(46,15,'2021-09-09',42.99,'12345678c'),(47,15,'2021-09-09',42.99,'12345678e'),(48,1,'2020-12-09',55.99,'12345678b'),(49,1,'2020-11-05',55.99,'12345678a'),(50,11,'2021-12-17',33.99,'12345678c'),(51,11,'2022-09-03',33.99,'12345678b'),(52,22,'2019-11-27',10.99,'12345678b'),(53,22,'2019-11-27',10.99,'12345678b'),(54,22,'2022-02-07',10.99,'12345678b'),(55,23,'2019-12-22',95.99,'12345678a'),(56,23,'2019-11-17',95.99,'12345678c'),(57,23,'2019-11-27',95.99,'12345678e'),(58,23,'2022-02-07',95.99,'12345678d'),(59,25,'2019-09-27',250.99,'12345678e'),(60,25,'2019-09-27',250.99,'12345678a'),(61,25,'2019-09-27',250.99,'12345678a'),(62,25,'2019-09-27',250.99,'12345678b'),(63,25,'2019-09-27',250.99,'12345678c'),(64,25,'2019-09-27',250.99,'12345678e'),(65,26,'2021-10-11',145.99,'12345678b');
/*!40000 ALTER TABLE `lloga_material` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualitzarVegadesMaterial` AFTER INSERT ON `lloga_material` FOR EACH ROW BEGIN
	DECLARE _id_material integer;
	SET _id_material = (select id_material from lloga_material order by id desc limit 1);
    
    IF (select num_vegades from material where id = _id_material) < 10
		THEN
			UPDATE material
			SET num_vegades = num_vegades +1
			where id = _id_material;
            
            IF (select num_vegades from material where id = _id_material) = 10
				THEN
					UPDATE material
					SET disponible = 0
					where id = _id_material;
			END IF;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(90) NOT NULL,
  `model` varchar(90) NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `preu` double NOT NULL,
  `num_vegades` int DEFAULT (0),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'Lacroix','lc-556',1,55.99,4),(2,'Atomic','at-45',1,269.99,0),(3,'Atomic','at-556',1,24.99,4),(4,'Blizzard','bl-852',1,96.99,2),(5,'Atomic','at-596',1,55.99,3),(6,'Atomic','at-5',1,82.99,2),(7,'Blizzard','bl-5786',0,77.99,10),(8,'Atomic','at-gfg',1,12.99,4),(9,'Fischer','fs-577',1,23.99,3),(10,'Lacroix','lc-8856',1,55.99,1),(11,'Atomic','at-556',1,36.99,4),(12,'Atomic','at-5998',1,44.99,0),(13,'Fischer','fs-df6',1,78.99,8),(14,'Atomic','at-588',1,55.99,4),(15,'Blizzard','bl-rret4',1,42.99,6),(16,'Blizzard','bl-778006',1,112.99,4),(17,'Atomic','at-5asd',1,55.99,4),(18,'Peltonen','pt-kk',1,55.99,4),(19,'Lacroix','lc-nini',1,55.99,5),(20,'Lacroix','lc-mame',1,33.99,0),(21,'Nordica','nd-df77',1,11.99,0),(22,'Lacroix','lc-5oopd',1,10.99,6),(23,'Nordica','nd-234dd6',1,95.99,8),(24,'Peltonen','pt-pipi3',1,34.99,2),(25,'Lacroix','lc-errt',0,250.99,10),(26,'Nordica','nd-96Op',1,145.99,2),(27,'Atomic','at-45',1,269.99,0),(28,'Atomic','at-45',1,269.99,0),(29,'Blizzard','bl-5786',0,77.99,10),(30,'Blizzard','bl-5786',0,77.99,10),(31,'Blizzard','bl-5786',0,77.99,10),(32,'Blizzard','bl-5786',1,77.99,7),(33,'Blizzard','bl-5786',1,77.99,7),(34,'Blizzard','bl-5786',1,77.99,7);
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitor`
--

DROP TABLE IF EXISTS `monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monitor` (
  `dni` varchar(9) NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `cognom` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitor`
--

LOCK TABLES `monitor` WRITE;
/*!40000 ALTER TABLE `monitor` DISABLE KEYS */;
INSERT INTO `monitor` VALUES ('12345678o','Pamela','Anderson'),('12345678p','John','Travolta'),('12345678q','Mia','Farrow'),('12345678r','Tom','Cruise'),('12345678s','Alejandro','Sanz');
/*!40000 ALTER TABLE `monitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pals`
--

DROP TABLE IF EXISTS `pals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pals` (
  `id` int NOT NULL,
  `talla` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `pals_ibfk_1` FOREIGN KEY (`id`) REFERENCES `material` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pals`
--

LOCK TABLES `pals` WRITE;
/*!40000 ALTER TABLE `pals` DISABLE KEYS */;
INSERT INTO `pals` VALUES (1,'15'),(6,'22'),(10,'22'),(11,'15'),(22,'23'),(23,'23'),(25,'18'),(26,'10');
/*!40000 ALTER TABLE `pals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realitza_client`
--

DROP TABLE IF EXISTS `realitza_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realitza_client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descompte` double DEFAULT NULL,
  `hores` int NOT NULL,
  `data` date NOT NULL,
  `id_curs` int NOT NULL,
  `dni` varchar(9) NOT NULL,
  `preu_final` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_curs` (`id_curs`),
  KEY `dni` (`dni`),
  CONSTRAINT `realitza_client_ibfk_1` FOREIGN KEY (`id_curs`) REFERENCES `curs_individual` (`id`),
  CONSTRAINT `realitza_client_ibfk_2` FOREIGN KEY (`dni`) REFERENCES `client` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realitza_client`
--

LOCK TABLES `realitza_client` WRITE;
/*!40000 ALTER TABLE `realitza_client` DISABLE KEYS */;
INSERT INTO `realitza_client` VALUES (1,40,5,'2022-05-22',2,'12345678a',50.95),(2,40,5,'2022-05-22',2,'12345678c',50.95),(3,40,2,'2022-05-22',2,'12345678d',50.95),(4,40,2,'2022-05-22',5,'12345678d',50.95),(5,40,5,'2022-05-22',2,'12345678b',50.95);
/*!40000 ALTER TABLE `realitza_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realitza_colectiu`
--

DROP TABLE IF EXISTS `realitza_colectiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realitza_colectiu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `id_curs` int NOT NULL,
  `dni` varchar(9) DEFAULT NULL,
  `preu_final` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_curs` (`id_curs`),
  KEY `dni` (`dni`),
  CONSTRAINT `realitza_colectiu_ibfk_1` FOREIGN KEY (`id_curs`) REFERENCES `curs_colectiu` (`id`),
  CONSTRAINT `realitza_colectiu_ibfk_2` FOREIGN KEY (`dni`) REFERENCES `client` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realitza_colectiu`
--

LOCK TABLES `realitza_colectiu` WRITE;
/*!40000 ALTER TABLE `realitza_colectiu` DISABLE KEYS */;
/*!40000 ALTER TABLE `realitza_colectiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realitza_comp`
--

DROP TABLE IF EXISTS `realitza_comp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realitza_comp` (
  `id_comp` int NOT NULL,
  `dni` varchar(9) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id_comp`,`dni`),
  KEY `dni` (`dni`),
  CONSTRAINT `realitza_comp_ibfk_1` FOREIGN KEY (`id_comp`) REFERENCES `curs_competicio` (`id`),
  CONSTRAINT `realitza_comp_ibfk_2` FOREIGN KEY (`dni`) REFERENCES `client` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realitza_comp`
--

LOCK TABLES `realitza_comp` WRITE;
/*!40000 ALTER TABLE `realitza_comp` DISABLE KEYS */;
/*!40000 ALTER TABLE `realitza_comp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realitza_fam`
--

DROP TABLE IF EXISTS `realitza_fam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realitza_fam` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_col` int NOT NULL,
  `dni` varchar(9) NOT NULL,
  `data` date NOT NULL,
  `descompte` double DEFAULT NULL,
  `preu_final` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_col` (`id_col`),
  KEY `dni` (`dni`),
  CONSTRAINT `realitza_fam_ibfk_1` FOREIGN KEY (`id_col`) REFERENCES `curs_colectiu` (`id`),
  CONSTRAINT `realitza_fam_ibfk_2` FOREIGN KEY (`dni`) REFERENCES `client` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realitza_fam`
--

LOCK TABLES `realitza_fam` WRITE;
/*!40000 ALTER TABLE `realitza_fam` DISABLE KEYS */;
INSERT INTO `realitza_fam` VALUES (1,4,'12345678a','2022-05-22',60,24.2),(2,4,'12345678c','2022-05-22',40,25.5),(3,1,'12345678c','2022-05-22',40,25.5),(4,3,'12345678c','2022-05-22',40,25.5),(5,4,'12345678c','2022-05-22',40,25.5),(6,3,'12345678c','2022-05-23',40,0);
/*!40000 ALTER TABLE `realitza_fam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_esqui'
--

--
-- Dumping routines for database 'db_esqui'
--
/*!50003 DROP PROCEDURE IF EXISTS `llogarCursos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `llogarCursos`(IN _desconte INT, IN _preu_final DOUBLE, IN _hores INT, IN _id_curs INT, IN _dni VARCHAR(9), IN _tipus VARCHAR(55))
BEGIN
	 IF _tipus = 'individual' 
		THEN 
			INSERT INTO realitza_client (descompte, hores, data, id_curs, dni, preu_final)
			VALUES (_desconte, _hores, CURDATE(), _id_curs, _dni, _preu_final);
     ELSE IF _tipus = 'colecitu' 
		THEN 
			IF _dni IN (SELECT dni FROM fam_num) AND _id_curs IN (SELECT id FROM curs_colectiu)
				THEN
					IF (SELECT count(dni) FROM fam_num WHERE dni = _dni AND data_caducitat > NOW()) > 0
						THEN
							INSERT INTO realitza_fam (id_col, dni, data, descompte, preu_final)
							VALUES (_id_curs, _dni, CURDATE(), _desconte, _preu_final);
					ELSE
						SELECT "No tens el carnet de família nombrosa o el tens caducat";
					END IF;
			ELSE
				INSERT INTO realitza_colectiu (data, id_curs, dni, preu_final)
				VALUES (CURDATE(), _id_curs, _dni, _preu_final);
				#INSERT INTO realitza_colectiu (id_col, dni, data, descompte) 	
				#VALUES (_id_curs, _dni, _data, _desconte);						
			END IF;
	ELSE IF _tipus = 'federat' 
		THEN
			IF _dni IN (SELECT dni from federat)
				THEN
					IF 
						(SELECT count(dni) FROM federat WHERE dni = _dni AND data_caducitat > NOW()) > 0
					THEN
						INSERT INTO realitza_comp (id_comp, dni, data)
						VALUES (_id_curs, _dni, CURDATE());
					ELSE
						SELECT "No tens el carnet de federat o el tens caducat";
					END IF;
			ELSE
				SELECT "No tens el carnet de federat o el tens caducat";
				END IF;
            END IF;
		END IF;
     END IF;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mostrarCursos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrarCursos`(IN _dni VARCHAR(9))
BEGIN
	 select * from  (
		select realitza_client.data, curs.nom, curs_individual.preu_hora as preu, realitza_client.descompte, realitza_client.preu_final, 'Individual' as tipo from realitza_client, curs_individual, curs where ((realitza_client.id_curs = curs_individual.id) and (curs_individual.id = curs.id)) and realitza_client.dni = _dni
union	select realitza_colectiu.data, curs.nom, realitza_colectiu.preu_final as preu, 0 as descompte, realitza_colectiu.preu_final, 'Colectiu' as tipo from realitza_colectiu, curs_colectiu, curs where ((realitza_colectiu.id_curs = curs_colectiu.id) and (curs_colectiu.id = curs.id)) and realitza_colectiu.dni = _dni
union	select realitza_comp.data, curs.nom, curs_competicio.preu as preu, 0 as descompte, curs_competicio.preu as preu_final, 'Federat' as tipo from realitza_comp, curs_competicio, curs where ((realitza_comp.id_comp = curs_competicio.id) and (curs_competicio.id = curs.id)) and realitza_comp.dni = _dni
union	select realitza_fam.data, curs.nom, realitza_fam.preu_final as preu, realitza_fam.descompte as descompte, realitza_fam.preu_final, 'Colectiu (Fam.)' as tipo from realitza_fam, curs_colectiu, curs where ((realitza_fam.id_col = curs_colectiu.id) and (curs_colectiu.id = curs.id)) and realitza_fam.dni = _dni
)a;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mostrarMaterial` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrarMaterial`(IN _dni VARCHAR(9))
BEGIN
		select * from (
				select lloga_material.data, 'Botes' as material, material.marca, material.model, botes.talla, material.preu from lloga_material, material, botes where lloga_material.id_material = material.id and material.id = botes.id and lloga_material.dni = _dni
		union 	select lloga_material.data, 'Esquís' as material, material.marca, material.model, esquis.talla, material.preu from lloga_material, material, esquis where (lloga_material.id_material = material.id and material.id = esquis.id) and lloga_material.dni = _dni
		union 	select lloga_material.data, 'Pals' as material, material.marca, material.model, pals.talla, material.preu from lloga_material, material, pals where (lloga_material.id_material = material.id and material.id = pals.id) and lloga_material.dni = _dni
		union 	select lloga_kit.data, 'Kit' as material, '---' as Marca, '---' as model, '--' as talla, lloga_kit.preu from lloga_kit where lloga_kit.dni = _dni
		)a;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-23 23:06:33
