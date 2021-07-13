-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: universidade_u
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `id_professor` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_professor`)
) ENGINE=InnoDB AUTO_INCREMENT=482 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (50,'Brian','brian@universidadeu.com'),(68,'Pedro','pedro@universidadeu.com'),(82,'Josefo','josefo@universidadeu.com'),(99,'Mark','mark@universidadeu.com'),(192,'Carla','carla@universidadeu.com'),(301,'Jessica','jessica@universidadeu.com'),(344,'Gadriel','gadriel@universidadeu.com'),(380,'Yasuki','yasuki@universidadeu.com'),(381,'Anna','anna@universidadeu.com'),(382,'Price','ac.libero.nec@placerat.co.uk'),(383,'Breanna','non.egestas.a@dictumeueleifend.org'),(384,'Denton','sed.facilisis@Praesenteu.com'),(385,'Edan','gravida.sit.amet@accumsan.co.uk'),(386,'Shannon','lorem@Duissit.org'),(387,'Jordan','diam@ametrisusDonec.org'),(388,'Tallulah','elit@Nulla.com'),(389,'Debra','eget@MaurisnullaInteger.co.uk'),(390,'Jael','urna.Ut@purusaccumsaninterdum.com'),(391,'Robert','lacus.Quisque.imperdiet@id.edu'),(392,'Brock','Nullam.nisl@Sedpharetrafelis.com'),(393,'Raven','lectus.justo@egestashendreritneque.ca'),(394,'Chloe','vestibulum@in.ca'),(395,'Hakeem','et.magnis@liberoMorbiaccumsan.net'),(396,'Brianna','elit.Aliquam.auctor@quisurnaNunc.edu'),(397,'Martha','orci@id.com'),(398,'Mariam','pede@et.net'),(399,'Axel','Nam@Nullam.co.uk'),(400,'Scott','fames.ac.turpis@urnaUt.com'),(401,'Reece','ipsum.primis@diamluctuslobortis.net'),(402,'Dalton','tempor.bibendum@magna.com'),(403,'Brody','sagittis.semper@magnamalesuadavel.co.uk'),(404,'John','risus.at@bibendumullamcorper.com'),(405,'Nasim','sagittis@malesuada.edu'),(406,'Zephania','mauris@consectetuermauris.ca'),(407,'Basia','mauris@lectuspede.com'),(408,'Elliott','luctus@Lorem.edu'),(409,'Iola','nec.urna@egetmetusIn.com'),(410,'Wang','placerat@Maecenasmifelis.com'),(411,'Alden','Nunc.mauris@nonlobortis.org'),(412,'Stacey','in.magna.Phasellus@nonummyipsum.org'),(413,'Acton','mi.lacinia@ultricies.org'),(414,'Gillian','aliquet@pedePraesenteu.org'),(415,'Nehru','ut.eros@feugiatnon.co.uk'),(416,'Aurora','malesuada.fringilla@aarcu.ca'),(417,'Tiger','semper.erat.in@quisdiamPellentesque.ca'),(418,'Steel','eget.laoreet@Namtempordiam.ca'),(419,'Brendan','est.tempor.bibendum@ultricies.org'),(420,'Stacy','fringilla.purus@euismodenimEtiam.net'),(421,'Herman','vitae.sodales.nisi@vulputateposuerevulputate.com'),(422,'Tanner','augue.porttitor.interdum@velmaurisInteger.edu'),(423,'Kaitlin','orci.tincidunt.adipiscing@amet.ca'),(424,'Margaret','natoque@mauris.ca'),(425,'Aladdin','ligula.Nullam@infelisNulla.net'),(426,'Naida','eget.mollis.lectus@velit.co.uk'),(427,'Steel','dictum@mauris.org'),(428,'Jenette','pellentesque@estmaurisrhoncus.net'),(429,'Harper','luctus.ipsum@velit.co.uk'),(430,'Ishmael','consectetuer.adipiscing.elit@vulputate.org'),(431,'Maia','convallis.dolor.Quisque@mifelis.org'),(432,'Tana','at.fringilla.purus@ullamcorpereu.net'),(433,'Walter','dictum.placerat.augue@elitdictum.co.uk'),(434,'Acton','adipiscing.lacus@adipiscing.edu'),(435,'Ryder','Phasellus.fermentum.convallis@nisiCum.com'),(436,'Yardley','nec.eleifend@Praesenteudui.edu'),(437,'Clio','egestas.lacinia@urna.edu'),(438,'Wing','Aliquam.nec@mauris.edu'),(439,'Sheila','parturient.montes@tortor.org'),(440,'Ariel','mauris.ut.mi@aceleifendvitae.co.uk'),(441,'Honorato','non@semmollisdui.co.uk'),(442,'Wyoming','Proin@vulputateeuodio.ca'),(443,'Germaine','iaculis.aliquet@pedenecante.com'),(444,'Nolan','ornare@utnulla.org'),(445,'Angelica','dis.parturient.montes@eratvelpede.edu'),(446,'Sylvia','Nam.nulla@velitAliquamnisl.ca'),(447,'Jeremy','dui.nec@mollis.edu'),(448,'Maisie','nec.eleifend@semPellentesqueut.co.uk'),(449,'Larissa','montes@temporestac.ca'),(450,'Dillon','lobortis.nisi@atauctor.co.uk'),(451,'Amethyst','molestie@nonmagna.co.uk'),(452,'Sonia','vitae.risus@pretiumnequeMorbi.com'),(453,'Burke','ante.iaculis.nec@sapienimperdietornare.edu'),(454,'Neil','cursus.diam@Integer.net'),(455,'Brenden','lectus.sit.amet@nibh.com'),(456,'Holly','euismod@Loremipsum.net'),(457,'Melvin','ullamcorper.eu.euismod@blanditNamnulla.co.uk'),(458,'Remedios','interdum.libero@egetlaoreetposuere.com'),(459,'Zia','tellus.faucibus.leo@Proinnisl.net'),(460,'Geraldine','nascetur@aliquamiaculis.ca'),(461,'Yoshio','ornare.lectus@luctuslobortisClass.ca'),(462,'Keegan','sed.dui@augue.org'),(463,'Prescott','blandit.Nam@risus.ca'),(464,'Jacqueline','mauris.erat.eget@convallisdolor.co.uk'),(465,'Benedict','non@eget.org'),(466,'Shannon','eleifend.non@nislelementum.com'),(467,'Kameko','lorem.vehicula@gravidasitamet.co.uk'),(468,'Wing','enim.nisl@maurisutmi.ca'),(469,'Kasper','vitae@Donecporttitor.ca'),(470,'Raymond','consectetuer@Sed.ca'),(471,'Jared','semper.tellus.id@blandit.net'),(472,'Mercedes','ut@elementum.edu'),(473,'Deacon','ullamcorper.magna@auctor.net'),(474,'Indira','In@et.net'),(475,'Philip','sit@Quisquepurus.com'),(476,'Jonah','vulputate.mauris.sagittis@interdumSedauctor.ca'),(477,'Ezekiel','felis@non.edu'),(478,'Brennan','Nunc@DonecegestasDuis.net'),(479,'Tobias','ac.eleifend.vitae@massaQuisqueporttitor.edu'),(480,'Kennedy','Curabitur@purus.net'),(481,'Liberty','lacus.Nulla@et.co.uk');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-13 14:04:54
