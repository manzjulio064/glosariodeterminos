-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dhremotework
-- ------------------------------------------------------
-- Server version	8.0.22

create schema if not exists dhremotework;
use dhremotework;

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
-- Table structure for table `alerta`
--



DROP TABLE IF EXISTS `alerta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alerta` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Persona_id` int NOT NULL,
  `Oferta_id` int NOT NULL,
  `FechaCreacion` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Alerta_Persona1_idx` (`Persona_id`),
  KEY `fk_Alerta_Oferta1_idx` (`Oferta_id`),
  CONSTRAINT `fk_Alerta_Oferta1` FOREIGN KEY (`Oferta_id`) REFERENCES `oferta` (`id`),
  CONSTRAINT `fk_Alerta_Persona1` FOREIGN KEY (`Persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerta`
--

LOCK TABLES `alerta` WRITE;
/*!40000 ALTER TABLE `alerta` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Salud'),(2,'Oil'),(3,'Petroleo'),(4,'Energia'),(5,'Fintech'),(6,'EdTech'),(7,'IT'),(8,'Banco'),(9,'Seguros'),(10,'E-commerce');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `FechaCreacion` datetime DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Categoria_idCategoria` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Empresa_Categoria1_idx` (`Categoria_idCategoria`),
  CONSTRAINT `fk_Empresa_Categoria1` FOREIGN KEY (`Categoria_idCategoria`) REFERENCES `categoria` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'Digital House','2023-02-05 18:37:42','dh@digitalhouse.com','dh12345',6),(2,'Microsoft','2023-02-05 18:37:42','m@microsfot.com','12345mic',7),(3,'Meracado Libre','2023-02-05 18:37:42','ml@mercadolibre.com','ml12345ml',10);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oferta`
--

DROP TABLE IF EXISTS `oferta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oferta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Descripcion` text,
  `FechaDesde` date DEFAULT NULL,
  `FechaHasta` date DEFAULT NULL,
  `FechaCreacion` datetime DEFAULT NULL,
  `Empresa_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Oferta_Empresa1_idx` (`Empresa_id`),
  CONSTRAINT `fk_Oferta_Empresa1` FOREIGN KEY (`Empresa_id`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oferta`
--

LOCK TABLES `oferta` WRITE;
/*!40000 ALTER TABLE `oferta` DISABLE KEYS */;
INSERT INTO `oferta` VALUES (1,'Docente FullStack','2023-01-01','2023-04-01','2022-12-01 00:00:00',1),(2,'Docente Infraestructura','2023-01-02','2023-04-02','2022-12-02 00:00:00',1),(3,'Docente Base de datos 1','2023-01-03','2023-04-03','2022-12-03 00:00:00',1),(4,'Docente Base de datos 2','2023-01-04','2023-04-04','2022-12-04 00:00:00',1),(5,'Desarrollador FullStack Jr','2023-01-05','2023-04-05','2022-12-05 00:00:00',2),(6,'Desarrollador FullStack Ssr','2023-01-06','2023-04-06','2022-12-06 00:00:00',2),(7,'Desarrollador FullStack Sr','2023-01-07','2023-04-07','2022-12-07 00:00:00',2),(8,'Front End developer Jr','2023-01-08','2023-04-08','2022-12-08 00:00:00',3),(9,'Front End developer Ssr','2023-01-09','2023-04-09','2022-12-09 00:00:00',3),(10,'Front End developer Sr','2023-01-10','2023-04-10','2022-12-10 00:00:00',3),(11,'Back End developer Jr','2023-01-11','2023-04-11','2022-12-11 00:00:00',3),(12,'Back End developer Ssr','2023-01-12','2023-04-12','2022-12-12 00:00:00',3),(13,'Back End developer Sr','2023-01-13','2023-04-13','2022-12-13 00:00:00',3);
/*!40000 ALTER TABLE `oferta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oferta_requiere_skill`
--

DROP TABLE IF EXISTS `oferta_requiere_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oferta_requiere_skill` (
  `Oferta_id` int NOT NULL,
  `Skil_id` int NOT NULL,
  PRIMARY KEY (`Oferta_id`,`Skil_id`),
  KEY `fk_Oferta_has_Skil_Skil1_idx` (`Skil_id`),
  KEY `fk_Oferta_has_Skil_Oferta_idx` (`Oferta_id`),
  CONSTRAINT `fk_Oferta_has_Skil_Oferta` FOREIGN KEY (`Oferta_id`) REFERENCES `oferta` (`id`),
  CONSTRAINT `fk_Oferta_has_Skil_Skil1` FOREIGN KEY (`Skil_id`) REFERENCES `skill` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oferta_requiere_skill`
--

LOCK TABLES `oferta_requiere_skill` WRITE;
/*!40000 ALTER TABLE `oferta_requiere_skill` DISABLE KEYS */;
INSERT INTO `oferta_requiere_skill` VALUES (1,1),(2,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(1,4),(2,4),(5,4),(6,4),(7,4),(11,4),(12,4),(13,4),(1,5),(2,5),(6,5),(7,5),(8,5),(9,5),(10,5),(11,5),(12,5),(13,5),(1,6),(2,6),(3,6),(4,6),(7,6),(8,6),(9,6),(10,6),(11,6),(12,6),(13,6),(1,7),(2,7),(5,7),(6,7),(7,7),(8,7),(9,7),(10,7),(1,8),(2,8),(3,8),(4,8),(7,8),(11,8),(12,8),(13,8),(1,9),(2,9),(7,9),(11,9),(12,9),(13,9),(1,10),(2,10),(6,10),(7,10),(11,10),(12,10),(13,10);
/*!40000 ALTER TABLE `oferta_requiere_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Fecha Nacimiento` date DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `CV` varchar(200) DEFAULT NULL,
  `EnviarAlerta` tinyint DEFAULT NULL,
  `FechaCreacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'MARIA','ORTIZ','1975-09-27','MORTIZ@GMAIL.COM','ORTIZ!16','MariaOrtiz.pdf',1,'2023-02-09 17:31:31'),(2,'ISABEL','BALLESTEROS','1987-10-17','IBALLESTEROS@GMAIL.COM','BALLESTEROS$93','IsabelBallesteros.pdf',0,'2023-02-09 17:31:31'),(3,'CARMEN','RAMIREZ','1994-08-26','CRAMIREZ@GMAIL.COM','RAMIREZ&88','CarmenRamirez.pdf',1,'2023-02-09 17:31:31'),(4,'MARIA PAULA','GONZALEZ','1981-03-27','MGONZALEZ@GMAIL.COM','GONZALEZ!15','Maria PaulaGonzalez.pdf',1,'2023-02-09 17:31:31'),(5,'EMILY','HERNANDEZ','2001-02-10','EHERNANDEZ@GMAIL.COM','HERNANDEZ$4','EmilyHernandez.pdf',1,'2023-02-09 17:31:31'),(6,'LUISA','GOMEZ','1971-12-12','LGOMEZ@GMAIL.COM','GOMEZ&35','LuisaGomez.pdf',1,'2023-02-09 17:31:31'),(7,'MARIA CARMEN','SOSA','1981-07-16','MSOSA@GMAIL.COM','SOSA.61','Maria CarmenSosa.pdf',0,'2023-02-09 17:31:31'),(8,'MARY','SMITH','2000-05-04','MSMITH@GMAIL.COM','SMITH#93','MarySmith.pdf',0,'2023-02-09 17:31:31'),(9,'PATRICIA','SOTO','1974-07-12','PSOTO@GMAIL.COM','SOTO!93','PatriciaSoto.pdf',0,'2023-02-09 17:31:31'),(10,'ANTONIO','GARCIA','1995-08-30','AGARCIA@GMAIL.COM','GARCIA!21','AntonioGarcia.pdf',1,'2023-02-09 17:31:31'),(11,'JOSE','MARTINEZ','1987-11-22','JMARTINEZ@GMAIL.COM','MARTINEZ$16','JoseMartinez.pdf',1,'2023-02-09 17:31:31'),(12,'FRANCISCO','LOPEZ','1988-02-16','FLOPEZ@GMAIL.COM','LOPEZ&27','FranciscoLopez.pdf',1,'2023-02-09 17:31:31'),(13,'JUAN','SANCHEZ','2003-03-23','JSANCHEZ@GMAIL.COM','SANCHEZ.60','JuanSanchez.pdf',1,'2023-02-09 17:31:31'),(14,'MIGUEL ANGEL','RODRIGUEZ','2003-10-16','MRODRIGUEZ@GMAIL.COM','RODRIGUEZ#38','Miguel AngelRodriguez.pdf',1,'2023-02-09 17:31:31'),(15,'JUAN ESTEBAN','DIAZ','1973-05-23','JDIAZ@GMAIL.COM','DIAZ!93','Juan EstebanDiaz.pdf',0,'2023-02-09 17:31:31'),(16,'JUAN SEBASTIAN','LOPEZ','1974-03-15','JLOPEZ@GMAIL.COM','LOPEZ$56','Juan SebastianLopez.pdf',0,'2023-02-09 17:31:31'),(17,'SANTIAGO','MARTINEZ','1977-07-18','SMARTINEZ@GMAIL.COM','MARTINEZ&33','SantiagoMartinez.pdf',0,'2023-02-09 17:31:31'),(18,'DAVID','RUBIO','2001-01-17','DRUBIO@GMAIL.COM','RUBIO.53','DavidRubio.pdf',0,'2023-02-09 17:31:31'),(19,'JHON','WATSON','2003-10-22','JWATSON@GMAIL.COM','WATSON#81','JhonWatson.pdf',1,'2023-02-09 17:31:31');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_tiene_skill`
--

DROP TABLE IF EXISTS `persona_tiene_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona_tiene_skill` (
  `Persona_id` int NOT NULL,
  `Skil_id` int NOT NULL,
  PRIMARY KEY (`Persona_id`,`Skil_id`),
  KEY `fk_Persona_has_Skil_Skil1_idx` (`Skil_id`),
  KEY `fk_Persona_has_Skil_Persona1_idx` (`Persona_id`),
  CONSTRAINT `fk_Persona_has_Skil_Persona1` FOREIGN KEY (`Persona_id`) REFERENCES `persona` (`id`),
  CONSTRAINT `fk_Persona_has_Skil_Skil1` FOREIGN KEY (`Skil_id`) REFERENCES `skill` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_tiene_skill`
--

LOCK TABLES `persona_tiene_skill` WRITE;
/*!40000 ALTER TABLE `persona_tiene_skill` DISABLE KEYS */;
INSERT INTO `persona_tiene_skill` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(4,4),(5,4),(6,4),(7,4),(8,4),(9,4),(10,4),(5,5),(6,5),(7,5),(8,5),(9,5),(10,5),(6,6),(7,6),(8,6),(9,6),(10,6),(7,7),(8,7),(9,7),(10,7),(8,8),(9,8),(10,8),(9,9),(10,9),(10,10);
/*!40000 ALTER TABLE `persona_tiene_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'Html'),(2,'MySql'),(3,'Sql Server'),(4,'C#'),(5,'NodeJs'),(6,'Javascript'),(7,'Css'),(8,'Oracle'),(9,'Go'),(10,'Java');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vi_skillspersonaoferta`
--

DROP TABLE IF EXISTS `vi_skillspersonaoferta`;
/*!50001 DROP VIEW IF EXISTS `vi_skillspersonaoferta`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vi_skillspersonaoferta` AS SELECT 
 1 AS `Persona_id`,
 1 AS `Oferta_id`,
 1 AS `cantidadSkills`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vi_skillspersonaoferta`
--

/*!50001 DROP VIEW IF EXISTS `vi_skillspersonaoferta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vi_skillspersonaoferta` AS select `ps`.`Persona_id` AS `Persona_id`,`ors`.`Oferta_id` AS `Oferta_id`,count(0) AS `cantidadSkills` from (`persona_tiene_skill` `ps` join `oferta_requiere_skill` `ors` on((`ps`.`Skil_id` = `ors`.`Skil_id`))) group by `ps`.`Persona_id`,`ors`.`Oferta_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-18  2:20:50
