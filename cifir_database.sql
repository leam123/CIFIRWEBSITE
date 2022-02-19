-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cifir_database
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add book',7,'add_book'),(26,'Can change book',7,'change_book'),(27,'Can delete book',7,'delete_book'),(28,'Can view book',7,'view_book'),(29,'Can add catalog',8,'add_catalog'),(30,'Can change catalog',8,'change_catalog'),(31,'Can delete catalog',8,'delete_catalog'),(32,'Can view catalog',8,'view_catalog'),(33,'Can add collection',9,'add_collection'),(34,'Can change collection',9,'change_collection'),(35,'Can delete collection',9,'delete_collection'),(36,'Can view collection',9,'view_collection'),(37,'Can add lib user',10,'add_libuser'),(38,'Can change lib user',10,'change_libuser'),(39,'Can delete lib user',10,'delete_libuser'),(40,'Can view lib user',10,'view_libuser'),(41,'Can add note',11,'add_note'),(42,'Can change note',11,'change_note'),(43,'Can delete note',11,'delete_note'),(44,'Can view note',11,'view_note'),(45,'Can add author',12,'add_author'),(46,'Can change author',12,'change_author'),(47,'Can delete author',12,'delete_author'),(48,'Can view author',12,'view_author'),(49,'Can add bookmark',13,'add_bookmark'),(50,'Can change bookmark',13,'change_bookmark'),(51,'Can delete bookmark',13,'delete_bookmark'),(52,'Can view bookmark',13,'view_bookmark'),(53,'Can add auth user',14,'add_authuser'),(54,'Can change auth user',14,'change_authuser'),(55,'Can delete auth user',14,'delete_authuser'),(56,'Can view auth user',14,'view_authuser');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$qiz62eM6Q3rK$kBHSUoNkxIIED9SohFwhVKbxMGO8yUa99RoAqfjKbN4=','2022-02-03 05:44:32.798109',1,'admin','','','admin@cit.edu',1,1,'2021-09-04 08:23:09.628173'),(258,'pbkdf2_sha256$216000$u2E3LbLeDxVd$onydRSbPkT7xgJVAHCS0QqJFiVZ/VNpm+qYou5zaiL0=','2022-02-11 04:28:41.245128',0,'leamor.garcia','Leamor','Garcia','leamor.garcia@cit.edu',1,1,'2021-11-09 00:04:03.880841'),(259,'pbkdf2_sha256$216000$HkevlZhFu6GN$h7BI3zBKKhVqdiKATIPDiG6MHMphvH6Hb1BdYq/+Zpg=',NULL,0,'jeanne.regalado','Jeanne','Regalado','jeanne.regalado@cit.edu',1,1,'2021-11-09 00:04:04.397871'),(260,'pbkdf2_sha256$260000$Itebzp4TjUrWbEFXaSpBWy$ptUxV/kY0jd6Lf4H3yNAiOhsaRO5veRnP9Wz5UmksPk=','2021-11-16 05:38:11.505905',0,'zarina.zaragoza','Zarina','Zaragoza','zarina.zaragoza@cit.edu',1,1,'2021-11-09 00:04:05.037908'),(261,'pbkdf2_sha256$216000$0pTWfjSQsCFi$uEOhF4vmU195AVmRoEdGkM5+QSq/661/0y6Lu0aSXSE=','2022-02-03 13:19:16.489470',0,'dianeisabelle.lambojo','Diane Isabelle','Lambojo','dianeisabelle.lambojo@cit.edu',1,1,'2021-11-09 00:04:05.643942'),(262,'pbkdf2_sha256$216000$FpRInTaX2U45$IGcrn46gjuwIQVkrukufyd2hjA4Bue0mFp7o1u/uEGo=','2021-11-15 06:34:50.718386',0,'dawsonbryce.sanchez','Dawson Bryce','Sanchez','dawsonbryce.sanchez@cit.edu',1,1,'2021-11-09 01:08:30.844019'),(263,'pbkdf2_sha256$260000$v13X9uY2Q7zF2xLK7hPqqT$N0hcdddnka6K21SY6nPpcLoX2yThVUoO+4QHEDTPqhY=','2021-11-15 14:24:19.012774',1,'mia','','','',1,1,'2021-11-15 14:23:51.752239'),(265,'pbkdf2_sha256$216000$7Z4dWdsYFO0V$R/ykb+aY2IjxXcuRYHUeOunUQKGLtUNwl6ATb0Fz9+s=','2022-02-03 13:14:29.930358',1,'admin1','','','admin1@cit.edu',1,1,'2022-02-03 05:52:17.676899');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `book_author` varchar(250) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `isFavorite` tinyint(1) NOT NULL,
  `isHaveRead` tinyint(1) NOT NULL,
  `isToRead` tinyint(1) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (80,'Alice\'s Adventures in Wonderland','Lewis Carroll','media/cover_A2MR0TU','media/Alices_Adventures_in_Wonderland_jWVjuMn.epub',0,0,0,0),(81,'A-Wrinkle-in-Time-Madeleine-LEngle.pdf','','media/pdf_cover_default.png','media/A-Wrinkle-in-Time-Madeleine-LEngle_856HxVe.pdf',0,0,0,0),(82,'Sway','Zachary Lazar','media/cover_F0nIOXF','media/Sway_eD0xJj2.epub',0,0,0,0),(83,'1560309927_pride-and-prejudice.pdf','','media/pdf_cover_default.png','media/1560309927_pride-and-prejudice_UvMv9c9.pdf',0,0,0,0),(84,'signed 2-4-22 endorsement_GARCIA.pdf','','media/pdf_cover_default.png','media/signed_2-4-22_endorsement_GARCIA.pdf',0,0,0,0),(85,'Leamor Garcia Resume.pdf','','media/pdf_cover_default.png','media/Leamor_Garcia_Resume_WD4hNLf.pdf',0,0,0,0),(86,'Sanchez,DawsonBryce - Resume.pdf','','media/pdf_cover_default.png','media/SanchezDawsonBryce_-_Resume.pdf',0,0,0,0),(87,'Pride and Prejudice','Jane Austen','media/epub_cover_default.png','media/pg1342-images_aLXRPs4.epub',0,0,0,0);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_user`
--

DROP TABLE IF EXISTS `book_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Book_user_book_id_user_id_54802a7e_uniq` (`book_id`,`user_id`),
  KEY `Book_user_user_id_b670215e_fk_auth_user_id` (`user_id`),
  CONSTRAINT `Book_user_user_id_b670215e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_user`
--

LOCK TABLES `book_user` WRITE;
/*!40000 ALTER TABLE `book_user` DISABLE KEYS */;
INSERT INTO `book_user` VALUES (1,1,1),(2,2,1),(3,3,1),(5,5,1),(8,8,262),(9,9,1),(10,10,262),(11,11,260),(12,12,260),(13,13,260),(14,14,261),(15,15,261),(16,16,261),(17,17,261),(18,18,261),(19,19,261),(20,20,261),(21,21,261),(22,22,261),(23,23,261),(24,24,261),(25,25,261),(26,26,261),(27,27,261),(28,28,261),(29,29,261),(30,30,261),(31,31,261),(32,32,261),(33,33,261),(34,34,261),(35,35,261),(36,36,261),(37,37,261),(38,38,261),(39,39,261),(40,40,261),(41,41,261),(42,42,261),(43,43,261),(44,44,261),(45,45,261),(46,46,261),(47,47,261),(48,48,261),(49,49,261),(50,50,261),(51,51,261),(52,52,261),(53,53,261),(54,54,261),(55,55,261),(56,56,261),(57,57,261),(58,58,261),(59,60,261),(60,62,261),(61,64,261),(62,65,261),(63,66,261),(64,67,261),(65,68,261),(66,69,261),(67,70,261),(68,71,261),(69,72,261),(70,73,261),(71,74,258),(72,75,258),(73,76,258),(74,77,258),(75,78,258),(76,79,258),(77,80,258),(78,81,258),(79,82,258),(80,83,258),(81,84,258),(82,85,258),(83,86,258),(84,87,258);
/*!40000 ALTER TABLE `book_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmark`
--

DROP TABLE IF EXISTS `bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookpage` varchar(250) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `page_index` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmark`
--

