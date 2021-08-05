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
-- Table structure for table `aluno_curso`
--

DROP TABLE IF EXISTS `aluno_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_curso` (
  `fk_id_aluno` int NOT NULL,
  `fk_id_curso` int NOT NULL,
  `data_inscricao_curso` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `valor_pago_curso` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`fk_id_aluno`,`fk_id_curso`,`data_inscricao_curso`),
  KEY `fk_aluno_curso` (`fk_id_aluno`),
  KEY `fk_curso_aluno` (`fk_id_curso`),
  CONSTRAINT `fk_aluno_curso` FOREIGN KEY (`fk_id_aluno`) REFERENCES `aluno` (`id_aluno`),
  CONSTRAINT `fk_curso_aluno` FOREIGN KEY (`fk_id_curso`) REFERENCES `curso` (`id_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_curso`
--

LOCK TABLES `aluno_curso` WRITE;
/*!40000 ALTER TABLE `aluno_curso` DISABLE KEYS */;
INSERT INTO `aluno_curso` VALUES (1,1,'2021-05-12 14:02:35',800.00),(1,1,'2021-05-12 14:02:38',800.00),(1,2,'2021-05-12 14:02:35',250.00),(1,2,'2021-05-12 14:02:38',250.00),(1,5,'2021-05-12 14:02:35',700.00),(1,5,'2021-05-12 14:02:38',700.00),(2,7,'2021-05-12 14:02:35',820.00),(2,7,'2021-05-12 14:02:38',820.00),(3,3,'2021-05-12 14:02:35',550.00),(3,3,'2021-05-12 14:02:38',550.00),(4,4,'2021-05-12 14:02:35',600.00),(4,4,'2021-05-12 14:02:38',600.00),(5,1,'2021-05-12 14:02:35',800.00),(5,1,'2021-05-12 14:02:38',800.00),(5,2,'2021-05-12 14:02:35',250.00),(5,2,'2021-05-12 14:02:38',250.00),(6,5,'2021-05-12 14:02:35',700.00),(6,5,'2021-05-12 14:02:38',700.00),(7,4,'2021-05-12 14:02:35',600.00),(7,4,'2021-05-12 14:02:38',600.00),(8,6,'2021-05-12 14:02:35',835.00),(8,6,'2021-05-12 14:02:38',835.00),(9,7,'2021-03-19 00:00:00',820.00),(10,3,'2019-06-03 00:00:00',835.00),(11,5,'2021-05-12 14:18:18',820.00);
/*!40000 ALTER TABLE `aluno_curso` ENABLE KEYS */;
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
