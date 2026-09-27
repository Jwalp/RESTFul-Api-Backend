-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: giftdata
-- ------------------------------------------------------
-- Server version	26.7.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '84438082-b918-11f1-9291-0a002700000b:1-84';

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `messageID` int NOT NULL AUTO_INCREMENT,
  `sender_userID` int NOT NULL,
  `reciever_userID` int NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `eposh` bigint DEFAULT NULL,
  PRIMARY KEY (`messageID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,1,2,'hi',1790456482),(2,2,1,'hey there',1790456497),(3,3,1,'hey there',1790456530),(4,2,1,'hey there',1790458164),(5,1,2,'hey are you around?',1790460000),(6,2,1,'yeah whats up',1790460100),(7,3,4,'did you get my email?',1790460300),(8,4,3,'checking now',1790460400),(9,5,6,'lunch at noon?',1790460600),(10,6,5,'sounds good',1790460700),(11,7,8,'can we reschedule the call',1790460900),(12,8,7,'sure, how about 3pm',1790461000),(13,9,10,'thanks for the help earlier',1790461200),(14,10,9,'anytime!',1790461300),(15,11,12,'is the report ready?',1790461500),(16,12,11,'almost done, 10 mins',1790461600),(17,13,14,'happy birthday!',1790461800),(18,14,13,'thank you so much',1790461900),(19,15,16,'meeting moved to friday',1790462100),(20,16,15,'got it, thanks',1790462200),(21,17,18,'can you review my PR',1790462400),(22,18,17,'looking at it now',1790462500),(23,19,20,'traffic is bad, running late',1790462700),(24,20,19,'no worries, take your time',1790462800),(25,24,2,'Are you going to the party',1790540896),(26,2,24,'Yes',1790540904);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `email` varchar(127) NOT NULL,
  `password` varchar(127) NOT NULL,
  `first_name` varchar(31) NOT NULL,
  `last_name` varchar(31) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'info@giftogram.com','$2b$10$AsMRSA3eXf5JJwnfc.BFbecIVihUvy7gkZTNFHcPENvaMFimV5cj6','John','Doe'),(2,'test@giftogram.com','$2b$10$aQgAbUhp/dq9bqSqbW8CE.8NcdyaX/8svdJM85lINqroyPqy9GDEK','John','Doe'),(3,'recipt@giftogram.com','$2b$10$D8ITcxhCgtWq67uX/E7n8.lcy0kFLjt9RXGXTZthMvRoLIcdZG21m','Steve','Smith'),(4,'john.parker@gmail.com','$2b$10$abcdefghijklmnopqrstuv1234567890ABCDEFGHIJKLMN','John','Parker'),(5,'mary.chen@yahoo.com','$2b$10$1234567890abcdefghijklmnopqrstuvABCDEFGHIJKLMN','Mary','Chen'),(6,'sam.wilson@hotmail.com','$2b$10$qwertyuiopasdfghjklzxcvbnm1234567890QWERTYUIOP','Sam','Wilson'),(7,'lisa.brown@outlook.com','$2b$10$zxcvbnmasdfghjklqwertyuiop0987654321ZXCVBNMASD','Lisa','Brown'),(8,'mike.davis@example.com','$2b$10$mnbvcxzasdfghjklpoiuytrewq1122334455MNBVCXZASD','Mike','Davis'),(9,'anna.garcia@gmail.com','$2b$10$poiuytrewqasdfghjklmnbvcxz2233445566POIUYTREWQ','Anna','Garcia'),(10,'chris.martin@yahoo.com','$2b$10$lkjhgfdsapoiuytrewqmnbvcxz3344556677LKJHGFDSA','Chris','Martin'),(11,'julia.lee@hotmail.com','$2b$10$mnbvcxzlkjhgfdsapoiuytrewq4455667788MNBVCXZLK','Julia','Lee'),(12,'kevin.walker@gmail.com','$2b$10$asdfghjklzxcvbnmpoiuytrewq5566778899ASDFGHJKL','Kevin','Walker'),(13,'nina.young@example.com','$2b$10$zxcvbnmpoiuytrewqasdfghjkl6677889900ZXCVBNMPO','Nina','Young'),(14,'tom.harris@outlook.com','$2b$10$qazwsxedcrfvtgbyhnujmik7788990011QAZWSXEDCRFV','Tom','Harris'),(15,'sara.king@yahoo.com','$2b$10$plmoknijbuhvygctfxrdze8899001122PLMOKNIJBUHVY','Sara','King'),(16,'daniel.scott@gmail.com','$2b$10$wsxedcrfvtgbyhnujmikolp9900112233WSXEDCRFVTGB','Daniel','Scott'),(17,'emily.adams@hotmail.com','$2b$10$edcrfvtgbyhnujmikolpqaz0011223344EDCRFVTGBYHN','Emily','Adams'),(18,'ryan.baker@example.com','$2b$10$rfvtgbyhnujmikolpqazwsx1122334455RFVTGBYHNUJM','Ryan','Baker'),(19,'olivia.nelson@gmail.com','$2b$10$tgbyhnujmikolpqazwsxedc2233445566TGBYHNUJMIKO','Olivia','Nelson'),(20,'brian.carter@yahoo.com','$2b$10$yhnujmikolpqazwsxedcrfv3344556677YHNUJMIKOLPQ','Brian','Carter'),(21,'grace.mitchell@outlook.com','$2b$10$ujmikolpqazwsxedcrfvtgb4455667788UJMIKOLPQAZW','Grace','Mitchell'),(22,'adam.perez@gmail.com','$2b$10$mikolpqazwsxedcrfvtgbyh5566778899MIKOLPQAZWSX','Adam','Perez'),(23,'rachel.turner@hotmail.com','$2b$10$ikolpqazwsxedcrfvtgbyhn6677889900IKOLPQAZWSXE','Rachel','Turner'),(24,'myUser@giftogram.com','$2b$10$I7nT6qlU8mgQuBBtPicexeM1/eefjMttwF9X1s6f4k0WPyEOY3YJu','Frank','Smith');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'giftdata'
--
/*!50003 DROP PROCEDURE IF EXISTS `CreateAccount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateAccount`(
    IN p_email VARCHAR(127),
    IN p_password VARCHAR(127),
    IN p_firstname VARCHAR(31),
    IN p_lastname VARCHAR(31)
)
BEGIN
	DECLARE dupEmail INT; 
	SELECT COUNT(*) INTO dupEmail
    from users
    where email = p_email;
    
    IF dupEmail > 0 THEN
		SELECT -1 AS user_id;
	ELSE
    INSERT INTO users (email, password, first_name, last_name)
    VALUES (p_email, p_password, p_firstname, p_lastname);
    SELECT LAST_INSERT_ID() AS user_id;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListAllUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListAllUsers`(
	IN p_userID VARCHAR(127)
)
BEGIN
	SELECT userID as user_ID, email, first_name, last_name 
    FROM users
    WHERE userID != p_userID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Login`(
	IN p_email VARCHAR(127)
)
BEGIN
	SELECT userID as user_id, password, email, first_name, last_name 
    FROM users
    WHERE email = p_email;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SendMessage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SendMessage`(
	IN p_sID VARCHAR(127),
    IN p_rID VARCHAR(127),
    IN p_message VARCHAR(255)
)
BEGIN
	DECLARE idExists INT; 
	SELECT COUNT(*) INTO idExists
    from users
    where userID = p_sID OR userID = p_rid;
    
    IF idExists != 2 THEN
		Select -1 as result;
	ELSE
	INSERT INTO messages (sender_userID, reciever_userID, message, eposh)
    VALUES (p_sID, p_rID, p_message, UNIX_TIMESTAMP());
		Select 0 as result;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ViewMessages` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ViewMessages`(
	IN p_firID VARCHAR(127),
    IN p_secID VARCHAR(127)
)
BEGIN
	SELECT messageID as message_ID, sender_userID as sender_user_id, message, eposh
    FROM messages
    WHERE (sender_userID = p_firID AND reciever_userID = p_secID) OR (sender_userID = p_secID AND reciever_userID = p_firID)
    ORDER BY eposh;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-27 16:32:56
