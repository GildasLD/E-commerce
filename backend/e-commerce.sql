-- MariaDB dump 10.19  Distrib 10.9.3-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: e-commerce
-- ------------------------------------------------------
-- Server version	10.9.3-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `e-commerce`
--

/*!40000 DROP DATABASE IF EXISTS `e-commerce`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `e-commerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `e-commerce`;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES
(1,'Motherboard','motherboard'),
(2,'Cpu','cpu'),
(3,'Maison','maison'),
(5,'Iwatch','i-watch'),
(7,'Ipad','ipad'),
(8,'MacBook','macbook');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES
('DoctrineMigrations\\Version20221106182536','2022-07-11 14:49:17',115),
('DoctrineMigrations\\Version20221106183049','2022-07-12 19:15:09',119);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_object`
--

DROP TABLE IF EXISTS `media_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_object`
--

LOCK TABLES `media_object` WRITE;
/*!40000 ALTER TABLE `media_object` DISABLE KEYS */;
INSERT INTO `media_object` VALUES
(45,'macbook-air-gallery3-20201110-62dfe27f26906626346791.jpeg'),
(46,'macbook-air-starlight-select-20220606-62dfe4191786a815132612.jpeg'),
(48,'iphone-14-design-1-62e057fe44d94924896803.jpeg'),
(54,'iphone-14-design-1-62e0f8785dfc6288348545.jpeg'),
(55,'iphone-14-design-1-62e0f884b1bdf818640040.jpeg'),
(56,'iphone-14-design-1-62e0f907be6da240837404.jpeg'),
(57,'iphone-14-design-1-62e0fdce0ccb2931918681.jpeg'),
(58,'iphone-14-design-1-62e0fe5aded88574479351.jpeg'),
(59,'iphone-14-design-1-62e0fea37d805583680461.jpeg'),
(60,'iphone-14-design-1-62e0ff5a55b68397550781.jpeg'),
(61,'iphone-14-design-1-62e0ffcbd1767352365957.jpeg'),
(62,'iphone-14-design-1-62e1006b597d4059446126.jpeg'),
(63,'iphone-14-design-1-62e100db38dc3585796668.jpeg'),
(64,'iphone-14-design-1-62e101234de58495141137.jpeg'),
(65,'iphone-14-design-1-62e1019aab32d730814490.jpeg'),
(66,'iphone-14-design-1-62e101c267335652690079.jpeg'),
(67,'iphone-14-design-1-62e102115b07a355710975.jpeg'),
(68,'iphone-14-design-1-62e1023303153684177151.jpeg'),
(69,'iphone-14-design-1-62e1023bdc438912058009.jpeg'),
(70,'iphone-14-design-1-62e1024b1e6e6747406461.jpeg'),
(71,'iphone-14-design-1-62e10250567ea421785864.jpeg'),
(72,'iphone-14-design-1-62e10276eb6e6179297852.jpeg'),
(73,'iphone-14-design-1-62e1028e12a7c360926305.jpeg'),
(74,'iphone-14-design-1-62e102c1caf5d961479664.jpeg'),
(75,'iphone-14-design-1-62e102c46bc8c809189882.jpeg'),
(76,'iphone-14-design-1-62e103072ff05275728687.jpeg'),
(77,'iphone-14-design-1-62e1030ba66f6467726429.jpeg'),
(78,'iphone-14-design-1-62e10338b4784551075853.jpeg'),
(79,'iphone-14-design-1-62e10367a7bc4825474460.jpeg'),
(80,'iphone-14-design-1-62e1038108701510692668.jpeg'),
(81,'iphone-14-design-1-62e10413f30e4792283518.jpeg'),
(82,'iphone-14-design-1-62e1045c1054f698144905.jpeg'),
(83,'iphone-14-design-1-62e1049e818f5762231827.jpeg'),
(84,'iphone-14-design-1-62e106d8d265b269956613.jpeg'),
(85,'iphone-14-design-1-62e1081053e37586610133.jpeg'),
(86,'iphone-14-design-1-62e1089d14470786657312.jpeg'),
(87,'iphone-14-design-1-62e119c827fc0735940971.jpeg'),
(88,'iphone-14-design-1-62e11a2a39b3b180324600.jpeg'),
(89,'iphone-14-design-1-62e3f8360e684695020698.jpeg'),
(90,'iphone-14-design-1-62e3f86b01a26807080820.jpeg'),
(91,'davtyan-cv-62e7a405aa9c2566489511.pdf'),
(92,'rotating-earth-large-62e7a497432aa578024924.gif'),
(93,'mockup-apple-iphone-13-pro-max-2021-737a828a3d-62e7a7efe7a96432028091.png'),
(94,'hero-gnfk5g59t0qe-large-2x-62e7a908c05b8590386945.png'),
(95,'hero-gnfk5g59t0qe-large-2x-62e7aaca2ee78471043259.png'),
(96,'iphone-14-design-1-62e8f14d4f516541039311.jpeg'),
(97,'iphone-14-design-1-62e8f19703c80833947414.jpeg'),
(98,'tree-736885-480-62e8f1c60b0bd117742429.jpeg'),
(99,'test-ipad-mini-6-copie-62e9246e2b1de791033784.jpeg'),
(100,'test-ipad-mini-6-copie-62e924756e815854567136.jpeg'),
(101,'test-ipad-mini-6-copie-62e924b0edc2d966368848.jpeg'),
(102,'test-ipad-mini-6-copie-62e924b564de9503583741.jpeg'),
(103,'test-ipad-mini-6-copie-62e924b8e8711268622808.jpeg'),
(104,'test-ipad-mini-6-copie-62e924bd4fa09583058691.jpeg'),
(105,'test-ipad-mini-6-copie-62e924c1350e6798649140.jpeg'),
(106,'test-ipad-mini-6-copie-62e924c7c2c2b295404388.jpeg'),
(107,'test-ipad-mini-6-copie-62e925a229553554146174.jpeg'),
(108,'test-ipad-mini-6-copie-62eb7a34c9368731063632.jpeg');
/*!40000 ALTER TABLE `media_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notation`
--

DROP TABLE IF EXISTS `notation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id_id` int(11) DEFAULT NULL,
  `notation_date` datetime NOT NULL,
  `commentary` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suggestions` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ranking_stars` int(11) DEFAULT NULL,
  `user_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_268BC95DE18E50B` (`product_id_id`),
  KEY `IDX_268BC959D86650F` (`user_id_id`),
  CONSTRAINT `FK_268BC959D86650F` FOREIGN KEY (`user_id_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_268BC95DE18E50B` FOREIGN KEY (`product_id_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notation`
--

LOCK TABLES `notation` WRITE;
/*!40000 ALTER TABLE `notation` DISABLE KEYS */;
INSERT INTO `notation` VALUES
(2,254,'2022-08-24 14:48:27',NULL,NULL,4,72),
(3,254,'2022-08-24 11:49:53','string','string',3,72),
(4,254,'2022-08-24 12:54:48','string','string',4,72),
(5,254,'2022-08-24 12:54:56','string','string',2,72),
(6,330,'2022-11-02 18:33:14','string','string',4,72),
(7,332,'2022-11-06 16:41:04','string','string',5,72);
/*!40000 ALTER TABLE `notation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E52FFDEEA76ED395` (`user_id`),
  CONSTRAINT `FK_E52FFDEEA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES
(161,72,'3e774393','2022-08-15 18:44:23'),
(162,72,'3538df93','2022-08-15 18:44:23'),
(163,72,'27fa27e2','2022-08-24 09:46:23');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_details`
--

DROP TABLE IF EXISTS `orders_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `orders_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_835379F1CFFE9AD6` (`orders_id`),
  KEY `IDX_835379F14584665A` (`product_id`),
  CONSTRAINT `FK_835379F14584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_835379F1CFFE9AD6` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_details`
--

LOCK TABLES `orders_details` WRITE;
/*!40000 ALTER TABLE `orders_details` DISABLE KEYS */;
INSERT INTO `orders_details` VALUES
(87,118,1,77,161),
(88,118,1,77,162),
(89,128,1,629,162),
(90,134,1,81,163),
(91,128,1,629,163);
/*!40000 ALTER TABLE `orders_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `click` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D34A04ADA21214B7` (`categories_id`),
  KEY `IDX_D34A04AD3DA5256D` (`image_id`),
  CONSTRAINT `FK_D34A04AD3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `media_object` (`id`),
  CONSTRAINT `FK_D34A04ADA21214B7` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES
(1,'Taylor Garza','Fuga Maiores ipsum ','Qui minus delectus ',0,60,2,45,5),
(2,'Dara Bowen','Rerum accusamus ipsa','Perferendis lorem au',83,71,1,45,0),
(3,'Grady Underwood','Minim ut aut necessi','Amet aute unde est ',23,10,1,45,0),
(9,'c\'est le test','c_es_t_le_test_','de la vie',987.65,22,5,45,0),
(72,'Eden Goff','Adipisicing et eius ','Enim aut ut reprehen',8,25,3,45,7),
(73,'Other keyboard','Other keyboard','il marche bien',20,5,3,45,0),
(74,'Logitech - Super RGB','Logitech - Super RGB','il marche bien',20,5,3,45,2),
(75,'Ultra mouse3000','Ultra mouse3000','il marche bien',20,5,3,45,0),
(83,'September Barlow','Enim sint quos sapie','Ut eveniet et animi',77,51,7,45,0),
(85,'Ladybug Mouse ','Ladybug Mouse ','il marche bien',20,5,3,45,0),
(95,'Iphone 14','Nostrud molestias at','test test',84,84,5,87,0),
(102,'September Barlow','Enim sint quos sapie','Ut eveniet et animi',77,51,7,45,1),
(103,'Iphone 14','Nostrud molestias at','test test',84,84,5,87,2),
(104,'Edward Michael','Fuga Perferendis do','Impedit necessitati',16,5,7,88,2),
(110,'September Barlow','Enim sint quos sapie','Ut eveniet et animi',77,51,7,45,0),
(112,'Edward Michael','Fuga Perferendis do','Impedit necessitati',16,5,7,88,0),
(118,'September Barlow','Enim sint quos sapie','Ut eveniet et animi',77,51,7,45,0),
(128,'AIrpods MAx','airpods-max','Le casque tel que vous le connaissez a été complètement repensé. Des coussinets jusqu’au sommet de l’arceau, les AirPods Max sont conçus pour s’ajuster parfaitement sur toutes les formes de tête de façon à offrir une isolation acoustique optimale. De quoi vous immerger pleinement dans le son.',629,300,7,94,18),
(134,'az','pp','Aut r',81,98,7,108,2),
(173,'the_nom','slug','description',10,20,7,45,0),
(174,'super téléhpone','slug','description',10,20,7,45,0),
(175,'Iona Brock','Iusto molestias aute','Et vitae laboriosam',12,48,1,45,0),
(249,'string','string','string',0,0,1,45,0),
(253,'Beau Mercado','Deserunt molestiae e','Quidem sunt quo volu',89,51,3,45,3),
(254,'Airpods Max','airpods-max','Le casque tel que vous le connaissez a été complètement repensé. Des coussinets jusqu’au sommet de l’arceau, les AirPods Max sont conçus pour s’ajuster parfaitement sur toutes les formes de tête de façon à offrir une isolation acoustique optimale. De quoi vous immerger pleinement dans le son.',629,300,7,94,27),
(255,'Orla Lane','Magna sit labore su','Qui autem ex ratione',50,70,7,45,0),
(259,'Anthony Foreman','slug','description',10,20,7,45,110),
(260,'AMD Ryzen 5 5600X Wraith Stealth (3.7 GHz / 4.6 GHz)','AMD_Ryzen_5_5600X_Wraith_Stealth_(3.7_GHz_/_4.6_GHz)','description',239.95,1,2,45,0),
(261,'AMD Ryzen 5 5500 Wraith Stealth (3.6 GHz / 4.2 GHz)','AMD_Ryzen_5_5500_Wraith_Stealth_(3.6_GHz_/_4.2_GHz)','description',157.96,1,2,45,0),
(262,'AMD Ryzen 7 5800X (3.8 GHz / 4.7 GHz)','AMD_Ryzen_7_5800X_(3.8_GHz_/_4.7_GHz)','description',339.95,1,2,45,0),
(263,'AMD Ryzen 7 5700X (3.4 GHz / 4.6 GHz)','AMD_Ryzen_7_5700X_(3.4_GHz_/_4.6_GHz)','description',319.95,1,2,45,0),
(264,'Intel Core i7-12700K (3.6 GHz / 5.0 GHz)','Intel_Core_i7-12700K_(3.6_GHz_/_5.0_GHz)','description',569.95,1,2,45,0),
(265,'AMD Ryzen 5 3600 (3.6 GHz / 4.2 GHz)','AMD_Ryzen_5_3600_(3.6_GHz_/_4.2_GHz)','description',179.95,1,2,45,0),
(266,'AMD Ryzen 9 5900X (3.7 GHz / 4.8 GHz)','AMD_Ryzen_9_5900X_(3.7_GHz_/_4.8_GHz)','description',489.95,1,2,45,0),
(267,'Intel Core i5-12400F (2.5 GHz / 4.4 GHz)','Intel_Core_i5-12400F_(2.5_GHz_/_4.4_GHz)','description',239.95,1,2,45,0),
(268,'Intel Core i5-12600K (3.7 GHz / 4.9 GHz)','Intel_Core_i5-12600K_(3.7_GHz_/_4.9_GHz)','description',399.95,1,2,45,0),
(269,'Intel Core i7-12700KF (3.6 GHz / 5.0 GHz)','Intel_Core_i7-12700KF_(3.6_GHz_/_5.0_GHz)','description',549.95,1,2,45,0),
(270,'Intel Core i5-12600KF (3.7 GHz / 4.9 GHz)','Intel_Core_i5-12600KF_(3.7_GHz_/_4.9_GHz)','description',369.95,1,2,45,0),
(271,'AMD Ryzen 5 4500 Wraith Stealth (3.6 GHz / 4.1 GHz)','AMD_Ryzen_5_4500_Wraith_Stealth_(3.6_GHz_/_4.1_GHz)','description',144.95,1,2,45,0),
(272,'AMD Ryzen 5 5600G Wraith Stealth (3.9 GHz / 4.4 GHz)','AMD_Ryzen_5_5600G_Wraith_Stealth_(3.9_GHz_/_4.4_GHz)','description',199.95,1,2,45,0),
(273,'Intel Core i5-11400F (2.6 GHz / 4.4 GHz)','Intel_Core_i5-11400F_(2.6_GHz_/_4.4_GHz)','description',199.96,1,2,45,0),
(274,'AMD Ryzen 3 3200G (3.6 GHz / 4 GHz)','AMD_Ryzen_3_3200G_(3.6_GHz_/_4_GHz)','description',124.95,1,2,45,0),
(275,'Intel Core i5-10400F (2.9 GHz / 4.3 GHz)','Intel_Core_i5-10400F_(2.9_GHz_/_4.3_GHz)','description',165.95,1,2,45,0),
(276,'AMD Ryzen 7 5700G Wraith Stealth (3.8 GHz / 4.6 GHz)','AMD_Ryzen_7_5700G_Wraith_Stealth_(3.8_GHz_/_4.6_GHz)','description',329.95,1,2,45,0),
(277,'Intel Core i7-11700K (3.6 GHz / 5.0 GHz)','Intel_Core_i7-11700K_(3.6_GHz_/_5.0_GHz)','description',469.96,1,2,45,0),
(278,'Intel Core i9-11900K (3.5 GHz / 5.3 GHz)','Intel_Core_i9-11900K_(3.5_GHz_/_5.3_GHz)','description',579.95,1,2,45,0),
(279,'Intel Core i5-12400 (2.5 GHz / 4.4 GHz)','Intel_Core_i5-12400_(2.5_GHz_/_4.4_GHz)','description',279.95,1,2,45,0),
(280,'Intel Core i9-12900K (3.2 GHz / 5.2 GHz)','Intel_Core_i9-12900K_(3.2_GHz_/_5.2_GHz)','description',829.95,1,2,45,0),
(281,'Intel Core i3-12100F (3.3 GHz / 4.3 GHz)','Intel_Core_i3-12100F_(3.3_GHz_/_4.3_GHz)','description',135.95,1,2,45,0),
(282,'AMD Ryzen 5 5600 Wraith Stealth (3.5 GHz / 4.4 GHz)','AMD_Ryzen_5_5600_Wraith_Stealth_(3.5_GHz_/_4.4_GHz)','description',212.95,1,2,45,0),
(283,'Intel Celeron G5905 (3.5 GHz)','Intel_Celeron_G5905_(3.5_GHz)','description',42.95,1,2,45,0),
(284,'AMD Ryzen 5 4600G Wraith Stealth (3.7 GHz / 4.2 GHz)','AMD_Ryzen_5_4600G_Wraith_Stealth_(3.7_GHz_/_4.2_GHz)','description',199.94,1,2,45,0),
(285,'AMD Ryzen 3 4100 Wraith Stealth (3.8 GHz / 4.0 GHz)','AMD_Ryzen_3_4100_Wraith_Stealth_(3.8_GHz_/_4.0_GHz)','description',119.95,1,2,45,0),
(286,'AMD Ryzen 9 5950X (3.4 GHz / 4.9 GHz)','AMD_Ryzen_9_5950X_(3.4_GHz_/_4.9_GHz)','description',649.95,1,2,45,0),
(287,'Intel Core i3-10100 (3.6 GHz / 4.3 GHz)','Intel_Core_i3-10100_(3.6_GHz_/_4.3_GHz)','description',159.95,1,2,45,0),
(288,'Intel Core i5-10400 (2.9 GHz / 4.3 GHz)','Intel_Core_i5-10400_(2.9_GHz_/_4.3_GHz)','description',207.95,1,2,45,0),
(289,'Intel Core i3-12100 (3.3 GHz / 4.3 GHz)','Intel_Core_i3-12100_(3.3_GHz_/_4.3_GHz)','description',169.96,1,2,45,0),
(290,'Intel Core i5-11600K (3.9 GHz / 4.9 GHz)','Intel_Core_i5-11600K_(3.9_GHz_/_4.9_GHz)','description',299.95,1,2,45,0),
(291,'Intel Core i7-12700F (2.1 GHz / 4.9 GHz)','Intel_Core_i7-12700F_(2.1_GHz_/_4.9_GHz)','description',439.95,1,2,45,0),
(292,'Intel Core i5-12600 (3.3 GHz / 4.8 GHz)','Intel_Core_i5-12600_(3.3_GHz_/_4.8_GHz)','description',329.95,1,2,45,0),
(293,'Intel Core i3-10100F (3.6 GHz / 4.3 GHz)','Intel_Core_i3-10100F_(3.6_GHz_/_4.3_GHz)','description',93.95,1,2,45,0),
(294,'Intel Core i5-11600KF (3.9 GHz / 4.9 GHz)','Intel_Core_i5-11600KF_(3.9_GHz_/_4.9_GHz)','description',289.96,1,2,45,0),
(295,'Intel Core i5-12500 (3.0 GHz / 4.6 GHz)','Intel_Core_i5-12500_(3.0_GHz_/_4.6_GHz)','description',299.95,1,2,45,0),
(296,'Intel Core i7-11700F (2.5 GHz / 4.9 GHz)','Intel_Core_i7-11700F_(2.5_GHz_/_4.9_GHz)','description',409.96,1,2,45,0),
(297,'AMD Ryzen 3 4100 (3.8 GHz / 4.0 GHz)','AMD_Ryzen_3_4100_(3.8_GHz_/_4.0_GHz)','description',115.96,1,2,45,0),
(298,'Intel Core i7-10700KF (3.8 GHz / 5.1 GHz)','Intel_Core_i7-10700KF_(3.8_GHz_/_5.1_GHz)','description',379.94,1,2,45,0),
(299,'Intel Core i7-12700 (2.1 GHz / 4.9 GHz)','Intel_Core_i7-12700_(2.1_GHz_/_4.9_GHz)','description',479.95,1,2,45,0),
(300,'Intel Core i7-11700KF (3.6 GHz / 5.0 GHz)','Intel_Core_i7-11700KF_(3.6_GHz_/_5.0_GHz)','description',399.95,1,2,45,0),
(301,'Intel Core i9-12900KF (3.2 GHz / 5.2 GHz)','Intel_Core_i9-12900KF_(3.2_GHz_/_5.2_GHz)','description',799.96,1,2,45,0),
(302,'AMD Ryzen 5 PRO 5650G (3.9 GHz / 4.4 GHz)','AMD_Ryzen_5_PRO_5650G_(3.9_GHz_/_4.4_GHz)','description',225.95,1,2,45,0),
(303,'Intel Core i5-11400 (2.6 GHz / 4.4 GHz)','Intel_Core_i5-11400_(2.6_GHz_/_4.4_GHz)','description',239.95,1,2,45,0),
(304,'Intel Core i3-10105 (3.7 GHz / 4.4 GHz)','Intel_Core_i3-10105_(3.7_GHz_/_4.4_GHz)','description',149.95,1,2,45,0),
(305,'Intel Core i7-10700F (2.9 GHz / 4.8 GHz)','Intel_Core_i7-10700F_(2.9_GHz_/_4.8_GHz)','description',339.95,1,2,45,0),
(306,'Intel Pentium Gold G6405 (4.1 GHz) (Tray)','Intel_Pentium_Gold_G6405_(4.1_GHz)_(Tray)','description',71.95,1,2,45,0),
(307,'Intel Core i9-10900K (3.7 GHz / 5.3 GHz)','Intel_Core_i9-10900K_(3.7_GHz_/_5.3_GHz)','description',549.95,1,2,45,0),
(308,'Intel Core i5-10400 (2.9 GHz / 4.3 GHz) (Bulk)','Intel_Core_i5-10400_(2.9_GHz_/_4.3_GHz)_(Bulk)','description',189.95,1,2,45,0),
(309,'Intel Core i9-12900KS (3.4 GHz / 5.5 GHz)','Intel_Core_i9-12900KS_(3.4_GHz_/_5.5_GHz)','description',959.95,1,2,45,0),
(310,'Intel Core i3-10105F (3.7 GHz / 4.4 GHz)','Intel_Core_i3-10105F_(3.7_GHz_/_4.4_GHz)','description',101.95,1,2,45,0),
(311,'Intel Core i7-11700 (2.5 GHz / 4.9 GHz)','Intel_Core_i7-11700_(2.5_GHz_/_4.9_GHz)','description',439.95,1,2,45,0),
(312,'Intel Core i5-10600KF (4.1 GHz / 4.8 GHz)','Intel_Core_i5-10600KF_(4.1_GHz_/_4.8_GHz)','description',239.95,1,2,45,0),
(313,'Intel Celeron G6900 (3.4 GHz) (Bulk)','Intel_Celeron_G6900_(3.4_GHz)_(Bulk)','description',55.95,1,2,45,0),
(314,'AMD Ryzen 7 5800X3D (3.4 GHz / 4.5 GHz)','AMD_Ryzen_7_5800X3D_(3.4_GHz_/_4.5_GHz)','description',569.95,1,2,45,0),
(315,'Intel Core i9-12900 (2.4 GHz / 5.1 GHz)','Intel_Core_i9-12900_(2.4_GHz_/_5.1_GHz)','description',699.95,1,2,45,0),
(316,'Intel Core i5-11500 (2.7 GHz / 4.6 GHz)','Intel_Core_i5-11500_(2.7_GHz_/_4.6_GHz)','description',248.95,1,2,45,0),
(317,'AMD Ryzen 5 3600 (3.6 GHz / 4.2 GHz)','AMD_Ryzen_5_3600_(3.6_GHz_/_4.2_GHz)','description',179.95,1,2,45,0),
(318,'Intel Core i5-11400 (2.6 GHz / 4.4 GHz) (Bulk)','Intel_Core_i5-11400_(2.6_GHz_/_4.4_GHz)_(Bulk)','description',224.95,1,2,45,0),
(319,'Intel Core i7-10700K (3.8 GHz / 5.1 GHz)','Intel_Core_i7-10700K_(3.8_GHz_/_5.1_GHz)','description',429.95,1,2,45,0),
(320,'Intel Pentium Gold G6405 (4.1 GHz)','Intel_Pentium_Gold_G6405_(4.1_GHz)','description',94.96,1,2,45,0),
(321,'Intel Celeron G6900 (3.4 GHz)','Intel_Celeron_G6900_(3.4_GHz)','description',67.95,1,2,45,0),
(322,'Intel Core i9-12900F (2.4 GHz / 5.1 GHz)','Intel_Core_i9-12900F_(2.4_GHz_/_5.1_GHz)','description',679.94,1,2,45,0),
(323,'AMD Ryzen 5 PRO 4650G (3.7 GHz / 4.2 GHz)','AMD_Ryzen_5_PRO_4650G_(3.7_GHz_/_4.2_GHz)','description',219.95,1,2,45,0),
(324,'Intel Core i7-10700 (2.9 GHz / 4.8 GHz)','Intel_Core_i7-10700_(2.9_GHz_/_4.8_GHz)','description',369.95,1,2,45,0),
(325,'Intel Core i5-11600 (2.8 GHz / 4.8 GHz)','Intel_Core_i5-11600_(2.8_GHz_/_4.8_GHz)','description',263.95,1,2,45,0),
(326,'Intel Core i5-10500 (3.1 GHz / 4.5 GHz)','Intel_Core_i5-10500_(3.1_GHz_/_4.5_GHz)','description',239.95,1,2,45,0),
(327,'Intel Core i9-11900KF (3.5 GHz / 5.3 GHz)','Intel_Core_i9-11900KF_(3.5_GHz_/_5.3_GHz)','description',599.95,1,2,45,0),
(328,'Intel Celeron G5925 (3.6 GHz)','Intel_Celeron_G5925_(3.6_GHz)','description',53.95,1,2,45,0),
(329,'Intel Pentium G7400 (3.7 GHz)','Intel_Pentium_G7400_(3.7_GHz)','description',97.96,1,2,45,0),
(330,'Intel Core i9-10900 (2.8 GHz / 5.2 GHz)','Intel_Core_i9-10900_(2.8_GHz_/_5.2_GHz)','description',539.95,1,2,45,110),
(331,'Intel Core i9-10980XE Extreme Edition (3.0 GHz / 4.6 GHz)','Intel_Core_i9-10980XE_Extreme_Edition_(3.0_GHz_/_4.6_GHz)','description',1399.94,1,2,45,0),
(332,'test','2','description',6,2,2,45,0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
(48,'huvif@mailinator.com','[\"ROLE_USER\"]','$2y$13$RWkjT6pRPK0UG8DjY.NE/e3obbW74W7z93CW2mWM0/tUbOrfzLQ1e','Olga','Gillespie',NULL,NULL,NULL),
(71,'gavejiz@mailinator.com','[\"ROLE_USER\"]','$2y$13$qSu9vwHAKs3AD7LRxo3ux.NhQAfo3Sfla2HY9JMeAGzF7GwYRrJ1i','Sigourney','Hendricks',NULL,NULL,NULL),
(72,'gildas.le-drogoff@epitech.eu','[\"ROLE_ADMIN\"]','$2y$13$sPwcLUWCw1M.2utRwVecUe/9VLXN8yoy83kaVKBXCS7VYua/3XZiC','Gildas','Le Drogoff','24, rue pasteur','75000','Paris');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'e-commerce'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-06 17:54:24
