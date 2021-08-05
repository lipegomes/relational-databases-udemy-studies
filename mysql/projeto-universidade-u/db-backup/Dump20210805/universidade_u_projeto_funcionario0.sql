-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: universidade_u
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
-- Table structure for table `projeto_funcionario`
--

DROP TABLE IF EXISTS `projeto_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projeto_funcionario` (
  `fk_id_codigo` int NOT NULL,
  `fk_id_matricula` int NOT NULL,
  `horas_estimadas` int NOT NULL,
  `horas_realizadas` int DEFAULT NULL,
  PRIMARY KEY (`fk_id_codigo`,`fk_id_matricula`),
  KEY `fk_id_matricula` (`fk_id_matricula`),
  CONSTRAINT `projeto_funcionario_ibfk_1` FOREIGN KEY (`fk_id_codigo`) REFERENCES `projeto` (`id_codigo`),
  CONSTRAINT `projeto_funcionario_ibfk_2` FOREIGN KEY (`fk_id_matricula`) REFERENCES `funcionario` (`id_matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projeto_funcionario`
--

LOCK TABLES `projeto_funcionario` WRITE;
/*!40000 ALTER TABLE `projeto_funcionario` DISABLE KEYS */;
INSERT INTO `projeto_funcionario` VALUES (1,39,100,NULL),(1,95,500,NULL),(1,129,200,NULL),(2,39,150,NULL),(2,184,200,NULL),(2,312,25,NULL);
/*!40000 ALTER TABLE `projeto_funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-05 15:12:41
