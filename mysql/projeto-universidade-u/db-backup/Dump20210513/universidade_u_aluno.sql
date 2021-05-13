-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: universidade_u
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `id_aluno` int NOT NULL AUTO_INCREMENT,
  `cpf` varchar(14) NOT NULL,
  `sexo` char(1) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `ativo_sn` int DEFAULT '1',
  `data_nascimento` date NOT NULL,
  PRIMARY KEY (`id_aluno`),
  UNIQUE KEY `uc_aluno_cpf` (`cpf`),
  UNIQUE KEY `uc_aluno_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'000.000.000-01','M','James','james@foobar.com',1,'1989-05-01'),(2,'000.000.033-02','F','Mary','mary.cat@foobar.com',1,'2004-08-14'),(3,'000.000.011-00','M','John','johnjo@foobar.com',1,'1998-11-11'),(4,'000.000.000-45','F','Patricia','patpotato@foobar.com',1,'1985-06-28'),(5,'000.000.001-11','M','Robert','mr.robert@foobar.com',1,'1996-10-23'),(6,'000.000.066-12','F','Jennifer','jenni_lovelace@foobar.com',1,'2002-05-08'),(7,'000.000.000-88','M','Michael','michael@foobar.com',1,'1977-02-24'),(8,'000.000.000-67','F','Linda','lili@foobar.com',1,'2003-04-03'),(9,'000.000.003-22','M','Ohara','oha@foobar.com',1,'1983-11-08'),(10,'000.000.040-04','F','Lucy','lilu@foobar.com',0,'1985-06-22'),(11,'000.000.001-83','M','José','zezinho@foobar.com',1,'1990-07-12');
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-13 17:51:28