LOCK TABLES `bookmark` WRITE;
/*!40000 ALTER TABLE `bookmark` DISABLE KEYS */;
INSERT INTO `bookmark` VALUES (20,'1',0,'1'),(21,'epubcfi(/6/20!/4/2/2/1:0)',0,'9 : 1'),(22,'epubcfi(/6/20!/4/26/1:260)',0,'9 : 3'),(23,'epubcfi(/6/20!/4/74/1:136)',0,'9 : 5'),(24,'epubcfi(/6/22!/4/2/2/1:0)',0,'10 : 1'),(25,'epubcfi(/6/24!/4/2/2/1:0)',0,'11 : 1'),(26,'epubcfi(/6/24!/4/52/1:0)',0,'11 : 3'),(27,'epubcfi(/6/24!/4/122/11:0)',0,'11 : 7'),(28,'',0,''),(29,'',0,'');
/*!40000 ALTER TABLE `bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmark_book`
--

DROP TABLE IF EXISTS `bookmark_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmark_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookmark_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cifir_bookmark_book_bookmark_id_book_id_41b2defd_uniq` (`bookmark_id`,`book_id`),
  CONSTRAINT `cifir_bookmark_book_bookmark_id_296b5517_fk_cifir_bookmark_id` FOREIGN KEY (`bookmark_id`) REFERENCES `bookmark` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmark_book`
--

LOCK TABLES `bookmark_book` WRITE;
/*!40000 ALTER TABLE `bookmark_book` DISABLE KEYS */;
INSERT INTO `bookmark_book` VALUES (1,20,81),(2,21,80),(3,22,80),(4,23,80),(5,24,80),(6,25,80),(7,26,80),(8,27,80),(9,28,80),(10,29,82);
/*!40000 ALTER TABLE `bookmark_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `link` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `cover` varchar(250) NOT NULL,
  `defaultUsername` varchar(150) NOT NULL,
  `defaultPassword` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (1,'Cambridge Core','https://www.cambridge.org/core/authenticate/connect?state=/','Cambridge Core is the place to find valuable, useful and inspirational research and academic information. With over 1.8 million journal articles and 46,000+ books, Cambridge Core is the central destination for academic research.','https://www.cambridge.org/modules/custom/gnav/icons/logo.svg','llrc.lisa@gmail.com','libService2019',0),(2,'ProQuest Elibrary','https://ebookcentral.proquest.com/auth/lib/citph-ebooks/login.action','Sign In to use authoritative ebooks provided by Cebu Institute of Technology','https://ebookcentral.proquest.com/auth/lib/citph-ebooks/img/pq-logo-icon.png','gradstud','CITUEBOOK',0),(3,'Wiley Online Library','https://onlinelibrary.wiley.com/action/showLogin?uri=%2F&aria-label=Log+in+or+Register','Wiley is committed to making Wiley Online Library accessible to all users. We continually review accessibility compliance and development practices to strengthen that commitment and ensure that our content is available to the entire research communit','https://onlinelibrary.wiley.com/pb-assets/hub-assets/pericles/mobilehublogo-1518781861020.png','cebu','CEBU12345',0),(5,'Science Direct','https://www.sciencedirect.com/user/login','1.4 million articles on ScienceDirect are open access\r\nArticles published open access are peer-reviewed and made freely available for everyone to read, download and reuse in line with the user license displayed on the article.','https://deterrasystem.com/wp-content/uploads/2020/12/VRDE_WEB_3Column_370x370_ScienceDirect.png','llrc.lisa@gmail.com','pcieerd',0),(6,'Directory of Open Access Books','https://www.doabooks.org/','DOAB is a community-driven discovery service that indexes and provides access to scholarly, peer-reviewed open access books and helps users to find trusted open access book publishers. All DOAB services are free of charge and all data is freely avail','https://www.doabooks.org/static-assets/images/layout/doab.png','n/a','n/a',0),(7,'Zlibrary','https://b-ok.asia/','Here you can always find the relevant information on the available domains for your region.','https://b-ok.asia/img/logo.zlibrary.png','n/a','n/a',0);
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_book`
--

DROP TABLE IF EXISTS `collection_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` bigint(20) NOT NULL,
  `book_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Collection_book_collection_id_book_id_84d0285b_uniq` (`collection_id`,`book_id`),
  KEY `Collection_book_book_id_cb5fbda8_fk_Book_id` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_book`
--

LOCK TABLES `collection_book` WRITE;
/*!40000 ALTER TABLE `collection_book` DISABLE KEYS */;
INSERT INTO `collection_book` VALUES (2,2,8),(3,3,14),(4,3,34),(5,3,70),(7,4,35),(6,5,73),(8,6,69);
/*!40000 ALTER TABLE `collection_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_user`
--

DROP TABLE IF EXISTS `collection_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Collection_user_collection_id_user_id_c3b7d478_uniq` (`collection_id`,`user_id`),
  KEY `Collection_user_user_id_db2d8d96_fk_auth_user_id` (`user_id`),
  CONSTRAINT `Collection_user_user_id_db2d8d96_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_user`
--

LOCK TABLES `collection_user` WRITE;
/*!40000 ALTER TABLE `collection_user` DISABLE KEYS */;
INSERT INTO `collection_user` VALUES (2,2,262),(3,3,261),(4,4,261),(5,5,261),(6,6,261),(7,7,258);
/*!40000 ALTER TABLE `collection_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-10-27 11:43:09.343859','3','LibUser object (3)',1,'new through import_export',10,1),(2,'2021-10-27 11:44:46.767428','5','LibUser object (5)',1,'new through import_export',10,1),(3,'2021-10-27 15:17:06.943070','2','castbound',1,'[{\"added\": {}}]',4,1),(4,'2021-10-27 15:17:31.037648','2','castbound',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]',4,1),(5,'2021-10-27 15:59:37.938480','3','dawson',3,'',4,1),(6,'2021-10-27 16:05:15.205529','2','castbound',3,'',4,1),(7,'2021-10-27 16:05:15.290533','8','doe101',3,'',4,1),(8,'2021-10-27 16:08:11.283295','10','dawsonbryce.sanchez',3,'',4,1),(9,'2021-10-27 16:08:11.735321','9','Username',3,'',4,1),(10,'2021-10-27 16:14:22.915660','12','dawsonbryce.sanchez',3,'',4,1),(11,'2021-10-27 16:14:23.021666','11','Username',3,'',4,1),(12,'2021-10-27 16:33:12.525289','19','',3,'',4,1),(13,'2021-10-27 16:33:12.599294','14','dawsonbryce.sanchez',3,'',4,1),(14,'2021-10-27 16:33:12.650296','17','dianeisabelle.lambojo',3,'',4,1),(15,'2021-10-27 16:33:12.717300','18','jeanne.regalado',3,'',4,1),(16,'2021-10-27 16:33:12.847308','16','leamor.garcia',3,'',4,1),(17,'2021-10-27 16:33:12.922312','33','me',3,'',4,1),(18,'2021-10-27 16:33:12.972315','30','me@gmail.com',3,'',4,1),(19,'2021-10-27 16:33:12.989316','13','Username',3,'',4,1),(20,'2021-10-27 16:33:13.031318','15','zarina.zaragoza',3,'',4,1),(21,'2021-10-27 16:37:22.367186','37','',3,'',4,1),(22,'2021-10-27 16:37:22.399188','36','dawson@gmail.com',3,'',4,1),(23,'2021-10-27 16:40:14.597258','41','',3,'',4,1),(24,'2021-10-27 16:40:14.641260','44','dawson1@gmail.com',3,'',4,1),(25,'2021-10-27 16:40:14.699264','40','dawson@gmail.com',3,'',4,1),(26,'2021-10-27 16:44:00.887201','49','',3,'',4,1),(27,'2021-10-27 16:44:00.925203','48','dawson',3,'',4,1),(28,'2021-10-27 16:44:00.959205','47','username',3,'',4,1),(29,'2021-10-27 16:46:25.102057','54','',3,'',4,1),(30,'2021-10-27 16:46:25.145060','53','dawson',3,'',4,1),(31,'2021-10-27 16:46:25.225064','52','username',3,'',4,1),(32,'2021-10-27 16:47:44.967994','58','castbound',3,'',4,1),(33,'2021-10-27 16:47:45.003996','57','username',3,'',4,1),(34,'2021-10-27 16:50:25.599399','62','dawsonbryce.sanchez',3,'',4,1),(35,'2021-10-27 16:50:25.640401','61','username',3,'',4,1),(36,'2021-10-27 16:54:06.280863','64','dawsonbryce.sanchez',3,'',4,1),(37,'2021-10-27 16:54:06.285863','63','username',3,'',4,1),(38,'2021-10-28 00:07:03.432414','65','dawsonbryce.sanchez',3,'',4,1),(39,'2021-10-28 00:07:03.489417','68','dianeisabelle.lambojo',3,'',4,1),(40,'2021-10-28 00:07:03.523419','69','jeanne.regalado',3,'',4,1),(41,'2021-10-28 00:07:03.564421','66','leamor.garcia',3,'',4,1),(42,'2021-10-28 00:07:03.598423','67','zarina.zaragoza',3,'',4,1),(43,'2021-10-28 06:45:02.509105','72','dawsonbryce.sanchez',3,'',4,1),(44,'2021-10-28 06:45:02.942130','75','dianeisabelle.lambojo',3,'',4,1),(45,'2021-10-28 06:45:03.009134','76','jeanne.regalado',3,'',4,1),(46,'2021-10-28 06:45:03.042136','73','leamor.garcia',3,'',4,1),(47,'2021-10-28 06:45:03.101139','74','zarina.zaragoza',3,'',4,1),(48,'2021-10-31 11:29:02.793029','103','arturosanchez',3,'',4,1),(49,'2021-10-31 11:29:02.984040','101','caloylucip',3,'',4,1),(50,'2021-10-31 11:29:03.126048','88','dawson',3,'',4,1),(51,'2021-10-31 11:29:03.202053','77','dawsonbryce.sanchez',3,'',4,1),(52,'2021-10-31 11:29:03.305058','80','dianeisabelle.lambojo',3,'',4,1),(53,'2021-10-31 11:29:03.346061','81','jeanne.regalado',3,'',4,1),(54,'2021-10-31 11:29:03.420065','78','leamor.garcia',3,'',4,1),(55,'2021-10-31 11:29:03.563073','99','ljestorba',3,'',4,1),(56,'2021-10-31 11:29:03.605076','79','zarina.zaragoza',3,'',4,1),(57,'2021-10-31 11:34:23.488923','105','arturosanchez',3,'',4,1),(58,'2021-10-31 11:39:02.998420','107','arturosanchez',3,'',4,1),(59,'2021-10-31 11:39:55.652309','109','arturosanchez',3,'',4,1),(60,'2021-10-31 11:41:14.759025','111','arturosanchez',3,'',4,1),(61,'2021-10-31 11:42:33.086953','113','arturosanchez',3,'',4,1),(62,'2021-10-31 11:44:52.440908','115','arturosanchez',3,'',4,1),(63,'2021-10-31 11:45:34.770391','117','arturosanchez',3,'',4,1),(64,'2021-10-31 11:47:39.744005','119','arturosanchez',3,'',4,1),(65,'2021-10-31 11:49:21.017797','121','arturosanchez',3,'',4,1),(66,'2021-10-31 11:50:18.570371','123','arturosanchez',3,'',4,1),(67,'2021-10-31 11:52:30.383977','125','arturosanchez',3,'',4,1),(68,'2021-10-31 11:53:22.375677','127','arturosanchez',3,'',4,1),(69,'2021-10-31 11:56:48.102682','129','arturosanchez',3,'',4,1),(70,'2021-10-31 11:59:25.985839','131','arturosanchez',3,'',4,1),(71,'2021-10-31 12:04:38.850769','133','arturosanchez',3,'',4,1),(72,'2021-10-31 12:15:22.099717','135','arturosanchez',3,'',4,1),(73,'2021-10-31 12:27:09.813378','137','arturosanchez',3,'',4,1),(74,'2021-11-01 06:56:46.271319','139','arturosanchez',3,'',4,1),(75,'2021-11-01 06:56:46.551335','140','dawsonbryce.sanchez',3,'',4,1),(76,'2021-11-01 06:56:46.578337','142','dianeisabelle.lambojo',3,'',4,1),(77,'2021-11-01 06:56:46.586337','143','jeanne.regalado',3,'',4,1),(78,'2021-11-01 06:56:46.595338','144','leamor.garcia',3,'',4,1),(79,'2021-11-01 06:56:46.608339','141','zarina.zaragoza',3,'',4,1),(80,'2021-11-06 12:23:44.895023','187','caloy.lucip',3,'',4,1),(81,'2021-11-06 12:23:49.491286','235','chrismartin',3,'',4,1),(82,'2021-11-06 12:23:52.022431','145','dawsonbryce.sanchez',3,'',4,1),(83,'2021-11-06 12:23:52.810476','147','dianeisabelle.lambojo',3,'',4,1),(84,'2021-11-06 12:23:53.465514','219','edsheeran',3,'',4,1),(85,'2021-11-06 12:23:54.707585','240','florencepugh',3,'',4,1),(86,'2021-11-06 12:23:55.106607','148','jeanne.regalado',3,'',4,1),(87,'2021-11-06 12:23:55.497630','181','john.doe',3,'',4,1),(88,'2021-11-06 12:23:55.873651','188','kathie',3,'',4,1),(89,'2021-11-06 12:23:56.411682','202','kennethjohn',3,'',4,1),(90,'2021-11-06 12:23:56.863708','149','leamor.garcia',3,'',4,1),(91,'2021-11-06 12:23:57.112722','244','lorde',3,'',4,1),(92,'2021-11-06 12:23:57.282732','216','maeelisa',3,'',4,1),(93,'2021-11-06 12:23:57.616751','243','marktwain',3,'',4,1),(94,'2021-11-06 12:23:57.934769','224','michealjackson',3,'',4,1),(95,'2021-11-06 12:23:58.316791','194','mikecruz',3,'',4,1),(96,'2021-11-06 12:23:58.685812','245','moiradela',3,'',4,1),(97,'2021-11-06 12:23:58.843821','189','shirosuzu',3,'',4,1),(98,'2021-11-06 12:23:59.065834','200','trishamae',3,'',4,1),(99,'2021-11-06 12:23:59.584864','146','zarina.zaragoza',3,'',4,1),(100,'2021-11-06 13:29:37.939900','246','dawsonbryce.sanchez',3,'',4,1),(101,'2021-11-07 14:12:04.097822','247','dawsonbryce.sanchez',3,'',4,1),(102,'2021-11-07 14:12:04.188827','248','johndoe',3,'',4,1),(103,'2021-11-09 00:02:04.715026','250','castbound',3,'',4,1),(104,'2021-11-09 00:02:04.853033','252','dawsonbryce.sanchez',3,'',4,1),(105,'2021-11-09 00:02:04.977041','256','dianeisabelle.lambojo',3,'',4,1),(106,'2021-11-09 00:02:05.092047','254','jeanne.regalado',3,'',4,1),(107,'2021-11-09 00:02:05.218054','249','johndoe',3,'',4,1),(108,'2021-11-09 00:02:05.446067','253','leamor.garcia',3,'',4,1),(109,'2021-11-09 00:02:05.858091','251','taylorj',3,'',4,1),(110,'2021-11-09 00:02:05.974098','255','zarina.zaragoza',3,'',4,1),(111,'2021-11-09 01:07:01.877931','257','dawsonbryce.sanchez',3,'',4,1),(112,'2021-11-09 04:56:06.551081','1','Collection object (1)',3,'',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(12,'cifir','author'),(14,'cifir','authuser'),(7,'cifir','book'),(13,'cifir','bookmark'),(8,'cifir','catalog'),(9,'cifir','collection'),(10,'cifir','libuser'),(11,'cifir','note'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-09-04 08:21:21.161969'),(2,'auth','0001_initial','2021-09-04 08:21:24.219144'),(3,'admin','0001_initial','2021-09-04 08:21:31.288548'),(4,'admin','0002_logentry_remove_auto_add','2021-09-04 08:21:33.715687'),(5,'admin','0003_logentry_add_action_flag_choices','2021-09-04 08:21:33.767690'),(6,'contenttypes','0002_remove_content_type_name','2021-09-04 08:21:34.322722'),(7,'auth','0002_alter_permission_name_max_length','2021-09-04 08:21:35.097766'),(8,'auth','0003_alter_user_email_max_length','2021-09-04 08:21:35.226774'),(9,'auth','0004_alter_user_username_opts','2021-09-04 08:21:35.315779'),(10,'auth','0005_alter_user_last_login_null','2021-09-04 08:21:35.781805'),(11,'auth','0006_require_contenttypes_0002','2021-09-04 08:21:35.813807'),(12,'auth','0007_alter_validators_add_error_messages','2021-09-04 08:21:35.876811'),(13,'auth','0008_alter_user_username_max_length','2021-09-04 08:21:35.981817'),(14,'auth','0009_alter_user_last_name_max_length','2021-09-04 08:21:36.105824'),(15,'auth','0010_alter_group_name_max_length','2021-09-04 08:21:36.221831'),(16,'auth','0011_update_proxy_permissions','2021-09-04 08:21:36.342838'),(17,'auth','0012_alter_user_first_name_max_length','2021-09-04 08:21:36.530848'),(18,'cifir','0001_initial','2021-09-04 08:21:40.194058'),(19,'cifir','0002_auto_20210621_1104','2021-09-04 08:22:19.444303'),(20,'cifir','0003_auto_20210826_1542','2021-09-04 08:22:21.766436'),(21,'sessions','0001_initial','2021-09-04 08:22:23.821553'),(22,'cifir','0002_auto_20211115_2159','2021-11-15 14:00:22.743624'),(23,'cifir','0003_auto_20211116_1449','2021-11-16 06:49:57.745587'),(24,'cifir','0002_auto_20211213_2159','2021-12-13 13:59:55.429932'),(25,'cifir','0003_remove_bookmark_user','2021-12-13 14:01:44.245356'),(26,'cifir','0004_auto_20211213_2202','2021-12-13 14:02:42.985934'),(27,'cifir','0005_auto_20211213_2204','2021-12-13 14:05:30.346697'),(28,'cifir','0006_bookmark_page_index','2022-01-19 12:28:58.753500'),(29,'cifir','0002_auto_20220203_2110','2022-02-03 13:10:33.455932'),(30,'cifir','0003_auto_20220203_2111','2022-02-03 13:12:02.018521'),(31,'cifir','0002_auto_20220211_1414','2022-02-17 17:41:39.441842'),(32,'cifir','0003_authuser','2022-02-17 17:41:39.613840');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1c11uh0r2z3nigpop9zp8ab9ilqu6ikk','.eJxVzEEOgjAQheG7dG0a206xujLuPQOZdmagijQpsDLeXUhY6Pb9L99btbjMfbtMXNtM6qKsD-rwu0ZMTx63RA8cu6JTGeeao94ueq-Tvhfi4bZ__4Aep36DhYSsOUeIxrBgkCME9E1MCU4kBiw4B-hMRLCSPPpA3AgikHjn3IryC_OwUgPjq1TdYU0ZrynPmmlRny8hHkQP:1nINY1:dToCS2DpBO9TQmJygJ2obN9mqYASdE1oX1LzvE9GeMw','2022-02-25 04:28:41.998120'),('2x10dbkyq3sgzu47p1kw0v74srbf9ik2','e30:1mjaxy:C-98COGpXZP4CMLhD898EYCSqzE7bXUv-oES1UAxdBs','2021-11-21 05:43:42.044886'),('3gu4oevn3lw6dmgrcbzpqjsqcbn3111h','e30:1mjbC4:AQNEV4kGfgUlUfRsRedIoo7RZSjzTEbJznkCnABmR0I','2021-11-21 05:58:16.441273'),('40iqv0kfs9nxjsnd8pku2ej3305wqaw2','e30:1mjKy8:Efwh1P60t94Vqd2bWxULMmFFL5buYucwQfOSNfUceDc','2021-11-20 12:38:48.691718'),('4hup1lyc0ftp4cqyp0aimulf2je6siv6','e30:1nFVBC:x3Hqr-jg-jWBp06LTK8kFo7vkBZE2jW-tQH23QISI4g','2022-02-17 06:01:14.088858'),('6i3vikbo2yoh3886q2z2rr1e1jpffccx','.eJxVzDsOwjAQRdG9uEaWv4ShpM8aovHYQwzEkeKkQuydWEoB7btP5y0G3NZx2GpahhzFVWhx-t0C0jOVFuIDy32WNJd1yUG2izxqlf0c0-t2fP-AEevYWGSy2hkFhhC9ZQ6ag8IuKdCGLFjbOYUA3EV_IacZvPcQzJmMCcQ72riCU9o1jFMu4vMFQuQ-HQ:1mOVKK:k-oBjwrZtGhBPAEXvKQGbxqG07m5vtAIkmQ7yzyt_uI','2021-09-24 01:27:36.430032'),('7ctuav8qmf7m31kixf9qdopm7e6gm148','.eJxVzDsOwjAQRdG9uEaWv4ShpM8aovHYQwzEkeKkQuydWEoB7btP5y0G3NZx2GpahhzFVWhx-t0C0jOVFuIDy32WNJd1yUG2izxqlf0c0-t2fP-AEevYWGSy2hkFhhC9ZQ6ag8IuKdCGLFjbOYUA3EV_IacZvPcQzJmMCcQ72riCU9o1jFMu4vMFQuQ-HQ:1mc3nu:8PvH9FU5A54iox7CaIXgwDL8kCyCd9SCgosRXYn7qcM','2021-10-31 10:54:10.691597'),('8y80uu7oeckg8mxgbiqzyl3i1cvjomwb','e30:1nFVGF:3Di7p4UnM_JY-MAml7zSb4EHNsWsJnUUBZQBIvjoLZQ','2022-02-17 06:06:27.124605'),('doyft6gz9tgvt53496657a2e5uj9ky8q','.eJxVjkEOwiAURO_C2hDgC21dGfeeofnAx1IRktKujHeXJl3odt7My7zZiNs6jVulZYyeXZgykp1-U4vuSXlHfsb8KNyVvC7R8r3CD1r5vXhKt6P7J5iwTm2NJhjUELpOBCE9DIPC3kEwnRMKTMulEqAUWPLN2kEPIUjsBZqz1lI3Kb0wpv1IxEyxoqWUiCd82TKXq4srJ7-xzxfl4UXV:1mxVF0:7zLHnM656hschlJ9kmnBdgUQVVZVDUIj_bS39CuXtns','2021-12-29 14:26:46.203555'),('ilbks7la8uhwmhbo1pd3f3zog2i5uafh','e30:1nFVHr:GxHNiXOmJFArNPO2Ijks-ML410YGqPL6eFdiz7cafhs','2022-02-17 06:08:07.028467'),('jdzutsmec1w2kgkfj93gpfgaq13pyvzh','e30:1mjax7:pzvWb3LdP7pIiJC6CB9gaTvQvMDJCbt5Euoumru4AK0','2021-11-21 05:42:49.667302'),('kiilxr1dgs4rwoq02thbzo029nuewx0q','e30:1nFVH3:DYwGv-UQltZQZkUfaqLJIk-DkQxyFPyhaS9ZM1P5UJA','2022-02-17 06:07:17.704685'),('pc1nneatlqe7rygsuzyr3on0vukzdcbs','e30:1mjKzV:Hc1Gto6lMdsiTWJ7AaoH3bBVmwUK4wUR-0d-fPdhxlU','2021-11-20 12:40:13.971595'),('pe4uhrx3g2kwfaiesg5yvyx3ddwd3btg','.eJxVjjsOgzAQRO_iOrLwD5tUUfqcAe3aSzAxtoShinL3gESRtPNmnubNetjWsd8qLX0M7MpkK9jlN0XwL8oHChPkZ-G-5HWJyI8KP2nljxIo3c_un2CEOu5rVNoqb5wyigDMII21RKHR2njtyEuHXWOdD-hRtA5wEOBc1wYjBlBS71KaIabjSIRMsQJSSsQTzFimcvNx5RQ29vkCF2NGpw:1nFc17:Ig0A2HOP8lu3Xpbr_xV-XPPaeLX7lSq5I502Zmq0bnY','2022-02-17 13:19:17.379982'),('pl9w1wt960efl54ao476flryzg7acvz1','.eJxVjM0OwiAQhN-FsyEVKKWejHefoVl2lxatkPTnUuO7S5Me9DTJzDffW3SwLkO3zjx1kcRFKFuJ02_rAZ-c9okekPosMadlil7uiDzWWd4z8Xg72D_BAPNQ3o2qtGPriWtoiZVrvUZyZ0ZUYLwxaCzbUIcAyjTYKigtaWVCCE4TFim_II5FtcEUE8gS0OcNrhgXybSKzxe6rEWC:1mmrAZ:WWdPj-wff2wKTvu5cB0MZwS3DR1r7V4EzXRDaTt_HfU','2021-11-30 05:38:11.521899'),('rvfhliqmel5g9z1njsv17osyjpa8yb45','e30:1mjaum:H8ZszBZMo8h4JrVFFbc4i252dVMKQbLN4y71ld6_f2U','2021-11-21 05:40:24.991290'),('t4ul4psbgdat724qfqjy36pq7hi1tq4n','e30:1mjaro:QVr1Z3DXO4RP9sfz_e7-G5IbduoPa-mp7SVXENkLPfU','2021-11-21 05:37:20.286273'),('wxp9pk8znojnngvay48f60rasspj3ot8','.eJxVjM0OwiAQhN-FsyEVKKWejHefoVl2lxatkPTnUuO7S5Me9DTJzDffW3SwLkO3zjx1kcRFKFuJ02_rAZ-c9okekPosMadlil7uiDzWWd4z8Xg72D_BAPNQ3o2qtGPriWtoiZVrvUZyZ0ZUYLwxaCzbUIcAyjTYKigtaWVCCE4TFim_II5FtcEUE8gS0OcNrhgXybSKzxe6rEWC:1mmpL8:N1GyZshgkaRj2vRoBbKLW1DCHqoM--S8p5zxI8hui2I','2021-11-30 03:40:58.615171');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `content` varchar(250) NOT NULL,
  `book_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Note_book_id_bd8e1c87_fk` (`book_id`),
  CONSTRAINT `Note_book_id_bd8e1c87_fk` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-20  3:13:53
