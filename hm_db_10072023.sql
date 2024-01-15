CREATE DATABASE  IF NOT EXISTS `hm_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hm_db`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: hm_db
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add company_master',6,'add_company_master'),(22,'Can change company_master',6,'change_company_master'),(23,'Can delete company_master',6,'delete_company_master'),(24,'Can view company_master',6,'view_company_master'),(25,'Can add role_master',7,'add_role_master'),(26,'Can change role_master',7,'change_role_master'),(27,'Can delete role_master',7,'delete_role_master'),(28,'Can view role_master',7,'view_role_master'),(29,'Can add user',8,'add_user'),(30,'Can change user',8,'change_user'),(31,'Can delete user',8,'delete_user'),(32,'Can view user',8,'view_user'),(33,'Can add Token',9,'add_token'),(34,'Can change Token',9,'change_token'),(35,'Can delete Token',9,'delete_token'),(36,'Can view Token',9,'view_token'),(37,'Can add token',10,'add_tokenproxy'),(38,'Can change token',10,'change_tokenproxy'),(39,'Can delete token',10,'delete_tokenproxy'),(40,'Can view token',10,'view_tokenproxy'),(41,'Can add bellboy',11,'add_bellboy'),(42,'Can change bellboy',11,'change_bellboy'),(43,'Can delete bellboy',11,'delete_bellboy'),(44,'Can view bellboy',11,'view_bellboy'),(45,'Can add bills',12,'add_bills'),(46,'Can change bills',12,'change_bills'),(47,'Can delete bills',12,'delete_bills'),(48,'Can view bills',12,'view_bills'),(49,'Can add laundry',13,'add_laundry'),(50,'Can change laundry',13,'change_laundry'),(51,'Can delete laundry',13,'delete_laundry'),(52,'Can view laundry',13,'view_laundry'),(53,'Can add lost and found',14,'add_lostandfound'),(54,'Can change lost and found',14,'change_lostandfound'),(55,'Can delete lost and found',14,'delete_lostandfound'),(56,'Can view lost and found',14,'view_lostandfound'),(57,'Can add room',15,'add_room'),(58,'Can change room',15,'change_room'),(59,'Can delete room',15,'delete_room'),(60,'Can view room',15,'view_room'),(61,'Can add damage',16,'add_damage'),(62,'Can change damage',16,'change_damage'),(63,'Can delete damage',16,'delete_damage'),(64,'Can view damage',16,'view_damage'),(65,'Can add item',17,'add_item'),(66,'Can change item',17,'change_item'),(67,'Can delete item',17,'delete_item'),(68,'Can view item',17,'view_item'),(69,'Can add food order',18,'add_foodorder'),(70,'Can change food order',18,'change_foodorder'),(71,'Can delete food order',18,'delete_foodorder'),(72,'Can view food order',18,'view_foodorder'),(73,'Can add maintenance',19,'add_maintenance'),(74,'Can change maintenance',19,'change_maintenance'),(75,'Can delete maintenance',19,'delete_maintenance'),(76,'Can view maintenance',19,'view_maintenance'),(77,'Can add food type',20,'add_foodtype'),(78,'Can change food type',20,'change_foodtype'),(79,'Can delete food type',20,'delete_foodtype'),(80,'Can view food type',20,'view_foodtype'),(81,'Can add stock transaction',21,'add_stocktransaction'),(82,'Can change stock transaction',21,'change_stocktransaction'),(83,'Can delete stock transaction',21,'delete_stocktransaction'),(84,'Can view stock transaction',21,'view_stocktransaction'),(85,'Can add room type',22,'add_roomtype'),(86,'Can change room type',22,'change_roomtype'),(87,'Can delete room type',22,'delete_roomtype'),(88,'Can view room type',22,'view_roomtype'),(89,'Can add inventory type',23,'add_inventorytype'),(90,'Can change inventory type',23,'change_inventorytype'),(91,'Can delete inventory type',23,'delete_inventorytype'),(92,'Can view inventory type',23,'view_inventorytype'),(93,'Can add complain',24,'add_complain'),(94,'Can change complain',24,'change_complain'),(95,'Can delete complain',24,'delete_complain'),(96,'Can view complain',24,'view_complain'),(97,'Can add customer',25,'add_customer'),(98,'Can change customer',25,'change_customer'),(99,'Can delete customer',25,'delete_customer'),(100,'Can view customer',25,'view_customer'),(101,'Can add luggage storage',26,'add_luggagestorage'),(102,'Can change luggage storage',26,'change_luggagestorage'),(103,'Can delete luggage storage',26,'delete_luggagestorage'),(104,'Can view luggage storage',26,'view_luggagestorage'),(105,'Can add reservation',27,'add_reservation'),(106,'Can change reservation',27,'change_reservation'),(107,'Can delete reservation',27,'delete_reservation'),(108,'Can view reservation',27,'view_reservation'),(109,'Can add complimentary service',28,'add_complimentaryservice'),(110,'Can change complimentary service',28,'change_complimentaryservice'),(111,'Can delete complimentary service',28,'delete_complimentaryservice'),(112,'Can view complimentary service',28,'view_complimentaryservice'),(113,'Can add res cus',29,'add_rescus'),(114,'Can change res cus',29,'change_rescus'),(115,'Can delete res cus',29,'delete_rescus'),(116,'Can view res cus',29,'view_rescus'),(117,'Can add cust name',30,'add_custname'),(118,'Can change cust name',30,'change_custname'),(119,'Can delete cust name',30,'delete_custname'),(120,'Can view cust name',30,'view_custname'),(121,'Can add rm rt',31,'add_rmrt'),(122,'Can change rm rt',31,'change_rmrt'),(123,'Can delete rm rt',31,'delete_rmrt'),(124,'Can view rm rt',31,'view_rmrt'),(125,'Can add card no',32,'add_cardno'),(126,'Can change card no',32,'change_cardno'),(127,'Can delete card no',32,'delete_cardno'),(128,'Can view card no',32,'view_cardno'),(129,'Can add room bills',33,'add_roombills'),(130,'Can change room bills',33,'change_roombills'),(131,'Can delete room bills',33,'delete_roombills'),(132,'Can view room bills',33,'view_roombills'),(133,'Can add room_ receivables',34,'add_room_receivables'),(134,'Can change room_ receivables',34,'change_room_receivables'),(135,'Can delete room_ receivables',34,'delete_room_receivables'),(136,'Can view room_ receivables',34,'view_room_receivables'),(137,'Can add room_ payable',35,'add_room_payable'),(138,'Can change room_ payable',35,'change_room_payable'),(139,'Can delete room_ payable',35,'delete_room_payable'),(140,'Can view room_ payable',35,'view_room_payable'),(141,'Can add room_ payables',35,'add_room_payables'),(142,'Can change room_ payables',35,'change_room_payables'),(143,'Can delete room_ payables',35,'delete_room_payables'),(144,'Can view room_ payables',35,'view_room_payables'),(145,'Can add room type flow',36,'add_roomtypeflow'),(146,'Can change room type flow',36,'change_roomtypeflow'),(147,'Can delete room type flow',36,'delete_roomtypeflow'),(148,'Can view room type flow',36,'view_roomtypeflow'),(149,'Can add customer picture',37,'add_customerpicture'),(150,'Can change customer picture',37,'change_customerpicture'),(151,'Can delete customer picture',37,'delete_customerpicture'),(152,'Can view customer picture',37,'view_customerpicture'),(153,'Can add hotel_logo',38,'add_hotel_logo'),(154,'Can change hotel_logo',38,'change_hotel_logo'),(155,'Can delete hotel_logo',38,'delete_hotel_logo'),(156,'Can view hotel_logo',38,'view_hotel_logo'),(157,'Can add laundry cost',39,'add_laundrycost'),(158,'Can change laundry cost',39,'change_laundrycost'),(159,'Can delete laundry cost',39,'delete_laundrycost'),(160,'Can view laundry cost',39,'view_laundrycost'),(161,'Can add gl mapping',40,'add_glmapping'),(162,'Can change gl mapping',40,'change_glmapping'),(163,'Can delete gl mapping',40,'delete_glmapping'),(164,'Can view gl mapping',40,'view_glmapping'),(165,'Can add coa',41,'add_coa'),(166,'Can change coa',41,'change_coa'),(167,'Can delete coa',41,'delete_coa'),(168,'Can view coa',41,'view_coa'),(169,'Can add transaction table',42,'add_transactiontable'),(170,'Can change transaction table',42,'change_transactiontable'),(171,'Can delete transaction table',42,'delete_transactiontable'),(172,'Can view transaction table',42,'view_transactiontable'),(173,'Can add cost center',43,'add_costcenter'),(174,'Can change cost center',43,'change_costcenter'),(175,'Can delete cost center',43,'delete_costcenter'),(176,'Can view cost center',43,'view_costcenter'),(177,'Can add stock joint',44,'add_stockjoint'),(178,'Can change stock joint',44,'change_stockjoint'),(179,'Can delete stock joint',44,'delete_stockjoint'),(180,'Can view stock joint',44,'view_stockjoint'),(181,'Can add consierge',45,'add_consierge'),(182,'Can change consierge',45,'change_consierge'),(183,'Can delete consierge',45,'delete_consierge'),(184,'Can view consierge',45,'view_consierge'),(185,'Can add workflow template',46,'add_workflowtemplate'),(186,'Can change workflow template',46,'change_workflowtemplate'),(187,'Can delete workflow template',46,'delete_workflowtemplate'),(188,'Can view workflow template',46,'view_workflowtemplate'),(189,'Can add workflow template levels',47,'add_workflowtemplatelevels'),(190,'Can change workflow template levels',47,'change_workflowtemplatelevels'),(191,'Can delete workflow template levels',47,'delete_workflowtemplatelevels'),(192,'Can view workflow template levels',47,'view_workflowtemplatelevels'),(193,'Can add status',48,'add_status'),(194,'Can change status',48,'change_status'),(195,'Can delete status',48,'delete_status'),(196,'Can view status',48,'view_status'),(197,'Can add user profile',49,'add_userprofile'),(198,'Can change user profile',49,'change_userprofile'),(199,'Can delete user profile',49,'delete_userprofile'),(200,'Can view user profile',49,'view_userprofile'),(201,'Can add complain issue',50,'add_complainissue'),(202,'Can change complain issue',50,'change_complainissue'),(203,'Can delete complain issue',50,'delete_complainissue'),(204,'Can view complain issue',50,'view_complainissue'),(205,'Can add res cus card',51,'add_rescuscard'),(206,'Can change res cus card',51,'change_rescuscard'),(207,'Can delete res cus card',51,'delete_rescuscard'),(208,'Can view res cus card',51,'view_rescuscard'),(209,'Can add room transfer',52,'add_roomtransfer'),(210,'Can change room transfer',52,'change_roomtransfer'),(211,'Can delete room transfer',52,'delete_roomtransfer'),(212,'Can view room transfer',52,'view_roomtransfer'),(213,'Can add bill extra',53,'add_billextra'),(214,'Can change bill extra',53,'change_billextra'),(215,'Can delete bill extra',53,'delete_billextra'),(216,'Can view bill extra',53,'view_billextra'),(217,'Can add reset',54,'add_reset'),(218,'Can change reset',54,'change_reset'),(219,'Can delete reset',54,'delete_reset'),(220,'Can view reset',54,'view_reset'),(221,'Can add user token',55,'add_usertoken'),(222,'Can change user token',55,'change_usertoken'),(223,'Can delete user token',55,'delete_usertoken'),(224,'Can view user token',55,'view_usertoken'),(225,'Can add project',56,'add_project'),(226,'Can change project',56,'change_project'),(227,'Can delete project',56,'delete_project'),(228,'Can view project',56,'view_project'),(229,'Can add puchase order',57,'add_puchaseorder'),(230,'Can change puchase order',57,'change_puchaseorder'),(231,'Can delete puchase order',57,'delete_puchaseorder'),(232,'Can view puchase order',57,'view_puchaseorder'),(233,'Can add requested item',58,'add_requesteditem'),(234,'Can change requested item',58,'change_requesteditem'),(235,'Can delete requested item',58,'delete_requesteditem'),(236,'Can view requested item',58,'view_requesteditem'),(237,'Can add budget',59,'add_budget'),(238,'Can change budget',59,'change_budget'),(239,'Can delete budget',59,'delete_budget'),(240,'Can view budget',59,'view_budget'),(241,'Can add employee',60,'add_employee'),(242,'Can change employee',60,'change_employee'),(243,'Can delete employee',60,'delete_employee'),(244,'Can view employee',60,'view_employee'),(245,'Can add supplier',61,'add_supplier'),(246,'Can change supplier',61,'change_supplier'),(247,'Can delete supplier',61,'delete_supplier'),(248,'Can view supplier',61,'view_supplier'),(249,'Can add line type',62,'add_linetype'),(250,'Can change line type',62,'change_linetype'),(251,'Can delete line type',62,'delete_linetype'),(252,'Can view line type',62,'view_linetype'),(253,'Can add product details',63,'add_productdetails'),(254,'Can change product details',63,'change_productdetails'),(255,'Can delete product details',63,'delete_productdetails'),(256,'Can view product details',63,'view_productdetails'),(257,'Can add product raw',64,'add_productraw'),(258,'Can change product raw',64,'change_productraw'),(259,'Can delete product raw',64,'delete_productraw'),(260,'Can view product raw',64,'view_productraw'),(261,'Can add issue item',65,'add_issueitem'),(262,'Can change issue item',65,'change_issueitem'),(263,'Can delete issue item',65,'delete_issueitem'),(264,'Can view issue item',65,'view_issueitem'),(265,'Can add food category',66,'add_foodcategory'),(266,'Can change food category',66,'change_foodcategory'),(267,'Can delete food category',66,'delete_foodcategory'),(268,'Can view food category',66,'view_foodcategory'),(269,'Can add food picture',67,'add_foodpicture'),(270,'Can change food picture',67,'change_foodpicture'),(271,'Can delete food picture',67,'delete_foodpicture'),(272,'Can view food picture',67,'view_foodpicture'),(273,'Can add table',68,'add_table'),(274,'Can change table',68,'change_table'),(275,'Can delete table',68,'delete_table'),(276,'Can view table',68,'view_table'),(277,'Can add food pos order',69,'add_foodposorder'),(278,'Can change food pos order',69,'change_foodposorder'),(279,'Can delete food pos order',69,'delete_foodposorder'),(280,'Can view food pos order',69,'view_foodposorder');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication_company_master`
--

DROP TABLE IF EXISTS `authentication_company_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_company_master` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_name` varchar(2000) NOT NULL,
  `service_charge` int DEFAULT NULL,
  `tax` int DEFAULT NULL,
  `bat` varchar(50) DEFAULT NULL,
  `bin` varchar(50) DEFAULT NULL,
  `branch` varchar(25) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `company_address` varchar(100) DEFAULT NULL,
  `contact_person_name` varchar(50) DEFAULT NULL,
  `contact_person_phone` varchar(50) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `laundry_sc` int DEFAULT NULL,
  `laundry_tax` int DEFAULT NULL,
  `room_service_sc` int DEFAULT NULL,
  `room_service_tax` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_company_master`
--

