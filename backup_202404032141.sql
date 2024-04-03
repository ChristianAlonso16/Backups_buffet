-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: buffet
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.20.04.1

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id_address` binary(16) NOT NULL,
  `street` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `postal_code` int NOT NULL,
  `city` varchar(30) NOT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `fk_user_account` binary(16) NOT NULL,
  PRIMARY KEY (`id_address`),
  KEY `fk_user_account` (`fk_user_account`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`fk_user_account`) REFERENCES `user_account` (`id_user_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (_binary '\'e\Å\á\Ø?\î”K\Øe^)','Calle Clavel','La matona',12345,'Cuernavaca','Llama antes de llegar','2024-04-03 04:14:23',_binary '\'e\Å\á\Ø?\î”K\Øe^)'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)','Calle vela','Flores Magon',54321,'Temixco','Llamame','2024-04-03 04:14:23',_binary '\'e\Å\á\Ø?\î”K\Øe^)');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_has_comment`
--

DROP TABLE IF EXISTS `package_has_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_has_comment` (
  `id_package_has_comment` binary(16) NOT NULL,
  `comment_text` varchar(50) NOT NULL,
  `comment_point` int NOT NULL,
  `comment_date` datetime NOT NULL,
  `fk_user_account` binary(16) NOT NULL,
  `fk_service_package` binary(16) NOT NULL,
  KEY `fk_user_account` (`fk_user_account`),
  KEY `fk_service_package` (`fk_service_package`),
  CONSTRAINT `package_has_comment_ibfk_1` FOREIGN KEY (`fk_user_account`) REFERENCES `user_account` (`id_user_account`),
  CONSTRAINT `package_has_comment_ibfk_2` FOREIGN KEY (`fk_service_package`) REFERENCES `service_package` (`id_service_package`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_has_comment`
--

