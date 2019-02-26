CREATE DATABASE  IF NOT EXISTS `fullstack2019` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `fullstack2019`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fullstack2019
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.28-MariaDB

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
-- Table structure for table `animais`
--

DROP TABLE IF EXISTS `animais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animais` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `raca` int(11) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `especie` int(11) DEFAULT NULL,
  `chip` varchar(10) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `data_atualizacao` date DEFAULT NULL,
  `data_falecimento` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `raca` (`raca`),
  CONSTRAINT `animais_ibfk_1` FOREIGN KEY (`raca`) REFERENCES `racas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animais`
--

LOCK TABLES `animais` WRITE;
/*!40000 ALTER TABLE `animais` DISABLE KEYS */;
INSERT INTO `animais` VALUES (1,'Abbey',2,'F',2,'1865066966','2018-03-15','0000-00-00','0000-00-00'),(2,'Mart',11,'F',1,'0268071896','2016-12-31','2018-04-07','2019-01-08'),(3,'Marrissa',12,'M',2,'4507026903','2018-01-26','2016-09-25','0000-00-00'),(4,'Astra',6,'F',1,'0418636117','2018-01-30','0000-00-00','0000-00-00'),(5,'Freda',10,'M',1,'9602481269','2016-01-04','0000-00-00','0000-00-00'),(6,'Judas',12,'M',2,'8602736282','2015-08-12','0000-00-00','0000-00-00'),(7,'Barrett',11,'M',1,'9261497063','2017-02-28','0000-00-00','0000-00-00'),(8,'Wynn',8,'F',1,'5277771719','2016-09-07','0000-00-00','0000-00-00'),(9,'Cinderella',4,'M',2,'7702691409','2016-10-10','2017-10-07','0000-00-00'),(10,'Allyce',9,'M',1,'2838837516','2015-07-06','0000-00-00','0000-00-00'),(11,'Juliane',4,'F',2,'1576726096','2017-04-28','2018-05-03','0000-00-00'),(12,'Bree',2,'M',1,'8817617806','2017-05-02','0000-00-00','0000-00-00'),(13,'Merell',12,'M',2,'4489025912','2016-04-05','0000-00-00','0000-00-00'),(14,'Flory',8,'F',2,'3995581420','2015-09-17','0000-00-00','0000-00-00'),(15,'Heddie',10,'F',1,'9111915315','2015-08-06','0000-00-00','0000-00-00'),(16,'Skylar',8,'M',2,'2190170273','2016-11-18','0000-00-00','2018-07-26'),(17,'HailyAlbeaar',1,'M',2,'0968912990','2016-12-18','2019-02-25','0000-00-00'),(18,'Winslow',11,'M',1,'6112166364','2015-12-23','0000-00-00','0000-00-00'),(19,'Madelin',4,'F',2,'8365544377','2016-12-19','2016-05-24','0000-00-00'),(20,'Tate',3,'M',2,'6460068488','2017-05-19','0000-00-00','0000-00-00'),(21,'Sebastian',9,'F',2,'6388030564','2016-09-10','0000-00-00','0000-00-00'),(22,'Avril',10,'M',2,'2248972539','2016-10-26','0000-00-00','0000-00-00'),(23,'Curran',10,'F',2,'4973388823','2016-08-20','2017-12-09','0000-00-00'),(24,'Misha',5,'M',2,'4286866416','2017-05-17','0000-00-00','2018-08-01'),(25,'Sukey',4,'M',2,'6001811733','2016-11-05','0000-00-00','0000-00-00'),(26,'Caryl',5,'F',2,'2903977569','2016-12-07','0000-00-00','0000-00-00'),(27,'Virgilio',4,'M',1,'0367347679','2017-05-18','0000-00-00','0000-00-00'),(28,'Gates',5,'M',1,'1895715253','2017-12-29','2015-07-19','0000-00-00'),(29,'Cecil',4,'M',2,'5322213929','2016-07-22','0000-00-00','0000-00-00'),(30,'Eric',10,'F',2,'8346423020','2015-08-23','2017-02-13','0000-00-00'),(31,'Yurik',3,'M',2,'7232633645','2017-10-25','2018-03-17','0000-00-00'),(32,'Marjoriesss',1,'M',2,'3657663746','2017-11-30','2019-02-25','0000-00-00'),(33,'Daisi',7,'M',1,'4618496150','2015-06-27','0000-00-00','0000-00-00'),(34,'Martita',12,'M',1,'4484575884','2016-07-29','0000-00-00','2018-12-28'),(35,'Barbabas',9,'M',2,'4911834501','2018-03-15','0000-00-00','0000-00-00'),(36,'Larisa',6,'F',1,'6196404296','2016-11-12','0000-00-00','0000-00-00'),(37,'Helli',6,'M',1,'0296046221','2017-08-18','2017-03-09','0000-00-00'),(38,'Barnett',7,'M',2,'5133228376','2015-11-02','2017-07-15','0000-00-00'),(39,'Linoel',5,'M',1,'7563488286','2015-12-04','2017-06-20','0000-00-00'),(40,'Marie',2,'F',1,'6120110402','2017-09-21','2018-04-18','0000-00-00'),(41,'Ursala',8,'F',2,'7148169496','2015-11-03','0000-00-00','2019-01-25'),(42,'Ealasaid',11,'F',1,'8057538481','2018-06-13','0000-00-00','0000-00-00'),(43,'Nance',5,'M',1,'1751600440','2015-09-18','2019-01-14','0000-00-00'),(44,'Sharona',7,'M',1,'0784621020','2015-12-19','2016-08-25','0000-00-00'),(45,'Brietta',8,'F',2,'5179237629','2017-01-28','2016-11-07','0000-00-00'),(46,'Gayles',1,'M',1,'5773555271','2015-06-26','2019-02-25','0000-00-00'),(47,'Winona',11,'F',2,'1235596788','2017-12-13','0000-00-00','0000-00-00'),(48,'Amberly',2,'F',2,'8440591365','2016-05-24','0000-00-00','0000-00-00'),(49,'Kara-lynn',9,'M',1,'8910544945','2018-05-03','2018-09-29','0000-00-00'),(50,'Gaylor',5,'M',1,'6130509677','2018-02-08','0000-00-00','0000-00-00'),(51,'Janela',12,'F',2,'9699623918','2016-07-16','0000-00-00','0000-00-00'),(52,'Chelsie',4,'M',2,'0064543684','2015-11-07','0000-00-00','0000-00-00'),(53,'Romonda',4,'F',2,'3175679870','2017-06-17','0000-00-00','0000-00-00'),(54,'Wendell',5,'M',2,'8599591363','2017-12-01','2017-03-06','0000-00-00'),(55,'Biddy',11,'M',1,'7871612662','2018-05-02','2018-08-04','2019-02-16'),(56,'Miranda',1,'F',1,'9771754971','2015-12-27','2016-02-02','0000-00-00'),(57,'Johnette',2,'F',1,'8732580274','2016-12-28','2018-04-29','0000-00-00'),(58,'Abdul',6,'M',1,'7924853847','2017-08-27','0000-00-00','0000-00-00'),(59,'Alessandro',3,'M',1,'5671056160','2018-04-03','0000-00-00','0000-00-00'),(60,'Fidela',6,'F',2,'7852556701','2016-03-31','2016-12-12','2018-09-30'),(61,'Bettina',6,'M',1,'3177786267','2018-01-19','2018-01-24','0000-00-00'),(62,'Prescott',10,'F',1,'2460409567','2018-01-02','0000-00-00','0000-00-00'),(63,'Gerianne',4,'M',2,'3629999441','2016-04-07','0000-00-00','0000-00-00'),(64,'Lucinda',8,'F',1,'1159076456','2015-12-09','2018-06-29','0000-00-00'),(65,'Selig',4,'M',2,'9930707883','2016-01-06','0000-00-00','0000-00-00'),(66,'Indira',4,'M',2,'8494550306','2018-03-27','2017-07-12','0000-00-00'),(67,'Aurelie',8,'M',2,'2954767987','2017-08-30','0000-00-00','0000-00-00'),(68,'Suzi',2,'M',1,'8897767559','2015-09-29','2016-03-09','0000-00-00'),(69,'Ronnie',8,'M',2,'4228811574','2016-05-08','0000-00-00','0000-00-00'),(70,'Worthington',9,'M',2,'9437454124','2016-01-23','2018-04-17','0000-00-00'),(71,'Lewes',9,'F',2,'6024493150','2018-03-08','2016-01-21','0000-00-00'),(72,'Dennie',10,'F',2,'9088620539','2016-07-03','0000-00-00','0000-00-00'),(73,'Binny',3,'F',2,'5252662444','2018-02-02','2017-12-24','0000-00-00'),(74,'Kitty',10,'M',2,'3941204211','2017-10-05','0000-00-00','0000-00-00'),(75,'Prentiss',1,'M',2,'6853686977','2015-07-18','2015-12-19','2018-10-24'),(76,'Brenna',11,'M',1,'8605979798','2018-06-05','2015-06-24','0000-00-00'),(77,'Dore',8,'F',2,'7465648114','2016-01-08','2015-12-21','0000-00-00'),(78,'Gordon',11,'M',1,'8301756276','2018-07-04','0000-00-00','2019-01-29'),(79,'Jayne',7,'M',1,'8976375319','2017-08-29','0000-00-00','0000-00-00'),(80,'Zeke',8,'F',2,'4993457634','2016-08-12','0000-00-00','0000-00-00'),(81,'Jess',5,'M',1,'2460110332','2016-05-13','0000-00-00','0000-00-00'),(82,'Othello',4,'M',2,'8354451291','2017-10-23','2016-12-11','0000-00-00'),(83,'Idette',6,'F',2,'8875694281','2016-09-03','2019-01-02','2018-07-25'),(84,'Lynnett',9,'F',1,'2104648718','2017-10-31','0000-00-00','2018-12-15'),(85,'Layne',1,'M',2,'3354198605','2017-04-13','0000-00-00','0000-00-00'),(86,'Beau',9,'M',2,'5176798808','2018-05-24','2016-05-06','0000-00-00'),(87,'Richmond',11,'M',1,'6891917379','2016-05-13','0000-00-00','2018-10-14'),(88,'Fredric',4,'F',2,'5471966945','2016-05-20','2017-01-24','0000-00-00'),(89,'Arnuad',10,'F',1,'9737413598','2017-12-17','0000-00-00','0000-00-00'),(90,'Athene',5,'M',1,'2853902412','2018-02-05','0000-00-00','0000-00-00'),(91,'Brooks',8,'M',2,'5303381897','2015-08-06','2016-10-23','0000-00-00'),(92,'Lynnette',3,'M',2,'3430535263','2018-03-25','2019-02-10','0000-00-00'),(93,'Yasmeen',4,'F',2,'3721993756','2015-07-21','0000-00-00','0000-00-00'),(94,'Shanon',11,'F',1,'6490014173','2017-08-19','0000-00-00','2018-10-31'),(95,'Guillermo',12,'M',2,'0259418056','2017-03-19','0000-00-00','0000-00-00'),(96,'Ynez',9,'F',2,'1744003009','2016-02-13','0000-00-00','0000-00-00'),(97,'Pietro',1,'F',2,'3848210134','2017-02-28','2016-10-30','2019-01-23'),(98,'Corella',3,'F',2,'0066444020','2017-06-23','2018-10-13','0000-00-00'),(99,'Chicky',6,'M',2,'5174137480','2017-06-25','2016-07-23','0000-00-00'),(100,'Engracia',6,'F',2,'8395166974','2015-12-24','2019-01-22','0000-00-00'),(101,'Princesa',1,'F',1,'1234567890','2017-09-09','0000-00-00','0000-00-00'),(103,'Flor',1,'F',2,'0987654321','2017-08-08',NULL,NULL),(104,'Florzinha',1,'F',2,'0987654322','2017-01-08',NULL,NULL),(105,'Elialber',1,'M',1,'12332112',NULL,NULL,NULL),(106,'Elialber',1,'M',1,'1231234','2019-09-09',NULL,NULL),(107,'adasd',1,'M',1,'124322','2019-09-09',NULL,NULL),(108,'Lessie',2,'M',1,'123456789','2019-09-09',NULL,NULL),(109,'Lucas Mendez',1,'M',1,'1234567','2019-08-09',NULL,NULL),(110,'dasdsa',1,'M',1,'213213','2019-09-09',NULL,NULL),(111,'teste',1,'M',1,'12345','2000-09-09',NULL,NULL),(112,'Mw8 Escritório',1,'M',1,'1234567','2000-09-09',NULL,NULL),(113,'Mw8 Escritório',1,'M',123123,'123123','2000-09-09',NULL,NULL);
/*!40000 ALTER TABLE `animais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `racas`
--

DROP TABLE IF EXISTS `racas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `racas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `situacao` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `racas`
--

LOCK TABLES `racas` WRITE;
/*!40000 ALTER TABLE `racas` DISABLE KEYS */;
INSERT INTO `racas` VALUES (1,'Poodle','ATI'),(2,'Labrador','ATI'),(3,'Dachshund','ATI'),(4,'Akita','ATI'),(5,'Pitbul','ATI'),(6,'Beagle','ATI'),(7,'Chiuaua','ATI'),(8,'Pastor Alemão','ATI'),(9,'São Bernardo','ATI'),(10,'Bulldog','ATI'),(11,'Vira-lata','ATI'),(12,'Cocker Spaniel','ATI');
/*!40000 ALTER TABLE `racas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_animais`
--

DROP TABLE IF EXISTS `vw_animais`;
/*!50001 DROP VIEW IF EXISTS `vw_animais`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_animais` AS SELECT 
 1 AS `id`,
 1 AS `nomeanimal`,
 1 AS `raca`,
 1 AS `sexo`,
 1 AS `especie`,
 1 AS `chip`,
 1 AS `data_nascimento`,
 1 AS `data_atualizacao`,
 1 AS `data_falecimento`,
 1 AS `idade`,
 1 AS `nomeraca`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'fullstack2019'
--

--
-- Dumping routines for database 'fullstack2019'
--
/*!50003 DROP FUNCTION IF EXISTS `idade_animal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE FUNCTION `idade_animal`(pid int) RETURNS int(11)
BEGIN
DECLARE age int DEFAULT 0;
SELECT YEAR(CURRENT_TIMESTAMP) - YEAR(data_nascimento) - (RIGHT(CURRENT_TIMESTAMP, 5) < RIGHT(data_nascimento, 5)) into age 
  FROM animais
where id = pid;
RETURN age;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERT_ANIMAIS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `SP_INSERT_ANIMAIS`(
	IN nome varchar(255),
	IN raca INT, 
	IN sexo VARCHAR(1),
	IN especie INT,
	IN chip VARCHAR(10),
	IN data_nascimento Date
	)
BEGIN
    INSERT INTO animais (nome,raca,sexo,especie,chip,data_nascimento)
    VALUES (nome,raca,sexo,especie,chip,data_nascimento);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UPDATE_ANIMAIS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `SP_UPDATE_ANIMAIS`(
  id_in int,   
  nome_in varchar(255),
  raca_in INT, 
  sexo_in VARCHAR(1),
  especie_in INT,
  chip_in VARCHAR(10),
  data_nascimento_in Date,
  data_falecimento_in Date)
BEGIN
  UPDATE animais 
  SET nome = nome_in, 
	  raca = raca_in, 
      sexo = sexo_in,
      especie = especie_in,
      chip = chip_in,
      data_nascimento = data_nascimento_in,
      data_atualizacao = NOW(),
      data_falecimento = data_falecimento_in 
      WHERE id = id_in;
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_animais`
--

/*!50001 DROP VIEW IF EXISTS `vw_animais`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 SQL SECURITY DEFINER */
/*!50001 VIEW `vw_animais` AS select `ani`.`id` AS `id`,`ani`.`nome` AS `nomeanimal`,`ani`.`raca` AS `raca`,`ani`.`sexo` AS `sexo`,`ani`.`especie` AS `especie`,`ani`.`chip` AS `chip`,`ani`.`data_nascimento` AS `data_nascimento`,`ani`.`data_atualizacao` AS `data_atualizacao`,`ani`.`data_falecimento` AS `data_falecimento`,((year(now()) - year(`ani`.`data_nascimento`)) - (right(now(),5) < right(`ani`.`data_nascimento`,5))) AS `idade`,`rac`.`nome` AS `nomeraca` from (`animais` `ani` join `racas` `rac` on((`rac`.`id` = `ani`.`raca`))) where (`rac`.`situacao` = 'ATI') */;
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

-- Dump completed on 2019-02-25 19:48:49