LOCK TABLES `authentication_company_master` WRITE;
/*!40000 ALTER TABLE `authentication_company_master` DISABLE KEYS */;
INSERT INTO `authentication_company_master` VALUES (1,'Choice Club',10,15,'1212','1212','JFP','Dhaka','4/B, Block-A, Bashundhara, Dhaka','MR. X','01234567891','1212',5,5,4,4);
/*!40000 ALTER TABLE `authentication_company_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication_hotel_logo`
--

DROP TABLE IF EXISTS `authentication_hotel_logo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_hotel_logo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pic` varchar(100) DEFAULT NULL,
  `hotel_id_id` bigint DEFAULT NULL,
  `back01` varchar(100) DEFAULT NULL,
  `back02` varchar(100) DEFAULT NULL,
  `back03` varchar(100) DEFAULT NULL,
  `back04` varchar(100) DEFAULT NULL,
  `back05` varchar(100) DEFAULT NULL,
  `back06` varchar(100) DEFAULT NULL,
  `back07` varchar(100) DEFAULT NULL,
  `back08` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `authentication_hotel_hotel_id_id_50349ab8_fk_authentic` (`hotel_id_id`),
  CONSTRAINT `authentication_hotel_hotel_id_id_50349ab8_fk_authentic` FOREIGN KEY (`hotel_id_id`) REFERENCES `authentication_company_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_hotel_logo`
--

LOCK TABLES `authentication_hotel_logo` WRITE;
/*!40000 ALTER TABLE `authentication_hotel_logo` DISABLE KEYS */;
INSERT INTO `authentication_hotel_logo` VALUES (1,'a.png',1,'1Reseption-01_W4FkJkv.png','2Laundry-01_NdntEKf_Di5zPdZ.png','6Concierge-01_Xna7MnL.png','4Maintenence-01_QnwDieP.png','5Accounts_c1e4vNB.png','6Concierge-01_Xna7MnL_qmdzWJw.png','8Lost__Found-01_o3qWdaE.png','7Bell_boy-01_XUKNlQw.png');
/*!40000 ALTER TABLE `authentication_hotel_logo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication_reset`
--

DROP TABLE IF EXISTS `authentication_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_reset` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_reset`
--

LOCK TABLES `authentication_reset` WRITE;
/*!40000 ALTER TABLE `authentication_reset` DISABLE KEYS */;
/*!40000 ALTER TABLE `authentication_reset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication_role_master`
--

DROP TABLE IF EXISTS `authentication_role_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_role_master` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(2000) NOT NULL,
  `position` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_role_master`
--

LOCK TABLES `authentication_role_master` WRITE;
/*!40000 ALTER TABLE `authentication_role_master` DISABLE KEYS */;
INSERT INTO `authentication_role_master` VALUES (1,'FrontDesk','Front Desk Officer'),(2,'housekeeper','House Keeper'),(3,'admin','admin'),(4,'Bellboy','Bellboy'),(5,'RoomService','RoomService'),(6,'accounts','accounts'),(7,'Manager','Manager'),(8,'POS','pos');
/*!40000 ALTER TABLE `authentication_role_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication_user`
--

DROP TABLE IF EXISTS `authentication_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_email_verified` tinyint(1) NOT NULL,
  `is_expired` tinyint(1) NOT NULL,
  `expired_date` datetime(6) DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `company_id` bigint DEFAULT NULL,
  `is_manager` tinyint(1) NOT NULL,
  `limit_end` varchar(100) DEFAULT NULL,
  `limit_start` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `authentication_user_role_id_24664e00_fk_authentic` (`role_id`),
  KEY `authentication_user_company_id_a38f3939_fk_authentic` (`company_id`),
  CONSTRAINT `authentication_user_company_id_a38f3939_fk_authentic` FOREIGN KEY (`company_id`) REFERENCES `authentication_company_master` (`id`),
  CONSTRAINT `authentication_user_role_id_24664e00_fk_authentic` FOREIGN KEY (`role_id`) REFERENCES `authentication_role_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_user`
--

LOCK TABLES `authentication_user` WRITE;
/*!40000 ALTER TABLE `authentication_user` DISABLE KEYS */;
INSERT INTO `authentication_user` VALUES (2,'pbkdf2_sha256$260000$yfFvPfrao2Lx7q5nQCEvYU$qC6Afcg3RZr47eJ62HaGc8hK32gCNHiqqc5MeGHJois=','2023-05-08 06:54:05.124874',1,'admin','','','',1,1,'2022-02-07 09:45:48.000000',1,0,'2022-02-25 09:46:20.000000',3,'admin',1,0,NULL,NULL),(3,'pbkdf2_sha256$260000$xa4FVwIAhqzZwqtBwEWG4m$J/PhfMB3k83u2Wleumrr7FoMn9f3Rq69jh93iTiyHAE=','2022-08-22 09:12:25.433152',0,'frontdesk','','','farhan@gmail.com',0,1,'2022-02-10 08:42:07.000000',1,0,'2022-02-28 08:42:40.000000',1,'FrontDesk',1,0,NULL,NULL),(4,'pbkdf2_sha256$260000$2QSJMhXB9yQfV691MTBy1S$2GMLzv2nflun3OMxi/emfTN/Y5euMGYBRLIqwrsme/0=','2022-06-05 10:17:42.832144',0,'housekeeper','','','hk@gmail.com',0,1,'2022-02-13 07:50:23.000000',1,0,'2022-02-28 18:00:00.000000',2,'housekeeper',1,0,NULL,NULL),(5,'pbkdf2_sha256$260000$SNlOL0Abrl6C7fJYCFYOau$PYRBgpGeJB3WvJAE33sNVVxSLvdm4FRFfr+g7uD+xcw=','2022-04-25 06:19:39.230371',0,'roomservice','','','room@gmail.com',0,1,'2022-04-07 06:22:00.000000',1,0,'2022-04-07 06:23:01.000000',5,'RoomService',1,0,NULL,NULL),(6,'pbkdf2_sha256$260000$iLT1sGoTz5Bzg80M3sMUJz$5Z9BAhT/YtbYkbzD9ceLOF3dxcQr7f8toXqR4IQ0foU=','2022-05-12 05:11:01.820624',0,'bellboy','','','bellboy@gmail.com',0,1,'2022-04-07 06:46:11.000000',1,0,'2022-04-07 06:47:49.000000',4,NULL,1,0,NULL,NULL),(7,'pbkdf2_sha256$260000$otEP4boHeYU1bnVHCDpp4z$bpjM1ShoOKmUJNgwubfE21bEeESQi2yEAGAnfjR5xX4=','2022-05-22 10:32:22.852773',0,'accounts','','','accounts@gmail.com',0,1,'2022-04-07 06:46:40.000000',1,0,'2022-04-07 06:47:32.000000',6,NULL,1,0,NULL,NULL),(8,'pbkdf2_sha256$260000$Hc8LF20AzE7lnRKVdzKAUj$E0BTZYiUNxh8sPySVkk8BrS9Z6upUN7nPH3DcBVFKPI=','2022-04-25 06:27:59.133568',0,'manager','Jhon','Cena','manager@gmail.com',0,1,'2022-04-13 05:51:07.000000',1,0,'2022-04-13 05:56:41.000000',7,'Manager',1,1,'15000','0'),(9,'pbkdf2_sha256$260000$AMiqWUrPdhHiYAnkCSvbJA$v7gk6Aj3RevdkFqA0wLvce5N+J5qZltyWMdnl3udsPc=','2022-04-21 04:31:31.808534',0,'hod_accounts','Rohan','Hasan','hodaccounts@gmail.com',0,1,'2022-04-13 05:52:34.000000',1,0,'2022-04-13 05:55:15.000000',7,'HOD accounts',1,1,'50000','0'),(10,'pbkdf2_sha256$260000$kNN7K5hBj2pNv7eYHHEps9$QOdb+xIYsIcdj+6OemmnNeShN+mnhyADzRGi7c46lco=','2022-04-21 04:31:49.399100',0,'md','Sam','Khan','md@gmail.com',0,1,'2022-04-13 05:53:03.000000',1,0,'2022-04-13 05:54:32.000000',7,'Managing Director',1,1,'200000','0'),(11,'pbkdf2_sha256$260000$0ZwNTX5glUMJ0EcRmqXWuW$/1yVQREdFjYRPkfABFqgG+NCEYfMbVgruqS0m+hASoE=','2022-04-18 09:36:30.328993',0,'hod_finance','sam','jackson','fin@gmail.com',0,1,'2022-04-17 20:32:33.000000',1,0,'2022-04-17 20:33:41.000000',7,'HOD',1,1,NULL,NULL),(12,'pbkdf2_sha256$260000$xnqSc9hKHu2bLwpnDVGPUv$U4sNuBmNHU1g8p10y3b+fQg1SW17oHxgVIsyBRCcBqQ=',NULL,0,'pos','pos','pos','pos@gmail.com',0,1,'2023-05-08 06:54:38.957765',0,0,NULL,8,'POS',NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `authentication_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication_user_groups`
--

DROP TABLE IF EXISTS `authentication_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authentication_user_groups_user_id_group_id_8af031ac_uniq` (`user_id`,`group_id`),
  KEY `authentication_user_groups_group_id_6b5c44b7_fk_auth_group_id` (`group_id`),
  CONSTRAINT `authentication_user__user_id_30868577_fk_authentic` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`),
  CONSTRAINT `authentication_user_groups_group_id_6b5c44b7_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_user_groups`
--

LOCK TABLES `authentication_user_groups` WRITE;
/*!40000 ALTER TABLE `authentication_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `authentication_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication_user_user_permissions`
--

DROP TABLE IF EXISTS `authentication_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authentication_user_user_user_id_permission_id_ec51b09f_uniq` (`user_id`,`permission_id`),
  KEY `authentication_user__permission_id_ea6be19a_fk_auth_perm` (`permission_id`),
  CONSTRAINT `authentication_user__permission_id_ea6be19a_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `authentication_user__user_id_736ebf7e_fk_authentic` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_user_user_permissions`
--

LOCK TABLES `authentication_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `authentication_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `authentication_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication_usertoken`
--

DROP TABLE IF EXISTS `authentication_usertoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_usertoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `expired_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_usertoken`
--

LOCK TABLES `authentication_usertoken` WRITE;
/*!40000 ALTER TABLE `authentication_usertoken` DISABLE KEYS */;
INSERT INTO `authentication_usertoken` VALUES (2,7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE2NTUzNjI5NDEsImlhdCI6MTY1NTI3NjU0MX0.OiQLMCIGq5Q9BfIuQWYe4vWwzWjOlVauZ9__abvbanE','2022-06-15 07:02:21.860068','2022-06-16 01:02:21.860068'),(4,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2NTUzNjI5ODYsImlhdCI6MTY1NTI3NjU4Nn0.8ywIoQ_hxca35Cik85Q3a_A3jPzPHRI2OMRvGeSvpHg','2022-06-15 07:03:06.728014','2022-06-16 01:03:06.728014'),(5,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2NTUzNjY5MjUsImlhdCI6MTY1NTI4MDUyNX0.wMzAEv6QwsWtGoECbsS4oViPCC6nbSi_7yiMnd3Z5iw','2022-06-15 08:08:45.028737','2022-06-16 02:08:45.027737'),(6,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2NTUzNzI4MDIsImlhdCI6MTY1NTI4NjQwMn0.Zb93lGdMxk1POsxILLAgQq5XaP2yZGP5cA8tnZ9vpzU','2022-06-15 09:46:42.132792','2022-06-16 03:46:42.131833'),(7,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2NTUzNzU1NzUsImlhdCI6MTY1NTI4OTE3NX0.Wxx6DQa2jDIU2Hez94usewzvnDWvrboZzNwRj9vYbvo','2022-06-15 10:32:55.451079','2022-06-16 04:32:55.450079'),(9,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2NTU0MDgxNjAsImlhdCI6MTY1NTMyMTc2MH0.GxpbbjEMCfXkYfDDdnIcweYHR9kmii9b427VDtQ5r04','2022-06-15 19:36:00.604037','2022-06-16 13:36:00.603034'),(10,7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE2NTU0MDg1NDIsImlhdCI6MTY1NTMyMjE0Mn0.iio3hHdobZXtcKmk7nru1VqSfCbM6qaS2U7Sw9gwUK0','2022-06-15 19:42:22.165866','2022-06-16 13:42:22.164868'),(11,7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE2NTU0MTc2NzcsImlhdCI6MTY1NTMzMTI3N30.Xu0AEHephsnx_jOv2aHokZCkdYfgdmL5oeAJMgbk8AA','2022-06-15 22:14:37.020248','2022-06-16 16:14:37.020248'),(12,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2NTU0MTc2ODEsImlhdCI6MTY1NTMzMTI4MX0.xyz6rcM8Gh_lo6QxH-Z_4PgB7uzsKfdQGm7AeQzPMoc','2022-06-15 22:14:41.453356','2022-06-16 16:14:41.453356'),(13,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2NTU0MTc3MjYsImlhdCI6MTY1NTMzMTMyNn0.xGliZB2ZTk9ySAVk6unS7cDqhQIDwqqREqi03gy-zzY','2022-06-15 22:15:26.385200','2022-06-16 16:15:26.384202'),(14,7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE2NTU0MjQ5NzMsImlhdCI6MTY1NTMzODU3M30.HchJhxUkyOqU28t5NQjAZKzSwx3W2Ru9GBS704gHJxE','2022-06-16 00:16:13.062272','2022-06-16 18:16:13.062272'),(16,4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE2NTU0MjgzNzEsImlhdCI6MTY1NTM0MTk3MX0.o_dSo3RfwRvvlEE7elB-EK_jfP5Tu6slzrMs45epJpE','2022-06-16 01:12:51.291536','2022-06-16 19:12:51.291536'),(19,4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE2NTU0Mjk0NDMsImlhdCI6MTY1NTM0MzA0M30.etJ55GGV5qJYITTjxI2kPI-2qLqzGwHUAnLbveHPQVc','2022-06-16 01:30:43.762669','2022-06-16 19:30:43.762669'),(20,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2NTU0Mjk1OTAsImlhdCI6MTY1NTM0MzE5MH0.CUPxW06rE2Sb42lULinxDWvHYqFPs4pd4jFjoZUztTg','2022-06-16 01:33:10.685846','2022-06-16 19:33:10.685846'),(21,4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE2NTU0Mjk4ODYsImlhdCI6MTY1NTM0MzQ4Nn0.IVkd1oNsa6fravuv2EUMvoeWFv68gnWBspeGYUurHcs','2022-06-16 01:38:06.549546','2022-06-16 19:38:06.548543'),(22,5,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE2NTU0MzAxMTQsImlhdCI6MTY1NTM0MzcxNH0.FlpzOwdTfSbvjRf-mXwZgAgqjKrVuypVL1TMyGrSaI0','2022-06-16 01:41:54.868605','2022-06-16 19:41:54.868605'),(23,6,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2LCJleHAiOjE2NTU0MzAxNTAsImlhdCI6MTY1NTM0Mzc1MH0.9TK753V1rnb0eMMcpghinDl_uxY6uhfLMKRhnGH0IgU','2022-06-16 01:42:30.875284','2022-06-16 19:42:30.874286'),(24,7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE2NTU0MzAxOTksImlhdCI6MTY1NTM0Mzc5OX0.7ph7fNhnyfLR0bcFPXM4gt2b0roD5fbcoahV5lo68ww','2022-06-16 01:43:19.417388','2022-06-16 19:43:19.416390'),(26,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2NTU0MzAzNTgsImlhdCI6MTY1NTM0Mzk1OH0.iVl3nuDAaSFbVzrdew3mk8upZ98ykkd5F0bhh7248Nk','2022-06-16 01:45:58.060383','2022-06-16 19:45:58.060383'),(27,7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE2NTU0MzA5OTAsImlhdCI6MTY1NTM0NDU5MH0.27AdYfazaQXTEO0iJ7lp98IZeOyWeBr2hAibkZbdK5A','2022-06-16 01:56:30.900164','2022-06-16 19:56:30.900164'),(31,5,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE2NTU0NDAxMTYsImlhdCI6MTY1NTM1MzcxNn0.Q5la4hR_VBXllr5NIMegFWYbVIDtMZAqbQSpVey6IFY','2022-06-16 04:28:36.512775','2022-06-16 22:28:36.512775'),(32,4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE2NTU0NDAxNTQsImlhdCI6MTY1NTM1Mzc1NH0.MTMOuma9neJ2D7iNob8hNbLaHLT_N8AN81fzEj843mY','2022-06-16 04:29:14.978591','2022-06-16 22:29:14.978591'),(36,4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE2NTU0NDc3MzAsImlhdCI6MTY1NTM2MTMzMH0.njfK3lbz77CQkyu_-39MsB9ikjotbojG8l6FhNYjE9M','2022-06-16 06:35:30.734139','2022-06-17 00:35:30.734139'),(37,5,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE2NTU0NDkwMzEsImlhdCI6MTY1NTM2MjYzMX0.P7QQA3m71gwBAJQz5p1f3Ec7rfieIrDw6hwNes-z8Bc','2022-06-16 06:57:11.528111','2022-06-17 00:57:11.528111'),(38,4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE2NTU0NDkxMDEsImlhdCI6MTY1NTM2MjcwMX0.Sg0IuKqjz4BD8Se_s50V-9vNUVPhcUWKpBzRo3UwLB8','2022-06-16 06:58:21.043649','2022-06-17 00:58:21.043649'),(40,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2NTg5ODUzNjEsImlhdCI6MTY1ODg5ODk2MX0.SoBsUKfSwBUBoDqvZiFQW1D1_Q9uWmLfwIc-3dXjt1E','2022-07-27 05:16:01.538003','2022-07-27 23:16:01.538003'),(41,4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE2NTg5ODUzNjcsImlhdCI6MTY1ODg5ODk2N30.gWaf3n62cfABGCDaowDNlkHXe5h-HjBg5wWdxNOV2T4','2022-07-27 05:16:07.703058','2022-07-27 23:16:07.703058'),(43,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2NTg5ODYzOTEsImlhdCI6MTY1ODg5OTk5MX0.Zcb0Gq_RzbDi4HYmsXAzLEVxzdMS9wueS0kKLGO8Q-0','2022-07-27 05:33:11.404881','2022-07-27 23:33:11.404881'),(46,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2NjEyNDYwNjEsImlhdCI6MTY2MTE1OTY2MX0.EtnkkivMrL_HyTV5-0vlvUoFgNP47Q18hAwlVfnyK6w','2022-08-22 09:14:21.666678','2022-08-23 03:14:21.665642'),(47,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2NjEyNDYwNjMsImlhdCI6MTY2MTE1OTY2M30.6JQKfxe4plSjif_xjCVEjLIsrQLbgAzisZ8dBTbf_Ao','2022-08-22 09:14:23.021718','2022-08-23 03:14:23.021718'),(48,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2NjEyNDYwNjQsImlhdCI6MTY2MTE1OTY2NH0.HV0jmMeF4tXg1bZKIRf1oBAZ8FxqzXocLvBKfoCNLUc','2022-08-22 09:14:24.118783','2022-08-23 03:14:24.117785'),(49,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2NjEyNDY5NzEsImlhdCI6MTY2MTE2MDU3MX0.nDTtGx_vkZrb7zXk9rJ8V7OJt1z6li7dL4S79YAfii4','2022-08-22 09:29:31.690050','2022-08-23 03:29:31.690050'),(51,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2NjEyNDcyNzcsImlhdCI6MTY2MTE2MDg3N30.sYX8kAx-AA7y05vFK1-nVJbVIEXfU5QObw6BkDC6I5Y','2022-08-22 09:34:37.646591','2022-08-23 03:34:37.646591'),(53,4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE2NjEyNDc2OTQsImlhdCI6MTY2MTE2MTI5NH0.1roV9VV9lZQN7hfaViDG8JpVX1zNx7XOS65UIGSSC18','2022-08-22 09:41:34.181261','2022-08-23 03:41:34.181261'),(56,4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE2NjEyNDc5MDksImlhdCI6MTY2MTE2MTUwOX0.vOqbRrZzp_hP4VUzKRQL3OapXfRVRTXGDBMyZJ3rgJI','2022-08-22 09:45:09.561864','2022-08-23 03:45:09.560862'),(57,5,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE2NjEyNDc5NDcsImlhdCI6MTY2MTE2MTU0N30.LueKe2GV2DGUa7yf65uiW-krXxgopiqZdlh-OLr86Dc','2022-08-22 09:45:47.901509','2022-08-23 03:45:47.901509'),(58,6,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2LCJleHAiOjE2NjEyNDc5ODYsImlhdCI6MTY2MTE2MTU4Nn0.hxg-recMTsWHeT2ZBYfIOoHD67iltUk3Ao5n6sj69vk','2022-08-22 09:46:26.466627','2022-08-23 03:46:26.465616'),(59,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2NjEyNDgwMzgsImlhdCI6MTY2MTE2MTYzOH0.hP1KZ49e3DUlS8EtdkXMeCOAYcOVg2QAatrubIPA2Xw','2022-08-22 09:47:18.881839','2022-08-23 03:47:18.881839'),(61,7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE2NjEyNDgzODIsImlhdCI6MTY2MTE2MTk4Mn0.JPJmaqHnDsDQY_C-bA-Io-UM6EKkUpe1JIikWkL9zqY','2022-08-22 09:53:02.234010','2022-08-23 03:53:02.233011'),(63,7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE2NjEyNDg2MzMsImlhdCI6MTY2MTE2MjIzM30.OhXbPl4gkcLmwqxaLVp3ftz6oUt64ay_Bsg4O36JnUM','2022-08-22 09:57:13.366528','2022-08-23 03:57:13.366528'),(66,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2NjEyNDg3NjksImlhdCI6MTY2MTE2MjM2OX0.bxzm9oSyJQ49HP8bKQZBGtRnqTb7N0gsDVGFj3bkzBc','2022-08-22 09:59:29.382851','2022-08-23 03:59:29.382851'),(67,7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE2NjU2NTAzNDAsImlhdCI6MTY2NTU2Mzk0MH0.panvjhoCdWj5cAQhRdC-_IAoAZ0YAEnQjkObC-Abj0o','2022-10-12 08:39:00.668688','2022-10-13 02:39:00.667685'),(68,7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE2NjU3NDEwNDAsImlhdCI6MTY2NTY1NDY0MH0.UIiPl7UwKXBNDZVM4StDBBdnKl5ti6l1fE5dnbsGysM','2022-10-13 09:50:40.877915','2022-10-14 03:50:40.877915'),(70,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2NjU3NDEwODIsImlhdCI6MTY2NTY1NDY4Mn0.5NLI5fBD25OHnNtCmoslshJDQLCwhyssDn5_Q0H2g-E','2022-10-13 09:51:22.461359','2022-10-14 03:51:22.461359'),(72,7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE2NjU3NDI5OTAsImlhdCI6MTY2NTY1NjU5MH0.2qrhKWs4B2FlLkVb9A1m_Ro6F_29IwOACDhMV-CgUDU','2022-10-13 10:23:10.295670','2022-10-14 04:23:10.295670'),(73,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2NjU3NDM0NzYsImlhdCI6MTY2NTY1NzA3Nn0.qwyZuHqjDl5clbqZNSomfrPKVAaY9ica38_SjAzuLXI','2022-10-13 10:31:16.003081','2022-10-14 04:31:16.003081'),(74,7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE2NjU3NDM0ODAsImlhdCI6MTY2NTY1NzA4MH0.ORsURibHlxVkGk6un6b85ZgI0LDeqZdcW3WkzEMnVT0','2022-10-13 10:31:20.330459','2022-10-14 04:31:20.330459'),(76,4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE2NjU3NDQyNzAsImlhdCI6MTY2NTY1Nzg3MH0.seNIgkaxXW2j2junRU-mUfIGcjTBRKVKQEUMciKe7RM','2022-10-13 10:44:30.876279','2022-10-14 04:44:30.876279'),(77,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2NjU3NDUyODMsImlhdCI6MTY2NTY1ODg4M30.8gj5CNpd2Qu-1HzDDuVXpxn3CYEh4WhMq14BVCsugDE','2022-10-13 11:01:23.515537','2022-10-14 05:01:23.515537'),(78,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2NjU3NDU0MzcsImlhdCI6MTY2NTY1OTAzN30.R6OFHc9iCnF2gLzqbr7xF1PvbfzJAMGQ5s_k-NUuFBs','2022-10-13 11:03:57.548541','2022-10-14 05:03:57.548541'),(79,7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE2NjU3NDU1MDcsImlhdCI6MTY2NTY1OTEwN30.AlKBvHV7yFQ1z_qw7npAG4BI-ryOAtqno3nx8CSsRi4','2022-10-13 11:05:07.927822','2022-10-14 05:05:07.927822'),(82,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2NjYwNjY3NzYsImlhdCI6MTY2NTk4MDM3Nn0.MdFKQLuOWoBqSYWVRsuoLvdG0zlfaLs6idG0sYFiOpo','2022-10-17 04:19:36.577928','2022-10-17 22:19:36.576983'),(84,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2NjYwNjcxMjAsImlhdCI6MTY2NTk4MDcyMH0.EKbK4kwSpquKdB_9VDdh6lvpsKCMGdNHKbSEQmgQP9g','2022-10-17 04:25:20.291516','2022-10-17 22:25:20.291516'),(85,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2NjYwNjc4MjgsImlhdCI6MTY2NTk4MTQyOH0.Qr7QhC0g8P-2g4d5K4QFJwtsOdICLXCxjIvZ3SDqI9Q','2022-10-17 04:37:08.759832','2022-10-17 22:37:08.759832'),(86,7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE2NjYxNzEyNDAsImlhdCI6MTY2NjA4NDg0MH0.q9pq0QS3jcdlVX_i7sxvyYGhnpdhr_yNXLX5nj8MtR4','2022-10-18 09:20:40.657193','2022-10-19 03:20:40.656196'),(87,5,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE2NjYxNzEzMTAsImlhdCI6MTY2NjA4NDkxMH0.sICi8d7dVW0GdFLhGmXialOmw0DqcfSQ3w4YfuRI47U','2022-10-18 09:21:50.076899','2022-10-19 03:21:50.076899'),(88,5,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE2NjYxNzEzMTAsImlhdCI6MTY2NjA4NDkxMH0.sICi8d7dVW0GdFLhGmXialOmw0DqcfSQ3w4YfuRI47U','2022-10-18 09:21:50.436899','2022-10-19 03:21:50.436899'),(90,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2NjYyNTY1NjEsImlhdCI6MTY2NjE3MDE2MX0.I6Xx0u-UIP02cw8PuIrhI4HOMSZOmwUi_aycW2BvRJ4','2022-10-19 09:02:41.105029','2022-10-20 03:02:41.105029'),(91,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2NjkwMDUxNjYsImlhdCI6MTY2ODkxODc2Nn0.qLBHDZ9ZMqKZHM-DxlqBKXXc_u20-U18nRLwHUwgjEg','2022-11-20 04:32:46.395107','2022-11-20 22:32:46.395107'),(93,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2NzYzNzgyOTMsImlhdCI6MTY3NjI5MTg5M30.b666XzsYJdJu3CBCG2iBHQzeBMhqahxm4cp6fZ-hhkI','2023-02-13 12:38:13.515010','2023-02-14 06:38:13.515010'),(94,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2NzYzNzg0NTMsImlhdCI6MTY3NjI5MjA1M30.wNkAZzABTFmGryPVDgRvlVsBH0qqgHpapWVzPmUtnmI','2023-02-13 12:40:53.894939','2023-02-14 06:40:53.894939'),(95,4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE2NzYzNzg1MDcsImlhdCI6MTY3NjI5MjEwN30.dGzNTcTrgFLtQ4nIvtJEhf3sTaej3hMMnhHU0wUmdoM','2023-02-13 12:41:47.103135','2023-02-14 06:41:47.103135'),(96,5,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE2NzYzNzg1NzgsImlhdCI6MTY3NjI5MjE3OH0.YztJwsTSLDY9SHYz-cplTmcqR3G7e7nw6PQ7QmoBb9Q','2023-02-13 12:42:58.475041','2023-02-14 06:42:58.475041'),(99,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2NzYzNzg2NDEsImlhdCI6MTY3NjI5MjI0MX0.06SbwXsUL39esxv1XwlDe-qv9jyKjG7dwHQfMitW_Jo','2023-02-13 12:44:01.767783','2023-02-14 06:44:01.767783'),(100,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2Nzg2OTk0ODksImlhdCI6MTY3ODYxMzA4OX0.Yp2Wsgr1gnpIgD6rwz0TUkbW4VC9GwZeVRNti-fQRzE','2023-03-12 09:24:49.899162','2023-03-13 03:24:49.898168'),(101,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2Nzg3ODc1NzYsImlhdCI6MTY3ODcwMTE3Nn0.XC1y1lgHMbiqddc_9cS6eZGQ9ngkLjaaMSJ4lCbIXKg','2023-03-13 09:52:56.331522','2023-03-14 03:52:56.331522'),(102,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2Nzg3ODg5NTEsImlhdCI6MTY3ODcwMjU1MX0.TL33_e-YPG3e-7zb0gzq9kWR3zCiqwavj7nhyEPBteE','2023-03-13 10:15:51.907776','2023-03-14 04:15:51.907776'),(103,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2Nzg4NTU0NDMsImlhdCI6MTY3ODc2OTA0M30.AiCaGfv6t5Zji54mig11ilt-HONWao1dg7H5rRBI0vk','2023-03-14 04:44:03.035083','2023-03-14 22:44:03.034085'),(104,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2Nzg4NTU0NDUsImlhdCI6MTY3ODc2OTA0NX0._yzWPhbn7G3tLEPYLJsbmO_34Qs5zgNVQFg6WpKSzr8','2023-03-14 04:44:05.569000','2023-03-14 22:44:05.569000'),(107,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2Nzg5NDgxMDgsImlhdCI6MTY3ODg2MTcwOH0.kZc28iwYosNJVEYPWHXiU8uyluNDxjGDearo6JyhcEg','2023-03-15 06:28:28.628584','2023-03-16 00:28:28.628584'),(108,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2Nzg5NDk5MTgsImlhdCI6MTY3ODg2MzUxOH0.-bgXt4F9woZWEFyQTFfNTJCA0lkg2thASKGljTN9TdI','2023-03-15 06:58:38.543951','2023-03-16 00:58:38.543951'),(110,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2NzkwMzY0NDEsImlhdCI6MTY3ODk1MDA0MX0.uKHJCovQ2fJaWmIBAovnk9jIOX47PoMLrwBY4LVVja0','2023-03-16 07:00:41.287683','2023-03-17 01:00:41.287683'),(111,8,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo4LCJleHAiOjE2NzkwMzY1NDEsImlhdCI6MTY3ODk1MDE0MX0.T6liord1nIzcVeRZT4ePylqiU3dv8e4rkABHgX5tphE','2023-03-16 07:02:21.711979','2023-03-17 01:02:21.696360'),(112,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2Nzk0NTkyNzYsImlhdCI6MTY3OTM3Mjg3Nn0.zp8W9nGqyJJl1hYIHnkqyGHlwUq81SwGWkMa0xueDOA','2023-03-21 04:27:56.855572','2023-03-21 22:27:56.855572'),(114,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2Nzk5OTMyMjAsImlhdCI6MTY3OTkwNjgyMH0.OlZYN2PDYTicO6ZUk4gVW0TelCypkx26Bk--Z5E3yew','2023-03-27 08:47:00.211220','2023-03-28 02:47:00.211220'),(115,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2ODAxNDk1NDYsImlhdCI6MTY4MDA2MzE0Nn0.PvfrOrMFnntYZLV14tVoQt3bE__OXRFpIsZTwv7wWKc','2023-03-29 04:12:26.523973','2023-03-29 22:12:26.523973'),(119,12,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxMiwiZXhwIjoxNjgzNjE1MzcxLCJpYXQiOjE2ODM1Mjg5NzF9.F5Xb7xS5Fs4A9MMWKfqhFExeakDb0N4WK1jToN8xDqs','2023-05-08 06:56:11.751845','2023-05-09 00:56:11.751845'),(121,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2ODM3ODUyNzcsImlhdCI6MTY4MzY5ODg3N30.f5Q_oGR_uu7P8aXVxEP_Ds92EUt9xCQWvMfX3LsZirU','2023-05-10 06:07:57.214826','2023-05-11 00:07:57.214826'),(122,4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE2ODM3ODU0MDYsImlhdCI6MTY4MzY5OTAwNn0.EFenLpnRTNE59qQ_T8yry40qGXKkokt93G6Ry_MmS_o','2023-05-10 06:10:06.225748','2023-05-11 00:10:06.225748'),(125,12,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxMiwiZXhwIjoxNjgzNzkxMTE1LCJpYXQiOjE2ODM3MDQ3MTV9.YMYfqZiBAPI6E484S1OW7zIhtFU1k741xRgi8XYG8SA','2023-05-10 07:45:15.377848','2023-05-11 01:45:15.377848'),(126,12,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxMiwiZXhwIjoxNjgzNzkxMTE1LCJpYXQiOjE2ODM3MDQ3MTV9.YMYfqZiBAPI6E484S1OW7zIhtFU1k741xRgi8XYG8SA','2023-05-10 07:45:15.429449','2023-05-11 01:45:15.428450'),(127,2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE2ODM4MDExNTAsImlhdCI6MTY4MzcxNDc1MH0.btF04xE6MGo8t-dP1kgUw6pfUqdnBhMgeFTrkRLF16w','2023-05-10 10:32:30.653625','2023-05-11 04:32:30.652628'),(129,5,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1LCJleHAiOjE2ODM4NjUwNjMsImlhdCI6MTY4Mzc3ODY2M30.bsKps5GQh6tFNICfWUhLAn62frt89YguoxuPBMCN2dY','2023-05-11 04:17:43.986617','2023-05-11 22:17:43.986617'),(130,12,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxMiwiZXhwIjoxNjgzODY1MzI4LCJpYXQiOjE2ODM3Nzg5Mjh9.cI_ls-oKCa5g42tTB_-f0lLjvK0wMiVUpl0CZ2Mg_SM','2023-05-11 04:22:08.011254','2023-05-11 22:22:08.011254'),(134,12,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxMiwiZXhwIjoxNjgzODY1NjI2LCJpYXQiOjE2ODM3NzkyMjZ9.G2eugLjZc6SokCwnAlwfNqiLcxidEdipX2pEy0V7WOM','2023-05-11 04:27:06.290680','2023-05-11 22:27:06.290680'),(135,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2ODM4NzM0NjgsImlhdCI6MTY4Mzc4NzA2OH0.5CTNxPPbi3csoFjXVO_WiMoKcSLHmiNZrXYeBKHNP2A','2023-05-11 06:37:48.105740','2023-05-12 00:37:48.105740'),(137,12,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxMiwiZXhwIjoxNjgzODc1Mjk0LCJpYXQiOjE2ODM3ODg4OTR9.Pl5bSDuq1xP81dAoB1lpTpLOw5eTwQhDRIOfBpcJ6lE','2023-05-11 07:08:14.496095','2023-05-12 01:08:14.496095'),(139,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2ODM4ODYyOTQsImlhdCI6MTY4Mzc5OTg5NH0.yDjpICojIfz1nQRJWW5EuLsKp-fImtMxUvIyIG5Ms_c','2023-05-11 10:11:34.263812','2023-05-12 04:11:34.263812'),(142,7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE2ODM4ODg0MDMsImlhdCI6MTY4MzgwMjAwM30.hJj9OSC22fSFrpCGkPcHIKDDd3luImqs_1vBOAdO7v4','2023-05-11 10:46:43.494578','2023-05-12 04:46:43.494578'),(144,12,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxMiwiZXhwIjoxNjgzODg4NTUzLCJpYXQiOjE2ODM4MDIxNTN9.ilrPSnYiBQdj6kjklFBKTcNl_RPkqJsBvWUa7VO3MKk','2023-05-11 10:49:13.995118','2023-05-12 04:49:13.995118'),(145,7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE2ODQxMjM3NDIsImlhdCI6MTY4NDAzNzM0Mn0.b7xw61dQt_LB_Oe-nrthmLF-Ou_JiimgT1BEJUWdtsc','2023-05-14 04:09:02.347230','2023-05-14 22:09:02.346233'),(146,7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo3LCJleHAiOjE2ODQxMjM3NDQsImlhdCI6MTY4NDAzNzM0NH0.tVH3Oxr6iYHp1WWP6pBk6ssV6Q2DeNHEEADADsr9bWc','2023-05-14 04:09:04.210091','2023-05-14 22:09:04.194430'),(147,12,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxMiwiZXhwIjoxNjg0MTI1NDg2LCJpYXQiOjE2ODQwMzkwODZ9.HOdmkHz5OSCM_8W-bmRLgd-bWVTlrGzjGNbFXm_LO0M','2023-05-14 04:38:06.757236','2023-05-14 22:38:06.757236'),(148,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2ODQxMjg1MTYsImlhdCI6MTY4NDA0MjExNn0.zeVFmLW-6cuSPns_sovzD-uxOcqFx7aHEWPvBoVjW3Y','2023-05-14 05:28:36.242334','2023-05-14 23:28:36.242334'),(150,3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozLCJleHAiOjE2ODQxMzI2MzIsImlhdCI6MTY4NDA0NjIzMn0.E1rb5PhTP8EV4lRJf52gfIMN0gQc3-yWw84iTQS20Wk','2023-05-14 06:37:12.328599','2023-05-15 00:37:12.328599'),(153,12,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxMiwiZXhwIjoxNjg0MzAyMzczLCJpYXQiOjE2ODQyMTU5NzN9.XDeDe494vkn_3ANhVrCN-SvFuQm99axRYZrlaFiHZUI','2023-05-16 05:46:13.057697','2023-05-16 23:46:13.057697');
/*!40000 ALTER TABLE `authentication_usertoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_authentication_user_id` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_authentication_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_authentication_user_id` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=430 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-02-07 09:46:23.360907','2','',2,'[{\"changed\": {\"fields\": [\"Is email verified\", \"Expired date\"]}}]',8,2),(2,'2022-02-07 09:47:14.926441','1','lord@gmail.com',2,'[{\"changed\": {\"fields\": [\"Is email verified\", \"Expired date\"]}}]',8,2),(3,'2022-02-10 07:11:55.370939','1','FrontDesk',1,'[{\"added\": {}}]',7,2),(4,'2022-02-10 07:11:56.772378','1','FrontDesk',2,'[]',7,2),(5,'2022-02-10 07:12:15.198525','1','lord@gmail.com',2,'[{\"changed\": {\"fields\": [\"Role\"]}}]',8,2),(6,'2022-02-10 08:42:46.212047','3','farhan@gmail.com',2,'[{\"changed\": {\"fields\": [\"Is email verified\", \"Expired date\", \"Role\"]}}]',8,2),(7,'2022-02-13 07:51:30.671200','2','housekeeper',1,'[{\"added\": {}}]',7,2),(8,'2022-02-13 07:51:52.993783','4','hk@gmail.com',2,'[{\"changed\": {\"fields\": [\"Is email verified\", \"Expired date\", \"Role\"]}}]',8,2),(9,'2022-02-15 06:33:01.075892','3','farhan@gmail.com',2,'[{\"changed\": {\"fields\": [\"Position\"]}}]',8,2),(10,'2022-02-15 06:33:59.671501','3','admin',1,'[{\"added\": {}}]',7,2),(11,'2022-02-15 06:34:10.431776','2','',2,'[{\"changed\": {\"fields\": [\"Role\", \"Position\"]}}]',8,2),(12,'2022-02-15 06:34:19.402722','4','hk@gmail.com',2,'[{\"changed\": {\"fields\": [\"Position\"]}}]',8,2),(13,'2022-02-16 07:03:02.225602','Single','Single',1,'[{\"added\": {}}]',22,2),(14,'2022-02-16 07:03:21.709239','Double','Double',1,'[{\"added\": {}}]',22,2),(15,'2022-02-16 07:03:55.693623','Delux','Delux',1,'[{\"added\": {}}]',22,2),(16,'2022-02-16 08:23:10.486123','101','101',1,'[{\"added\": {}}]',15,2),(17,'2022-02-16 08:23:58.822700','102','102',1,'[{\"added\": {}}]',15,2),(18,'2022-02-16 08:24:30.437700','103','103',1,'[{\"added\": {}}]',15,2),(19,'2022-02-16 08:24:53.156465','104','104',1,'[{\"added\": {}}]',15,2),(20,'2022-02-16 08:29:42.369575','105','105',1,'[{\"added\": {}}]',15,2),(21,'2022-02-16 08:37:03.791617','106','106',1,'[{\"added\": {}}]',15,2),(22,'2022-02-16 08:37:26.604479','107','107',1,'[{\"added\": {}}]',15,2),(23,'2022-02-16 08:37:50.685075','108','108',1,'[{\"added\": {}}]',15,2),(24,'2022-02-16 08:38:06.595344','109','109',1,'[{\"added\": {}}]',15,2),(25,'2022-02-16 08:38:31.291190','110','110',1,'[{\"added\": {}}]',15,2),(26,'2022-03-15 06:04:50.417619','28','Kamal',3,'',25,2),(27,'2022-03-15 06:04:50.419823','25','Kamal',3,'',25,2),(28,'2022-03-15 06:04:50.421246','24','Kamal',3,'',25,2),(29,'2022-03-15 06:04:50.422493','23','S',3,'',25,2),(30,'2022-03-15 06:04:50.423500','22','SPD',3,'',25,2),(31,'2022-03-15 06:04:50.424435','21','khan',3,'',25,2),(32,'2022-03-15 06:04:50.425270','20','Ron',3,'',25,2),(33,'2022-03-15 06:04:50.426039','19','Samin',3,'',25,2),(34,'2022-03-15 06:04:50.426905','18','khan',3,'',25,2),(35,'2022-03-15 06:04:50.427731','17','khan',3,'',25,2),(36,'2022-03-15 06:04:50.428484','16','khan',3,'',25,2),(37,'2022-03-15 06:04:50.429325','15','khan',3,'',25,2),(38,'2022-03-15 06:04:50.430023','14','Spd',3,'',25,2),(39,'2022-03-15 06:04:50.430742','9','Stone',3,'',25,2),(40,'2022-03-15 06:04:50.431595','8','Hasan',3,'',25,2),(41,'2022-03-15 06:04:50.433267','7','Jackson',3,'',25,2),(42,'2022-03-15 06:04:50.434385','6','Spondon',3,'',25,2),(43,'2022-03-15 06:04:50.435189','5','Kabir',3,'',25,2),(44,'2022-03-15 06:04:50.436045','4','Rahman',3,'',25,2),(45,'2022-03-15 06:06:20.125671','37','37',3,'',12,2),(46,'2022-03-15 06:06:20.129010','36','36',3,'',12,2),(47,'2022-03-15 06:06:20.130585','35','35',3,'',12,2),(48,'2022-03-15 06:06:20.131843','34','34',3,'',12,2),(49,'2022-03-15 06:06:20.133124','33','33',3,'',12,2),(50,'2022-03-15 06:06:20.134986','32','32',3,'',12,2),(51,'2022-03-15 06:06:20.136309','31','31',3,'',12,2),(52,'2022-03-15 06:06:20.137202','30','30',3,'',12,2),(53,'2022-03-15 06:06:20.138252','29','29',3,'',12,2),(54,'2022-03-15 06:06:20.139091','28','28',3,'',12,2),(55,'2022-03-15 06:06:20.139950','27','27',3,'',12,2),(56,'2022-03-15 06:06:20.140859','26','26',3,'',12,2),(57,'2022-03-15 06:06:20.141675','25','25',3,'',12,2),(58,'2022-03-15 06:06:20.142640','24','24',3,'',12,2),(59,'2022-03-15 06:06:20.143485','23','23',3,'',12,2),(60,'2022-03-15 06:06:20.144361','15','15',3,'',12,2),(61,'2022-03-15 06:06:20.145182','14','14',3,'',12,2),(62,'2022-03-15 06:06:20.146269','13','13',3,'',12,2),(63,'2022-03-15 06:06:20.147531','12','12',3,'',12,2),(64,'2022-03-15 06:06:20.148949','11','11',3,'',12,2),(65,'2022-03-15 06:06:20.150643','10','10',3,'',12,2),(66,'2022-03-15 06:06:20.151868','9','9',3,'',12,2),(67,'2022-03-15 06:06:20.152710','8','8',3,'',12,2),(68,'2022-03-15 06:06:20.153508','7','7',3,'',12,2),(69,'2022-03-15 06:06:57.302627','8','8',3,'',33,2),(70,'2022-03-15 06:06:57.304828','7','7',3,'',33,2),(71,'2022-03-15 06:06:57.305978','6','6',3,'',33,2),(72,'2022-03-15 06:06:57.306934','5','5',3,'',33,2),(73,'2022-03-15 06:06:57.307830','4','4',3,'',33,2),(74,'2022-03-15 06:06:57.308761','3','3',3,'',33,2),(75,'2022-03-15 06:06:57.309679','2','2',3,'',33,2),(76,'2022-03-15 06:06:57.310542','1','1',3,'',33,2),(77,'2022-03-21 04:58:17.255052','1','TechTrioz',1,'[{\"added\": {}}]',6,2),(78,'2022-03-21 06:24:02.168456','3','farhan@gmail.com',2,'[{\"changed\": {\"fields\": [\"Company\"]}}]',8,2),(79,'2022-03-24 01:48:20.957035','3','farhan@gmail.com',2,'[]',8,2),(80,'2022-04-07 06:05:52.728250','6','6',3,'',11,2),(81,'2022-04-07 06:06:11.602676','139','139',3,'',12,2),(82,'2022-04-07 06:06:11.604279','138','138',3,'',12,2),(83,'2022-04-07 06:06:11.605808','137','137',3,'',12,2),(84,'2022-04-07 06:06:11.607083','136','136',3,'',12,2),(85,'2022-04-07 06:06:11.608285','135','135',3,'',12,2),(86,'2022-04-07 06:06:11.609221','134','134',3,'',12,2),(87,'2022-04-07 06:06:11.610729','133','133',3,'',12,2),(88,'2022-04-07 06:06:11.611756','132','132',3,'',12,2),(89,'2022-04-07 06:06:11.612587','131','131',3,'',12,2),(90,'2022-04-07 06:06:11.613435','130','130',3,'',12,2),(91,'2022-04-07 06:06:11.614452','129','129',3,'',12,2),(92,'2022-04-07 06:06:11.615210','128','128',3,'',12,2),(93,'2022-04-07 06:06:11.616068','127','127',3,'',12,2),(94,'2022-04-07 06:06:11.616881','126','126',3,'',12,2),(95,'2022-04-07 06:06:11.617624','125','125',3,'',12,2),(96,'2022-04-07 06:06:11.618455','124','124',3,'',12,2),(97,'2022-04-07 06:06:11.619295','123','123',3,'',12,2),(98,'2022-04-07 06:06:11.620037','122','122',3,'',12,2),(99,'2022-04-07 06:06:11.620810','121','121',3,'',12,2),(100,'2022-04-07 06:06:11.621578','120','120',3,'',12,2),(101,'2022-04-07 06:06:11.622369','119','119',3,'',12,2),(102,'2022-04-07 06:06:11.623062','118','118',3,'',12,2),(103,'2022-04-07 06:06:11.623758','117','117',3,'',12,2),(104,'2022-04-07 06:06:11.624466','116','116',3,'',12,2),(105,'2022-04-07 06:06:11.625244','115','115',3,'',12,2),(106,'2022-04-07 06:06:11.625922','114','114',3,'',12,2),(107,'2022-04-07 06:06:11.626630','113','113',3,'',12,2),(108,'2022-04-07 06:06:11.627364','112','112',3,'',12,2),(109,'2022-04-07 06:06:11.627998','111','111',3,'',12,2),(110,'2022-04-07 06:06:11.628766','110','110',3,'',12,2),(111,'2022-04-07 06:06:11.630111','109','109',3,'',12,2),(112,'2022-04-07 06:06:11.631113','108','108',3,'',12,2),(113,'2022-04-07 06:06:11.632121','107','107',3,'',12,2),(114,'2022-04-07 06:06:11.632920','106','106',3,'',12,2),(115,'2022-04-07 06:06:11.633596','105','105',3,'',12,2),(116,'2022-04-07 06:06:11.634372','104','104',3,'',12,2),(117,'2022-04-07 06:06:11.635078','103','103',3,'',12,2),(118,'2022-04-07 06:06:11.635779','102','102',3,'',12,2),(119,'2022-04-07 06:06:11.636510','101','101',3,'',12,2),(120,'2022-04-07 06:06:11.637150','100','100',3,'',12,2),(121,'2022-04-07 06:06:11.637835','99','99',3,'',12,2),(122,'2022-04-07 06:06:11.638563','98','98',3,'',12,2),(123,'2022-04-07 06:06:11.639192','97','97',3,'',12,2),(124,'2022-04-07 06:06:11.639815','96','96',3,'',12,2),(125,'2022-04-07 06:06:11.640558','95','95',3,'',12,2),(126,'2022-04-07 06:06:11.641305','94','94',3,'',12,2),(127,'2022-04-07 06:06:11.641927','93','93',3,'',12,2),(128,'2022-04-07 06:06:11.642660','92','92',3,'',12,2),(129,'2022-04-07 06:06:11.643370','91','91',3,'',12,2),(130,'2022-04-07 06:06:11.644014','90','90',3,'',12,2),(131,'2022-04-07 06:06:11.644740','89','89',3,'',12,2),(132,'2022-04-07 06:06:11.645521','88','88',3,'',12,2),(133,'2022-04-07 06:06:11.646362','87','87',3,'',12,2),(134,'2022-04-07 06:06:11.647087','86','86',3,'',12,2),(135,'2022-04-07 06:06:11.647792','85','85',3,'',12,2),(136,'2022-04-07 06:06:11.648635','84','84',3,'',12,2),(137,'2022-04-07 06:06:11.649317','83','83',3,'',12,2),(138,'2022-04-07 06:06:11.650083','82','82',3,'',12,2),(139,'2022-04-07 06:06:11.650780','81','81',3,'',12,2),(140,'2022-04-07 06:06:11.651509','80','80',3,'',12,2),(141,'2022-04-07 06:06:11.652256','79','79',3,'',12,2),(142,'2022-04-07 06:06:11.652975','78','78',3,'',12,2),(143,'2022-04-07 06:06:11.653742','77','77',3,'',12,2),(144,'2022-04-07 06:06:11.654488','76','76',3,'',12,2),(145,'2022-04-07 06:06:11.655194','75','75',3,'',12,2),(146,'2022-04-07 06:06:11.655900','74','74',3,'',12,2),(147,'2022-04-07 06:06:11.656600','73','73',3,'',12,2),(148,'2022-04-07 06:06:11.657329','72','72',3,'',12,2),(149,'2022-04-07 06:06:11.658038','71','71',3,'',12,2),(150,'2022-04-07 06:06:11.658801','70','70',3,'',12,2),(151,'2022-04-07 06:06:11.659818','69','69',3,'',12,2),(152,'2022-04-07 06:06:11.660544','68','68',3,'',12,2),(153,'2022-04-07 06:06:11.661377','64','64',3,'',12,2),(154,'2022-04-07 06:06:11.662195','63','63',3,'',12,2),(155,'2022-04-07 06:06:11.663030','62','62',3,'',12,2),(156,'2022-04-07 06:06:11.663641','61','61',3,'',12,2),(157,'2022-04-07 06:06:11.664370','60','60',3,'',12,2),(158,'2022-04-07 06:06:11.665115','59','59',3,'',12,2),(159,'2022-04-07 06:06:11.665823','58','58',3,'',12,2),(160,'2022-04-07 06:06:11.666518','57','57',3,'',12,2),(161,'2022-04-07 06:06:11.667224','56','56',3,'',12,2),(162,'2022-04-07 06:06:11.667897','55','55',3,'',12,2),(163,'2022-04-07 06:06:11.669113','54','54',3,'',12,2),(164,'2022-04-07 06:06:11.670219','53','53',3,'',12,2),(165,'2022-04-07 06:06:11.670969','52','52',3,'',12,2),(166,'2022-04-07 06:06:11.671681','51','51',3,'',12,2),(167,'2022-04-07 06:06:11.672392','50','50',3,'',12,2),(168,'2022-04-07 06:06:11.673085','49','49',3,'',12,2),(169,'2022-04-07 06:06:11.673906','48','48',3,'',12,2),(170,'2022-04-07 06:06:11.674697','47','47',3,'',12,2),(171,'2022-04-07 06:06:11.675458','46','46',3,'',12,2),(172,'2022-04-07 06:06:11.676155','45','45',3,'',12,2),(173,'2022-04-07 06:06:11.676842','44','44',3,'',12,2),(174,'2022-04-07 06:06:11.677526','43','43',3,'',12,2),(175,'2022-04-07 06:06:11.678209','42','42',3,'',12,2),(176,'2022-04-07 06:06:11.678879','41','41',3,'',12,2),(177,'2022-04-07 06:06:11.679607','40','40',3,'',12,2),(178,'2022-04-07 06:06:11.680308','39','39',3,'',12,2),(179,'2022-04-07 06:06:11.681148','38','38',3,'',12,2),(180,'2022-04-07 06:08:50.896736','11400202','11400202',3,'',32,2),(181,'2022-04-07 06:08:50.899743','11400186','11400186',3,'',32,2),(182,'2022-04-07 06:08:50.901276','11400080','11400080',3,'',32,2),(183,'2022-04-07 06:08:50.902510','11300206','11300206',3,'',32,2),(184,'2022-04-07 06:08:50.903873','11300205','11300205',3,'',32,2),(185,'2022-04-07 06:08:50.904908','11300204','11300204',3,'',32,2),(186,'2022-04-07 06:08:50.906168','11300203','11300203',3,'',32,2),(187,'2022-04-07 06:08:50.907145','10700094','10700094',3,'',32,2),(188,'2022-04-07 06:08:50.908014','10500060','10500060',3,'',32,2),(189,'2022-04-07 06:08:50.908789','10400188','10400188',3,'',32,2),(190,'2022-04-07 06:08:50.909541','10300208','10300208',3,'',32,2),(191,'2022-04-07 06:08:50.910324','10300101','10300101',3,'',32,2),(192,'2022-04-07 06:08:50.911069','10300097','10300097',3,'',32,2),(193,'2022-04-07 06:08:50.911819','10300065','10300065',3,'',32,2),(194,'2022-04-07 06:08:50.912686','10200209','10200209',3,'',32,2),(195,'2022-04-07 06:08:50.913417','10200201','10200201',3,'',32,2),(196,'2022-04-07 06:08:50.914224','10100207','10100207',3,'',32,2),(197,'2022-04-07 06:09:01.033136','1','1',3,'',45,2),(198,'2022-04-07 06:10:01.796454','mini_bar','mini_bar',1,'[{\"added\": {}}]',43,2),(199,'2022-04-07 06:10:10.189363','laundry','laundry',1,'[{\"added\": {}}]',43,2),(200,'2022-04-07 06:10:28.165862','6','6',3,'',37,2),(201,'2022-04-07 06:10:28.167766','5','5',3,'',37,2),(202,'2022-04-07 06:10:28.169210','4','4',3,'',37,2),(203,'2022-04-07 06:10:28.170465','2','2',3,'',37,2),(204,'2022-04-07 06:10:47.887044','158','158',3,'',25,2),(205,'2022-04-07 06:10:47.888894','157','157',3,'',25,2),(206,'2022-04-07 06:10:47.890095','156','156',3,'',25,2),(207,'2022-04-07 06:10:47.891014','155','155',3,'',25,2),(208,'2022-04-07 06:10:47.892745','154','154',3,'',25,2),(209,'2022-04-07 06:10:47.894029','153','153',3,'',25,2),(210,'2022-04-07 06:10:47.895090','152','152',3,'',25,2),(211,'2022-04-07 06:10:47.896037','151','151',3,'',25,2),(212,'2022-04-07 06:10:47.896795','150','150',3,'',25,2),(213,'2022-04-07 06:10:47.897510','149','149',3,'',25,2),(214,'2022-04-07 06:10:47.898237','148','148',3,'',25,2),(215,'2022-04-07 06:10:47.898901','147','147',3,'',25,2),(216,'2022-04-07 06:10:47.899579','143','143',3,'',25,2),(217,'2022-04-07 06:10:47.900414','142','142',3,'',25,2),(218,'2022-04-07 06:10:47.901075','141','141',3,'',25,2),(219,'2022-04-07 06:10:47.901719','139','139',3,'',25,2),(220,'2022-04-07 06:10:47.902427','138','138',3,'',25,2),(221,'2022-04-07 06:10:47.903079','137','137',3,'',25,2),(222,'2022-04-07 06:10:47.903786','136','136',3,'',25,2),(223,'2022-04-07 06:10:47.904905','135','135',3,'',25,2),(224,'2022-04-07 06:10:47.905734','134','134',3,'',25,2),(225,'2022-04-07 06:10:47.906476','133','133',3,'',25,2),(226,'2022-04-07 06:10:47.907209','132','132',3,'',25,2),(227,'2022-04-07 06:10:47.907854','131','131',3,'',25,2),(228,'2022-04-07 06:10:47.908447','130','130',3,'',25,2),(229,'2022-04-07 06:10:47.909043','129','129',3,'',25,2),(230,'2022-04-07 06:10:47.909736','128','128',3,'',25,2),(231,'2022-04-07 06:10:47.910405','127','127',3,'',25,2),(232,'2022-04-07 06:10:47.911034','126','126',3,'',25,2),(233,'2022-04-07 06:10:47.911697','125','125',3,'',25,2),(234,'2022-04-07 06:10:47.912719','124','124',3,'',25,2),(235,'2022-04-07 06:10:47.913586','123','123',3,'',25,2),(236,'2022-04-07 06:10:47.914264','122','122',3,'',25,2),(237,'2022-04-07 06:10:47.915043','121','121',3,'',25,2),(238,'2022-04-07 06:10:47.916653','120','120',3,'',25,2),(239,'2022-04-07 06:10:47.917425','119','119',3,'',25,2),(240,'2022-04-07 06:10:47.918067','118','118',3,'',25,2),(241,'2022-04-07 06:10:47.918737','117','117',3,'',25,2),(242,'2022-04-07 06:10:47.919416','116','116',3,'',25,2),(243,'2022-04-07 06:10:47.920081','115','115',3,'',25,2),(244,'2022-04-07 06:10:47.920689','114','114',3,'',25,2),(245,'2022-04-07 06:10:47.921347','113','113',3,'',25,2),(246,'2022-04-07 06:10:47.922066','112','112',3,'',25,2),(247,'2022-04-07 06:10:47.922781','111','111',3,'',25,2),(248,'2022-04-07 06:10:47.923437','110','110',3,'',25,2),(249,'2022-04-07 06:10:47.924051','109','109',3,'',25,2),(250,'2022-04-07 06:10:47.924728','108','108',3,'',25,2),(251,'2022-04-07 06:10:47.925346','107','107',3,'',25,2),(252,'2022-04-07 06:10:47.926035','106','106',3,'',25,2),(253,'2022-04-07 06:10:47.926738','105','105',3,'',25,2),(254,'2022-04-07 06:10:47.927452','104','104',3,'',25,2),(255,'2022-04-07 06:10:47.928213','103','103',3,'',25,2),(256,'2022-04-07 06:10:47.929160','102','102',3,'',25,2),(257,'2022-04-07 06:10:47.929840','101','101',3,'',25,2),(258,'2022-04-07 06:10:47.930537','100','100',3,'',25,2),(259,'2022-04-07 06:10:47.931340','99','99',3,'',25,2),(260,'2022-04-07 06:10:47.932051','98','98',3,'',25,2),(261,'2022-04-07 06:10:47.932637','97','97',3,'',25,2),(262,'2022-04-07 06:10:47.933319','96','96',3,'',25,2),(263,'2022-04-07 06:10:47.934006','95','95',3,'',25,2),(264,'2022-04-07 06:10:47.935143','94','94',3,'',25,2),(265,'2022-04-07 06:10:47.936225','93','93',3,'',25,2),(266,'2022-04-07 06:10:47.938367','92','92',3,'',25,2),(267,'2022-04-07 06:10:47.939013','91','91',3,'',25,2),(268,'2022-04-07 06:10:47.939716','90','90',3,'',25,2),(269,'2022-04-07 06:10:47.940504','89','89',3,'',25,2),(270,'2022-04-07 06:10:47.941182','88','88',3,'',25,2),(271,'2022-04-07 06:10:47.941818','87','87',3,'',25,2),(272,'2022-04-07 06:10:47.942478','86','86',3,'',25,2),(273,'2022-04-07 06:10:47.943097','85','85',3,'',25,2),(274,'2022-04-07 06:10:47.943800','84','84',3,'',25,2),(275,'2022-04-07 06:10:47.944462','83','83',3,'',25,2),(276,'2022-04-07 06:10:47.945137','82','82',3,'',25,2),(277,'2022-04-07 06:10:47.946066','81','81',3,'',25,2),(278,'2022-04-07 06:10:47.946911','80','80',3,'',25,2),(279,'2022-04-07 06:10:47.947637','79','79',3,'',25,2),(280,'2022-04-07 06:10:47.948483','78','78',3,'',25,2),(281,'2022-04-07 06:10:47.949137','77','77',3,'',25,2),(282,'2022-04-07 06:10:47.949852','76','76',3,'',25,2),(283,'2022-04-07 06:10:47.950549','75','75',3,'',25,2),(284,'2022-04-07 06:10:47.951235','74','74',3,'',25,2),(285,'2022-04-07 06:10:47.951924','73','73',3,'',25,2),(286,'2022-04-07 06:10:47.952607','72','72',3,'',25,2),(287,'2022-04-07 06:10:47.953290','71','71',3,'',25,2),(288,'2022-04-07 06:10:47.953977','70','70',3,'',25,2),(289,'2022-04-07 06:10:47.954651','69','69',3,'',25,2),(290,'2022-04-07 06:10:47.955357','68','68',3,'',25,2),(291,'2022-04-07 06:10:47.956052','67','67',3,'',25,2),(292,'2022-04-07 06:10:47.956736','66','66',3,'',25,2),(293,'2022-04-07 06:10:47.957435','65','65',3,'',25,2),(294,'2022-04-07 06:10:47.958108','64','64',3,'',25,2),(295,'2022-04-07 06:10:47.958829','63','63',3,'',25,2),(296,'2022-04-07 06:10:47.959579','62','62',3,'',25,2),(297,'2022-04-07 06:10:47.960430','61','61',3,'',25,2),(298,'2022-04-07 06:10:47.961181','60','60',3,'',25,2),(299,'2022-04-07 06:10:47.961911','59','59',3,'',25,2),(300,'2022-04-07 06:10:47.962610','58','58',3,'',25,2),(301,'2022-04-07 06:10:47.963409','57','57',3,'',25,2),(302,'2022-04-07 06:10:47.964114','56','56',3,'',25,2),(303,'2022-04-07 06:10:47.964856','55','55',3,'',25,2),(304,'2022-04-07 06:11:04.881952','54','54',3,'',25,2),(305,'2022-04-07 06:11:04.885027','53','53',3,'',25,2),(306,'2022-04-07 06:11:04.886289','52','52',3,'',25,2),(307,'2022-04-07 06:11:04.887380','51','51',3,'',25,2),(308,'2022-04-07 06:11:04.888392','49','49',3,'',25,2),(309,'2022-04-07 06:11:04.889241','41','41',3,'',25,2),(310,'2022-04-07 06:11:04.890048','40','40',3,'',25,2),(311,'2022-04-07 06:11:04.890866','39','39',3,'',25,2),(312,'2022-04-07 06:11:25.670478','soapp','soapp',3,'',17,2),(313,'2022-04-07 06:11:25.672215','shampoo','shampoo',3,'',17,2),(314,'2022-04-07 06:11:25.673602','bottle','bottle',3,'',17,2),(315,'2022-04-07 06:11:47.511683','3','3',3,'',19,2),(316,'2022-04-07 06:11:47.513407','2','2',3,'',19,2),(317,'2022-04-07 06:11:47.514740','1','1',3,'',19,2),(318,'2022-04-07 06:12:12.235450','9','9',3,'',21,2),(319,'2022-04-07 06:12:12.236623','8','8',3,'',21,2),(320,'2022-04-07 06:12:12.237469','7','7',3,'',21,2),(321,'2022-04-07 06:12:12.238383','6','6',3,'',21,2),(322,'2022-04-07 06:12:12.239250','5','5',3,'',21,2),(323,'2022-04-07 06:12:12.240068','4','4',3,'',21,2),(324,'2022-04-07 06:12:12.240922','3','3',3,'',21,2),(325,'2022-04-07 06:12:12.241709','2','2',3,'',21,2),(326,'2022-04-07 06:12:12.242474','1','1',3,'',21,2),(327,'2022-04-07 06:12:26.198211','7','7',3,'',42,2),(328,'2022-04-07 06:12:26.199868','6','6',3,'',42,2),(329,'2022-04-07 06:12:26.201139','5','5',3,'',42,2),(330,'2022-04-07 06:12:26.202282','4','4',3,'',42,2),(331,'2022-04-07 06:12:26.203392','3','3',3,'',42,2),(332,'2022-04-07 06:12:26.204489','2','2',3,'',42,2),(333,'2022-04-07 06:12:26.205722','1','1',3,'',42,2),(334,'2022-04-07 06:12:50.738026','114','114',2,'[{\"changed\": {\"fields\": [\"Status fd\"]}}]',15,2),(335,'2022-04-07 06:13:00.926268','113','113',2,'[{\"changed\": {\"fields\": [\"Status fd\"]}}]',15,2),(336,'2022-04-07 06:13:05.471125','112','112',2,'[]',15,2),(337,'2022-04-07 06:13:08.752040','111','111',2,'[]',15,2),(338,'2022-04-07 06:13:16.221105','110','110',2,'[{\"changed\": {\"fields\": [\"Status fd\"]}}]',15,2),(339,'2022-04-07 06:13:24.418460','110','110',2,'[{\"changed\": {\"fields\": [\"Status hk\"]}}]',15,2),(340,'2022-04-07 06:13:35.264265','108','108',2,'[{\"changed\": {\"fields\": [\"Status hk\"]}}]',15,2),(341,'2022-04-07 06:13:51.440127','102','102',2,'[{\"changed\": {\"fields\": [\"Status fd\"]}}]',15,2),(342,'2022-04-07 06:14:00.913521','102','102',2,'[{\"changed\": {\"fields\": [\"Status fd\"]}}]',15,2),(343,'2022-04-07 06:14:14.661699','101','101',2,'[{\"changed\": {\"fields\": [\"Status fd\", \"Status hk\"]}}]',15,2),(344,'2022-04-07 06:14:53.859794','103','103',2,'[{\"changed\": {\"fields\": [\"Status fd\", \"Status hk\"]}}]',15,2),(345,'2022-04-07 06:15:11.469098','105','105',2,'[{\"changed\": {\"fields\": [\"Status fd\", \"Status hk\"]}}]',15,2),(346,'2022-04-07 06:15:40.911793','107','107',2,'[{\"changed\": {\"fields\": [\"Status fd\", \"Status hk\"]}}]',15,2),(347,'2022-04-07 06:15:58.443798','106','106',2,'[{\"changed\": {\"fields\": [\"Status fd\", \"Status hk\"]}}]',15,2),(348,'2022-04-07 06:16:19.231998','109','109',2,'[{\"changed\": {\"fields\": [\"Status fd\"]}}]',15,2),(349,'2022-04-07 06:17:32.565977','3','farhan@gmail.com',2,'[{\"changed\": {\"fields\": [\"Username\"]}}]',8,2),(350,'2022-04-07 06:18:09.953952','2','',2,'[{\"changed\": {\"fields\": [\"Company\"]}}]',8,2),(351,'2022-04-07 06:18:56.177789','4','Bellboy',1,'[{\"added\": {}}]',7,2),(352,'2022-04-07 06:19:15.441502','5','RoomService',1,'[{\"added\": {}}]',7,2),(353,'2022-04-07 06:19:57.148869','1','lord@gmail.com',2,'[{\"changed\": {\"fields\": [\"First name\", \"Company\", \"Role\", \"Position\"]}}]',8,2),(354,'2022-04-07 06:20:06.125718','1','lord@gmail.com',2,'[{\"changed\": {\"fields\": [\"Username\"]}}]',8,2),(355,'2022-04-07 06:23:03.257000','5','room@gmail.com',2,'[{\"changed\": {\"fields\": [\"Username\", \"Expired date\", \"Company\", \"Role\", \"Position\"]}}]',8,2),(356,'2022-04-07 06:23:09.661299','4','hk@gmail.com',2,'[{\"changed\": {\"fields\": [\"Company\"]}}]',8,2),(357,'2022-04-07 06:27:19.126537','5','room@gmail.com',2,'[{\"changed\": {\"fields\": [\"Is email verified\"]}}]',8,2),(358,'2022-04-07 06:27:22.853305','4','hk@gmail.com',2,'[]',8,2),(359,'2022-04-07 06:27:28.967893','3','farhan@gmail.com',2,'[]',8,2),(360,'2022-04-07 06:27:33.900231','2','',2,'[]',8,2),(361,'2022-04-07 06:27:43.952684','1','lord@gmail.com',2,'[]',8,2),(362,'2022-04-07 06:45:02.553569','1','lord@gmail.com',3,'',8,2),(363,'2022-04-07 06:45:24.281377','6','accounts',1,'[{\"added\": {}}]',7,2),(364,'2022-04-07 06:47:36.017933','7','accounts@gmail.com',2,'[{\"changed\": {\"fields\": [\"Is email verified\", \"Expired date\", \"Company\", \"Role\"]}}]',8,2),(365,'2022-04-07 06:47:52.707573','6','bellboy@gmail.com',2,'[{\"changed\": {\"fields\": [\"Is email verified\", \"Expired date\", \"Company\", \"Role\"]}}]',8,2),(366,'2022-04-13 05:54:18.800956','7','Manager',1,'[{\"added\": {}}]',7,2),(367,'2022-04-13 05:55:04.129144','10','md@gmail.com',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Is email verified\", \"Expired date\", \"Company\", \"Role\", \"Position\", \"Is manager\"]}}]',8,2),(368,'2022-04-13 05:56:07.551663','9','hodaccounts@gmail.com',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Is email verified\", \"Expired date\", \"Company\", \"Role\", \"Position\", \"Is manager\"]}}]',8,2),(369,'2022-04-13 05:56:44.803235','8','manager@gmail.com',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Is email verified\", \"Expired date\", \"Company\", \"Role\", \"Is manager\"]}}]',8,2),(370,'2022-04-13 05:56:50.076203','9','hodaccounts@gmail.com',2,'[]',8,2),(371,'2022-04-13 05:59:24.789398','10','md@gmail.com',2,'[{\"changed\": {\"fields\": [\"Position\"]}}]',8,2),(372,'2022-04-13 05:59:35.479871','9','hodaccounts@gmail.com',2,'[{\"changed\": {\"fields\": [\"Position\"]}}]',8,2),(373,'2022-04-13 05:59:44.224452','8','manager@gmail.com',2,'[{\"changed\": {\"fields\": [\"Position\"]}}]',8,2),(374,'2022-04-17 06:25:16.487575','8','manager@gmail.com',2,'[{\"changed\": {\"fields\": [\"Limit start\", \"Limit end\"]}}]',8,2),(375,'2022-04-17 06:25:32.307230','9','hodaccounts@gmail.com',2,'[{\"changed\": {\"fields\": [\"Limit start\", \"Limit end\"]}}]',8,2),(376,'2022-04-17 06:25:51.892949','10','md@gmail.com',2,'[{\"changed\": {\"fields\": [\"Limit start\", \"Limit end\"]}}]',8,2),(377,'2022-04-17 20:33:44.375504','11','fin@gmail.com',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Is email verified\", \"Expired date\", \"Company\", \"Role\", \"Position\", \"Is manager\"]}}]',8,2),(378,'2022-05-11 09:40:26.714546','297','Reservation object (297)',3,'',27,2),(379,'2022-05-11 09:40:30.066586','298','Reservation object (298)',3,'',27,2),(380,'2022-05-11 09:40:32.531386','299','Reservation object (299)',3,'',27,2),(381,'2022-05-11 09:40:39.430561','300','Reservation object (300)',3,'',27,2),(382,'2022-05-12 04:03:40.427176','1','TechTrioz Hotel',1,'[{\"added\": {}}]',38,2),(383,'2022-05-12 04:16:24.080681','1','TechTrioz Hotel',2,'[{\"changed\": {\"fields\": [\"Back01\"]}}]',38,2),(384,'2022-05-12 04:17:56.735003','1','TechTrioz Hotel',2,'[{\"changed\": {\"fields\": [\"Back01\"]}}]',38,2),(385,'2022-05-12 04:21:00.571759','1','TechTrioz Hotel',2,'[{\"changed\": {\"fields\": [\"Back01\"]}}]',38,2),(386,'2022-05-12 04:31:01.596668','1','TechTrioz Hotel',2,'[{\"changed\": {\"fields\": [\"Back01\", \"Back02\", \"Back03\", \"Back04\", \"Back05\", \"Back06\", \"Back07\", \"Back08\"]}}]',38,2),(387,'2023-05-08 06:54:21.573199','8','POS',1,'[{\"added\": {}}]',7,2),(388,'2023-05-11 04:38:18.929279','25','25',3,'',69,2),(389,'2023-05-11 04:38:18.935074','24','24',3,'',69,2),(390,'2023-05-11 04:38:18.939582','23','23',3,'',69,2),(391,'2023-05-11 04:38:18.942231','22','22',3,'',69,2),(392,'2023-05-11 04:38:18.955603','21','21',3,'',69,2),(393,'2023-05-11 04:38:18.970398','20','20',3,'',69,2),(394,'2023-05-11 04:38:18.974417','19','19',3,'',69,2),(395,'2023-05-11 06:40:59.965207','10100294','10100294',2,'[{\"changed\": {\"fields\": [\"Checked in\"]}}]',32,2),(396,'2023-05-11 06:41:03.792436','10100319','10100319',2,'[{\"changed\": {\"fields\": [\"Checked in\"]}}]',32,2),(397,'2023-05-11 06:41:06.986494','10200301','10200301',2,'[{\"changed\": {\"fields\": [\"Checked in\"]}}]',32,2),(398,'2023-05-11 06:41:09.794694','10300306','10300306',2,'[{\"changed\": {\"fields\": [\"Checked in\"]}}]',32,2),(399,'2023-05-11 06:41:32.470441','10300325','10300325',2,'[{\"changed\": {\"fields\": [\"Checked in\"]}}]',32,2),(400,'2023-05-11 06:41:34.529086','10500309','10500309',2,'[{\"changed\": {\"fields\": [\"Checked in\"]}}]',32,2),(401,'2023-05-11 06:41:36.558001','10600302','10600302',2,'[{\"changed\": {\"fields\": [\"Checked in\"]}}]',32,2),(402,'2023-05-11 06:41:39.450757','10700310','10700310',2,'[{\"changed\": {\"fields\": [\"Checked in\"]}}]',32,2),(403,'2023-05-11 06:41:43.199329','10900311','10900311',2,'[{\"changed\": {\"fields\": [\"Checked in\"]}}]',32,2),(404,'2023-05-11 06:41:45.794871','11000296','11000296',2,'[{\"changed\": {\"fields\": [\"Checked in\"]}}]',32,2),(405,'2023-05-11 06:41:48.176470','11100312','11100312',2,'[{\"changed\": {\"fields\": [\"Checked in\"]}}]',32,2),(406,'2023-05-11 06:41:50.985741','11200303','11200303',2,'[{\"changed\": {\"fields\": [\"Checked in\"]}}]',32,2),(407,'2023-05-11 06:41:52.354406','11300313','11300313',2,'[{\"changed\": {\"fields\": [\"Checked in\"]}}]',32,2),(408,'2023-05-11 06:41:55.022817','11400316','11400316',2,'[{\"changed\": {\"fields\": [\"Checked in\"]}}]',32,2),(409,'2023-05-11 06:41:56.585713','11400318','11400318',2,'[{\"changed\": {\"fields\": [\"Checked in\"]}}]',32,2),(410,'2023-05-11 06:59:50.553774','11','11',3,'',37,2),(411,'2023-05-11 06:59:50.562558','10','10',3,'',37,2),(412,'2023-05-11 06:59:50.566986','9','9',3,'',37,2),(413,'2023-05-11 09:03:06.153312','1','Table 01',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',68,2),(414,'2023-05-11 09:03:08.789148','2','Table 02',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',68,2),(415,'2023-05-11 09:03:11.145209','3','Table 03',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',68,2),(416,'2023-05-11 09:03:13.792597','4','Table 04',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',68,2),(417,'2023-05-11 09:03:18.271438','5','Table 05',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',68,2),(418,'2023-05-11 09:03:21.096063','6','Table 06',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',68,2),(419,'2023-05-11 09:03:25.232253','7','Table 07',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',68,2),(420,'2023-05-11 10:11:25.264234','501','501',3,'',15,2),(421,'2023-05-11 10:11:25.272945','115','115',3,'',15,2),(422,'2023-05-11 10:11:25.276186','114','114',3,'',15,2),(423,'2023-05-11 10:11:25.278997','113','113',3,'',15,2),(424,'2023-05-11 10:11:25.292784','112','112',3,'',15,2),(425,'2023-05-11 10:11:25.308052','111','111',3,'',15,2),(426,'2023-05-11 10:11:25.312893','110','110',3,'',15,2),(427,'2023-05-11 10:11:25.316875','109','109',3,'',15,2),(428,'2023-05-11 10:11:25.321057','108','108',3,'',15,2),(429,'2023-05-11 10:11:25.328978','107','107',3,'',15,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(6,'authentication','company_master'),(38,'authentication','hotel_logo'),(54,'authentication','reset'),(7,'authentication','role_master'),(8,'authentication','user'),(55,'authentication','usertoken'),(9,'authtoken','token'),(10,'authtoken','tokenproxy'),(4,'contenttypes','contenttype'),(11,'hm_backend','bellboy'),(53,'hm_backend','billextra'),(12,'hm_backend','bills'),(59,'hm_backend','budget'),(32,'hm_backend','cardno'),(41,'hm_backend','coa'),(24,'hm_backend','complain'),(50,'hm_backend','complainissue'),(28,'hm_backend','complimentaryservice'),(45,'hm_backend','consierge'),(43,'hm_backend','costcenter'),(30,'hm_backend','custname'),(25,'hm_backend','customer'),(37,'hm_backend','customerpicture'),(16,'hm_backend','damage'),(60,'hm_backend','employee'),(66,'hm_backend','foodcategory'),(18,'hm_backend','foodorder'),(67,'hm_backend','foodpicture'),(69,'hm_backend','foodposorder'),(20,'hm_backend','foodtype'),(40,'hm_backend','glmapping'),(23,'hm_backend','inventorytype'),(65,'hm_backend','issueitem'),(17,'hm_backend','item'),(13,'hm_backend','laundry'),(39,'hm_backend','laundrycost'),(62,'hm_backend','linetype'),(14,'hm_backend','lostandfound'),(26,'hm_backend','luggagestorage'),(19,'hm_backend','maintenance'),(63,'hm_backend','productdetails'),(64,'hm_backend','productraw'),(56,'hm_backend','project'),(57,'hm_backend','puchaseorder'),(58,'hm_backend','requesteditem'),(29,'hm_backend','rescus'),(51,'hm_backend','rescuscard'),(27,'hm_backend','reservation'),(31,'hm_backend','rmrt'),(15,'hm_backend','room'),(35,'hm_backend','room_payables'),(34,'hm_backend','room_receivables'),(33,'hm_backend','roombills'),(52,'hm_backend','roomtransfer'),(22,'hm_backend','roomtype'),(36,'hm_backend','roomtypeflow'),(48,'hm_backend','status'),(44,'hm_backend','stockjoint'),(21,'hm_backend','stocktransaction'),(61,'hm_backend','supplier'),(68,'hm_backend','table'),(42,'hm_backend','transactiontable'),(49,'hm_backend','userprofile'),(46,'hm_backend','workflowtemplate'),(47,'hm_backend','workflowtemplatelevels'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-02-07 09:41:21.358541'),(2,'contenttypes','0002_remove_content_type_name','2022-02-07 09:41:21.392545'),(3,'auth','0001_initial','2022-02-07 09:41:21.472180'),(4,'auth','0002_alter_permission_name_max_length','2022-02-07 09:41:21.493407'),(5,'auth','0003_alter_user_email_max_length','2022-02-07 09:41:21.500552'),(6,'auth','0004_alter_user_username_opts','2022-02-07 09:41:21.505939'),(7,'auth','0005_alter_user_last_login_null','2022-02-07 09:41:21.511035'),(8,'auth','0006_require_contenttypes_0002','2022-02-07 09:41:21.513031'),(9,'auth','0007_alter_validators_add_error_messages','2022-02-07 09:41:21.519770'),(10,'auth','0008_alter_user_username_max_length','2022-02-07 09:41:21.525309'),(11,'auth','0009_alter_user_last_name_max_length','2022-02-07 09:41:21.532027'),(12,'auth','0010_alter_group_name_max_length','2022-02-07 09:41:21.543800'),(13,'auth','0011_update_proxy_permissions','2022-02-07 09:41:21.550994'),(14,'auth','0012_alter_user_first_name_max_length','2022-02-07 09:41:21.557591'),(15,'authentication','0001_initial','2022-02-07 09:41:21.679194'),(16,'admin','0001_initial','2022-02-07 09:41:21.732072'),(17,'admin','0002_logentry_remove_auto_add','2022-02-07 09:41:21.739187'),(18,'admin','0003_logentry_add_action_flag_choices','2022-02-07 09:41:21.746854'),(19,'sessions','0001_initial','2022-02-07 09:41:21.763369'),(20,'authtoken','0001_initial','2022-02-07 10:08:49.054899'),(21,'authtoken','0002_auto_20160226_1747','2022-02-07 10:08:49.085838'),(22,'authtoken','0003_tokenproxy','2022-02-07 10:08:49.090271'),(23,'hm_backend','0001_initial','2022-02-08 09:30:27.971195'),(24,'hm_backend','0002_auto_20220208_0955','2022-02-08 09:55:08.094986'),(25,'hm_backend','0003_auto_20220209_0430','2022-02-09 04:30:52.361469'),(26,'authentication','0002_auto_20220210_0709','2022-02-10 07:09:35.939014'),(27,'authentication','0003_user_position','2022-02-15 06:31:44.214969'),(28,'hm_backend','0004_auto_20220222_0700','2022-02-22 07:00:41.046797'),(29,'hm_backend','0005_customer_email','2022-02-22 08:35:54.068948'),(30,'hm_backend','0006_auto_20220222_0933','2022-02-22 09:33:10.846152'),(31,'hm_backend','0007_auto_20220222_0934','2022-02-22 09:34:27.220527'),(32,'hm_backend','0008_auto_20220222_0935','2022-02-22 09:35:28.687197'),(33,'hm_backend','0009_rescus','2022-02-23 04:34:10.750632'),(34,'hm_backend','0010_alter_rescus_options','2022-02-23 04:34:10.776521'),(35,'hm_backend','0011_alter_rescus_table','2022-02-23 04:52:08.746942'),(36,'hm_backend','0012_custname','2022-02-23 05:12:38.243352'),(37,'hm_backend','0013_alter_custname_table','2022-02-23 05:12:38.248210'),(38,'hm_backend','0014_delete_custname','2022-02-23 05:33:00.342730'),(39,'hm_backend','0015_auto_20220223_1036','2022-02-23 10:36:12.205107'),(40,'hm_backend','0016_rmrt','2022-02-27 10:29:45.835119'),(41,'hm_backend','0017_auto_20220301_0817','2022-03-01 08:17:49.777648'),(42,'hm_backend','0018_cardno','2022-03-02 06:20:03.769067'),(43,'hm_backend','0019_auto_20220302_0853','2022-03-02 08:53:58.963859'),(44,'hm_backend','0020_customer_gender','2022-03-02 10:21:37.272059'),(45,'hm_backend','0021_reservation_secondary_cus','2022-03-03 08:40:47.584884'),(46,'hm_backend','0022_auto_20220307_0604','2022-03-07 06:06:17.086655'),(47,'hm_backend','0023_auto_20220307_1836','2022-03-07 18:36:54.371905'),(48,'hm_backend','0024_auto_20220308_0446','2022-03-08 04:46:44.264969'),(49,'hm_backend','0025_alter_laundry_status','2022-03-08 05:05:57.406570'),(50,'hm_backend','0026_auto_20220308_0508','2022-03-08 05:08:44.445075'),(51,'hm_backend','0027_auto_20220310_0444','2022-03-10 04:44:28.774503'),(52,'hm_backend','0028_alter_bills_discount','2022-03-10 04:53:26.565271'),(53,'hm_backend','0029_alter_bills_date','2022-03-10 04:57:09.605409'),(54,'hm_backend','0030_auto_20220310_1140','2022-03-10 05:40:18.963579'),(55,'hm_backend','0031_bills_item_cost','2022-03-10 05:50:14.110471'),(56,'hm_backend','0032_auto_20220310_1308','2022-03-10 07:08:48.179770'),(57,'hm_backend','0033_reservation_secondary_room','2022-03-10 08:57:09.889473'),(58,'hm_backend','0034_auto_20220310_1546','2022-03-10 09:46:41.386210'),(59,'hm_backend','0035_auto_20220312_1922','2022-03-12 13:22:45.454608'),(60,'hm_backend','0036_auto_20220312_1929','2022-03-12 13:29:40.820292'),(61,'hm_backend','0037_cardno_checked_in','2022-03-13 05:26:00.187206'),(62,'hm_backend','0038_roombills_addl_discount','2022-03-13 06:28:50.297199'),(63,'hm_backend','0039_bills_addl_discount','2022-03-13 07:59:31.626942'),(64,'hm_backend','0040_auto_20220313_1359','2022-03-13 07:59:31.730322'),(65,'hm_backend','0041_reservation_total_amount','2022-03-13 09:26:54.408037'),(66,'hm_backend','0042_cardno_secondary_room','2022-03-14 10:26:48.140228'),(67,'hm_backend','0043_room_payable_room_receivables','2022-03-16 07:05:02.663544'),(68,'hm_backend','0044_rename_room_payable_room_payables','2022-03-16 07:07:08.705776'),(69,'hm_backend','0045_alter_room_room_type','2022-03-16 10:25:31.920473'),(70,'hm_backend','0046_auto_20220320_1541','2022-03-20 09:42:03.098449'),(71,'hm_backend','0047_auto_20220321_1013','2022-03-21 04:13:36.635087'),(72,'authentication','0004_auto_20220321_1013','2022-03-21 04:13:36.719136'),(73,'hm_backend','0048_auto_20220324_0236','2022-03-23 20:37:04.690648'),(74,'hm_backend','0049_remove_roomtype_breakfast','2022-03-24 05:28:06.419499'),(75,'hm_backend','0050_auto_20220324_1128','2022-03-24 05:28:46.371438'),(76,'hm_backend','0051_roomtypeflow','2022-03-24 05:29:23.682064'),(77,'hm_backend','0052_auto_20220324_1134','2022-03-24 05:34:57.719152'),(78,'hm_backend','0053_maintenance_status','2022-03-24 05:40:34.190018'),(79,'hm_backend','0054_auto_20220324_1140','2022-03-24 05:40:34.496940'),(80,'hm_backend','0055_auto_20220324_1141','2022-03-24 05:42:04.573279'),(81,'hm_backend','0056_alter_bills_trx_type','2022-03-24 05:43:30.785968'),(82,'hm_backend','0057_alter_roombills_trx_type','2022-03-24 05:43:53.097154'),(83,'hm_backend','0058_auto_20220324_1150','2022-03-24 05:56:50.987863'),(84,'hm_backend','0002_item_stocktransaction','2022-03-24 06:02:02.508666'),(85,'hm_backend','0003_auto_20220324_1458','2022-03-24 08:58:29.291723'),(86,'hm_backend','0004_remove_bills_item_cost','2022-03-27 04:57:01.177426'),(87,'hm_backend','0005_auto_20220327_1657','2022-03-27 10:58:02.525878'),(88,'hm_backend','0006_auto_20220327_2242','2022-03-27 16:42:35.144774'),(89,'hm_backend','0007_bellboy_special_ins','2022-03-28 04:14:41.628345'),(90,'hm_backend','0008_auto_20220328_1220','2022-03-28 06:20:48.749105'),(91,'hm_backend','0009_auto_20220328_1508','2022-03-28 09:08:51.721436'),(92,'hm_backend','0010_customerpicture','2022-03-29 09:14:58.647720'),(93,'hm_backend','0011_auto_20220330_1705','2022-03-30 11:05:39.512236'),(94,'authentication','0005_auto_20220331_1025','2022-03-31 04:25:11.967805'),(95,'authentication','0006_auto_20220331_1026','2022-03-31 04:26:19.644619'),(96,'hm_backend','0012_auto_20220331_1035','2022-03-31 04:35:43.159805'),(97,'hm_backend','0013_remove_luggagestorage_room_no','2022-03-31 04:37:35.847696'),(98,'hm_backend','0014_foodtype_type','2022-03-31 04:38:24.861029'),(99,'hm_backend','0015_auto_20220331_1051','2022-03-31 04:51:41.266266'),(100,'hm_backend','0016_stockjoint','2022-03-31 05:07:07.735571'),(101,'hm_backend','0017_auto_20220331_1122','2022-03-31 05:22:20.073682'),(102,'hm_backend','0018_auto_20220403_1153','2022-04-03 05:53:49.761263'),(103,'hm_backend','0019_auto_20220403_1155','2022-04-03 05:55:47.656261'),(104,'hm_backend','0020_auto_20220403_1357','2022-04-03 07:57:58.172631'),(105,'hm_backend','0021_alter_bills_card_validity','2022-04-03 08:00:01.417058'),(106,'hm_backend','0022_alter_customer_phone','2022-04-03 20:15:30.089753'),(107,'hm_backend','0023_consierge','2022-04-04 04:35:42.980543'),(108,'authentication','0007_auto_20220406_1207','2022-04-06 06:07:13.662908'),(109,'hm_backend','0024_auto_20220406_1208','2022-04-06 06:08:19.913043'),(110,'hm_backend','0025_alter_bellboy_status','2022-04-06 08:45:09.597808'),(111,'hm_backend','0026_rename_date_delivery_laundry_ex_date_delivery','2022-04-06 08:55:23.941666'),(112,'hm_backend','0027_alter_customer_gender','2022-04-12 08:14:36.152641'),(113,'authentication','0008_user_is_manager','2022-04-13 05:48:52.112020'),(114,'hm_backend','0028_workflowtemplate_workflowtemplatelevels','2022-04-14 20:36:10.038064'),(115,'hm_backend','0002_workflowtemplate_role_concated','2022-04-15 06:55:34.271713'),(116,'hm_backend','0003_status','2022-04-15 07:26:06.338794'),(117,'hm_backend','0004_auto_20220415_1742','2022-04-15 11:42:52.962341'),(118,'authentication','0009_auto_20220417_1222','2022-04-17 06:22:45.687012'),(119,'authentication','0010_user_delegate_to','2022-04-18 04:53:12.379727'),(120,'hm_backend','0005_userprofile','2022-04-18 05:06:11.117952'),(121,'authentication','0011_remove_user_delegate_to','2022-04-18 05:06:35.244018'),(122,'hm_backend','0006_auto_20220420_1328','2022-04-20 07:28:24.733341'),(123,'hm_backend','0007_auto_20220420_1330','2022-04-20 07:30:13.881204'),(124,'hm_backend','0008_delete_complainissue','2022-04-20 07:31:07.024570'),(125,'hm_backend','0009_auto_20220420_1333','2022-04-20 07:33:30.004562'),(126,'hm_backend','0010_alter_complain_issuedate','2022-04-20 09:53:56.998592'),(127,'hm_backend','0011_rescuscard','2022-04-21 04:48:22.129262'),(128,'hm_backend','0012_alter_luggagestorage_status','2022-04-24 05:57:49.421973'),(129,'hm_backend','0013_alter_reservation_total_amount','2022-05-08 21:16:35.627999'),(130,'hm_backend','0002_initial','2022-05-12 04:25:49.646653'),(131,'authentication','0002_auto_20220512_1025','2022-05-12 04:25:49.651437'),(132,'hm_backend','0003_roomtransfer','2022-05-23 06:02:34.464127'),(133,'hm_backend','0004_alter_lostandfound_phone','2022-05-23 06:15:08.301548'),(134,'hm_backend','0005_billextra','2022-05-23 10:15:43.261359'),(135,'authentication','0002_auto_20220615_1623','2022-06-15 10:25:29.433480'),(136,'authentication','0002_auto_20220728_1134','2022-07-28 05:36:09.420581'),(137,'hm_backend','0003_auto_20221014_1531','2022-10-14 09:31:21.079325'),(138,'hm_backend','0004_auto_20221014_1604','2022-10-14 10:05:02.336184'),(139,'hm_backend','0005_auto_20230315_1142','2023-03-15 05:42:40.462240'),(140,'hm_backend','0006_employee_supplier','2023-03-15 07:11:15.217639'),(141,'hm_backend','0007_linetype','2023-03-15 07:17:17.123763'),(142,'hm_backend','0008_auto_20230315_1530','2023-03-15 09:30:53.776939'),(143,'hm_backend','0009_productdetails_productraw','2023-03-16 06:18:13.668589'),(144,'hm_backend','0010_auto_20230327_1131','2023-03-27 05:31:14.112804'),(145,'hm_backend','0011_remove_productraw_category','2023-03-27 05:32:03.395960'),(146,'hm_backend','0012_issueitem','2023-03-27 09:25:21.067940'),(147,'hm_backend','0013_auto_20230508_1406','2023-05-08 08:06:13.137783'),(148,'hm_backend','0014_auto_20230508_1559','2023-05-08 09:59:47.913883'),(149,'hm_backend','0015_remove_foodpicture_food','2023-05-09 05:13:10.212854'),(150,'hm_backend','0016_foodpicture_food','2023-05-09 05:13:27.413884'),(151,'hm_backend','0017_table','2023-05-10 07:01:58.921156'),(152,'hm_backend','0018_table_status','2023-05-10 07:06:44.012219'),(153,'hm_backend','0019_foodposorder','2023-05-10 07:30:27.245747'),(154,'hm_backend','0020_foodposorder_status','2023-05-10 07:48:33.058538'),(155,'hm_backend','0021_auto_20230510_1353','2023-05-10 07:53:36.723195'),(156,'hm_backend','0022_alter_foodcategory_name','2023-05-10 07:54:31.692298'),(157,'hm_backend','0023_alter_table_num','2023-05-10 07:57:05.468494');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('29r7ni0etkr4yy7eqbrh9v142d14bqqd','.eJxVjEEOwiAQRe_C2hBwBigu3fcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXERIE6_W6T04LaDfKd2m2Wa27pMUe6KPGiX45z5eT3cv4NKvX5rCwYJfUTFvjAXLDohWmejh0Q-GcyDP2s2mUA7oyBpa4op0cHAQEq8P-DON7A:1nLes9:OAt5ElweSzcWGw2bN3pRpShvEjm0nUAbZWO7YOTZwFM','2022-03-06 05:35:01.360017'),('6nk94z7wzwzdbypxvay75lwj2e954099','.eJxVjDsOwjAQBe_iGllrZ_2jpM8ZLHu94ABypDipEHeHSCmgfTPzXiKmba1x67zEqYiz0OL0u-VED247KPfUbrOkua3LlOWuyIN2Oc6Fn5fD_TuoqddvPYTgMoBCJMVea60AfQBPxbns0ZvMuZCygYgRrLdk0GAhvupBAbN4fwC0zTdE:1oGw6o:dLjbRSEbTfMCscFm8QjS021XflQmWa9KgcvM09TtUTs','2022-08-11 05:30:54.563780'),('94rx5w1mvjyqnx3rbrvpd32xa5nfmp81','.eJxVjDsOwjAQBe_iGllrZ_2jpM8ZLHu94ABypDipEHeHSCmgfTPzXiKmba1x67zEqYiz0OL0u-VED247KPfUbrOkua3LlOWuyIN2Oc6Fn5fD_TuoqddvPYTgMoBCJMVea60AfQBPxbns0ZvMuZCygYgRrLdk0GAhvupBAbN4fwC0zTdE:1o1N1l:vdE8LCWrjoKNS3gJaI749hAA55TSZ2iEq_hBHrpC058','2022-06-29 07:01:21.980890'),('aea4yr5f7gldg0qr9wls7oe7tq5qgpr3','.eJxVjDsOwjAQBe_iGllrZ_2jpM8ZLHu94ABypDipEHeHSCmgfTPzXiKmba1x67zEqYiz0OL0u-VED247KPfUbrOkua3LlOWuyIN2Oc6Fn5fD_TuoqddvPYTgMoBCJMVea60AfQBPxbns0ZvMuZCygYgRrLdk0GAhvupBAbN4fwC0zTdE:1ntiaP:666YPqLPZ2i3WUOTtRoYLcdemWmS1SIQSiNQ-hZvIpU','2022-06-08 04:25:29.707082'),('gnuakl5vqbefu3hw10yw23je1sljnzog','.eJxVjDsOwjAQBe_iGllrZ_2jpM8ZLHu94ABypDipEHeHSCmgfTPzXiKmba1x67zEqYiz0OL0u-VED247KPfUbrOkua3LlOWuyIN2Oc6Fn5fD_TuoqddvPYTgMoBCJMVea60AfQBPxbns0ZvMuZCygYgRrLdk0GAhvupBAbN4fwC0zTdE:1nvF0t:8H0uLNalRXU_vajIqLmOILdYWqYNgHNXn2VjxL5P6qQ','2022-06-12 09:15:07.274135'),('h0hkuhv4i3srxtybsowcecfgl86xa879','.eJxVjDsOwjAQBe_iGllrZ_2jpM8ZLHu94ABypDipEHeHSCmgfTPzXiKmba1x67zEqYiz0OL0u-VED247KPfUbrOkua3LlOWuyIN2Oc6Fn5fD_TuoqddvPYTgMoBCJMVea60AfQBPxbns0ZvMuZCygYgRrLdk0GAhvupBAbN4fwC0zTdE:1nqmR7:nuKnYEecsT76JJ0U7qV8DyL-YejYugcXxh3k7htr714','2022-05-31 01:55:45.988653'),('jjj3f28l1fs1kxcq5t0ali2db9wvtf45','.eJxVjEEOwiAQRe_C2hBwBigu3fcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXERIE6_W6T04LaDfKd2m2Wa27pMUe6KPGiX45z5eT3cv4NKvX5rCwYJfUTFvjAXLDohWmejh0Q-GcyDP2s2mUA7oyBpa4op0cHAQEq8P-DON7A:1oQ3Tt:_qItYXyu4fMkpy7XnBZUqm54fUrpkvwPzc57BMuu5gQ','2022-09-05 09:12:25.437158'),('mmo1bbv2z5rltcyv220vbuhame5wzxyf','.eJxVjDsOwjAQBe_iGllrZ_2jpM8ZLHu94ABypDipEHeHSCmgfTPzXiKmba1x67zEqYiz0OL0u-VED247KPfUbrOkua3LlOWuyIN2Oc6Fn5fD_TuoqddvPYTgMoBCJMVea60AfQBPxbns0ZvMuZCygYgRrLdk0GAhvupBAbN4fwC0zTdE:1o1KjU:dzkZB3Bms4eFqJfEp8X8g-JG3bbc33j3-QXZXHMYRiI','2022-06-29 04:34:20.870319'),('mvx3neiey88t923fkn7oh3hcba8g4f85','.eJxVjDsOwjAQBe_iGllrZ_2jpM8ZLHu94ABypDipEHeHSCmgfTPzXiKmba1x67zEqYiz0OL0u-VED247KPfUbrOkua3LlOWuyIN2Oc6Fn5fD_TuoqddvPYTgMoBCJMVea60AfQBPxbns0ZvMuZCygYgRrLdk0GAhvupBAbN4fwC0zTdE:1pvul3:E6WFiOy0ghcpiIu-g1l2AL99wvyiFeSrEUOVsy4LfZs','2023-05-22 06:54:05.131933'),('nd9yr85vpyvqm2pmqyz8zsblel7g7l5k','.eJxVjEEOwiAQRe_C2hBwBigu3fcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXERIE6_W6T04LaDfKd2m2Wa27pMUe6KPGiX45z5eT3cv4NKvX5rCwYJfUTFvjAXLDohWmejh0Q-GcyDP2s2mUA7oyBpa4op0cHAQEq8P-DON7A:1nMn8f:TTH0bzlMOFgjvDkoyGwudL7N0nWD4grW1L9JddBIrtk','2022-03-09 08:36:45.213526'),('o726tail1mb8eq7q3scufkhc94n53zex','.eJxVjDsOwjAQBe_iGllrZ_2jpM8ZLHu94ABypDipEHeHSCmgfTPzXiKmba1x67zEqYiz0OL0u-VED247KPfUbrOkua3LlOWuyIN2Oc6Fn5fD_TuoqddvPYTgMoBCJMVea60AfQBPxbns0ZvMuZCygYgRrLdk0GAhvupBAbN4fwC0zTdE:1nxnNP:0J-R7kJ3HxgI5c76HnYNejV6M3a6y7-gR7HmaePkrRk','2022-06-19 10:20:55.929345'),('o7fx5n2e6exnrt66exg453hq1ao0kv8g','.eJxVjDsOwjAQBe_iGllrZ_2jpM8ZLHu94ABypDipEHeHSCmgfTPzXiKmba1x67zEqYiz0OL0u-VED247KPfUbrOkua3LlOWuyIN2Oc6Fn5fD_TuoqddvPYTgMoBCJMVea60AfQBPxbns0ZvMuZCygYgRrLdk0GAhvupBAbN4fwC0zTdE:1nwFt2:ftNQYNQ8HmwzhoJV9ruA3zSw8xKJkxZg4JLYVCdUfgA','2022-06-15 04:23:12.429338'),('y93vhv23ehgz7qmo5br8or4quh9q34dy','.eJxVjDsOwjAQBe_iGllrZ_2jpM8ZLHu94ABypDipEHeHSCmgfTPzXiKmba1x67zEqYiz0OL0u-VED247KPfUbrOkua3LlOWuyIN2Oc6Fn5fD_TuoqddvPYTgMoBCJMVea60AfQBPxbns0ZvMuZCygYgRrLdk0GAhvupBAbN4fwC0zTdE:1o0yAh:SEpJoFhMGC-fbswnm6q6kMRpfDSLm3yVCemwJXnkWWY','2022-06-28 04:28:55.656388'),('yts1pq0t7dadbavq284h8jocn4ifrzwi','.eJxVjDsOwjAQBe_iGllrZ_2jpM8ZLHu94ABypDipEHeHSCmgfTPzXiKmba1x67zEqYiz0OL0u-VED247KPfUbrOkua3LlOWuyIN2Oc6Fn5fD_TuoqddvPYTgMoBCJMVea60AfQBPxbns0ZvMuZCygYgRrLdk0GAhvupBAbN4fwC0zTdE:1nv4Mj:dy4-VLSoroXH8EFI6urozUsKQ0i6NhkOFvrbQc6yxeA','2022-06-11 21:52:57.039774'),('yweh16476qehqdk6x4nepwcmqaaf5zjr','.eJxVjDsOwjAQBe_iGllrZ_2jpM8ZLHu94ABypDipEHeHSCmgfTPzXiKmba1x67zEqYiz0OL0u-VED247KPfUbrOkua3LlOWuyIN2Oc6Fn5fD_TuoqddvPYTgMoBCJMVea60AfQBPxbns0ZvMuZCygYgRrLdk0GAhvupBAbN4fwC0zTdE:1nt1I9:wNeixYR1Homr7OmmIUQRC4kpMogVnr_lszSpHdRnSVI','2022-06-06 06:11:45.632148'),('yxz1nx59eyp6spd16b2uqohsw9cs32py','.eJxVjDsOwjAQBe_iGllrZ_2jpM8ZLHu94ABypDipEHeHSCmgfTPzXiKmba1x67zEqYiz0OL0u-VED247KPfUbrOkua3LlOWuyIN2Oc6Fn5fD_TuoqddvPYTgMoBCJMVea60AfQBPxbns0ZvMuZCygYgRrLdk0GAhvupBAbN4fwC0zTdE:1njhNv:uOe8J4X6FMxw_TBpsowdwg-R1FNPKNrSUj4uyGS39lU','2022-05-11 13:07:11.693578'),('z6jbix4tjjknhjd1xe9vzjp8bd5dajri','.eJxVjDsOwjAQBe_iGllrZ_2jpM8ZLHu94ABypDipEHeHSCmgfTPzXiKmba1x67zEqYiz0OL0u-VED247KPfUbrOkua3LlOWuyIN2Oc6Fn5fD_TuoqddvPYTgMoBCJMVea60AfQBPxbns0ZvMuZCygYgRrLdk0GAhvupBAbN4fwC0zTdE:1pchbu:yYToCP_QUyoZzgDkimYCC8ydvd9CnFh_I_O0NGy1T6E','2023-03-30 07:01:14.491198');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_bellboy`
--

DROP TABLE IF EXISTS `hm_backend_bellboy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_bellboy` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `check` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `room_no` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `special_ins` varchar(200) DEFAULT NULL,
  `room_secondary` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_bellboy`
--

LOCK TABLES `hm_backend_bellboy` WRITE;
/*!40000 ALTER TABLE `hm_backend_bellboy` DISABLE KEYS */;
INSERT INTO `hm_backend_bellboy` VALUES (12,1,0,'110','345','NA','202,203'),(13,1,0,'103','2453','NA','108'),(14,0,0,'103',NULL,'','108');
/*!40000 ALTER TABLE `hm_backend_bellboy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_billextra`
--

DROP TABLE IF EXISTS `hm_backend_billextra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_billextra` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `type_bill` varchar(100) NOT NULL,
  `item_quantity` int DEFAULT NULL,
  `cost` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `vat_amount` decimal(10,2) DEFAULT NULL,
  `sc_amount` decimal(10,2) DEFAULT NULL,
  `trx_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_billextra`
--

LOCK TABLES `hm_backend_billextra` WRITE;
/*!40000 ALTER TABLE `hm_backend_billextra` DISABLE KEYS */;
INSERT INTO `hm_backend_billextra` VALUES (1,'2022-05-25','10:34:22.423895','laundry',3,72.00,0.00,5.00,5.00,'cash'),(2,'2022-06-01','12:41:11.328140','laundry',2,26.00,0.00,5.00,5.00,'cash'),(3,'2022-06-01','12:43:42.722017','laundry',5,356.00,0.00,5.00,5.00,'cash'),(4,'2022-06-16','04:12:00.379619','mini_bar',1,2321.00,0.00,0.00,0.00,'cash');
/*!40000 ALTER TABLE `hm_backend_billextra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_bills`
--

DROP TABLE IF EXISTS `hm_backend_bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_bills` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `type_bill` varchar(100) NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `bill_item` varchar(150) DEFAULT NULL,
  `item_quantity` int DEFAULT NULL,
  `card_validity` varchar(100) DEFAULT NULL,
  `trx_no` varchar(150) DEFAULT NULL,
  `trx_type` varchar(100) DEFAULT NULL,
  `card_no_id` int DEFAULT NULL,
  `addl_discount` decimal(8,2) DEFAULT NULL,
  `sc_amount` decimal(10,2) DEFAULT NULL,
  `vat_amount` decimal(10,2) DEFAULT NULL,
  `bill_category` varchar(30) DEFAULT NULL,
  `special_discount` varchar(100) DEFAULT NULL,
  `special_discount_reason` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_bills_card_no_id_9d6f5d38_fk_HM_backen` (`card_no_id`),
  CONSTRAINT `hm_backend_bills_card_no_id_9d6f5d38_fk_HM_backen` FOREIGN KEY (`card_no_id`) REFERENCES `hm_backend_cardno` (`card_no`)
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_bills`
--

LOCK TABLES `hm_backend_bills` WRITE;
/*!40000 ALTER TABLE `hm_backend_bills` DISABLE KEYS */;
INSERT INTO `hm_backend_bills` VALUES (246,'2022-05-09','10:40:54.038750','room_rent',20000.00,0.00,'room 101',4,NULL,NULL,NULL,10100294,NULL,2000.00,3000.00,'debit','0',NULL),(247,'2022-05-09','10:40:54.625115','room',10000.00,NULL,'Advance',NULL,'','','cash',10100294,NULL,NULL,NULL,'credit','0',''),(248,'2022-05-09','10:42:46.040054','room_sevice',410.00,0.00,'room_sevice 3',7,NULL,'','',10100294,0.00,4.00,4.00,'debit','0',''),(249,'2022-05-09','10:50:20.789832','room_rent',30000.00,0.00,'room 110',3,NULL,NULL,NULL,11000296,NULL,3000.00,4500.00,'debit','0',NULL),(250,'2022-05-09','10:50:20.881533','room',12000.00,NULL,'Advance',NULL,NULL,'','cash',11000296,NULL,NULL,NULL,'credit','0',''),(251,'2022-05-09','12:55:30.924833','room_rent',20000.00,0.00,'room 104',2,NULL,NULL,NULL,NULL,NULL,2000.00,3000.00,'debit','0',NULL),(252,'2022-05-09','12:55:30.959390','room',20000.00,NULL,'Advance',NULL,'','','cash',NULL,NULL,NULL,NULL,'credit','0',''),(253,'2022-05-09','13:09:07.509148','room_service',824.00,0.00,'Mini Bar',2,NULL,'','',10100294,0.00,0.00,0.00,'debit','0',''),(254,'2022-05-09','13:11:27.919370','room_sevice',43.00,0.00,'room_sevice 4',2,NULL,'','',10100294,0.00,4.00,4.00,'debit','0',''),(255,'2022-05-12','15:36:51.760952','laundry',0.00,0.00,'laundry 7',3,NULL,'','',10100294,0.00,5.00,5.00,'debit','0',''),(256,'2022-05-22','15:55:11.838949','room',10.00,NULL,'Room Clearance',NULL,'','','cash',10100294,NULL,NULL,NULL,'credit','0',''),(257,'2022-05-22','15:55:15.700144','room',10.00,NULL,'Room Clearance',NULL,'','','cash',10100294,NULL,NULL,NULL,'credit','0',''),(258,'2022-05-22','15:55:17.759363','room',10.00,NULL,'Room Clearance',NULL,'','','cash',10100294,NULL,NULL,NULL,'credit','0',''),(259,'2022-05-22','15:55:20.087616','room',10.00,NULL,'Room Clearance',NULL,'','','cash',10100294,NULL,NULL,NULL,'credit','0',''),(260,'2022-05-22','15:55:22.422708','room',10.00,NULL,'Room Clearance',NULL,'','','cash',10100294,NULL,NULL,NULL,'credit','0',''),(261,'2022-05-22','15:55:24.532954','room',10.00,NULL,'Room Clearance',NULL,'','','cash',10100294,NULL,NULL,NULL,'credit','0',''),(262,'2022-05-22','15:55:37.308466','room',11.00,NULL,'Room Clearance',NULL,'','','cash',10100294,NULL,NULL,NULL,'credit','0',''),(263,'2022-05-22','15:55:39.894975','room',11.00,NULL,'Room Clearance',NULL,'','','cash',10100294,NULL,NULL,NULL,'credit','0',''),(264,'2022-05-22','15:55:41.631766','room',11.00,NULL,'Room Clearance',NULL,'','','cash',10100294,NULL,NULL,NULL,'credit','0',''),(265,'2022-05-22','15:55:43.833200','room',11.00,NULL,'Room Clearance',NULL,'','','cash',10100294,NULL,NULL,NULL,'credit','0',''),(266,'2022-05-22','15:55:46.275962','room',11.00,NULL,'Room Clearance',NULL,'','','cash',10100294,NULL,NULL,NULL,'credit','0',''),(267,'2022-05-22','15:55:48.344178','room',11.00,NULL,'Room Clearance',NULL,'','','cash',10100294,NULL,NULL,NULL,'credit','0',''),(268,'2022-05-22','15:55:50.356759','room',11.00,NULL,'Room Clearance',NULL,'','','cash',10100294,NULL,NULL,NULL,'credit','0',''),(269,'2022-05-22','15:55:52.524979','room',11.00,NULL,'Room Clearance',NULL,'','','cash',10100294,NULL,NULL,NULL,'credit','0',''),(270,'2022-05-22','15:55:54.490234','room',11.00,NULL,'Room Clearance',NULL,'','','cash',10100294,NULL,NULL,NULL,'credit','0',''),(271,'2022-05-22','15:55:56.518616','room',11.00,NULL,'Room Clearance',NULL,'','','cash',10100294,NULL,NULL,NULL,'credit','0',''),(272,'2022-05-22','15:55:58.474046','room',11.00,NULL,'Room Clearance',NULL,'','','cash',10100294,NULL,NULL,NULL,'credit','0',''),(273,'2022-05-23','10:05:51.326819','room_rent',30000.00,0.00,'room 102',3,NULL,NULL,NULL,10200301,NULL,3000.00,4500.00,'debit','0',NULL),(274,'2022-05-23','10:05:51.358370','room',10101.00,NULL,'Advance',NULL,'','','cash',10200301,NULL,NULL,NULL,'credit','0',''),(275,'2022-05-23','10:06:21.303071','room_rent',15000.00,0.00,'room 106',3,NULL,NULL,NULL,10600302,NULL,1500.00,2250.00,'debit','0',NULL),(276,'2022-05-23','10:06:21.317251','room',30000.00,NULL,'Advance',NULL,'','','cash',10600302,NULL,NULL,NULL,'credit','0',''),(277,'2022-05-23','10:06:52.012263','room_rent',15000.00,0.00,'room 112',3,NULL,NULL,NULL,11200303,NULL,1500.00,2250.00,'debit','0',NULL),(278,'2022-05-23','10:06:52.043791','room',10000.00,NULL,'Advance',NULL,'','','cash',11200303,NULL,NULL,NULL,'credit','0',''),(279,'2022-05-23','10:07:33.771961','room_rent',48000.00,0.00,'room 103',4,NULL,NULL,NULL,10300306,NULL,4800.00,7200.00,'debit','0',NULL),(280,'2022-05-23','10:07:33.785583','room_rent',48000.00,0.00,'room 108',4,NULL,NULL,NULL,10300306,NULL,4800.00,7200.00,'debit','0',NULL),(281,'2022-05-23','10:07:33.818265','room',100000.00,NULL,'Advance',NULL,NULL,'','cash',10300306,NULL,NULL,NULL,'credit','0',''),(282,'2022-05-23','10:08:35.473680','room_rent',60000.00,0.00,'room 114',5,NULL,NULL,NULL,11400308,NULL,6000.00,9000.00,'debit','0',NULL),(283,'2022-05-23','10:08:35.543820','room',10000.00,NULL,'Advance',NULL,NULL,'','cash',11400308,NULL,NULL,NULL,'credit','0',''),(284,'2022-05-23','10:38:52.041433','room_rent',10000.00,0.00,'room 105',2,NULL,NULL,NULL,10500309,NULL,1000.00,1500.00,'debit','0',NULL),(285,'2022-05-23','10:38:52.062859','room',1200.00,NULL,'Advance',NULL,'','','cash',10500309,NULL,NULL,NULL,'credit','0',''),(286,'2022-05-23','10:39:06.629009','room_rent',10000.00,0.00,'room 107',1,NULL,NULL,NULL,10700310,NULL,1000.00,1500.00,'debit','0',NULL),(287,'2022-05-23','10:39:06.652821','room',1200.00,NULL,'Advance',NULL,'','','cash',10700310,NULL,NULL,NULL,'credit','0',''),(288,'2022-05-23','10:39:39.670881','room_rent',30000.00,0.00,'room 109',3,NULL,NULL,NULL,10900311,NULL,3000.00,4500.00,'debit','0',NULL),(289,'2022-05-23','10:39:39.683567','room',1200.00,NULL,'Advance',NULL,'','','cash',10900311,NULL,NULL,NULL,'credit','0',''),(290,'2022-05-23','10:39:51.931681','room_rent',0.00,0.00,'room 111',0,NULL,NULL,NULL,11100312,NULL,0.00,0.00,'debit','0',NULL),(291,'2022-05-23','10:39:51.946414','room',1200.00,NULL,'Advance',NULL,'','','cash',11100312,NULL,NULL,NULL,'credit','0',''),(292,'2022-05-23','10:40:10.904985','room_rent',10000.00,0.00,'room 113',2,NULL,NULL,NULL,11300313,NULL,1000.00,1500.00,'debit','0',NULL),(293,'2022-05-23','10:40:10.917167','room',1200.00,NULL,'Advance',NULL,'','','cash',11300313,NULL,NULL,NULL,'credit','0',''),(294,'2022-06-02','05:16:55.854103','laundry',52.00,0.00,'laundry 11',4,NULL,'','',10100294,0.00,5.00,5.00,'debit','0',''),(295,'2022-06-05','16:13:50.238767','room_rent',120000.00,0.00,'room 114',10,NULL,NULL,NULL,11400316,NULL,12000.00,18000.00,'debit','0',NULL),(296,'2022-06-05','16:13:50.262920','room',100000.00,NULL,'Advance',NULL,'','','cash',11400316,NULL,NULL,NULL,'credit','0',''),(297,'2022-06-05','16:18:45.720459','room_service',412.00,0.00,'Mini Bar',1,NULL,'','',10100294,0.00,0.00,0.00,'debit','0',''),(298,'2022-06-05','16:20:25.265723','laundry',39.00,0.00,'laundry 12',3,NULL,'','',10100294,0.00,5.00,5.00,'debit','0',''),(299,'2022-06-05','16:21:42.603449','room_sevice',97.00,0.00,'room_sevice 5',4,NULL,'','',10100294,0.00,4.00,4.00,'debit','0',''),(300,'2022-06-15','16:56:50.219821','room_rent',0.00,0.00,'room 114',0,NULL,NULL,NULL,11400318,NULL,0.00,0.00,'debit','0',NULL),(301,'2022-06-15','16:56:50.246849','room',110000.00,NULL,'Advance',NULL,'','','cash',11400318,NULL,NULL,NULL,'credit','0',''),(302,'2022-06-16','03:46:05.300367','Room Service',3454.00,0.00,'night Audit',0,NULL,'','cash',10100294,0.00,2.00,2.00,'debit','0',''),(303,'2022-06-16','03:51:56.064522','Room Service',1212.00,0.00,'night Audit',0,NULL,'','cash',10200301,0.00,0.00,0.00,'debit','0',''),(304,'2022-06-16','03:52:45.966844','Mini Bar',1212.00,0.00,'night Audit',0,NULL,'','cash',10100294,0.00,0.00,0.00,'debit','0',''),(305,'2022-06-16','03:55:58.618191','Laundry',2.00,0.00,'night Audit',0,NULL,'','',10100294,0.00,0.00,0.00,'debit','0',''),(306,'2022-06-16','03:57:17.399303','Mini Bar',23.00,0.00,'night Audit',0,NULL,'','cash',10200301,0.00,0.00,0.00,'debit','0',''),(307,'2022-06-16','03:57:25.720241','Room Service',23.00,0.00,'night Audit',0,NULL,'','cash',10200301,0.00,0.00,0.00,'debit','0',''),(308,'2022-06-16','03:57:52.081396','Mini Bar',231.00,0.00,'night Audit',0,NULL,'','mobile banking',10100294,0.00,0.00,0.00,'debit','0',''),(309,'2022-06-16','03:58:02.215960','Laundry',231.00,0.00,'night Audit',0,NULL,'','mobile banking',10100294,0.00,0.00,0.00,'debit','0',''),(310,'2022-06-16','04:03:45.027198','Mini Bar',2.00,0.00,'night Audit',0,NULL,'','cash',10100294,0.00,0.00,0.00,'debit','0',''),(311,'2022-06-16','07:38:49.638961','room_service',412.00,0.00,'Mini Bar',1,NULL,'','',10100294,0.00,0.00,0.00,'debit','0',''),(312,'2022-06-16','10:31:42.849707','room_service',824.00,0.00,'Mini Bar',2,NULL,'','',10500309,0.00,0.00,0.00,'debit','0',''),(313,'2022-06-16','10:32:56.627889','laundry',26.00,0.00,'laundry 13',2,NULL,'','',10200301,0.00,5.00,5.00,'debit','0',''),(314,'2022-06-16','10:35:47.192011','room_sevice',432.00,0.00,'room_sevice 6',4,NULL,'','',11100312,0.00,4.00,4.00,'debit','0',''),(315,'2022-06-16','12:57:43.965080','room_sevice',259.00,0.00,'room_sevice 7',4,NULL,'','',10300306,0.00,4.00,4.00,'debit','0',''),(316,'2022-07-27','11:16:32.426875','laundry',39.00,0.00,'laundry 14',3,NULL,'','',10300306,0.00,5.00,5.00,'debit','0',''),(317,'2022-08-22','15:27:00.421483','laundry',48.00,0.00,'laundry 15',2,NULL,'','',10500309,0.00,5.00,5.00,'debit','0',''),(318,'2022-08-22','15:36:26.202016','room_rent',25000.00,0.00,'room 101',5,NULL,NULL,NULL,10100319,NULL,2500.00,3750.00,'debit','0',NULL),(319,'2022-08-22','15:36:26.231291','room',10000.00,NULL,'Advance',NULL,'','','cash',10100319,NULL,NULL,NULL,'credit','0',''),(320,'2022-08-22','15:38:44.567716','room_rent',24000.00,0.00,'room 108',2,NULL,NULL,NULL,10800322,NULL,2400.00,3600.00,'debit','0',NULL),(321,'2022-08-22','15:38:44.594448','room_rent',24000.00,0.00,'room 115',2,NULL,NULL,NULL,10800322,NULL,2400.00,3600.00,'debit','0',NULL),(322,'2022-08-22','15:38:44.614511','room',30000.00,NULL,'Advance',NULL,NULL,'','cash',10800322,NULL,NULL,NULL,'credit','0',''),(323,'2022-08-22','15:43:01.186777','room_service',63.60,0.00,'Mini Bar',2,NULL,'','',10700310,0.00,0.00,0.00,'debit','0',''),(324,'2022-08-22','15:43:57.599378','laundry',26.00,0.00,'laundry 16',2,NULL,'','',10300306,0.00,5.00,5.00,'debit','0',''),(325,'2022-08-22','15:46:17.389662','room_sevice',270.00,0.00,'room_sevice 8',4,NULL,'','',10200301,0.00,4.00,4.00,'debit','0',''),(326,'2022-10-13','17:04:51.053492','room_rent',108000.00,0.00,'room 103',9,NULL,NULL,NULL,10300324,NULL,10800.00,16200.00,'debit','0',NULL),(327,'2022-10-13','17:04:51.124580','room',10000.00,NULL,'Advance',NULL,NULL,'','cash',10300324,NULL,NULL,NULL,'credit','0',''),(328,'2022-10-18','15:22:39.907364','room_sevice',405.00,0.00,'room_sevice 9',6,NULL,'','',10300306,0.00,4.00,4.00,'debit','0',''),(329,'2022-10-19','14:17:31.218845','room_rent',36000.00,0.00,'room 103',3,NULL,NULL,NULL,10300325,NULL,3600.00,5400.00,'debit','0',NULL),(330,'2022-10-19','14:17:31.238461','room',10000.00,NULL,'Advance',NULL,'','','cash',10300325,NULL,NULL,NULL,'credit','0',''),(331,'2023-05-11','10:18:16.636612','room_sevice',280.00,0.00,'room_sevice 9',5,NULL,'','',10100294,0.00,4.00,4.00,'debit','0',''),(332,'2023-05-11','10:19:22.390774','room_sevice',378.00,0.00,'room_sevice 9',5,NULL,'','',10300306,0.00,4.00,4.00,'debit','0',''),(333,'2023-05-11','12:56:01.945637','room_rent',15000.00,0.00,'room 101',3,NULL,NULL,NULL,10100329,NULL,1500.00,2250.00,'debit','0',NULL),(334,'2023-05-11','12:56:01.963117','room',5000.00,NULL,'Advance',NULL,'','','cash',10100329,NULL,NULL,NULL,'credit','10000','i]\\\\demo'),(335,'2023-05-14','12:19:47.816504','room_rent',48000.00,0.00,'room 101',4,NULL,NULL,NULL,10100330,NULL,4800.00,7200.00,'debit','0',NULL),(336,'2023-05-14','12:19:47.836845','room',10000.00,NULL,'Advance',NULL,'','','cash',10100330,NULL,NULL,NULL,'credit','5000','');
/*!40000 ALTER TABLE `hm_backend_bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_budget`
--

DROP TABLE IF EXISTS `hm_backend_budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_budget` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `month` varchar(25) DEFAULT NULL,
  `budget` varchar(25) DEFAULT NULL,
  `item_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_budget_item_id_a31068ba_fk_hm_backend_item_name` (`item_id`),
  CONSTRAINT `hm_backend_budget_item_id_a31068ba_fk_hm_backend_item_name` FOREIGN KEY (`item_id`) REFERENCES `hm_backend_item` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_budget`
--

LOCK TABLES `hm_backend_budget` WRITE;
/*!40000 ALTER TABLE `hm_backend_budget` DISABLE KEYS */;
INSERT INTO `hm_backend_budget` VALUES (1,'','2000','Bottle A'),(2,'','20','Bottle B');
/*!40000 ALTER TABLE `hm_backend_budget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_cardno`
--

DROP TABLE IF EXISTS `hm_backend_cardno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_cardno` (
  `card_no` int NOT NULL,
  `cust_id_id` bigint DEFAULT NULL,
  `rev_id_id` bigint DEFAULT NULL,
  `room_no_id` int DEFAULT NULL,
  `checked_in` tinyint(1) NOT NULL,
  `secondary_room` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`card_no`),
  KEY `hm_backend_cardno_room_no_id_141e5d48_fk_hm_backend_room_room_no` (`room_no_id`),
  KEY `hm_backend_cardno_cust_id_id_7aa29cb6_fk_hm_backend_customer_id` (`cust_id_id`),
  KEY `hm_backend_cardno_rev_id_id_e5271da5_fk_HM_backen` (`rev_id_id`),
  CONSTRAINT `hm_backend_cardno_cust_id_id_7aa29cb6_fk_hm_backend_customer_id` FOREIGN KEY (`cust_id_id`) REFERENCES `hm_backend_customer` (`id`),
  CONSTRAINT `hm_backend_cardno_rev_id_id_e5271da5_fk_HM_backen` FOREIGN KEY (`rev_id_id`) REFERENCES `hm_backend_reservation` (`id`),
  CONSTRAINT `hm_backend_cardno_room_no_id_141e5d48_fk_hm_backend_room_room_no` FOREIGN KEY (`room_no_id`) REFERENCES `hm_backend_room` (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_cardno`
--

LOCK TABLES `hm_backend_cardno` WRITE;
/*!40000 ALTER TABLE `hm_backend_cardno` DISABLE KEYS */;
INSERT INTO `hm_backend_cardno` VALUES (10100294,229,294,NULL,0,NULL),(10100319,229,319,NULL,0,NULL),(10100329,229,329,NULL,0,''),(10100330,254,330,101,1,''),(10200301,236,301,NULL,0,NULL),(10300306,241,306,NULL,0,'108'),(10300324,229,324,NULL,0,''),(10300325,229,325,NULL,0,NULL),(10500309,229,309,NULL,0,NULL),(10600302,237,302,NULL,0,NULL),(10700310,231,310,NULL,0,NULL),(10800322,249,322,NULL,0,'115'),(10900311,238,311,NULL,0,NULL),(11000296,231,296,NULL,0,NULL),(11100312,229,312,NULL,0,NULL),(11200303,238,303,NULL,0,NULL),(11300313,236,313,NULL,0,NULL),(11400308,243,308,NULL,0,''),(11400316,229,316,NULL,0,NULL),(11400318,229,318,NULL,0,NULL);
/*!40000 ALTER TABLE `hm_backend_cardno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_coa`
--

DROP TABLE IF EXISTS `hm_backend_coa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_coa` (
  `id` int NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `responsible_center` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `tax` tinyint(1) DEFAULT NULL,
  `statement` varchar(100) DEFAULT NULL,
  `cost_center_id` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_coa_cost_center_id_dedd329b_fk_HM_backen` (`cost_center_id`),
  CONSTRAINT `hm_backend_coa_cost_center_id_dedd329b_fk_HM_backen` FOREIGN KEY (`cost_center_id`) REFERENCES `hm_backend_costcenter` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_coa`
--

LOCK TABLES `hm_backend_coa` WRITE;
/*!40000 ALTER TABLE `hm_backend_coa` DISABLE KEYS */;
INSERT INTO `hm_backend_coa` VALUES (345,NULL,NULL,'Credit',0,NULL,'mini_bar'),(410,NULL,NULL,'Debit',1,NULL,'advance'),(411,NULL,NULL,'Credit',1,NULL,'advance'),(420,NULL,NULL,'Credit',1,NULL,'room_rent'),(421,NULL,NULL,'Debit',1,NULL,'room_rent'),(430,NULL,NULL,'Credit',0,NULL,'room_clearance'),(431,NULL,NULL,'Debit',0,NULL,'room_clearance'),(453,NULL,NULL,'Debit',0,NULL,'mini_bar'),(456,NULL,NULL,'Debit',0,NULL,'room_service'),(990,NULL,NULL,'Credit',0,NULL,'room_service'),(991,NULL,NULL,'Debit',0,NULL,'laundry'),(999,NULL,NULL,'Credit',0,NULL,'laundry'),(1001,'','','Credit',0,'','pos'),(1002,'','','Debit',0,'','pos');
/*!40000 ALTER TABLE `hm_backend_coa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_complain`
--

DROP TABLE IF EXISTS `hm_backend_complain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_complain` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `card_no` varchar(50) DEFAULT NULL,
  `issueDate` date DEFAULT NULL,
  `issues` longtext,
  `particular` varchar(30) DEFAULT NULL,
  `room_no` varchar(15) DEFAULT NULL,
  `subject` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_complain`
--

LOCK TABLES `hm_backend_complain` WRITE;
/*!40000 ALTER TABLE `hm_backend_complain` DISABLE KEYS */;
INSERT INTO `hm_backend_complain` VALUES (7,'100202','2022-05-11','qwertyuiiop','MR. R','202','qwerty'),(8,'123','2022-05-09','asd','asd','123','asd'),(9,'110111','2022-05-13','aaaaa','q','201','a'),(10,'aa','0001-01-01','a','a','aa','a'),(11,'111','2022-05-19','a','a','101','a'),(12,'1111','0001-11-11','1','1','1111','1');
/*!40000 ALTER TABLE `hm_backend_complain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_complimentaryservice`
--

DROP TABLE IF EXISTS `hm_backend_complimentaryservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_complimentaryservice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time(6) DEFAULT NULL,
  `isAvailed` tinyint(1) DEFAULT NULL,
  `room_no_id` int DEFAULT NULL,
  `card_no_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_complimen_room_no_id_1da3f323_fk_HM_backen` (`room_no_id`),
  KEY `hm_backend_complimen_card_no_id_2c530c5c_fk_HM_backen` (`card_no_id`),
  CONSTRAINT `hm_backend_complimen_card_no_id_2c530c5c_fk_HM_backen` FOREIGN KEY (`card_no_id`) REFERENCES `hm_backend_cardno` (`card_no`),
  CONSTRAINT `hm_backend_complimen_room_no_id_1da3f323_fk_HM_backen` FOREIGN KEY (`room_no_id`) REFERENCES `hm_backend_room` (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_complimentaryservice`
--

LOCK TABLES `hm_backend_complimentaryservice` WRITE;
/*!40000 ALTER TABLE `hm_backend_complimentaryservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `hm_backend_complimentaryservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_consierge`
--

DROP TABLE IF EXISTS `hm_backend_consierge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_consierge` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `card_no` varchar(50) DEFAULT NULL,
  `driver_assigned` varchar(100) DEFAULT NULL,
  `pickup_date` date DEFAULT NULL,
  `pickup_time` time(6) DEFAULT NULL,
  `rent_type` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_consierge`
--

LOCK TABLES `hm_backend_consierge` WRITE;
/*!40000 ALTER TABLE `hm_backend_consierge` DISABLE KEYS */;
/*!40000 ALTER TABLE `hm_backend_consierge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_costcenter`
--

DROP TABLE IF EXISTS `hm_backend_costcenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_costcenter` (
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_costcenter`
--

LOCK TABLES `hm_backend_costcenter` WRITE;
/*!40000 ALTER TABLE `hm_backend_costcenter` DISABLE KEYS */;
INSERT INTO `hm_backend_costcenter` VALUES ('advance'),('laundry'),('mini_bar'),('pos'),('room_clearance'),('room_rent'),('room_service');
/*!40000 ALTER TABLE `hm_backend_costcenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_customer`
--

DROP TABLE IF EXISTS `hm_backend_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `nid` varchar(50) DEFAULT NULL,
  `dl` varchar(15) DEFAULT NULL,
  `passport` varchar(9) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `passport_exp` varchar(50) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `visa_expiry` date DEFAULT NULL,
  `visa_issue` date DEFAULT NULL,
  `visa_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_customer`
--

LOCK TABLES `hm_backend_customer` WRITE;
/*!40000 ALTER TABLE `hm_backend_customer` DISABLE KEYS */;
INSERT INTO `hm_backend_customer` VALUES (229,'Samin','SPD',NULL,NULL,NULL,'sadasdasd','+880 1721 101195',NULL,NULL,'spd@gmail.com',NULL,NULL,NULL,'Mr.',NULL,NULL,NULL),(230,NULL,NULL,NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(231,'X','Y','',NULL,'','asdsad','+880 1721 101112','','','xy@gmail.com',NULL,'','','Mr.',NULL,NULL,''),(232,'Q','W',NULL,NULL,NULL,'asd','+880 1722 222222',NULL,NULL,'qw@gmail.com',NULL,NULL,NULL,'Ms.',NULL,NULL,NULL),(233,NULL,NULL,NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(234,NULL,NULL,NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(235,NULL,NULL,NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(236,'S','S',NULL,NULL,NULL,'asdasdsad','+880 1721 101194',NULL,NULL,'as@gmail.com',NULL,NULL,NULL,'Mr.',NULL,NULL,NULL),(237,'S','W',NULL,NULL,NULL,'asdasd','+880 1721 101193',NULL,NULL,'sw@gmail.com',NULL,NULL,NULL,'Ms.',NULL,NULL,NULL),(238,'W','D',NULL,NULL,NULL,'asdsad','+880 1721 101192',NULL,NULL,'sd@gmail.com',NULL,NULL,NULL,'Mr.',NULL,NULL,NULL),(239,NULL,NULL,NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(240,NULL,NULL,NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(241,'Samin','Yeaser','',NULL,'','370, Gulshan-1, Dhaka','+880 1721101010','Bangladesh','','wf@gmail.com',NULL,'','','Mr.',NULL,NULL,''),(242,NULL,NULL,NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(243,'w','w','',NULL,'','asdsd','+880 1721 101190','','','w@gmail.com',NULL,'','','Mr.',NULL,NULL,''),(244,NULL,NULL,NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(245,NULL,NULL,NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(246,NULL,NULL,NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(247,NULL,NULL,NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(248,NULL,NULL,NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(249,'Farhan','Khan','',NULL,'','asd, Dhaka','+880 1721 101100','','','asd@gmail.com',NULL,'','','Mr.',NULL,NULL,''),(250,NULL,NULL,NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(251,NULL,NULL,NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(252,NULL,NULL,NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(253,NULL,NULL,NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(254,'Shahadat Musharraf','Khan',NULL,NULL,NULL,'Gulshan, Dhaka','+880 1711 568138',NULL,NULL,'smkhan@shirtmakersltd.com',NULL,NULL,NULL,'Mr.',NULL,NULL,NULL);
/*!40000 ALTER TABLE `hm_backend_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_customerpicture`
--

DROP TABLE IF EXISTS `hm_backend_customerpicture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_customerpicture` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pic` varchar(100) DEFAULT NULL,
  `cust_id_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_customerp_cust_id_id_a9092944_fk_HM_backen` (`cust_id_id`),
  CONSTRAINT `hm_backend_customerp_cust_id_id_a9092944_fk_HM_backen` FOREIGN KEY (`cust_id_id`) REFERENCES `hm_backend_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_customerpicture`
--

LOCK TABLES `hm_backend_customerpicture` WRITE;
/*!40000 ALTER TABLE `hm_backend_customerpicture` DISABLE KEYS */;
INSERT INTO `hm_backend_customerpicture` VALUES (12,'profile-icon-design-free-vector.webp',229),(13,'a_wEfbui2.png',254);
/*!40000 ALTER TABLE `hm_backend_customerpicture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_damage`
--

DROP TABLE IF EXISTS `hm_backend_damage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_damage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `damage_des` longtext,
  `date` datetime(6) DEFAULT NULL,
  `room_no_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_damage_room_no_id_8206ec37_fk_hm_backend_room_room_no` (`room_no_id`),
  CONSTRAINT `hm_backend_damage_room_no_id_8206ec37_fk_hm_backend_room_room_no` FOREIGN KEY (`room_no_id`) REFERENCES `hm_backend_room` (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_damage`
--

LOCK TABLES `hm_backend_damage` WRITE;
/*!40000 ALTER TABLE `hm_backend_damage` DISABLE KEYS */;
/*!40000 ALTER TABLE `hm_backend_damage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_employee`
--

DROP TABLE IF EXISTS `hm_backend_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_employee` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_employee`
--

LOCK TABLES `hm_backend_employee` WRITE;
/*!40000 ALTER TABLE `hm_backend_employee` DISABLE KEYS */;
INSERT INTO `hm_backend_employee` VALUES (1,'Mr. Hossain'),(2,'Mr. Hasan');
/*!40000 ALTER TABLE `hm_backend_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_foodcategory`
--

DROP TABLE IF EXISTS `hm_backend_foodcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_foodcategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_foodcategory`
--

LOCK TABLES `hm_backend_foodcategory` WRITE;
/*!40000 ALTER TABLE `hm_backend_foodcategory` DISABLE KEYS */;
INSERT INTO `hm_backend_foodcategory` VALUES (1,'BreakFast'),(2,'Bar'),(4,'Dinner');
/*!40000 ALTER TABLE `hm_backend_foodcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_foodorder`
--

DROP TABLE IF EXISTS `hm_backend_foodorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_foodorder` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time(6) DEFAULT NULL,
  `special_request` longtext,
  `room_no_id` int DEFAULT NULL,
  `card_no_id` int DEFAULT NULL,
  `details` longtext,
  `status` varchar(100) DEFAULT NULL,
  `total_bill` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_foodorder_room_no_id_d2d0bf6c_fk_HM_backen` (`room_no_id`),
  KEY `hm_backend_foodorder_card_no_id_914378bf_fk_HM_backen` (`card_no_id`),
  CONSTRAINT `hm_backend_foodorder_card_no_id_914378bf_fk_HM_backen` FOREIGN KEY (`card_no_id`) REFERENCES `hm_backend_cardno` (`card_no`),
  CONSTRAINT `hm_backend_foodorder_room_no_id_d2d0bf6c_fk_HM_backen` FOREIGN KEY (`room_no_id`) REFERENCES `hm_backend_room` (`room_no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_foodorder`
--

LOCK TABLES `hm_backend_foodorder` WRITE;
/*!40000 ALTER TABLE `hm_backend_foodorder` DISABLE KEYS */;
INSERT INTO `hm_backend_foodorder` VALUES (3,'2022-05-09','04:42:00.000000','Extra Cheese',NULL,10100294,'Pizza 3|Pepsi 4','pending',410),(4,'2022-05-09','07:11:00.000000','NA',NULL,10100294,'Pepsi 2','delivered',43),(6,'2022-06-16','04:35:00.000000','NA',NULL,11100312,'Pizza 4','pending',432),(7,'2022-06-16','06:57:00.000000','NA',NULL,10300306,'Pepsi 2|Pizza 2','pending',259),(8,'2022-08-23','09:45:00.000000','NA',NULL,10200301,'Pizza 2|Coke 2','pending',270),(9,'2022-10-18','09:21:00.000000','NA',NULL,10300306,'Pizza 3|Coke 3','delivered',405);
/*!40000 ALTER TABLE `hm_backend_foodorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_foodpicture`
--

DROP TABLE IF EXISTS `hm_backend_foodpicture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_foodpicture` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pic` varchar(100) DEFAULT NULL,
  `food_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_foodpictu_food_id_40d664a1_fk_HM_backen` (`food_id`),
  CONSTRAINT `hm_backend_foodpictu_food_id_40d664a1_fk_HM_backen` FOREIGN KEY (`food_id`) REFERENCES `hm_backend_foodtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_foodpicture`
--

LOCK TABLES `hm_backend_foodpicture` WRITE;
/*!40000 ALTER TABLE `hm_backend_foodpicture` DISABLE KEYS */;
INSERT INTO `hm_backend_foodpicture` VALUES (1,'pepsi-can-250-ml.jfif',4),(2,'5fe323e5282cde4610e3face_1608721381076.jpg',6),(3,'coca-cola-125-ltr.jfif',7),(4,'homemade-chocolate-ice-cream-recipe-7-500x500.jpg',8),(5,'54f65d39ab05d_-_183341797.jpg',9),(6,'Strawberry-Mojito-008.webp',10),(7,'HERO_Strcutural_Elements_of-Wine_GettyImages-1233242907_1920x1280.jpg',11),(8,'16354-easy-meatloaf-mfs-74-1x1-1-bc5f6aec17bb42b99d336843da2eb5d3.jpg',12),(9,'Chicken-Parmesan-Recipe-f-500x500.webp',13),(10,'Indian-samosa-chutney.webp',14),(11,'singara-recipe-2.webp',15),(12,'apple_158989157.jpg',16);
/*!40000 ALTER TABLE `hm_backend_foodpicture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_foodposorder`
--

DROP TABLE IF EXISTS `hm_backend_foodposorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_foodposorder` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subTotal` decimal(15,2) DEFAULT NULL,
  `tax` decimal(15,2) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `item` varchar(200) DEFAULT NULL,
  `itemQuantity` varchar(200) DEFAULT NULL,
  `itemName` varchar(200) DEFAULT NULL,
  `card_no_id` int DEFAULT NULL,
  `table_id` bigint DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_foodposor_card_no_id_5fce2bbc_fk_HM_backen` (`card_no_id`),
  KEY `hm_backend_foodposorder_table_id_8903a980_fk_hm_backend_table_id` (`table_id`),
  CONSTRAINT `hm_backend_foodposor_card_no_id_5fce2bbc_fk_HM_backen` FOREIGN KEY (`card_no_id`) REFERENCES `hm_backend_cardno` (`card_no`),
  CONSTRAINT `hm_backend_foodposorder_table_id_8903a980_fk_hm_backend_table_id` FOREIGN KEY (`table_id`) REFERENCES `hm_backend_table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_foodposorder`
--

LOCK TABLES `hm_backend_foodposorder` WRITE;
/*!40000 ALTER TABLE `hm_backend_foodposorder` DISABLE KEYS */;
INSERT INTO `hm_backend_foodposorder` VALUES (18,285.00,15.00,327.75,'6|7|8|14','1|1|1|3','Pizza|Coke|Ice Cream|Samosa',NULL,3,'Completed'),(26,3000.00,15.00,3450.00,'13|12|10','4|2|1','Chicken parmesan|Meatloaf|Cocktails',NULL,4,'Served'),(27,2100.00,15.00,2415.00,'13|12','4|1','Chicken parmesan|Meatloaf',NULL,5,'Served'),(29,800.00,15.00,920.00,'11','1','Wine',NULL,6,'Served'),(30,2400.00,15.00,2760.00,'9|10|11','1|2|1','Beer|Cocktails|Wine',10100329,7,'Completed'),(31,305.00,15.00,350.75,'4|6|7|8','1|1|1|4','Pepsi|Pizza|Coke|Ice Cream',NULL,8,'Completed'),(32,1650.00,15.00,1897.50,'13|12','3|1','Chicken parmesan|Meatloaf',10100329,9,'Completed'),(33,2600.00,15.00,2990.00,'11|10|9','1|1|3','Wine|Cocktails|Beer',10100329,1,'Completed'),(34,145.00,15.00,166.75,'4|6|7','1|1|1','Pepsi|Pizza|Coke',10100329,1,'Completed'),(35,2200.00,15.00,2530.00,'11|10','2|1','Wine|Cocktails',NULL,1,'Placed'),(36,1200.00,15.00,1380.00,'13|12','2|1','Chicken parmesan|Meatloaf',NULL,3,'In Kitchen'),(37,1040.00,15.00,1196.00,'13|4|6','2|2|1','Chicken parmesan|Pepsi|Pizza',NULL,4,'In Kitchen');
/*!40000 ALTER TABLE `hm_backend_foodposorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_foodtype`
--

DROP TABLE IF EXISTS `hm_backend_foodtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_foodtype` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `food_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_foodtype_food_id_22228d6e_fk_HM_backen` (`food_id`),
  CONSTRAINT `hm_backend_foodtype_food_id_22228d6e_fk_HM_backen` FOREIGN KEY (`food_id`) REFERENCES `hm_backend_foodcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_foodtype`
--

LOCK TABLES `hm_backend_foodtype` WRITE;
/*!40000 ALTER TABLE `hm_backend_foodtype` DISABLE KEYS */;
INSERT INTO `hm_backend_foodtype` VALUES (4,'Pepsi',20.00,1),(6,'Pizza',100.00,1),(7,'Coke',25.00,1),(8,'Ice Cream',40.00,1),(9,'Beer',400.00,2),(10,'Cocktails',600.00,2),(11,'Wine',800.00,2),(12,'Meatloaf',300.00,4),(13,'Chicken parmesan',450.00,4),(14,'Samosa',40.00,1),(15,'Singara',50.00,1),(16,'Apple',110.00,1);
/*!40000 ALTER TABLE `hm_backend_foodtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_glmapping`
--

DROP TABLE IF EXISTS `hm_backend_glmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_glmapping` (
  `id` varchar(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `credit` varchar(50) DEFAULT NULL,
  `debit` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_glmapping`
--

LOCK TABLES `hm_backend_glmapping` WRITE;
/*!40000 ALTER TABLE `hm_backend_glmapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `hm_backend_glmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_inventorytype`
--

DROP TABLE IF EXISTS `hm_backend_inventorytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_inventorytype` (
  `type_name` varchar(50) NOT NULL,
  PRIMARY KEY (`type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_inventorytype`
--

LOCK TABLES `hm_backend_inventorytype` WRITE;
/*!40000 ALTER TABLE `hm_backend_inventorytype` DISABLE KEYS */;
INSERT INTO `hm_backend_inventorytype` VALUES ('bedroom'),('miniBar'),('washroom');
/*!40000 ALTER TABLE `hm_backend_inventorytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_issueitem`
--

DROP TABLE IF EXISTS `hm_backend_issueitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_issueitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `orderType` varchar(30) DEFAULT NULL,
  `docNumber` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` varchar(30) DEFAULT NULL,
  `reamrk` varchar(100) DEFAULT NULL,
  `ledger` tinyint(1) DEFAULT NULL,
  `projectName` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `statusS` varchar(30) DEFAULT NULL,
  `number` varchar(30) DEFAULT NULL,
  `returnNumber` varchar(30) DEFAULT NULL,
  `orderBy` varchar(30) DEFAULT NULL,
  `issueTo` varchar(30) DEFAULT NULL,
  `item` varchar(30) DEFAULT NULL,
  `itemName` varchar(30) DEFAULT NULL,
  `requestedItem` varchar(30) DEFAULT NULL,
  `pendingItem` varchar(30) DEFAULT NULL,
  `itemMaster_id` varchar(100) DEFAULT NULL,
  `project_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_issueitem_itemMaster_id_36b044a4_fk_HM_backen` (`itemMaster_id`),
  KEY `hm_backend_issueitem_project_id_a7814f0a_fk_HM_backen` (`project_id`),
  CONSTRAINT `hm_backend_issueitem_itemMaster_id_36b044a4_fk_HM_backen` FOREIGN KEY (`itemMaster_id`) REFERENCES `hm_backend_item` (`name`),
  CONSTRAINT `hm_backend_issueitem_project_id_a7814f0a_fk_HM_backen` FOREIGN KEY (`project_id`) REFERENCES `hm_backend_project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_issueitem`
--

LOCK TABLES `hm_backend_issueitem` WRITE;
/*!40000 ALTER TABLE `hm_backend_issueitem` DISABLE KEYS */;
INSERT INTO `hm_backend_issueitem` VALUES (1,'II','000001','2023-03-29','10','',1,'Project 02','101','approved',NULL,NULL,'admin','Hello','1','Shampoo','10','0','Shampoo',2),(2,'IR','IR000001','2023-03-29','5','',1,'Project 02','101','approved','1',NULL,'admin','Hello','1','Shampoo',NULL,NULL,'Shampoo',2),(3,'II','000002','2023-05-14','1','',1,'Project 01','101','approved',NULL,NULL,NULL,'QWE','2','Bottle A','1','0','Bottle A',1);
/*!40000 ALTER TABLE `hm_backend_issueitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_item`
--

DROP TABLE IF EXISTS `hm_backend_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_item` (
  `name` varchar(100) NOT NULL,
  `defaultQuantity` int DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `is_vat` tinyint(1) DEFAULT NULL,
  `vat` decimal(10,2) DEFAULT NULL,
  `item_type_id` varchar(50) DEFAULT NULL,
  `costingMethod` varchar(25) DEFAULT NULL,
  `line` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `hm_backend_item_item_type_id_01a506d2_fk_HM_backen` (`item_type_id`),
  CONSTRAINT `hm_backend_item_item_type_id_01a506d2_fk_HM_backen` FOREIGN KEY (`item_type_id`) REFERENCES `hm_backend_inventorytype` (`type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_item`
--

LOCK TABLES `hm_backend_item` WRITE;
/*!40000 ALTER TABLE `hm_backend_item` DISABLE KEYS */;
INSERT INTO `hm_backend_item` VALUES ('Bottle A',2,400.00,1,3.00,'miniBar',NULL,NULL),('Bottle B',5,30.00,1,6.00,'miniBar',NULL,NULL),('Paste',2,0.00,0,0.00,'washroom',NULL,NULL),('Pillow',2,0.00,0,0.00,'bedroom',NULL,NULL),('Shampoo',4,0.00,0,0.00,'washroom',NULL,NULL),('Soap',2,0.00,0,0.00,'washroom',NULL,NULL),('Toothbrush',2,0.00,0,0.00,'washroom',NULL,NULL),('Towel',5,0.00,0,0.00,'bedroom',NULL,NULL);
/*!40000 ALTER TABLE `hm_backend_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_laundry`
--

DROP TABLE IF EXISTS `hm_backend_laundry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_laundry` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_received` date DEFAULT NULL,
  `ex_date_delivery` date DEFAULT NULL,
  `total_item` int DEFAULT NULL,
  `total_cost` decimal(8,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_phone` int DEFAULT NULL,
  `room_no_id` int DEFAULT NULL,
  `details` longtext,
  `card_no_id` int DEFAULT NULL,
  `claimed_date` date DEFAULT NULL,
  `claimed_time` time(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_laundry_room_no_id_edb7161b_fk_HM_backen` (`room_no_id`),
  KEY `hm_backend_laundry_card_no_id_bc49f87a_fk_HM_backen` (`card_no_id`),
  CONSTRAINT `hm_backend_laundry_card_no_id_bc49f87a_fk_HM_backen` FOREIGN KEY (`card_no_id`) REFERENCES `hm_backend_cardno` (`card_no`),
  CONSTRAINT `hm_backend_laundry_room_no_id_edb7161b_fk_HM_backen` FOREIGN KEY (`room_no_id`) REFERENCES `hm_backend_room` (`room_no`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_laundry`
--

LOCK TABLES `hm_backend_laundry` WRITE;
/*!40000 ALTER TABLE `hm_backend_laundry` DISABLE KEYS */;
INSERT INTO `hm_backend_laundry` VALUES (5,'2022-05-19','2022-05-14',2,200.00,1,'ad',213232,NULL,'Female,Saree,Wash(100),2,200',NULL,'2022-05-11','06:29:00.000000'),(6,'2022-05-19','2022-05-13',10,98.00,1,'sad',123123,NULL,'Male,Shirt,Wash(12),2,24|Male,Shirt,Iron(12),4,48|Male,Shirt,Dry(13),2,26',NULL,'2022-05-11','06:31:00.000000'),(7,'2022-05-12','2022-05-13',3,0.00,1,'NaN',0,NULL,'Male,Shirt,(),3,0',10100294,'2022-06-16','04:32:00.000000'),(8,'2022-05-26','2022-05-28',3,66.00,1,'A',12,NULL,'Male,Pant,Wash(22),3,66',NULL,'2022-05-25','04:34:00.000000'),(9,'2022-06-01','2022-06-03',2,24.00,0,'SPD',1721101195,NULL,'Male,Shirt,Wash(12),2,24',NULL,NULL,NULL),(10,'2022-06-01','2022-06-03',5,324.00,1,'Farhan',1722222222,NULL,'Male,Shirt,Wash(12),2,24|Female,Saree,Wash(100),3,300',NULL,'2022-06-01','06:45:00.000000'),(11,'2022-06-01','2022-06-04',4,52.00,0,'NaN',0,NULL,'Male,Shirt,Wash(12),4,48',10100294,NULL,NULL),(12,'2022-06-05','2022-06-07',3,39.00,0,'NaN',0,NULL,'Male,Shirt,Wash(12),3,36',10100294,NULL,NULL),(13,'2022-06-16','2022-06-18',2,26.00,0,'NaN',0,NULL,'Male,Shirt,Wash(12),2,24',10200301,NULL,NULL),(14,'2022-07-27','2022-07-27',3,39.00,0,'NaN',0,NULL,'Male,Shirt,Wash(12),3,36',10300306,NULL,NULL),(15,'2022-08-22','2022-08-25',2,48.00,0,'NaN',0,NULL,'Male,Pant,Wash(22),2,44',10500309,NULL,NULL),(16,'2022-08-22','2022-08-24',2,26.00,1,'NaN',0,NULL,'Male,Shirt,Wash(12),2,24',10300306,'2022-08-22','09:44:00.000000');
/*!40000 ALTER TABLE `hm_backend_laundry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_laundrycost`
--

DROP TABLE IF EXISTS `hm_backend_laundrycost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_laundrycost` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_name` varchar(10) DEFAULT NULL,
  `gender_type` varchar(10) DEFAULT NULL,
  `wash_cost` int DEFAULT NULL,
  `dry_cost` int DEFAULT NULL,
  `iron_cost` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_laundrycost`
--

LOCK TABLES `hm_backend_laundrycost` WRITE;
/*!40000 ALTER TABLE `hm_backend_laundrycost` DISABLE KEYS */;
INSERT INTO `hm_backend_laundrycost` VALUES (3,'Shirt','Male',12,13,12),(4,'Pant','Male',22,23,22),(5,'skirt','Female',34,43,32);
/*!40000 ALTER TABLE `hm_backend_laundrycost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_linetype`
--

DROP TABLE IF EXISTS `hm_backend_linetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_linetype` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_linetype`
--

LOCK TABLES `hm_backend_linetype` WRITE;
/*!40000 ALTER TABLE `hm_backend_linetype` DISABLE KEYS */;
INSERT INTO `hm_backend_linetype` VALUES (1,'Capex'),(2,'Opex');
/*!40000 ALTER TABLE `hm_backend_linetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_lostandfound`
--

DROP TABLE IF EXISTS `hm_backend_lostandfound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_lostandfound` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time(6) DEFAULT NULL,
  `item` varchar(100) DEFAULT NULL,
  `description` longtext,
  `found_by` longtext,
  `claimed` tinyint(1) NOT NULL,
  `claimed_name` varchar(100) DEFAULT NULL,
  `claimed_date` date DEFAULT NULL,
  `claimed_time` time(6) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `nid` int DEFAULT NULL,
  `passport` varchar(13) DEFAULT NULL,
  `room_no_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_lostandfo_room_no_id_db53bdca_fk_HM_backen` (`room_no_id`),
  CONSTRAINT `hm_backend_lostandfo_room_no_id_db53bdca_fk_HM_backen` FOREIGN KEY (`room_no_id`) REFERENCES `hm_backend_room` (`room_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_lostandfound`
--

LOCK TABLES `hm_backend_lostandfound` WRITE;
/*!40000 ALTER TABLE `hm_backend_lostandfound` DISABLE KEYS */;
INSERT INTO `hm_backend_lostandfound` VALUES (2,'2022-05-09','05:22:00.000000','1','asd','asd',1,'123123','2022-05-23','12:16:00.000000','+880 2 13123213',123,'123123',NULL),(3,'2022-06-05','10:19:00.000000','1','book','',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'2022-08-22','09:44:00.000000','1','sad','asdasd',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `hm_backend_lostandfound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_luggagestorage`
--

DROP TABLE IF EXISTS `hm_backend_luggagestorage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_luggagestorage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tag_no` varchar(50) DEFAULT NULL,
  `bag_no` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time(6) DEFAULT NULL,
  `claimed_date` date DEFAULT NULL,
  `claimed_time` time(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_luggagestorage`
--

LOCK TABLES `hm_backend_luggagestorage` WRITE;
/*!40000 ALTER TABLE `hm_backend_luggagestorage` DISABLE KEYS */;
INSERT INTO `hm_backend_luggagestorage` VALUES (2,'1','2',1,'Samin','103324324234324240','2022-05-09','05:15:00.000000','2022-05-11','04:57:00.000000'),(3,'aa','2',0,'asd','1721101195','2022-05-11','04:42:00.000000',NULL,NULL),(4,'asdsd','2',0,'asdsad','asdsad','2022-05-11','04:53:00.000000',NULL,NULL),(5,'eaeaea','2',0,'Samin Yeaser Rahman','01721101195','2022-05-12','05:13:00.000000',NULL,NULL);
/*!40000 ALTER TABLE `hm_backend_luggagestorage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_maintenance`
--

DROP TABLE IF EXISTS `hm_backend_maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_maintenance` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `type_main` varchar(100) DEFAULT NULL,
  `priority` varchar(50) DEFAULT NULL,
  `comments` longtext,
  `room_no_id` int DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `end_time` time(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_maintenan_room_no_id_911b45bc_fk_HM_backen` (`room_no_id`),
  CONSTRAINT `hm_backend_maintenan_room_no_id_911b45bc_fk_HM_backen` FOREIGN KEY (`room_no_id`) REFERENCES `hm_backend_room` (`room_no`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_maintenance`
--

LOCK TABLES `hm_backend_maintenance` WRITE;
/*!40000 ALTER TABLE `hm_backend_maintenance` DISABLE KEYS */;
INSERT INTO `hm_backend_maintenance` VALUES (5,'2022-05-09','asd','urgent','',NULL,'done','2022-05-22','10:12:00.000000'),(6,'2022-05-09','12','low','',NULL,'done','2022-05-22','10:12:00.000000'),(7,'2022-05-22','a','low','',NULL,'done','2022-05-22','10:13:00.000000'),(8,'2022-06-05','a','urgent','',NULL,'done','2022-06-15','10:52:00.000000'),(9,'2022-06-15','asd','urgent','',NULL,'done','2022-06-15','10:52:00.000000'),(10,'2022-06-15','a','low','',NULL,'done','2022-06-15','10:53:00.000000'),(11,'2022-06-16','demo','low','',NULL,'done','2022-06-16','01:39:00.000000'),(12,'2022-06-16','Demo1','urgent','',NULL,'done','2022-07-28','05:38:00.000000'),(13,'2022-07-28','asd','urgent','',NULL,'done','2023-03-13','10:16:00.000000'),(14,'2022-08-22','as','urgent','',NULL,'done','2023-03-13','10:16:00.000000'),(15,'2023-05-11','asd','urgent','',NULL,'done','2023-05-11','04:26:00.000000'),(16,'2023-05-14','Broken Light','urgent','',202,'pending',NULL,NULL);
/*!40000 ALTER TABLE `hm_backend_maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_productdetails`
--

DROP TABLE IF EXISTS `hm_backend_productdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_productdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `stockI` varchar(30) DEFAULT NULL,
  `stock` varchar(30) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `op` varchar(30) DEFAULT NULL,
  `batch` varchar(30) DEFAULT NULL,
  `projectName` varchar(30) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `prod_id` bigint DEFAULT NULL,
  `project_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_productde_prod_id_7199f176_fk_HM_backen` (`prod_id`),
  KEY `hm_backend_productde_project_id_0a6e5a82_fk_HM_backen` (`project_id`),
  CONSTRAINT `hm_backend_productde_prod_id_7199f176_fk_HM_backen` FOREIGN KEY (`prod_id`) REFERENCES `hm_backend_productraw` (`id`),
  CONSTRAINT `hm_backend_productde_project_id_0a6e5a82_fk_HM_backen` FOREIGN KEY (`project_id`) REFERENCES `hm_backend_project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_productdetails`
--

LOCK TABLES `hm_backend_productdetails` WRITE;
/*!40000 ALTER TABLE `hm_backend_productdetails` DISABLE KEYS */;
INSERT INTO `hm_backend_productdetails` VALUES (1,'1','0','24','2023-03-16','1','','Project 01','2023-03-16 06:52:13.555541','2023-05-14 04:34:16.154632',2,1),(2,'1','1','48','2023-03-16','1','','Project 01','2023-03-16 06:52:24.750149','2023-03-16 06:52:24.750149',3,1),(3,'20','190','500','2023-03-22','1','1','Project 02','2023-03-27 04:46:01.805215','2023-03-29 05:37:03.325294',1,2),(4,'100','100','','2023-03-28','IM','','Project 02','2023-03-27 09:02:30.720523','2023-03-27 09:02:30.720523',3,2),(5,'5','5','','2023-03-29','return','','Project 02','2023-03-29 05:48:06.152169','2023-03-29 05:48:06.152169',1,2);
/*!40000 ALTER TABLE `hm_backend_productdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_productraw`
--

DROP TABLE IF EXISTS `hm_backend_productraw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_productraw` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(15) DEFAULT NULL,
  `costingMethod` varchar(30) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `item_id` varchar(100) DEFAULT NULL,
  `item_type_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_productraw_item_id_4ea0f0dd_fk_hm_backend_item_name` (`item_id`),
  KEY `hm_backend_productra_item_type_id_22a46793_fk_HM_backen` (`item_type_id`),
  CONSTRAINT `hm_backend_productra_item_type_id_22a46793_fk_HM_backen` FOREIGN KEY (`item_type_id`) REFERENCES `hm_backend_inventorytype` (`type_name`),
  CONSTRAINT `hm_backend_productraw_item_id_4ea0f0dd_fk_hm_backend_item_name` FOREIGN KEY (`item_id`) REFERENCES `hm_backend_item` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_productraw`
--

LOCK TABLES `hm_backend_productraw` WRITE;
/*!40000 ALTER TABLE `hm_backend_productraw` DISABLE KEYS */;
INSERT INTO `hm_backend_productraw` VALUES (1,'Shampoo','fifo','2023-03-16 06:23:59.552937','2023-03-27 05:31:40.028276','Shampoo','washroom'),(2,'Bottle A','fifo','2023-03-16 06:24:07.757500','2023-03-27 05:37:22.065941','Bottle A','miniBar'),(3,'Bottle B','fifo','2023-03-16 06:24:18.611095','2023-03-27 05:37:28.628002','Bottle B','miniBar'),(4,'Soap','fifo','2023-03-29 09:11:29.132327','2023-03-29 09:11:29.132327','Soap','washroom');
/*!40000 ALTER TABLE `hm_backend_productraw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_project`
--

DROP TABLE IF EXISTS `hm_backend_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_project` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_project`
--

LOCK TABLES `hm_backend_project` WRITE;
/*!40000 ALTER TABLE `hm_backend_project` DISABLE KEYS */;
INSERT INTO `hm_backend_project` VALUES (1,'Project 01','2023-03-15 07:07:53.202430','2023-03-15 07:07:53.202430'),(2,'Project 02','2023-03-15 07:07:55.191560','2023-03-15 07:07:55.191560'),(3,'Project 03','2023-03-15 07:07:56.772374','2023-03-15 07:07:56.772374');
/*!40000 ALTER TABLE `hm_backend_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_puchaseorder`
--

DROP TABLE IF EXISTS `hm_backend_puchaseorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_puchaseorder` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `orderNumber` varchar(25) DEFAULT NULL,
  `orderBy` varchar(25) DEFAULT NULL,
  `requestedBy` varchar(25) DEFAULT NULL,
  `date_requested` date DEFAULT NULL,
  `date_expected` date DEFAULT NULL,
  `urgency` varchar(25) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `address_delivery` varchar(250) DEFAULT NULL,
  `address_billing` varchar(250) DEFAULT NULL,
  `statusC` varchar(25) DEFAULT NULL,
  `statusName` varchar(25) DEFAULT NULL,
  `status_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_puchaseor_status_id_1279ea61_fk_HM_backen` (`status_id`),
  CONSTRAINT `hm_backend_puchaseor_status_id_1279ea61_fk_HM_backen` FOREIGN KEY (`status_id`) REFERENCES `hm_backend_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_puchaseorder`
--

LOCK TABLES `hm_backend_puchaseorder` WRITE;
/*!40000 ALTER TABLE `hm_backend_puchaseorder` DISABLE KEYS */;
INSERT INTO `hm_backend_puchaseorder` VALUES (2,'000001','admin','1','2023-03-01','2023-03-08','Low','','asd','asd','OR','pending',2),(3,'000003','admin','1','2023-03-28','2023-03-30','Low','','asd','asd','513','approved',11),(4,'000004','admin','1','2023-03-31','2023-04-01','Low','','1','1','550','pending',10),(5,'000005','admin','1','2023-03-29','2023-03-29','Urgent','asd','','','550','pending',10),(6,'000006','accounts','1','2023-05-14','2023-05-20','Low','','16/1, Bashundhara','16/1, Bashundhara','513','approved',11);
/*!40000 ALTER TABLE `hm_backend_puchaseorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_requesteditem`
--

DROP TABLE IF EXISTS `hm_backend_requesteditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_requesteditem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `projectName` varchar(30) DEFAULT NULL,
  `lineName` varchar(30) DEFAULT NULL,
  `quantity` varchar(30) DEFAULT NULL,
  `unitPrice` varchar(30) DEFAULT NULL,
  `statusC` varchar(25) DEFAULT NULL,
  `statusName` varchar(25) DEFAULT NULL,
  `remarks` varchar(30) DEFAULT NULL,
  `supplierLimit` varchar(30) DEFAULT NULL,
  `supplierdate` date DEFAULT NULL,
  `supplier` varchar(30) DEFAULT NULL,
  `supplierValue` varchar(30) DEFAULT NULL,
  `supplierValueTax` varchar(30) DEFAULT NULL,
  `supplierValueOther` varchar(30) DEFAULT NULL,
  `supplierSelectedQuaote` varchar(30) DEFAULT NULL,
  `supplierSelectedtax` varchar(30) DEFAULT NULL,
  `supplierSelectedOther` varchar(30) DEFAULT NULL,
  `paymentTerms` varchar(30) DEFAULT NULL,
  `paymentAdvanceSytem` varchar(30) DEFAULT NULL,
  `paymentAdvanceAmount` varchar(30) DEFAULT NULL,
  `paymentRemarks` varchar(30) DEFAULT NULL,
  `quantityReceived` varchar(30) DEFAULT NULL,
  `quantityOpen` varchar(30) DEFAULT NULL,
  `remarksReceived` varchar(30) DEFAULT NULL,
  `receivedBoolean` tinyint(1) DEFAULT NULL,
  `receipDate` date DEFAULT NULL,
  `cc_id` varchar(25) DEFAULT NULL,
  `item_id` varchar(100) DEFAULT NULL,
  `orderId_id` bigint DEFAULT NULL,
  `project_id` bigint DEFAULT NULL,
  `status_id` bigint DEFAULT NULL,
  `supplierSelected` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_requested_cc_id_6d767f77_fk_HM_backen` (`cc_id`),
  KEY `hm_backend_requested_item_id_06fa8ef7_fk_HM_backen` (`item_id`),
  KEY `hm_backend_requested_orderId_id_a3c8e4c9_fk_HM_backen` (`orderId_id`),
  KEY `hm_backend_requested_project_id_8c5f048c_fk_HM_backen` (`project_id`),
  KEY `hm_backend_requested_status_id_1acada88_fk_HM_backen` (`status_id`),
  CONSTRAINT `hm_backend_requested_cc_id_6d767f77_fk_HM_backen` FOREIGN KEY (`cc_id`) REFERENCES `hm_backend_costcenter` (`name`),
  CONSTRAINT `hm_backend_requested_item_id_06fa8ef7_fk_HM_backen` FOREIGN KEY (`item_id`) REFERENCES `hm_backend_item` (`name`),
  CONSTRAINT `hm_backend_requested_orderId_id_a3c8e4c9_fk_HM_backen` FOREIGN KEY (`orderId_id`) REFERENCES `hm_backend_puchaseorder` (`id`),
  CONSTRAINT `hm_backend_requested_project_id_8c5f048c_fk_HM_backen` FOREIGN KEY (`project_id`) REFERENCES `hm_backend_project` (`id`),
  CONSTRAINT `hm_backend_requested_status_id_1acada88_fk_HM_backen` FOREIGN KEY (`status_id`) REFERENCES `hm_backend_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_requesteditem`
--

LOCK TABLES `hm_backend_requesteditem` WRITE;
/*!40000 ALTER TABLE `hm_backend_requesteditem` DISABLE KEYS */;
INSERT INTO `hm_backend_requesteditem` VALUES (3,'Project 01','Opex','11','1','513','approved','1','',NULL,'1|2|3','1|1|1','1|1|1','1|1|1','1','1','1','Cash','',NULL,'',NULL,'NA',NULL,0,NULL,'advance','Bottle A',3,1,11,'1'),(4,'Project 01','Capex','1','1','550','pending','1','',NULL,'2','500','','','500','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'advance','Bottle B',4,1,10,'2'),(5,'Project 01','Capex','100','500','550','pending','asd','50','2023-03-30','1','500','','','500','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'advance','Shampoo',5,1,10,'1'),(6,'Project 02','Capex','30','600','550','pending','asd','50','2023-03-31','1','500','','','500','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'advance','Bottle A',5,2,10,'1'),(7,'Project 02','Capex','50','700','550','pending','asd','550','2023-03-17','1','500','','','500','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'advance','Bottle B',5,2,10,'1'),(8,'Project 01','Opex','10','6000','513','approved','','75000','2023-05-19','2|1','60000|65000','0|0','0|0','60000','0','0','Cash','',NULL,'',NULL,'NA',NULL,0,NULL,'mini_bar','Bottle A',6,1,11,'2');
/*!40000 ALTER TABLE `hm_backend_requesteditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_rescus`
--

DROP TABLE IF EXISTS `hm_backend_rescus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_rescus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `check_in_date` date NOT NULL,
  `check_in_time` time(6) DEFAULT NULL,
  `check_out_date` date DEFAULT NULL,
  `check_out_time` time(6) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_rescus_room_id_37da1592_fk_hm_backend_room_room_no` (`room_id`),
  CONSTRAINT `hm_backend_rescus_room_id_37da1592_fk_hm_backend_room_room_no` FOREIGN KEY (`room_id`) REFERENCES `hm_backend_room` (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_rescus`
--

LOCK TABLES `hm_backend_rescus` WRITE;
/*!40000 ALTER TABLE `hm_backend_rescus` DISABLE KEYS */;
/*!40000 ALTER TABLE `hm_backend_rescus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_reservation`
--

DROP TABLE IF EXISTS `hm_backend_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_reservation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `check_in_date` date DEFAULT NULL,
  `check_out_date` date DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `advanceCredit` decimal(8,2) DEFAULT NULL,
  `extra_breakfast` int DEFAULT NULL,
  `cust_id_id` bigint NOT NULL,
  `room_id` int DEFAULT NULL,
  `check_in_time` varchar(100) DEFAULT NULL,
  `check_out_time` varchar(100) DEFAULT NULL,
  `No_days` int DEFAULT NULL,
  `no_guest` int DEFAULT NULL,
  `special_ins` varchar(200) DEFAULT NULL,
  `secondary_cus` varchar(200) DEFAULT NULL,
  `adults` int DEFAULT NULL,
  `childs` int DEFAULT NULL,
  `total_credit` decimal(10,2) DEFAULT NULL,
  `total_due` decimal(10,2) DEFAULT NULL,
  `bill_cleared` tinyint(1) NOT NULL,
  `secondary_room` varchar(100) DEFAULT NULL,
  `is_primary_room` tinyint(1) NOT NULL,
  `primary_room_no` varchar(100) DEFAULT NULL,
  `total_amount` decimal(12,2) DEFAULT NULL,
  `previous_discounts` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_reservati_cust_id_id_e127905a_fk_HM_backen` (`cust_id_id`),
  KEY `hm_backend_reservati_room_id_9796abfd_fk_HM_backen` (`room_id`),
  CONSTRAINT `hm_backend_reservati_cust_id_id_e127905a_fk_HM_backen` FOREIGN KEY (`cust_id_id`) REFERENCES `hm_backend_customer` (`id`),
  CONSTRAINT `hm_backend_reservati_room_id_9796abfd_fk_HM_backen` FOREIGN KEY (`room_id`) REFERENCES `hm_backend_room` (`room_no`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_reservation`
--

LOCK TABLES `hm_backend_reservation` WRITE;
/*!40000 ALTER TABLE `hm_backend_reservation` DISABLE KEYS */;
INSERT INTO `hm_backend_reservation` VALUES (294,'2022-05-09','2022-05-13','FrontDesk','Checked Out',NULL,NULL,229,NULL,'',NULL,4,1,NULL,NULL,NULL,NULL,10042.00,17527.00,1,NULL,1,NULL,27569.00,'0'),(296,'2022-05-09','2022-05-12','FrontDesk','Checked Out',NULL,NULL,231,NULL,NULL,NULL,3,1,'',NULL,0,0,12000.00,25500.00,1,NULL,1,NULL,37500.00,'0'),(301,'2022-05-23','2022-05-26','FrontDesk','Checked Out',NULL,NULL,236,NULL,'',NULL,3,2,NULL,NULL,NULL,NULL,10101.00,27695.00,1,NULL,1,NULL,37796.00,'0'),(302,'2022-05-24','2022-05-27','FrontDesk','Checked Out',NULL,NULL,237,NULL,'',NULL,3,1,NULL,NULL,NULL,NULL,NULL,-11250.00,1,NULL,1,NULL,18750.00,'0'),(303,'2022-05-24','2022-05-27','FrontDesk','Checked Out',NULL,NULL,238,NULL,'',NULL,3,1,NULL,NULL,NULL,NULL,10000.00,8750.00,1,NULL,1,NULL,18750.00,'0'),(306,'2022-05-23','2022-05-27','FrontDesk','Checked Out',NULL,NULL,241,NULL,NULL,NULL,4,2,'',NULL,0,0,NULL,21107.00,1,'108',1,NULL,121107.00,'0'),(308,'2022-05-23','2022-05-28','FrontDesk','reserved',NULL,NULL,243,NULL,NULL,NULL,5,1,'',NULL,0,0,10000.00,65000.00,0,NULL,1,NULL,75000.00,'0'),(309,'2022-05-24','2022-05-26','FrontDesk','Checked Out',NULL,NULL,229,NULL,'',NULL,2,2,NULL,NULL,NULL,NULL,1211.00,NULL,1,NULL,1,NULL,13372.00,'0'),(310,'2022-05-23','2022-05-24','FrontDesk','Checked Out',NULL,NULL,231,NULL,'',NULL,1,1,NULL,NULL,NULL,NULL,NULL,11363.00,1,NULL,1,NULL,12563.00,'0'),(311,'2022-05-23','2022-05-26','FrontDesk','Checked Out',NULL,NULL,238,NULL,'',NULL,3,1,NULL,NULL,NULL,NULL,NULL,36300.00,1,NULL,1,NULL,37500.00,'0'),(312,'2022-05-23','2022-05-23','FrontDesk','Checked Out',NULL,NULL,229,NULL,'',NULL,0,1,NULL,NULL,NULL,NULL,NULL,-768.00,1,NULL,1,NULL,432.00,'0'),(313,'2022-05-24','2022-05-26','FrontDesk','Checked Out',NULL,NULL,236,NULL,'',NULL,2,1,NULL,NULL,NULL,NULL,NULL,11300.00,1,NULL,1,NULL,12500.00,'0'),(316,'2022-06-05','2022-06-15','FrontDesk','Checked Out',NULL,NULL,229,NULL,'',NULL,10,2,NULL,NULL,NULL,NULL,100050.00,NULL,1,NULL,1,NULL,150000.00,'0'),(318,'2022-06-15','2022-06-15','FrontDesk','Checked Out',NULL,NULL,229,NULL,'',NULL,0,2,NULL,NULL,NULL,NULL,NULL,-110000.00,1,NULL,1,NULL,0.00,'0'),(319,'2022-08-22','2022-08-27','FrontDesk','Checked Out',NULL,NULL,229,NULL,'',NULL,5,2,NULL,NULL,NULL,NULL,31250.00,0.00,1,NULL,1,NULL,31250.00,'0'),(322,'2022-08-25','2022-08-27','FrontDesk','reserved',NULL,NULL,249,NULL,NULL,NULL,2,2,'',NULL,0,0,30000.00,30000.00,0,'115',1,NULL,60000.00,'0'),(323,'2022-10-13','2022-10-22','FrontDesk','OnHold',NULL,NULL,250,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL),(324,'2022-10-13','2022-10-22','FrontDesk','reserved',NULL,NULL,229,NULL,NULL,NULL,9,1,'',NULL,0,0,10000.00,125000.00,0,NULL,1,NULL,135000.00,'0'),(325,'2022-10-19','2022-10-22','FrontDesk','Checked Out',NULL,NULL,229,NULL,'',NULL,3,1,NULL,NULL,NULL,NULL,NULL,35000.00,1,NULL,1,NULL,45000.00,'0'),(326,'2023-02-13','2023-02-24','FrontDesk','OnHold',NULL,NULL,251,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL),(327,'2023-02-13','2023-02-24','FrontDesk','OnHold',NULL,NULL,252,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL),(329,'2023-05-11','2023-05-14','FrontDesk','Checked Out',NULL,NULL,229,NULL,'',NULL,3,2,NULL,NULL,NULL,NULL,5000.00,3750.00,1,NULL,1,NULL,8750.00,'10000'),(330,'2023-05-14','2023-05-18','FrontDesk','Checked In',NULL,NULL,254,101,'',NULL,4,1,NULL,NULL,NULL,NULL,10000.00,45000.00,0,NULL,1,NULL,55000.00,'5000');
/*!40000 ALTER TABLE `hm_backend_reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_room`
--

DROP TABLE IF EXISTS `hm_backend_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_room` (
  `room_no` int NOT NULL,
  `extra_bed` tinyint(1) NOT NULL,
  `adults` int DEFAULT NULL,
  `child` int DEFAULT NULL,
  `floor` int DEFAULT NULL,
  `view` varchar(100) DEFAULT NULL,
  `status_fd` varchar(50) DEFAULT NULL,
  `status_hk` varchar(50) DEFAULT NULL,
  `features` varchar(100) DEFAULT NULL,
  `room_type_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`room_no`),
  KEY `hm_backend_room_room_type_id_685aba6a_fk_HM_backen` (`room_type_id`),
  CONSTRAINT `hm_backend_room_room_type_id_685aba6a_fk_HM_backen` FOREIGN KEY (`room_type_id`) REFERENCES `hm_backend_roomtype` (`type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_room`
--

LOCK TABLES `hm_backend_room` WRITE;
/*!40000 ALTER TABLE `hm_backend_room` DISABLE KEYS */;
INSERT INTO `hm_backend_room` VALUES (101,0,50,0,1,'NA','occupied','urgent','Big Hall','Banquet Hall'),(102,0,50,0,1,'NA','available','clean','Big Hall','Banquet Hall'),(201,0,30,0,2,'NA','available','clean','NA','Dispense Bar'),(202,0,30,0,1,'NA','maintenance','maintenance','NA','Dispense Bar'),(203,0,30,0,3,'NA','available','clean','NA','Lounge Bar');
/*!40000 ALTER TABLE `hm_backend_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_roomtransfer`
--

DROP TABLE IF EXISTS `hm_backend_roomtransfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_roomtransfer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `card_no` varchar(100) DEFAULT NULL,
  `room_no_to` varchar(100) DEFAULT NULL,
  `room_no_from` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_roomtransfer`
--

LOCK TABLES `hm_backend_roomtransfer` WRITE;
/*!40000 ALTER TABLE `hm_backend_roomtransfer` DISABLE KEYS */;
INSERT INTO `hm_backend_roomtransfer` VALUES (1,'20100001','113','112','2022-05-23 06:04:49.720057','2022-05-23 06:05:08.563987');
/*!40000 ALTER TABLE `hm_backend_roomtransfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_roomtype`
--

DROP TABLE IF EXISTS `hm_backend_roomtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_roomtype` (
  `type_name` varchar(100) NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `bed` varchar(50) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `services` varchar(100) DEFAULT NULL,
  `short` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_roomtype`
--

LOCK TABLES `hm_backend_roomtype` WRITE;
/*!40000 ALTER TABLE `hm_backend_roomtype` DISABLE KEYS */;
INSERT INTO `hm_backend_roomtype` VALUES ('Banquet Hall',12000.00,0.00,'2','#98bee1','','BH'),('Dispense Bar',5000.00,0.00,'2','#e53864','','SG'),('Lounge Bar',10000.00,0.00,'2','#dde84a','','DB');
/*!40000 ALTER TABLE `hm_backend_roomtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_roomtypeflow`
--

DROP TABLE IF EXISTS `hm_backend_roomtypeflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_roomtypeflow` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `proposedCost` decimal(8,2) DEFAULT NULL,
  `proposedDiscount` decimal(8,2) DEFAULT NULL,
  `activataionDate` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `room_type_id` varchar(100) DEFAULT NULL,
  `depends_id` int DEFAULT NULL,
  `depends_on` varchar(10) DEFAULT NULL,
  `reject_reason` varchar(300) DEFAULT NULL,
  `role_pos` varchar(50) DEFAULT NULL,
  `role_user_id` varchar(3) DEFAULT NULL,
  `status_role` varchar(10) DEFAULT NULL,
  `template_id` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_roomtypef_room_type_id_04dedeb3_fk_HM_backen` (`room_type_id`),
  KEY `hm_backend_roomtypef_template_id_72a1af05_fk_HM_backen` (`template_id`),
  CONSTRAINT `hm_backend_roomtypef_room_type_id_04dedeb3_fk_HM_backen` FOREIGN KEY (`room_type_id`) REFERENCES `hm_backend_roomtype` (`type_name`),
  CONSTRAINT `hm_backend_roomtypef_template_id_72a1af05_fk_HM_backen` FOREIGN KEY (`template_id`) REFERENCES `hm_backend_workflowtemplate` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_roomtypeflow`
--

LOCK TABLES `hm_backend_roomtypeflow` WRITE;
/*!40000 ALTER TABLE `hm_backend_roomtypeflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `hm_backend_roomtypeflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_status`
--

DROP TABLE IF EXISTS `hm_backend_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_status` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `orderType` varchar(25) DEFAULT NULL,
  `statusCode` varchar(25) DEFAULT NULL,
  `statusName` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_status`
--

LOCK TABLES `hm_backend_status` WRITE;
/*!40000 ALTER TABLE `hm_backend_status` DISABLE KEYS */;
INSERT INTO `hm_backend_status` VALUES (1,'OR','101','approved'),(2,'OR','102','pending'),(3,'OR','103','rejected'),(4,'OR','201','draft'),(5,'OR','209','template'),(6,'OP','101','Voucher Created'),(7,'RFQ','204','pending'),(8,'COM','206','pending'),(9,'COM','208','entry'),(10,'PO','550','pending'),(11,'PO','513','approved'),(12,'PO','542','complete');
/*!40000 ALTER TABLE `hm_backend_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_stocktransaction`
--

DROP TABLE IF EXISTS `hm_backend_stocktransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_stocktransaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_used` varchar(100) NOT NULL,
  `item_bill` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `date` date NOT NULL,
  `item_stock_quantity_id` varchar(100) DEFAULT NULL,
  `room_no_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_stocktran_item_stock_quantity__b7dda911_fk_HM_backen` (`item_stock_quantity_id`),
  KEY `hm_backend_stocktran_room_no_id_27844f8a_fk_HM_backen` (`room_no_id`),
  CONSTRAINT `hm_backend_stocktran_item_stock_quantity__b7dda911_fk_HM_backen` FOREIGN KEY (`item_stock_quantity_id`) REFERENCES `hm_backend_item` (`name`),
  CONSTRAINT `hm_backend_stocktran_room_no_id_27844f8a_fk_HM_backen` FOREIGN KEY (`room_no_id`) REFERENCES `hm_backend_room` (`room_no`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_stocktransaction`
--

LOCK TABLES `hm_backend_stocktransaction` WRITE;
/*!40000 ALTER TABLE `hm_backend_stocktransaction` DISABLE KEYS */;
INSERT INTO `hm_backend_stocktransaction` VALUES (14,'2',800.00,0.00,'2022-05-09','Bottle A',NULL),(15,'0',0.00,0.00,'2022-05-09','Bottle B',NULL),(16,'1',0.00,0.00,'2022-05-09','Paste',NULL),(17,'2',0.00,0.00,'2022-05-09','Pillow',NULL),(18,'0',0.00,0.00,'2022-05-09','Shampoo',NULL),(19,'0',0.00,0.00,'2022-05-09','Soap',NULL),(20,'0',0.00,0.00,'2022-05-09','Toothbrush',NULL),(21,'0',0.00,0.00,'2022-05-09','Towel',NULL),(22,'1',400.00,0.00,'2022-06-05','Bottle A',NULL),(23,'0',0.00,0.00,'2022-06-05','Bottle B',NULL),(24,'2',0.00,0.00,'2022-06-05','Paste',NULL),(25,'1',0.00,0.00,'2022-06-05','Pillow',NULL),(26,'0',0.00,0.00,'2022-06-05','Shampoo',NULL),(27,'0',0.00,0.00,'2022-06-05','Soap',NULL),(28,'0',0.00,0.00,'2022-06-05','Toothbrush',NULL),(29,'0',0.00,0.00,'2022-06-05','Towel',NULL),(30,'2',800.00,0.00,'2022-06-16','Bottle A',NULL),(31,'0',0.00,0.00,'2022-06-16','Bottle B',NULL),(32,'2',0.00,0.00,'2022-06-16','Paste',NULL),(33,'0',0.00,0.00,'2022-06-16','Pillow',NULL),(34,'0',0.00,0.00,'2022-06-16','Shampoo',NULL),(35,'0',0.00,0.00,'2022-06-16','Soap',NULL),(36,'0',0.00,0.00,'2022-06-16','Toothbrush',NULL),(37,'0',0.00,0.00,'2022-06-16','Towel',NULL),(38,'0',0.00,0.00,'2022-08-22','Bottle A',NULL),(39,'2',60.00,0.00,'2022-08-22','Bottle B',NULL),(40,'1',0.00,0.00,'2022-08-22','Paste',NULL),(41,'0',0.00,0.00,'2022-08-22','Pillow',NULL),(42,'0',0.00,0.00,'2022-08-22','Shampoo',NULL),(43,'0',0.00,0.00,'2022-08-22','Soap',NULL),(44,'0',0.00,0.00,'2022-08-22','Toothbrush',NULL),(45,'2',0.00,0.00,'2022-08-22','Towel',NULL);
/*!40000 ALTER TABLE `hm_backend_stocktransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_supplier`
--

DROP TABLE IF EXISTS `hm_backend_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_supplier` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_supplier`
--

LOCK TABLES `hm_backend_supplier` WRITE;
/*!40000 ALTER TABLE `hm_backend_supplier` DISABLE KEYS */;
INSERT INTO `hm_backend_supplier` VALUES (1,'Mr. Rahman','245, Banani','01856748535'),(2,'Mr. Khan','43, Baridhaka','01856756455'),(3,'Mr. Ahemd','65, Kuril','01745756455');
/*!40000 ALTER TABLE `hm_backend_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_table`
--

DROP TABLE IF EXISTS `hm_backend_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_table` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `num` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_table`
--

LOCK TABLES `hm_backend_table` WRITE;
/*!40000 ALTER TABLE `hm_backend_table` DISABLE KEYS */;
INSERT INTO `hm_backend_table` VALUES (1,'Table 01','Occupied'),(2,'Table 02','Available'),(3,'Table 03','Occupied'),(4,'Table 04','Occupied'),(5,'Table 05','Available'),(6,'Table 06','Available'),(7,'Table 07','Available'),(8,'Table 08','Available'),(9,'Table 09','Available'),(10,'Table 10','Available');
/*!40000 ALTER TABLE `hm_backend_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_transactiontable`
--

DROP TABLE IF EXISTS `hm_backend_transactiontable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_transactiontable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `credited_by` varchar(100) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `credit` int DEFAULT NULL,
  `debit` int DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  `journal_id` varchar(100) DEFAULT NULL,
  `auto_journal` tinyint(1) DEFAULT NULL,
  `card_no` varchar(50) DEFAULT NULL,
  `account_id_id` int DEFAULT NULL,
  `vat_ledger` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_transacti_account_id_id_c0087c2a_fk_HM_backen` (`account_id_id`),
  CONSTRAINT `hm_backend_transacti_account_id_id_c0087c2a_fk_HM_backen` FOREIGN KEY (`account_id_id`) REFERENCES `hm_backend_coa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_transactiontable`
--

LOCK TABLES `hm_backend_transactiontable` WRITE;
/*!40000 ALTER TABLE `hm_backend_transactiontable` DISABLE KEYS */;
INSERT INTO `hm_backend_transactiontable` VALUES (77,'Room Rent','2022-05-09','admin','10100294',0,25000,'R101','1',1,NULL,421,0),(78,'Advance','2022-05-09','admin','10100294',10000,0,'R101','2',1,NULL,411,0),(79,'Room Rent','2022-05-09','admin','11000296',0,37500,'R110','3',1,NULL,421,0),(80,'Advance','2022-05-09','admin','11000296',12000,0,'R110','4',1,NULL,411,0),(81,'Room Rent','2022-05-09','admin','10400297',0,25000,'R104','5',1,NULL,421,0),(82,'Advance','2022-05-09','admin','10400297',20000,0,'R104','6',1,NULL,411,0),(83,'Mini Bar','2022-05-09','housekeeper','R10100294',0,824,'101','7',1,NULL,453,0),(84,'Room Service','2022-05-09','admin','10100294',0,43,'4','8',1,NULL,456,0),(85,'a','2022-05-11','','a',500,0,'a','9',0,NULL,345,0),(86,'a','2022-05-11','','a',500,0,'a','9',0,NULL,420,0),(87,'a','2022-05-11','','a',0,1000,'a','9',0,NULL,410,0),(88,'a','2022-05-11','','a',0,2300,'a','9',0,NULL,453,0),(89,'Laundry','2022-05-12','admin','10100294',0,0,'7','10',1,NULL,991,0),(90,'Room Clearance','2022-05-22','admin','10100294',10,0,'R101','11',1,NULL,430,0),(91,'Room Clearance','2022-05-22','admin','10100294',10,0,'R101','12',1,NULL,430,0),(92,'Room Clearance','2022-05-22','admin','10100294',10,0,'R101','13',1,NULL,430,0),(93,'Room Clearance','2022-05-22','admin','10100294',10,0,'R101','14',1,NULL,430,0),(94,'Room Clearance','2022-05-22','admin','10100294',10,0,'R101','15',1,NULL,430,0),(95,'Room Clearance','2022-05-22','admin','10100294',10,0,'R101','16',1,NULL,430,0),(96,'Room Clearance','2022-05-22','admin','10100294',11,0,'R101','17',1,NULL,430,0),(97,'Room Clearance','2022-05-22','admin','10100294',11,0,'R101','18',1,NULL,430,0),(98,'Room Clearance','2022-05-22','admin','10100294',11,0,'R101','19',1,NULL,430,0),(99,'Room Clearance','2022-05-22','admin','10100294',11,0,'R101','20',1,NULL,430,0),(100,'Room Clearance','2022-05-22','admin','10100294',11,0,'R101','21',1,NULL,430,0),(101,'Room Clearance','2022-05-22','admin','10100294',11,0,'R101','22',1,NULL,430,0),(102,'Room Clearance','2022-05-22','admin','10100294',11,0,'R101','23',1,NULL,430,0),(103,'Room Clearance','2022-05-22','admin','10100294',11,0,'R101','24',1,NULL,430,0),(104,'Room Clearance','2022-05-22','admin','10100294',11,0,'R101','25',1,NULL,430,0),(105,'Room Clearance','2022-05-22','admin','10100294',11,0,'R101','26',1,NULL,430,0),(106,'Room Clearance','2022-05-22','admin','10100294',11,0,'R101','27',1,NULL,430,0),(107,'Room Rent','2022-05-23','admin','10200301',0,37500,'R102','28',1,NULL,421,0),(108,'Advance','2022-05-23','admin','10200301',10101,0,'R102','29',1,NULL,411,0),(109,'Room Rent','2022-05-23','admin','10600302',0,18750,'R106','30',1,NULL,421,0),(110,'Advance','2022-05-23','admin','10600302',30000,0,'R106','31',1,NULL,411,0),(111,'Room Rent','2022-05-23','admin','11200303',0,18750,'R112','32',1,NULL,421,0),(112,'Advance','2022-05-23','admin','11200303',10000,0,'R112','33',1,NULL,411,0),(113,'Advance','2022-05-23','admin','10300306',100000,0,'R103','34',1,NULL,411,0),(114,'Room Rent','2022-05-23','admin','10300306',0,60000,'R103','35',1,NULL,421,1),(115,'Room Rent','2022-05-23','admin','10300306',0,60000,'R103','35',1,NULL,421,0),(116,'Room Rent','2022-05-23','admin','11400308',0,75000,'R114','36',1,NULL,421,0),(117,'Advance','2022-05-23','admin','11400308',10000,0,'R114','37',1,NULL,411,0),(118,'Room Rent','2022-05-23','admin','10500309',0,12500,'R105','38',1,NULL,421,0),(119,'Advance','2022-05-23','admin','10500309',1200,0,'R105','39',1,NULL,411,0),(120,'Room Rent','2022-05-23','admin','10700310',0,12500,'R107','40',1,NULL,421,0),(121,'Advance','2022-05-23','admin','10700310',1200,0,'R107','41',1,NULL,411,0),(122,'Room Rent','2022-05-23','admin','10900311',0,37500,'R109','42',1,NULL,421,0),(123,'Advance','2022-05-23','admin','10900311',1200,0,'R109','43',1,NULL,411,0),(124,'Room Rent','2022-05-23','admin','11100312',0,0,'R111','44',1,NULL,421,0),(125,'Advance','2022-05-23','admin','11100312',1200,0,'R111','45',1,NULL,411,0),(126,'Room Rent','2022-05-23','admin','11300313',0,12500,'R113','46',1,NULL,421,1),(127,'Advance','2022-05-23','admin','11300313',1200,0,'R113','47',1,NULL,411,0),(128,'Laundry','2022-06-01','admin','10100294',0,52,'11','48',1,NULL,991,0),(129,'Room Rent','2022-06-05','admin','11400316',0,150000,'R114','49',1,NULL,421,0),(130,'Advance','2022-06-05','admin','11400316',100000,0,'R114','50',1,NULL,411,0),(131,'Mini Bar','2022-06-05','housekeeper','R10100294',0,412,'101','51',1,NULL,453,0),(132,'Laundry','2022-06-05','housekeeper','10100294',0,39,'12','52',1,NULL,991,0),(133,'Room Service','2022-06-05','admin','10100294',0,97,'5','53',1,NULL,456,0),(134,'Room Rent','2022-06-15','admin','11400318',0,0,'R114','54',1,NULL,421,0),(135,'Advance','2022-06-15','admin','11400318',110000,0,'R114','55',1,NULL,411,0),(136,'Mini Bar','2022-06-15','','10200301',0,23,'','56',1,NULL,453,0),(137,'Mini Bar','2022-06-15','','10100294',0,231,'','57',1,NULL,453,0),(138,'Laundry','2022-06-15','','10100294',0,231,'','58',1,NULL,991,1),(139,'Mini Bar','2022-06-15','','10100294',0,2,'','59',1,NULL,453,0),(140,'Mini Bar','2022-06-16','demo','R10500309',0,824,'105','60',1,NULL,453,0),(141,'Laundry','2022-06-16','demo','10200301',0,26,'13','61',1,NULL,991,1),(142,'Room Service','2022-06-16','demo','11100312',0,432,'6','62',1,NULL,456,1),(143,'Room Service','2022-06-16','demo','10300306',0,259,'7','63',1,NULL,456,0),(144,'Laundry','2022-07-27','housekeeper','10300306',0,39,'14','64',1,NULL,991,0),(145,'Laundry','2022-08-22','demo','10500309',0,48,'15','65',1,NULL,991,1),(146,'Room Rent','2022-08-22','frontdesk','10100319',0,31250,'R101','66',1,NULL,421,1),(147,'Advance','2022-08-22','Frontdesk','10100319',10000,0,'R101','67',1,NULL,411,0),(148,'Advance','2022-08-22','Frontdesk','10800322',30000,0,'R108','68',1,NULL,411,1),(149,'Room Rent','2022-08-22','Frontdesk','10800322',0,30000,'R108','69',1,NULL,421,1),(150,'Room Rent','2022-08-22','Frontdesk','10800322',0,30000,'R108','69',1,NULL,421,1),(151,'Mini Bar','2022-08-22','demo','R10700310',0,64,'107','70',1,NULL,453,1),(152,'Laundry','2022-08-22','demo','10300306',0,26,'16','71',1,NULL,991,1),(153,'Room Service','2022-08-22','demo','10200301',0,270,'8','72',1,NULL,456,1),(154,'Room Rent','2022-10-13',NULL,'10300324',0,135000,'R103','73',1,NULL,421,1),(155,'Advance','2022-10-13',NULL,'10300324',10000,0,'R103','74',1,NULL,411,0),(156,'Room Service','2022-10-18','demo','10300306',0,405,'9','75',1,NULL,456,0),(157,'Room Rent','2022-10-19','frontdesk','10300325',0,45000,'R103','76',1,NULL,421,0),(158,'Advance','2022-10-19','Frontdesk','10300325',10000,0,'R103','77',1,NULL,411,0),(159,'Room Service','2023-05-11','demo','10100294',0,280,'9','78',1,NULL,456,0),(160,'Room Service','2023-05-11','demo','10300306',0,378,'9','79',1,NULL,456,0),(161,'Room Rent','2023-05-11','frontdesk','10100329',0,18750,'R101','80',1,NULL,421,0),(162,'Advance','2023-05-11','Frontdesk','10100329',5000,0,'R101','81',1,NULL,411,0),(163,'POS','2023-05-11','demo','10100329',0,2760,'30','82',1,NULL,1002,0),(164,'POS','2023-05-11','demo','10100329',0,2990,'33','83',1,NULL,1002,0),(165,'POS','2023-05-11','demo','10100329',0,2990,'33','84',1,NULL,1002,0),(166,'POS','2023-05-11','demo','10100329',0,2990,'33','85',1,NULL,1002,0),(167,'POS','2023-05-11','demo','10100329',0,2760,'30','86',1,NULL,1002,0),(168,'Room Rent','2023-05-14','frontdesk','10100330',0,60000,'R101','87',1,NULL,421,0),(169,'Advance','2023-05-14','Frontdesk','10100330',10000,0,'R101','88',1,NULL,411,0);
/*!40000 ALTER TABLE `hm_backend_transactiontable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_userprofile`
--

DROP TABLE IF EXISTS `hm_backend_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_userprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `delegate_to` varchar(20) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_userprofi_user_id_9fc1cc79_fk_authentic` (`user_id`),
  CONSTRAINT `hm_backend_userprofi_user_id_9fc1cc79_fk_authentic` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_userprofile`
--

LOCK TABLES `hm_backend_userprofile` WRITE;
/*!40000 ALTER TABLE `hm_backend_userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `hm_backend_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_workflowtemplate`
--

DROP TABLE IF EXISTS `hm_backend_workflowtemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_workflowtemplate` (
  `name` varchar(150) NOT NULL,
  `role_concated` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_workflowtemplate`
--

LOCK TABLES `hm_backend_workflowtemplate` WRITE;
/*!40000 ALTER TABLE `hm_backend_workflowtemplate` DISABLE KEYS */;
INSERT INTO `hm_backend_workflowtemplate` VALUES ('Delux_room_may','Jhon Cena >Rohan Hasan >Sam Khan'),('delux_room_price_chnage_may','Jhon Cena >Rohan Hasan >Sam Khan'),('New','Jhon Cena >Rohan Hasan'),('room_price_nov','Jhon Cena >Rohan Hasan'),('SG_NOV_Discount','Jhon Cena >Rohan Hasan'),('sg_room_dec','Jhon Cena >Rohan Hasan >Sam Khan');
/*!40000 ALTER TABLE `hm_backend_workflowtemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hm_backend_workflowtemplatelevels`
--

DROP TABLE IF EXISTS `hm_backend_workflowtemplatelevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hm_backend_workflowtemplatelevels` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `depend_on` varchar(100) DEFAULT NULL,
  `depend_id` varchar(100) DEFAULT NULL,
  `depend_role` varchar(100) DEFAULT NULL,
  `role_concated` varchar(100) DEFAULT NULL,
  `workflow_name_id` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hm_backend_workflowt_workflow_name_id_70ee0e6e_fk_HM_backen` (`workflow_name_id`),
  CONSTRAINT `hm_backend_workflowt_workflow_name_id_70ee0e6e_fk_HM_backen` FOREIGN KEY (`workflow_name_id`) REFERENCES `hm_backend_workflowtemplate` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hm_backend_workflowtemplatelevels`
--

LOCK TABLES `hm_backend_workflowtemplatelevels` WRITE;
/*!40000 ALTER TABLE `hm_backend_workflowtemplatelevels` DISABLE KEYS */;
INSERT INTO `hm_backend_workflowtemplatelevels` VALUES (7,'0','1','8','Jhon Cena >Rohan Hasan >','room_price_nov'),(8,'1','2','9','Jhon Cena >Rohan Hasan >','room_price_nov'),(9,'0','1','8','Jhon Cena >Rohan Hasan >Sam Khan >','sg_room_dec'),(10,'1','2','9','Jhon Cena >Rohan Hasan >Sam Khan >','sg_room_dec'),(11,'2','3','10','Jhon Cena >Rohan Hasan >Sam Khan >','sg_room_dec'),(12,'0','1','8','Jhon Cena >Rohan Hasan >Sam Khan >','Delux_room_may'),(13,'1','2','9','Jhon Cena >Rohan Hasan >Sam Khan >','Delux_room_may'),(14,'2','3','10','Jhon Cena >Rohan Hasan >Sam Khan >','Delux_room_may'),(17,'0','1','8','Jhon Cena >Rohan Hasan >Sam Khan >','delux_room_price_chnage_may'),(18,'1','2','9','Jhon Cena >Rohan Hasan >Sam Khan >','delux_room_price_chnage_may'),(19,'2','3','10','Jhon Cena >Rohan Hasan >Sam Khan >','delux_room_price_chnage_may'),(20,'0','1','8','Jhon Cena >Rohan Hasan >','SG_NOV_Discount'),(21,'1','2','9','Jhon Cena >Rohan Hasan >','SG_NOV_Discount'),(22,'0','1','8','Jhon Cena >Rohan Hasan >','New'),(23,'1','2','9','Jhon Cena >Rohan Hasan >','New');
/*!40000 ALTER TABLE `hm_backend_workflowtemplatelevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `res_cus`
--

DROP TABLE IF EXISTS `res_cus`;
/*!50001 DROP VIEW IF EXISTS `res_cus`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `res_cus` AS SELECT 
 1 AS `res_id`,
 1 AS `check_in_date`,
 1 AS `check_out_date`,
 1 AS `status`,
 1 AS `room_id`,
 1 AS `check_in_time`,
 1 AS `check_out_time`,
 1 AS `cus_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `primary_room_no`,
 1 AS `is_primary_room`,
 1 AS `secondary_room`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `res_cus_c`
--

DROP TABLE IF EXISTS `res_cus_c`;
/*!50001 DROP VIEW IF EXISTS `res_cus_c`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `res_cus_c` AS SELECT 
 1 AS `res_id`,
 1 AS `check_in_date`,
 1 AS `check_out_date`,
 1 AS `status`,
 1 AS `room_id`,
 1 AS `check_in_time`,
 1 AS `check_out_time`,
 1 AS `cus_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `primary_room_no`,
 1 AS `is_primary_room`,
 1 AS `secondary_room`,
 1 AS `card_no`,
 1 AS `checked_in`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `res_cus_card`
--

DROP TABLE IF EXISTS `res_cus_card`;
/*!50001 DROP VIEW IF EXISTS `res_cus_card`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `res_cus_card` AS SELECT 
 1 AS `card_no`,
 1 AS `room_no`,
 1 AS `secondary_room`,
 1 AS `checked_in`,
 1 AS `status`,
 1 AS `gender`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `phone`,
 1 AS `check_in_date`,
 1 AS `check_out_date`,
 1 AS `No_days`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `rm_rt`
--

DROP TABLE IF EXISTS `rm_rt`;
/*!50001 DROP VIEW IF EXISTS `rm_rt`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `rm_rt` AS SELECT 
 1 AS `room_no`,
 1 AS `adults`,
 1 AS `child`,
 1 AS `floor`,
 1 AS `view`,
 1 AS `cost`,
 1 AS `discount`,
 1 AS `bed`,
 1 AS `type_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `stockjoint`
--

DROP TABLE IF EXISTS `stockjoint`;
/*!50001 DROP VIEW IF EXISTS `stockjoint`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stockjoint` AS SELECT 
 1 AS `id`,
 1 AS `room_no`,
 1 AS `item_name`,
 1 AS `date`,
 1 AS `item_bill`,
 1 AS `item_used`,
 1 AS `defaultQuantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'hm_db'
--

--
-- Dumping routines for database 'hm_db'
--

--
-- Final view structure for view `res_cus`
--

/*!50001 DROP VIEW IF EXISTS `res_cus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `res_cus` AS select `res`.`id` AS `res_id`,`res`.`check_in_date` AS `check_in_date`,`res`.`check_out_date` AS `check_out_date`,`res`.`status` AS `status`,`res`.`room_id` AS `room_id`,`res`.`check_in_time` AS `check_in_time`,`res`.`check_out_time` AS `check_out_time`,`cus`.`id` AS `cus_id`,`cus`.`first_name` AS `first_name`,`cus`.`last_name` AS `last_name`,`res`.`primary_room_no` AS `primary_room_no`,`res`.`is_primary_room` AS `is_primary_room`,`res`.`secondary_room` AS `secondary_room` from (`hm_backend_reservation` `res` join `hm_backend_customer` `cus`) where (`cus`.`id` = `res`.`cust_id_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `res_cus_c`
--

/*!50001 DROP VIEW IF EXISTS `res_cus_c`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `res_cus_c` AS select `res`.`id` AS `res_id`,`res`.`check_in_date` AS `check_in_date`,`res`.`check_out_date` AS `check_out_date`,`res`.`status` AS `status`,`res`.`room_id` AS `room_id`,`res`.`check_in_time` AS `check_in_time`,`res`.`check_out_time` AS `check_out_time`,`cus`.`id` AS `cus_id`,`cus`.`first_name` AS `first_name`,`cus`.`last_name` AS `last_name`,`res`.`primary_room_no` AS `primary_room_no`,`res`.`is_primary_room` AS `is_primary_room`,`res`.`secondary_room` AS `secondary_room`,`card`.`card_no` AS `card_no`,`card`.`checked_in` AS `checked_in` from ((`hm_backend_reservation` `res` join `hm_backend_customer` `cus`) join `hm_backend_cardno` `card`) where ((`cus`.`id` = `res`.`cust_id_id`) and (`res`.`id` = `card`.`rev_id_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `res_cus_card`
--

/*!50001 DROP VIEW IF EXISTS `res_cus_card`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `res_cus_card` AS select `card`.`card_no` AS `card_no`,`card`.`room_no_id` AS `room_no`,`card`.`secondary_room` AS `secondary_room`,`card`.`checked_in` AS `checked_in`,`res`.`status` AS `status`,`cus`.`gender` AS `gender`,`cus`.`first_name` AS `first_name`,`cus`.`last_name` AS `last_name`,`cus`.`phone` AS `phone`,`res`.`check_in_date` AS `check_in_date`,`res`.`check_out_date` AS `check_out_date`,`res`.`No_days` AS `No_days` from ((`hm_backend_cardno` `card` join `hm_backend_customer` `cus`) join `hm_backend_reservation` `res`) where ((`cus`.`id` = `card`.`cust_id_id`) and (`res`.`id` = `card`.`rev_id_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rm_rt`
--

/*!50001 DROP VIEW IF EXISTS `rm_rt`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rm_rt` AS select `rm`.`room_no` AS `room_no`,`rm`.`adults` AS `adults`,`rm`.`child` AS `child`,`rm`.`floor` AS `floor`,`rm`.`view` AS `view`,`rt`.`cost` AS `cost`,`rt`.`discount` AS `discount`,`rt`.`bed` AS `bed`,`rt`.`type_name` AS `type_name` from (`hm_backend_room` `rm` join `hm_backend_roomtype` `rt`) where (`rm`.`room_type_id` = `rt`.`type_name`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stockjoint`
--

/*!50001 DROP VIEW IF EXISTS `stockjoint`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stockjoint` AS select `st`.`id` AS `id`,`st`.`room_no_id` AS `room_no`,`st`.`item_stock_quantity_id` AS `item_name`,`st`.`date` AS `date`,`st`.`item_bill` AS `item_bill`,`st`.`item_used` AS `item_used`,`it`.`defaultQuantity` AS `defaultQuantity` from (`hm_backend_stocktransaction` `st` join `hm_backend_item` `it`) where (`st`.`item_stock_quantity_id` = `it`.`name`) */;
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

-- Dump completed on 2023-07-10 12:16:49