LOCK TABLES `package_has_comment` WRITE;
/*!40000 ALTER TABLE `package_has_comment` DISABLE KEYS */;
INSERT INTO `package_has_comment` VALUES (_binary '\'e\Å\á\Ø?\î”K\Øe^)A','Excelente servicio',5,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)$'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)B','Excelente ambiente',5,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)$'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)C','Me agrado',4,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)$'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)D','Regular',2,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)$'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)E','Excelente servicio',5,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)$'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)F','Buen servicio, pero puede mejorar',3,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)$'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)G','Excelente servicio',5,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)%'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)H','Excelente ambiente',5,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)%'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)I','Me agrado',4,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)%'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)@','Regular',2,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)%'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)Q','Excelente servicio',5,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)%'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)R','Buen servicio, pero puede mejorar',3,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)%'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)S','Excelente servicio',5,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)&'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)T','Excelente ambiente',5,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)&'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)U','Me agrado',4,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)&'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)W','Regular',2,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)&'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)X','Excelente servicio',5,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)&'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)Y','Buen servicio, pero puede mejorar',3,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)&'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)`','Excelente servicio',5,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)\''),(_binary '\'e\Å\á\Ø?\î”K\Øe^)a','Excelente ambiente',5,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)\''),(_binary '\'e\Å\á\Ø?\î”K\Øe^)b','Me agrado',4,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)\''),(_binary '\'e\Å\á\Ø?\î”K\Øe^)c','Regular',2,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)\''),(_binary '\'e\Å\á\Ø?\î”K\Øe^)d','Excelente servicio',5,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)\''),(_binary '\'e\Å\á\Ø?\î”K\Øe^)e','Buen servicio, pero puede mejorar',3,'2024-04-03 04:14:25',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)\'');
/*!40000 ALTER TABLE `package_has_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_image`
--

DROP TABLE IF EXISTS `package_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_image` (
  `id_package_image` binary(16) NOT NULL,
  `image` varchar(200) NOT NULL,
  `num_image` int DEFAULT NULL,
  `fk_service_package` binary(16) NOT NULL,
  PRIMARY KEY (`id_package_image`),
  KEY `fk_service_package` (`fk_service_package`),
  CONSTRAINT `package_image_ibfk_1` FOREIGN KEY (`fk_service_package`) REFERENCES `service_package` (`id_service_package`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_image`
--

LOCK TABLES `package_image` WRITE;
/*!40000 ALTER TABLE `package_image` DISABLE KEYS */;
INSERT INTO `package_image` VALUES (_binary '\'e\Å\á\Ø?\î”K\Øe^)(','https://www.shutterstock.com/image-photo/party-table-graduation-decoration-600nw-1198731190.jpg',1,_binary '\'e\Å\á\Ø?\î”K\Øe^)$'),(_binary '\'e\Å\á\Ø?\î”K\Øe^))','https://aprende.com/wp-content/uploads/2022/05/bebidas-de-graduacion.jpg',2,_binary '\'e\Å\á\Ø?\î”K\Øe^)$'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)0','https://cuponassets.cuponatic-latam.com/backendMx/uploads/imagenes_descuentos/95576/d4ca44bad47c2f27f7584eb40b54752a2414e300.XL2.jpg',3,_binary '\'e\Å\á\Ø?\î”K\Øe^)$'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)1','https://horsepowermexico.com/wp-content/uploads/2018/07/P_670a46c74851479788dd70273e709b15.jpg',1,_binary '\'e\Å\á\Ø?\î”K\Øe^)%'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)2','https://picturecarsmx.com/wp-content/uploads/2019/12/Mercedes-sprinter-blanca-20-pasajeros-en-renta-en-cdmx-2.jpg',2,_binary '\'e\Å\á\Ø?\î”K\Øe^)%'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)3','https://vansmanzahnos.com.mx/wp-content/uploads/2017/07/3bann.png',3,_binary '\'e\Å\á\Ø?\î”K\Øe^)%'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)4','https://www.gob.mx/cms/uploads/article/main_image/114673/Depositphotos_122576538_XL_750x392.jpg',1,_binary '\'e\Å\á\Ø?\î”K\Øe^)&'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)5','https://lataquiza.com.mx/wp-content/uploads/2021/04/gal2_inf.png',2,_binary '\'e\Å\á\Ø?\î”K\Øe^)&'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)6','https://www.estrellasdelarecreacion.com/ibague/images/carretas-7.jpg',3,_binary '\'e\Å\á\Ø?\î”K\Øe^)&'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)7','https://taquizasdonjulio.com.mx/wp-content/uploads/2022/01/Taquizas-6.jpg',1,_binary '\'e\Å\á\Ø?\î”K\Øe^)\''),(_binary '\'e\Å\á\Ø?\î”K\Øe^)8','https://www.banquetesytaquizas.com.mx/imgagenes/galeria/guisados0.jpg',2,_binary '\'e\Å\á\Ø?\î”K\Øe^)\''),(_binary '\'e\Å\á\Ø?\î”K\Øe^)9','https://mlmnyz2kljyg.i.optimole.com/w:1200/h:649/q:mauto/f:avif/https://www.doncanijo.com/wp-content/uploads/2021/10/roberto-carlos-roman-don-TS_g_856-CA-unsplash-1.jpg',3,_binary '\'e\Å\á\Ø?\î”K\Øe^)\'');
/*!40000 ALTER TABLE `package_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_order`
--

DROP TABLE IF EXISTS `package_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_order` (
  `id_package_order` binary(16) NOT NULL,
  `num_order` varchar(20) NOT NULL,
  `order_date_start` datetime DEFAULT NULL,
  `order_date_end` datetime DEFAULT NULL,
  `order_price` double NOT NULL,
  `created_at` datetime NOT NULL,
  `fk_user_account` binary(16) NOT NULL,
  `fk_service_package` binary(16) NOT NULL,
  `fk_status` binary(16) NOT NULL,
  `fk_payment` binary(16) DEFAULT NULL,
  `fk_address` binary(16) NOT NULL,
  PRIMARY KEY (`id_package_order`),
  KEY `fk_user_account` (`fk_user_account`),
  KEY `fk_service_package` (`fk_service_package`),
  KEY `fk_status` (`fk_status`),
  KEY `fk_payment` (`fk_payment`),
  KEY `fk_address` (`fk_address`),
  CONSTRAINT `package_order_ibfk_1` FOREIGN KEY (`fk_user_account`) REFERENCES `user_account` (`id_user_account`),
  CONSTRAINT `package_order_ibfk_2` FOREIGN KEY (`fk_service_package`) REFERENCES `service_package` (`id_service_package`),
  CONSTRAINT `package_order_ibfk_3` FOREIGN KEY (`fk_status`) REFERENCES `status` (`id_status`),
  CONSTRAINT `package_order_ibfk_4` FOREIGN KEY (`fk_payment`) REFERENCES `payment` (`id_payment`),
  CONSTRAINT `package_order_ibfk_5` FOREIGN KEY (`fk_address`) REFERENCES `address` (`id_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_order`
--

LOCK TABLES `package_order` WRITE;
/*!40000 ALTER TABLE `package_order` DISABLE KEYS */;
INSERT INTO `package_order` VALUES (_binary '\'e\Å\á\Ø?\î”K\Øe^)B','123ABC','2024-03-29 20:00:00','2024-03-29 22:00:00',100,'2024-04-03 04:14:24',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)$',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)@',_binary '\'e\Å\á\Ø?\î”K\Øe^)'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)C','456DEF','2024-03-31 20:00:00','2024-04-01 04:00:00',150,'2024-04-03 04:14:24',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)%',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)A',_binary '\'e\Å\á\Ø?\î”K\Øe^)');
/*!40000 ALTER TABLE `package_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id_payment` binary(16) NOT NULL,
  `payment_method` varchar(40) DEFAULT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `transaction_description` varchar(100) NOT NULL,
  PRIMARY KEY (`id_payment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (_binary '\'e\Å\á\Ø?\î”K\Øe^)@','Paypal','80P041923V7849056','2024-04-03 04:14:24','Pago realizado'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)A','Papyal','80P041923V7849057','2024-04-03 04:14:24','Pago realizado');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_category`
--

DROP TABLE IF EXISTS `service_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_category` (
  `id_service_category` binary(16) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id_service_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_category`
--

LOCK TABLES `service_category` WRITE;
/*!40000 ALTER TABLE `service_category` DISABLE KEYS */;
INSERT INTO `service_category` VALUES (_binary '\'e\Å\á\Ø?\î”K\Øe^) ','Comida'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)!','Transporte'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)\"','Eventos'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)#','Utileria');
/*!40000 ALTER TABLE `service_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_package`
--

DROP TABLE IF EXISTS `service_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_package` (
  `id_service_package` binary(16) NOT NULL,
  `package_name` varchar(100) NOT NULL,
  `package_description` varchar(300) DEFAULT NULL,
  `price` double NOT NULL,
  `discount` double DEFAULT NULL,
  `ability` int NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime DEFAULT NULL,
  `fk_service_category` binary(16) NOT NULL,
  `fk_status` binary(16) NOT NULL,
  PRIMARY KEY (`id_service_package`),
  KEY `fk_service_category` (`fk_service_category`),
  KEY `fk_status` (`fk_status`),
  CONSTRAINT `service_package_ibfk_1` FOREIGN KEY (`fk_service_category`) REFERENCES `service_category` (`id_service_category`),
  CONSTRAINT `service_package_ibfk_2` FOREIGN KEY (`fk_status`) REFERENCES `status` (`id_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_package`
--

LOCK TABLES `service_package` WRITE;
/*!40000 ALTER TABLE `service_package` DISABLE KEYS */;
INSERT INTO `service_package` VALUES (_binary '\'e\Å\á\Ø?\î”K\Øe^)$','Cena de graduacion','Cena de 2 tiempos, incluye mesas, sillas, meseros, para 10 personas',1000,0,1,'2024-03-01 22:46:49','2024-03-01 22:46:49',_binary '\'e\Å\á\Ø?\î”K\Øe^) ',_binary '\'e\Å\á\Ø?\î”K\Øe^(	'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)%','Urban','Camioneta para 8 personas ',1000,0,1,'2024-03-01 22:46:49','2024-03-01 22:46:49',_binary '\'e\Å\á\Ø?\î”K\Øe^)!',_binary '\'e\Å\á\Ø?\î”K\Øe^(	'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)&','Comida infantil','Cena de 3 tiempos,incluye mesa de dulces, incluye mesas, sillas, meseros, para 30 personas',1000,0,1,'2024-03-01 22:46:49','2024-03-01 22:46:49',_binary '\'e\Å\á\Ø?\î”K\Øe^) ',_binary '\'e\Å\á\Ø?\î”K\Øe^(	'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)\'','Taquiza','Incluye tacos de pastor, suadero, costilla, verdura, para 50 personas',1000,0,1,'2024-03-01 22:46:49','2024-03-01 22:46:49',_binary '\'e\Å\á\Ø?\î”K\Øe^) ',_binary '\'e\Å\á\Ø?\î”K\Øe^(	');
/*!40000 ALTER TABLE `service_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id_status` binary(16) NOT NULL,
  `status_name` varchar(100) NOT NULL,
  `status_description` varchar(100) NOT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (_binary '\'e\Å\á\Ø?\î”K\Øe^\'	','enabled','to_worker'),(_binary '\'e\Å\á\Ø?\î”K\Øe^\'','disabled','to_worker'),(_binary '\'e\Å\á\Ø?\î”K\Øe^(	','enabled','to_package'),(_binary '\'e\Å\á\Ø?\î”K\Øe^(','disabled','to_package'),(_binary '\'e\Å\á\Ø?\î”K\Øe^(','process','to_order'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)	','enabled','to_user'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)','disabled','to_user'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)','accepted','to_order'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)','sold','to_order'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)','required','to_order');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `id_user_account` binary(16) NOT NULL,
  `email` varchar(30) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `token` varchar(500) NOT NULL,
  `locked_user` tinyint(1) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `fk_user_info` binary(16) DEFAULT NULL,
  `fk_status` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id_user_account`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_user_info` (`fk_user_info`),
  KEY `fk_status` (`fk_status`),
  CONSTRAINT `user_account_ibfk_1` FOREIGN KEY (`fk_user_info`) REFERENCES `user_info` (`id_user_info`),
  CONSTRAINT `user_account_ibfk_2` FOREIGN KEY (`fk_status`) REFERENCES `status` (`id_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES (_binary '\'e\Å\á\Ø?\î”K\Øe^)','c@gmail.com','$2a$10$gQZpuhnQLen9pY22v93HKu67T7G4sYfzieWakWrbY1AD7P70BlQ42','admin123',1,'2024-04-03 04:14:23',NULL,_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)	'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)','k@gmail.com','$2a$10$gQZpuhnQLen9pY22v93HKu67T7G4sYfzieWakWrbY1AD7P70BlQ42','public123',1,'2024-04-03 04:14:23',NULL,_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^)	');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `id_user_info` binary(16) NOT NULL,
  `name` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime DEFAULT NULL,
  `fk_user_type` binary(16) NOT NULL,
  PRIMARY KEY (`id_user_info`),
  KEY `fk_user_type` (`fk_user_type`),
  CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`fk_user_type`) REFERENCES `user_type` (`id_user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (_binary '\'e\Å\á\Ø?\î”K\Øe^)','Christian','Carrasco','Alonso','123456789','2024-04-03 04:14:23',NULL,_binary '\'e\Å\á\Ø?\î”K\Øe^)'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)','Victor','Flores','Salgado','987654321','2024-04-03 04:14:23',NULL,_binary '\'e\Å\á\Ø?\î”K\Øe^)'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)','Karel','Flores','Salinas','987654321','2024-04-03 04:14:23',NULL,_binary '\'e\Å\á\Ø?\î”K\Øe^)'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)','Ulises','Garcia','Mendez','987654321','2024-04-03 04:14:23',NULL,_binary '\'e\Å\á\Ø?\î”K\Øe^)');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_type` (
  `id_user_type` binary(16) NOT NULL,
  `type_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type`
--

LOCK TABLES `user_type` WRITE;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` VALUES (_binary '\'e\Å\á\Ø?\î”K\Øe^)','Admin'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)','Worker'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)','Public');
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker` (
  `id_worker` binary(16) NOT NULL,
  `num_worker` varchar(20) NOT NULL,
  `locked_worker` tinyint(1) DEFAULT NULL,
  `worker_password` varchar(100) NOT NULL,
  `start_hour` time NOT NULL,
  `end_hour` time NOT NULL,
  `fk_user_info` binary(16) NOT NULL,
  `fk_status` binary(16) DEFAULT NULL,
  PRIMARY KEY (`id_worker`),
  KEY `fk_status` (`fk_status`),
  KEY `fk_user_info` (`fk_user_info`),
  CONSTRAINT `worker_ibfk_1` FOREIGN KEY (`fk_status`) REFERENCES `status` (`id_status`),
  CONSTRAINT `worker_ibfk_2` FOREIGN KEY (`fk_user_info`) REFERENCES `user_info` (`id_user_info`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` VALUES (_binary '\'e\Å\á\Ø?\î”K\Øe^!D','W455',0,'$2a$10$gQZpuhnQLen9pY22v93HKu67T7G4sYfzieWakWrbY1AD7P70BlQ42','20:00:00','23:59:59',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^\'	'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)D','W456',1,'$2a$10$gQZpuhnQLen9pY22v93HKu67T7G4sYfzieWakWrbY1AD7P70BlQ42','09:00:00','18:00:00',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^\'	'),(_binary '\'e\Å\á\Ø?\î”K\Øe^)E','W123',1,'$2a$10$gQZpuhnQLen9pY22v93HKu67T7G4sYfzieWakWrbY1AD7P70BlQ42','00:00:00','10:00:00',_binary '\'e\Å\á\Ø?\î”K\Øe^)',_binary '\'e\Å\á\Ø?\î”K\Øe^\'	');
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker_assignment`
--

DROP TABLE IF EXISTS `worker_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker_assignment` (
  `id_worker_assignment` binary(16) NOT NULL,
  `fk_worker` binary(16) NOT NULL,
  `fk_package_order` binary(16) NOT NULL,
  `assignment_date_start` datetime NOT NULL,
  `assignment_date_end` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id_worker_assignment`),
  KEY `fk_worker` (`fk_worker`),
  KEY `fk_package_order` (`fk_package_order`),
  CONSTRAINT `worker_assignment_ibfk_1` FOREIGN KEY (`fk_worker`) REFERENCES `worker` (`id_worker`),
  CONSTRAINT `worker_assignment_ibfk_2` FOREIGN KEY (`fk_package_order`) REFERENCES `package_order` (`id_package_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker_assignment`
--

LOCK TABLES `worker_assignment` WRITE;
/*!40000 ALTER TABLE `worker_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `worker_assignment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-03 21:41:01
