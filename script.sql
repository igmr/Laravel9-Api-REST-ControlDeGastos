-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (arm64)
--
-- Host: localhost    Database: Laravel9_Api_REST_Control_Gastos
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `classifications`
--

DROP TABLE IF EXISTS `classifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `classifications_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classifications`
--

LOCK TABLES `classifications` WRITE;
/*!40000 ALTER TABLE `classifications` DISABLE KEYS */;
INSERT INTO `classifications` VALUES (1,'(Ninguno)',NULL,NULL,NULL,NULL,NULL),(2,'Ingreso',NULL,NULL,NULL,NULL,NULL),(3,'Vivienda',NULL,NULL,NULL,NULL,NULL),(4,'Comida','edición','fa fa-home',NULL,'2022-12-03 04:27:18',NULL),(5,'Impuestos y donaciones',NULL,NULL,NULL,NULL,NULL),(6,'Transporte',NULL,NULL,NULL,NULL,NULL),(7,'Seguros',NULL,NULL,NULL,NULL,NULL),(8,'Ahorros e Inversiones',NULL,NULL,NULL,NULL,NULL),(9,'Servicios',NULL,NULL,NULL,NULL,NULL),(10,'Salud',NULL,NULL,NULL,NULL,NULL),(11,'Vestimenta',NULL,NULL,NULL,NULL,NULL),(12,'Recreación',NULL,NULL,NULL,NULL,NULL),(13,'Personal',NULL,NULL,NULL,NULL,NULL),(14,'Deudas',NULL,NULL,NULL,NULL,NULL),(15,'Campo','edición','fa fa-home','2022-12-03 03:16:42','2022-12-03 04:01:26','2022-12-03 04:01:26'),(16,'Campo01','',NULL,'2022-12-03 03:25:13','2022-12-03 03:25:13',NULL),(17,'Campo02','',NULL,'2022-12-03 04:47:23','2022-12-03 04:47:23',NULL);
/*!40000 ALTER TABLE `classifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classifications_items`
--

DROP TABLE IF EXISTS `classifications_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classifications_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `classification_id` bigint unsigned NOT NULL,
  `name` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `classifications_items_name_unique` (`name`),
  KEY `classifications_items_classification_id_foreign` (`classification_id`),
  CONSTRAINT `classifications_items_classification_id_foreign` FOREIGN KEY (`classification_id`) REFERENCES `classifications` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classifications_items`
--

LOCK TABLES `classifications_items` WRITE;
/*!40000 ALTER TABLE `classifications_items` DISABLE KEYS */;
INSERT INTO `classifications_items` VALUES (1,1,'(Ninguno)',NULL,NULL,NULL,NULL,NULL),(2,2,'Ingreso',NULL,NULL,NULL,NULL,NULL),(3,3,'c04','hola','fa-fa-user',NULL,'2022-12-03 06:42:26','2022-12-03 06:42:26'),(4,3,'Hipoteca Dos',NULL,NULL,NULL,NULL,NULL),(5,3,'Impuestos de vivienda',NULL,NULL,NULL,NULL,NULL),(6,3,'Reparaciones/Mantenimiento',NULL,NULL,NULL,NULL,NULL),(7,3,'Gastos de administración',NULL,NULL,NULL,NULL,NULL),(8,4,'Despensa',NULL,NULL,NULL,NULL,NULL),(9,4,'Restaurantes',NULL,NULL,NULL,NULL,NULL),(10,5,'Impuestos',NULL,NULL,NULL,NULL,NULL),(11,5,'Donaciones',NULL,NULL,NULL,NULL,NULL),(12,6,'Gasolina & Aceite',NULL,NULL,NULL,NULL,NULL),(13,6,'Reparación & Llantas',NULL,NULL,NULL,NULL,NULL),(14,6,'Licencia & Impuestos',NULL,NULL,NULL,NULL,NULL),(15,6,'Reemplazo de Auto',NULL,NULL,NULL,NULL,NULL),(16,6,'Transporte público',NULL,NULL,NULL,NULL,NULL),(17,7,'Seguro de vida',NULL,NULL,NULL,NULL,NULL),(18,7,'Seguro de gastos médicos',NULL,NULL,NULL,NULL,NULL),(19,7,'Seguro de vivienda',NULL,NULL,NULL,NULL,NULL),(20,7,'Seguro de auto',NULL,NULL,NULL,NULL,NULL),(21,7,'Seguro de incapacidad',NULL,NULL,NULL,NULL,NULL),(22,7,'Seguro contra robo',NULL,NULL,NULL,NULL,NULL),(23,7,'Cuidados a largo plazo',NULL,NULL,NULL,NULL,NULL),(24,8,'Fondo de emergencias',NULL,NULL,NULL,NULL,NULL),(25,8,'Fondo para el retiro',NULL,NULL,NULL,NULL,NULL),(26,8,'Fondo para estudios',NULL,NULL,NULL,NULL,NULL),(27,9,'Electricidad',NULL,NULL,NULL,NULL,NULL),(28,9,'Gas',NULL,NULL,NULL,NULL,NULL),(29,9,'Agua',NULL,NULL,NULL,NULL,NULL),(30,9,'Servicios de limpieza',NULL,NULL,NULL,NULL,NULL),(31,9,'Teléfono',NULL,NULL,NULL,NULL,NULL),(32,9,'Internet',NULL,NULL,NULL,NULL,NULL),(33,9,'Cable',NULL,NULL,NULL,NULL,NULL),(34,10,'Medicamentos',NULL,NULL,NULL,NULL,NULL),(35,10,'Médicos',NULL,NULL,NULL,NULL,NULL),(36,10,'Dentista',NULL,NULL,NULL,NULL,NULL),(37,10,'Optometrista',NULL,NULL,NULL,NULL,NULL),(38,10,'Vitaminas',NULL,NULL,NULL,NULL,NULL),(39,10,'Salud otros 1',NULL,NULL,NULL,NULL,NULL),(40,10,'Salud otros 2',NULL,NULL,NULL,NULL,NULL),(41,11,'Adultos',NULL,NULL,NULL,NULL,NULL),(42,11,'Niños',NULL,NULL,NULL,NULL,NULL),(43,11,'Limpieza',NULL,NULL,NULL,NULL,NULL),(44,12,'Entretenimiento',NULL,NULL,NULL,NULL,NULL),(45,12,'Vacaciones',NULL,NULL,NULL,NULL,NULL),(46,13,'Guardería/Niñera',NULL,NULL,NULL,NULL,NULL),(47,13,'Artículos de tocador',NULL,NULL,NULL,NULL,NULL),(48,13,'Cosméticos/Cuidado del cabello',NULL,NULL,NULL,NULL,NULL),(49,13,'Educación/Colegiatura',NULL,NULL,NULL,NULL,NULL),(50,13,'Libros/Útiles',NULL,NULL,NULL,NULL,NULL),(51,13,'Manutención',NULL,NULL,NULL,NULL,NULL),(52,13,'Pensión alimenticia',NULL,NULL,NULL,NULL,NULL),(53,13,'Suscripciones',NULL,NULL,NULL,NULL,NULL),(54,13,'Gastos de organización',NULL,NULL,NULL,NULL,NULL),(55,13,'Regalos',NULL,NULL,NULL,NULL,NULL),(56,13,'Reemplazar muebles',NULL,NULL,NULL,NULL,NULL),(57,13,'Dinero de bolsillo (de el)',NULL,NULL,NULL,NULL,NULL),(58,13,'Dinero de bolsillo (de ella)',NULL,NULL,NULL,NULL,NULL),(59,13,'Artículos para bebé',NULL,NULL,NULL,NULL,NULL),(60,13,'Artículos para mascota',NULL,NULL,NULL,NULL,NULL),(61,13,'Música/Tecnología',NULL,NULL,NULL,NULL,NULL),(62,13,'Varios',NULL,NULL,NULL,NULL,NULL),(63,13,'Contador',NULL,NULL,NULL,NULL,NULL),(64,13,'Personal otro 1',NULL,NULL,NULL,NULL,NULL),(65,13,'Personal otro 2',NULL,NULL,NULL,NULL,NULL),(66,14,'Pago de auto 1',NULL,NULL,NULL,NULL,NULL),(67,14,'Pago de auto 2',NULL,NULL,NULL,NULL,NULL),(68,14,'Tarjeta de crédito 1',NULL,NULL,NULL,NULL,NULL),(69,14,'Tarjeta de crédito 2',NULL,NULL,NULL,NULL,NULL),(70,14,'Tarjeta de crédito 3',NULL,NULL,NULL,NULL,NULL),(71,14,'Tarjeta de crédito 4',NULL,NULL,NULL,NULL,NULL),(72,14,'Tarjeta de crédito 5',NULL,NULL,NULL,NULL,NULL),(73,14,'Préstamo estudiantil 1',NULL,NULL,NULL,NULL,NULL),(74,14,'Préstamo estudiantil 2',NULL,NULL,NULL,NULL,NULL),(75,14,'Préstamo estudiantil 3',NULL,NULL,NULL,NULL,NULL),(76,14,'Préstamo estudiantil 4',NULL,NULL,NULL,NULL,NULL),(77,14,'Deuda otro 1',NULL,NULL,NULL,NULL,NULL),(78,14,'Deuda otro 2',NULL,NULL,NULL,NULL,NULL),(79,14,'Deuda otro 3',NULL,NULL,NULL,NULL,NULL),(80,14,'Deuda otro 4',NULL,NULL,NULL,NULL,NULL),(81,14,'Deuda otro 5',NULL,NULL,NULL,NULL,NULL),(82,1,'c01','','','2022-12-03 05:17:57','2022-12-03 05:17:57',NULL),(84,3,'c02','','','2022-12-03 05:18:42','2022-12-03 05:18:42',NULL),(85,3,'c03','','','2022-12-03 06:32:35','2022-12-03 06:32:35',NULL);
/*!40000 ALTER TABLE `classifications_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (71,'2014_10_12_000000_create_users_table',1),(72,'2014_10_12_100000_create_password_resets_table',1),(73,'2019_08_19_000000_create_failed_jobs_table',1),(74,'2019_12_14_000001_create_personal_access_tokens_table',1),(75,'2022_12_02_174929_create_classifications_table',1),(76,'2022_12_02_175449_create_classifications_items_table',1),(77,'2022_12_02_175745_create_operations_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operations`
--

DROP TABLE IF EXISTS `operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `classification_item_id` bigint unsigned NOT NULL,
  `type` enum('ingreso','egreso') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'egreso',
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_classification_item_id_foreign` (`classification_item_id`),
  CONSTRAINT `operations_classification_item_id_foreign` FOREIGN KEY (`classification_item_id`) REFERENCES `classifications_items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operations`
--

LOCK TABLES `operations` WRITE;
/*!40000 ALTER TABLE `operations` DISABLE KEYS */;
INSERT INTO `operations` VALUES (14,2,'ingreso',0.50,'','2022-12-03 09:27:04','2022-12-03 09:27:04',NULL);
/*!40000 ALTER TABLE `operations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subclasificaciones`
--

DROP TABLE IF EXISTS `subclasificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subclasificaciones` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `clasificacion_id` int NOT NULL DEFAULT '0',
  `nombre` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icono` varchar(65) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creado` timestamp NOT NULL,
  `editado` timestamp NULL DEFAULT NULL,
  `eliminado` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabla de subclasificaciones.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subclasificaciones`
--

LOCK TABLES `subclasificaciones` WRITE;
/*!40000 ALTER TABLE `subclasificaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `subclasificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-02 21:39:14
