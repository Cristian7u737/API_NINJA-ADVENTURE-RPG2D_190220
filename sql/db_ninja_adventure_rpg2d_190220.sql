CREATE DATABASE  IF NOT EXISTS `db_rpg2d_190220` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_rpg2d_190220`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: db_rpg2d_190220
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Temporary view structure for view `nw_higscores`
--

DROP TABLE IF EXISTS `nw_higscores`;
/*!50001 DROP VIEW IF EXISTS `nw_higscores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nw_higscores` AS SELECT 
 1 AS `GAME`,
 1 AS `ENEMIGOS-DERRTS`,
 1 AS `MISIONES-CUMPLIDAS`,
 1 AS `MONEDAS`,
 1 AS `PLAYER`,
 1 AS `AVATAR`,
 1 AS `STARTED`,
 1 AS `ENDED`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tb_games`
--

DROP TABLE IF EXISTS `tb_games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_games` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `misionesCumplidas` int NOT NULL,
  `numEnemigosDerrotados` int NOT NULL,
  `monedas` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_games`
--

LOCK TABLES `tb_games` WRITE;
/*!40000 ALTER TABLE `tb_games` DISABLE KEYS */;
INSERT INTO `tb_games` VALUES (1,'2022-12-03 03:38:08','2022-12-03 03:38:08',12,15,123),(2,'2022-12-03 03:39:21','2022-12-03 03:39:21',65,58,132),(3,'2022-12-03 04:02:36','2022-12-03 04:02:36',98,56,232),(4,'2022-12-03 04:03:05','2022-12-03 04:03:05',26,59,10),(5,'2022-12-03 04:03:36','2022-12-03 04:03:36',21,54,321);
/*!40000 ALTER TABLE `tb_games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_players`
--

DROP TABLE IF EXISTS `tb_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_players` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthdate` datetime NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`),
  UNIQUE KEY `email_3` (`email`),
  UNIQUE KEY `email_4` (`email`),
  UNIQUE KEY `email_5` (`email`),
  UNIQUE KEY `email_6` (`email`),
  UNIQUE KEY `email_7` (`email`),
  UNIQUE KEY `email_8` (`email`),
  UNIQUE KEY `email_9` (`email`),
  UNIQUE KEY `email_10` (`email`),
  UNIQUE KEY `email_11` (`email`),
  UNIQUE KEY `email_12` (`email`),
  UNIQUE KEY `email_13` (`email`),
  UNIQUE KEY `email_14` (`email`),
  UNIQUE KEY `email_15` (`email`),
  UNIQUE KEY `email_16` (`email`),
  UNIQUE KEY `email_17` (`email`),
  UNIQUE KEY `email_18` (`email`),
  UNIQUE KEY `email_19` (`email`),
  UNIQUE KEY `nickname` (`nickname`),
  UNIQUE KEY `nickname_2` (`nickname`),
  UNIQUE KEY `nickname_3` (`nickname`),
  UNIQUE KEY `nickname_4` (`nickname`),
  UNIQUE KEY `nickname_5` (`nickname`),
  UNIQUE KEY `nickname_6` (`nickname`),
  UNIQUE KEY `nickname_7` (`nickname`),
  UNIQUE KEY `nickname_8` (`nickname`),
  UNIQUE KEY `nickname_9` (`nickname`),
  UNIQUE KEY `nickname_10` (`nickname`),
  UNIQUE KEY `nickname_11` (`nickname`),
  UNIQUE KEY `nickname_12` (`nickname`),
  UNIQUE KEY `nickname_13` (`nickname`),
  UNIQUE KEY `nickname_14` (`nickname`),
  UNIQUE KEY `nickname_15` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_players`
--

LOCK TABLES `tb_players` WRITE;
/*!40000 ALTER TABLE `tb_players` DISABLE KEYS */;
INSERT INTO `tb_players` VALUES (1,'cristian048@gmail.com','$2b$10$o/n17B.g6Pe7BOZjlfM52OHuiYo0rs45Tc5Bo9rDNW21W.Ma/grI.','Cristian Nochebuena Chavarría','2001-03-18 01:00:00','Criss7w7','avatar.png','2022-12-02 23:42:55','2022-12-02 23:42:55'),(2,'daniela1015@gmail.com','$2b$10$82nye4NdJcCYGhlsBQvExeUtkaCYiTGNWrhei.KZQJLEHYHLUUQZu','Daniela Aguilar Torres','2001-12-15 01:00:00','Dani737','avatar.png','2022-12-02 23:51:43','2022-12-02 23:51:43'),(3,'eleazarcq@gmail.com','$2b$10$wSl3AVIwG7x70fUhUlgU6.5ZJ/1IjeOU9Toz9UWNCMILVoJB2pyOm','Eleazar Cortes Quirinoz','2000-08-15 00:00:00','Eleazar888','avatar.png','2022-12-02 23:52:44','2022-12-02 23:52:44'),(4,'angelica@gmail.com','$2b$10$AiT510lh6dazsfWTU1zCSOULf87UYfXh/rpgEqaeN.Hx0a6Par5W.','Maria Angelica Chavarría Gutierrez','1982-11-11 01:00:00','Angelic489','avatar.png','2022-12-03 00:13:24','2022-12-03 00:13:24');
/*!40000 ALTER TABLE `tb_players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_rpg2d_190220'
--

--
-- Dumping routines for database 'db_rpg2d_190220'
--

--
-- Final view structure for view `nw_higscores`
--

/*!50001 DROP VIEW IF EXISTS `nw_higscores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `nw_higscores` AS select concat_ws(' ','Game: ',`g`.`id`) AS `GAME`,`g`.`numEnemigosDerrotados` AS `ENEMIGOS-DERRTS`,`g`.`misionesCumplidas` AS `MISIONES-CUMPLIDAS`,`g`.`monedas` AS `MONEDAS`,`p`.`nickname` AS `PLAYER`,`p`.`avatar_url` AS `AVATAR`,`g`.`createdAt` AS `STARTED`,`g`.`updatedAt` AS `ENDED` from (`tb_games` `g` join `tb_players` `p` on((`p`.`id` = `g`.`id`))) order by `g`.`monedas` desc,`g`.`createdAt` */;
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

-- Dump completed on 2022-12-03  7:06:33
