CREATE DATABASE  IF NOT EXISTS `cadastro` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cadastro`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: cadastro
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `IDcurso` int unsigned NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` text,
  `carga` int DEFAULT NULL,
  `totaulas` int unsigned DEFAULT NULL,
  `ano` year DEFAULT '2020',
  PRIMARY KEY (`IDcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'HTML5','Curso de HTML5',40,37,2014),(2,'Algoritimo','Lógica de programaçāo',20,15,2014),(3,'Photoshop','Dicas de photoshop CC',10,8,2014),(4,'PHP','Curso de PHP para inciante',40,20,2015),(5,'Java','Introduçāo a liguagem java',10,29,2015),(6,'MySQL','Bancos de dados mySQL',30,15,2016),(7,'Word','Curso completo de word',40,30,2016);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gafanhoto_assiste_curso`
--

DROP TABLE IF EXISTS `gafanhoto_assiste_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gafanhoto_assiste_curso` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `ID_gafanhotos` int DEFAULT NULL,
  `ID_cursos` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_gafanhotos` (`ID_gafanhotos`),
  KEY `ID_cursos` (`ID_cursos`),
  CONSTRAINT `gafanhoto_assiste_curso_ibfk_1` FOREIGN KEY (`ID_gafanhotos`) REFERENCES `Gafanhotos` (`id`),
  CONSTRAINT `gafanhoto_assiste_curso_ibfk_2` FOREIGN KEY (`ID_cursos`) REFERENCES `cursos` (`IDcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gafanhoto_assiste_curso`
--

LOCK TABLES `gafanhoto_assiste_curso` WRITE;
/*!40000 ALTER TABLE `gafanhoto_assiste_curso` DISABLE KEYS */;
INSERT INTO `gafanhoto_assiste_curso` VALUES (1,'2014-02-01',1,2),(5,'2015-12-12',2,3),(6,'2014-01-01',1,7),(7,'2020-12-01',9,3);
/*!40000 ALTER TABLE `gafanhoto_assiste_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gafanhotos`
--

DROP TABLE IF EXISTS `Gafanhotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Gafanhotos` (
  `codigo` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `prof` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  `cursoPreferido` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cursoPreferido` (`cursoPreferido`),
  CONSTRAINT `gafanhotos_ibfk_1` FOREIGN KEY (`cursoPreferido`) REFERENCES `cursos` (`IDcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gafanhotos`
--

LOCK TABLES `Gafanhotos` WRITE;
/*!40000 ALTER TABLE `Gafanhotos` DISABLE KEYS */;
INSERT INTO `Gafanhotos` VALUES (NULL,1,'Godofredo','jornalista','1984-01-02','M',78.50,1.85,'Brasil',6),(NULL,2,'Maria','agricultora','1984-12-30','F',55.20,1.60,'Angola',1),(NULL,3,'Agusta','cantora','1975-11-11','F',55.20,1.60,'Angola',6),(NULL,4,'Carlos','programador','1999-05-16','M',30.00,1.55,'EUA',6),(NULL,5,'Neusa','cantora','1994-12-30','F',80.00,1.90,'Portgal',4),(NULL,6,'Raul','programador','2000-01-01','M',72.00,1.60,'Guiné Equatorial',3),(NULL,7,'Joana da Silva','professora','1994-02-20','F',102.20,1.80,'Cabo Verde ',2),(NULL,8,'Talisma da Silva','estudante','1994-12-13','M',72.00,1.80,'EUA',1),(NULL,9,'Joaquina ','estudante','2002-11-23','F',97.00,2.00,'Brasil',3),(NULL,10,'Silvanio','garçon','2000-05-14','M',40.00,1.70,'Guiné Equatorial',3),(NULL,11,'Melany','estudante','2006-06-08','F',72.00,1.60,'Guiné Equatorial',1),(NULL,12,'Atilas','programador','2002-11-23','M',110.00,2.00,'Guiné Equatorial',7),(NULL,13,'Gino','secretaria','1990-07-16','F',80.00,1.70,'Angola',NULL),(NULL,14,'Flávio','programador','2000-05-14','M',60.00,1.90,'Angola',NULL);
/*!40000 ALTER TABLE `Gafanhotos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-06 23:12:38
