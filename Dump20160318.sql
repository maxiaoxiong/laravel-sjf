-- MySQL dump 10.13  Distrib 5.7.9, for linux-glibc2.5 (x86_64)
--
-- Host: 127.0.0.1    Database: sjf2
-- ------------------------------------------------------
-- Server version	5.6.19-1~exp1ubuntu2

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `confirm_code` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_confirmed` int(11) DEFAULT '0',
  `is_admin` int(11) DEFAULT '0',
  `avatar` varchar(48) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'超级管理员','admin@admin.com','$2y$10$xOHhwP5SdkiEJkQncX0EYe/HbEHB9GTlir9/gWopHhaq53brFD67.','lr7Q4CMxXAwRvY6yxA6UWhRCBoczVcpxRxJb1ADQhANkcmByBAH0zsA2pIjb','2016-02-18 09:54:37','2016-03-17 15:15:40',NULL,1,1,'Fl2RW1-ro9Q1JUnUGzoPs3ONq2KI'),(2,'小熊','xiong@xiong.com','$2y$10$ZBY8BESDpFScFlntKhLpcOls0lHXyYPPak4eXBUSN5VyMYQzmdIsK','L9NJ3ttmspzlYvlQkVzudEMutlPYdUKJuXGdnb5ItxlTdymwHQyD3fQnQAoJ','2016-02-20 01:55:22','2016-02-20 10:51:58',NULL,1,1,'Fl2RW1-ro9Q1JUnUGzoPs3ONq2KI'),(3,'吗小','xiong@zai.com','$2y$10$xPCRZkRZyrB8YIKMODmNcupFyGX.jezTJqMjcsqpa0Kh2Nwsc34RO',NULL,'2016-02-24 08:57:41','2016-02-24 08:57:41',NULL,0,0,'Fl2RW1-ro9Q1JUnUGzoPs3ONq2KI'),(4,'mars','xiong@xionger.com','xiongxiong',NULL,'2016-02-24 09:14:56','2016-02-24 09:14:56',NULL,0,0,'Fl2RW1-ro9Q1JUnUGzoPs3ONq2KI'),(5,'sdf','xiong@zasdfi.com','xiongxiong',NULL,'2016-02-24 09:17:09','2016-02-24 09:17:09',NULL,0,0,'Fl2RW1-ro9Q1JUnUGzoPs3ONq2KI'),(6,'sadfasdf','xiong@zsdfai.com','$2y$10$k9RlPJad4bfurxX7uDSN7uC/vK8Q/6zamfTsDjs0RypVTwVMTVGYu',NULL,'2016-02-24 09:21:49','2016-02-24 09:21:49',NULL,0,0,'Fl2RW1-ro9Q1JUnUGzoPs3ONq2KI'),(7,'测试admin','xiong@1.com','$2y$10$BRTjeHDllGEfVrnUrKB8XuoR1EfClunD459sRw6jGk.5LkEz4Jo7u',NULL,'2016-02-25 01:20:16','2016-02-25 01:20:16',NULL,0,0,'Fl2RW1-ro9Q1JUnUGzoPs3ONq2KI'),(8,'在测试一下子','xiong@2.com','$2y$10$z5UFlYuQthdvegGJ4GKMa.wM5AfJmzFCUgHt48gitJDpj5KCeVqCm',NULL,'2016-02-25 01:24:15','2016-02-25 01:24:15',NULL,0,1,'Fl2RW1-ro9Q1JUnUGzoPs3ONq2KI'),(9,'mars','xiong@3.com','$2y$10$WspGemvZXNKov3uP6J8WM.Kk3pvn/tW4n1hGstuLaUKX6xbGLzeMK','1bvXUminrUS47orDv2Z31QemPmcJCiabYoBCfNaLFLg5Dz5UwWRu0hIz0nxi','2016-02-25 01:25:50','2016-02-25 02:03:11','92VgekXzFXtCgeNk7AhTGJobFGy1IuU2jWpeAdtlqbeX2pTA',1,1,'Fl2RW1-ro9Q1JUnUGzoPs3ONq2KI'),(11,'shifuyuan','Nicholas-Stone@outlook.com','$2y$10$2Z8kaLt.oMzKGRMzDqnG9ewPbP2.x/cf89RmK0mJNTB1ZrTqrfcDm',NULL,'2016-02-25 08:12:19','2016-02-25 08:13:42','1Nhv1ej1ElIOTBCLxTHvW7byZZs97wctSJMbSKaDw8F7CSen',1,0,'Fl2RW1-ro9Q1JUnUGzoPs3ONq2KI'),(12,'slkdjfas','xiong@zais.com','$2y$10$./JwCZOcVXPOpPoIq3rMgOvGdk1XZ8ZmjSSZnuNbgcglTZXIK6vxO',NULL,'2016-02-26 10:00:43','2016-02-26 10:00:43','yZCkROmFXtIe8cTLcbVoUXGYXmpX1FbwNJsH7SaFn2Lb9y2r',1,1,'Fl2RW1-ro9Q1JUnUGzoPs3ONq2KI'),(16,'xiongzai','xiongzaigezhongsao@163.com','$2y$10$OSfZ9F76tI7IHIj.0FyEzO7ejUKte6HbKrAzxd5m11jeKFyFr5We2',NULL,'2016-02-26 11:16:58','2016-03-04 00:31:01','7WAfN5jGFhXuydKfi4P5GNsbjNUWgJRapcl23ZjizIpgfDrv',1,0,'Fl2RW1-ro9Q1JUnUGzoPs3ONq2KI'),(17,'xiongzai','952328568@qq.com','$2y$10$MxedYwKdYf3avXKUkrrAQewJC3vKH49MpNCxYEAQBfcSPn3jmokaa',NULL,'2016-03-04 03:34:52','2016-03-04 03:34:52','jhTxmx90T8cbgTeO82A9I4wiSPLAtq0omE7QBkpzJnNH3tT9',0,0,'Fl2RW1-ro9Q1JUnUGzoPs3ONq2KI'),(18,'memeda','xiong@zaizai.com','$2y$10$HmjB79TLh0n9SP1MCvg2iOXYs5XmfYS9C73hv0hiWOCuK.0nulbZG',NULL,'2016-03-17 15:13:56','2016-03-17 15:13:56','1dt1rVDboOwE9AKnNHpT6Yt5Tlj1GzJtLQqfSZcS1vwCG7fd',1,1,NULL);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(55) CHARACTER SET latin1 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `c_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'PHP','2016-02-19 02:24:43','2016-02-19 03:06:52','世界上最好的语言'),(2,'Node','2016-02-19 02:25:49','2016-02-19 03:06:41','前端开发利器'),(3,'Java','2016-02-19 02:38:47','2016-02-19 03:06:15','最强大的语言'),(4,'Python','2016-02-20 01:18:08','2016-02-20 01:18:08','服务端利器'),(5,'Perl','2016-02-21 04:09:51','2016-02-21 04:09:51','利器'),(6,'??','2016-02-23 06:31:44','2016-02-23 06:31:44','栏目描述');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  `material_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `comments_admin_id_foreign` (`admin_id`),
  KEY `comments_material_id_foreign` (`material_id`),
  CONSTRAINT `comments_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_material_id_foreign` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Ullam doloremque nemo aliquam molestiae. Aut omnis ipsum rerum consequatur temporibus eum. Laudantium dolorum harum sint voluptate omnis numquam.',4,6,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(2,'Quisquam quae aliquam consequatur aspernatur minus. Et nihil incidunt sunt voluptas. Dolorem tenetur ipsam saepe eos quaerat.',12,12,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(3,'Sunt soluta sequi vero deleniti ullam non. Et ut non doloribus. Perspiciatis cupiditate dolore explicabo placeat quia sint fugit cumque. Voluptatum ut saepe sit voluptate tempora corrupti dolor.',9,8,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(4,'Et corporis ipsam nihil omnis delectus. Dignissimos nulla deleniti dolores explicabo aut asperiores. Consectetur eveniet laborum culpa quo occaecati.',9,7,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(5,'Molestias quis dolor et minus exercitationem quasi corporis aut. Voluptates rerum aut tempora quia excepturi et. Dolor quas magni facere aut dicta quo. Voluptatem quod similique impedit nihil.',8,2,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(6,'Odit consequatur velit non illo quasi expedita. Voluptatem aliquid inventore sit ab deserunt eveniet neque tenetur. Voluptates incidunt eveniet error illo.',6,1,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(7,'Aspernatur quaerat vel vel amet. Enim a consectetur iste repudiandae dolor minus. Et autem laudantium commodi asperiores explicabo ut. Incidunt deleniti voluptatem magni velit cupiditate ut fugiat molestias.',11,12,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(8,'Similique odit eius id sit. Temporibus repellat sit earum vero dolorem.',6,9,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(9,'Harum nulla et qui inventore consequatur. Vitae autem est laborum voluptas. Velit quia qui et voluptatem voluptas eos et. Et eaque unde laborum rem eum aut aut.',4,8,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(10,'Enim sit aliquam molestiae sed fugiat. Sit et vitae occaecati culpa voluptas.',11,8,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(11,'Eveniet quis illum iusto officia. Qui maiores quisquam facilis consequatur. Dicta voluptates ut quis sunt voluptas laborum. Fugiat a molestiae culpa est et.',1,2,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(12,'Exercitationem modi debitis et veniam facere a deleniti. Accusantium et modi dolore aliquid similique dolores. Temporibus rerum provident ut sunt.',3,5,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(13,'Ullam nisi eos aut animi esse non sed libero. Et voluptates totam iste nisi vero dolorem. Ea qui sunt vel quidem quia. Fuga sint enim consequuntur laudantium autem vel.',3,2,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(14,'Rerum et placeat eos repellendus. Illo nulla corporis quas magnam repellendus consequatur. Et sed cum distinctio et blanditiis consequuntur. Aut qui non esse quos ducimus impedit.',3,9,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(15,'Sed quisquam non pariatur tempore. Labore eum cumque sit vel inventore incidunt. Repellat quis eum tenetur a vel. Dolores et rerum animi quia dolores facere.',16,9,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(16,'Laborum alias eos sed sit unde. Quod deleniti eveniet ut distinctio.',2,1,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(17,'Nobis non quod iure voluptatem velit amet aut. Vitae accusamus eum eligendi neque atque dolorum. Quas in labore cum quibusdam.',3,3,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(18,'Dolor omnis accusantium ut dolorem culpa. Nemo perferendis perspiciatis et quas. Iste non et dolore repellat eius error. Ea non cupiditate debitis voluptatem fuga.',6,7,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(19,'Non repellat perferendis qui aut quaerat quis deserunt. Excepturi asperiores qui ex asperiores dolorem similique expedita. Eos voluptas consequatur animi soluta est. Veritatis aut sequi corrupti repellat enim qui molestiae.',4,1,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(20,'Ducimus eius quos quod omnis sed doloremque. Neque qui cupiditate explicabo eius. Qui earum quasi dolorem rerum atque atque. Non explicabo quos deserunt qui.',12,8,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(21,'Sit sunt nostrum distinctio et reprehenderit repellendus et. Quaerat et voluptatem placeat ex nihil. Quos occaecati temporibus sint consequatur quas laboriosam reprehenderit.',3,11,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(22,'Sed maxime illum corporis id officiis est dolorem. Et molestiae eveniet soluta nihil.',6,2,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(23,'Cum eum quia error sit porro voluptatibus. Qui quisquam deserunt illum impedit in ut. Sit voluptas dignissimos suscipit in.',12,2,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(24,'Unde laboriosam ut et eum quo magnam. Vel quae dolores cumque dolor ullam et. Nulla ut deserunt quidem. Velit quisquam nisi debitis aperiam.',6,6,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(25,'Nostrum autem omnis odio. Expedita illum aut magni et laborum. Laudantium illo quia debitis est ut repudiandae.',8,3,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(26,'Qui vel voluptatum dignissimos a perferendis explicabo ullam. Doloremque qui est ut enim enim dolor. Repellendus sed exercitationem harum mollitia quia vitae.',12,7,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(27,'Vero autem natus iste amet aperiam. Quibusdam ut consequatur soluta consequatur eveniet repudiandae ut. Deleniti nihil non est sint ut qui aut. Et aut at recusandae et vitae voluptates.',9,1,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(28,'Expedita harum qui minus tenetur expedita. Nemo expedita voluptatum qui vel molestiae esse. Sint aut ut molestiae repellendus et.',3,2,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(29,'Est ea provident et mollitia aut labore aspernatur. Sit vel voluptates itaque. Commodi sit est sint.',9,6,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(30,'Atque voluptatem alias excepturi unde odio nulla. Ut voluptate laboriosam eos. Beatae facilis at ut sed aut.',1,5,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(31,'Suscipit quia id qui reprehenderit voluptates. Corporis exercitationem et ratione vero mollitia. Quaerat et aperiam corrupti quasi qui.',2,1,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(32,'Fuga illum et nesciunt. Quod sequi est voluptas optio autem. Eligendi quo mollitia blanditiis architecto molestiae. Reiciendis repellat officiis pariatur eligendi.',4,7,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(33,'Voluptas perspiciatis ea veniam est cumque similique ea. Sit quia maiores maiores saepe vel quod. Optio voluptatem totam quia rem ad.',9,3,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(34,'Ut et ea dolor exercitationem aliquid. Sit voluptas nihil voluptatibus suscipit voluptatibus aliquid. Non sit aut voluptatum quia magnam deleniti. Delectus harum quos voluptas consectetur repudiandae consequatur.',2,8,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(35,'Dolores amet distinctio eos fugit assumenda et. Vitae similique deleniti aut ut sint deserunt nihil. Ex non consequatur impedit alias quibusdam quisquam sed. Est ab ducimus nihil ducimus fuga ut voluptate.',8,3,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(36,'Perferendis quos est facilis. Est facilis ipsum cumque quas ut et omnis incidunt. Commodi unde nobis occaecati rerum ullam eaque quis. Dolores in aut exercitationem et.',11,8,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(37,'Laboriosam aut minima consequatur est molestiae ratione quae sit. Reiciendis harum non beatae ut cum corporis. Illo in porro fugit nesciunt voluptatibus. Praesentium temporibus vitae blanditiis dignissimos ipsa eum recusandae.',11,12,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(38,'Facilis sint culpa rerum similique quia qui sit. Nam tenetur dolore quasi consequatur laboriosam aut perferendis. Vel dolorem esse non quos et.',2,2,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(39,'Asperiores eaque quo eum dolores. Quia eum dolore rerum qui sed. Pariatur eveniet accusamus ea qui reiciendis in.',5,6,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(40,'Voluptatem porro voluptatem aut est explicabo quibusdam quam. Dolorem aut esse blanditiis ut magnam atque vel enim. Unde ea esse nostrum est. Quo qui molestiae cum.',2,9,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(41,'Nihil quas nisi vel placeat voluptatem. Qui non esse recusandae a minus sint sit. Libero repellendus et quis corporis est maxime nihil.',12,11,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(42,'Corporis earum accusamus totam illo iste. Dolor error praesentium qui velit.',7,4,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(43,'Aut voluptatem occaecati eveniet consectetur modi voluptas maiores. Pariatur ratione vitae aut laboriosam ipsum qui. Quam vitae qui quibusdam ut molestiae soluta. Optio cumque quasi officiis sequi quia doloribus. Dolor dolores et eaque rerum et tempore.',8,13,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(44,'Voluptatem id non natus eaque ut fugiat. Facere velit aut hic dolorem. Voluptatem cumque commodi ad illo ipsum. Aut et ipsam sint quod ut cum. Sunt nostrum error praesentium voluptas illo optio omnis.',12,1,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(45,'Non et ducimus repudiandae enim delectus. Libero quis aut officiis voluptatem quibusdam qui cumque. Dolorum eum saepe rerum porro veritatis. Hic dolorem quo consequatur rerum. Eum provident eos non aut nemo voluptas deserunt.',16,11,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(46,'Alias modi optio est ad est iure. Vel fuga impedit dicta corrupti suscipit. Exercitationem nostrum molestias et quas harum libero pariatur. Dignissimos facilis ut ut voluptas deleniti.',4,8,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(47,'Ex est et aut distinctio sed doloremque. A et laudantium minima exercitationem in rerum laudantium. Eius minima dolor voluptas qui voluptatem laudantium.',16,2,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(48,'Minima voluptatem assumenda repudiandae vel reiciendis. Labore ex tempore doloremque id quasi id quae. Numquam officiis adipisci maxime laboriosam.',2,12,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(49,'Officiis commodi neque enim. Eum ipsum recusandae provident dolore nisi aut.',7,9,'2016-03-03 16:14:04','2016-03-03 16:14:04'),(50,'Vitae ullam aut dolorum voluptatem quia. Nisi eligendi sed voluptatum et. Dolores consequatur et inventore illo nobis excepturi. Consequatur ut consectetur velit illum.',12,9,'2016-03-03 16:14:04','2016-03-03 16:14:04');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contributes`
--

DROP TABLE IF EXISTS `contributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned NOT NULL,
  `is_author` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `is_author_admin_id_foreign` (`admin_id`),
  CONSTRAINT `is_author_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributes`
--

LOCK TABLES `contributes` WRITE;
/*!40000 ALTER TABLE `contributes` DISABLE KEYS */;
INSERT INTO `contributes` VALUES (4,16,1,'2016-03-17 08:51:21','2016-03-18 07:39:33');
/*!40000 ALTER TABLE `contributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned NOT NULL,
  `material_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,1,1,'2016-02-25 02:47:59','2016-02-25 02:47:59'),(3,1,2,'2016-02-25 03:02:27','2016-02-25 03:02:27'),(4,11,10,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(5,2,11,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(6,9,5,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(7,4,5,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(8,2,6,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(9,1,9,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(10,11,12,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(11,3,13,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(12,7,3,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(13,1,5,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(14,2,12,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(15,2,9,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(16,4,11,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(17,1,9,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(18,16,8,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(19,8,7,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(20,12,11,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(21,16,12,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(22,9,7,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(23,8,9,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(24,12,7,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(25,8,2,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(26,5,10,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(27,4,9,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(28,7,6,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(29,1,6,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(30,11,7,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(31,6,4,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(32,11,5,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(33,8,4,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(34,3,7,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(35,12,12,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(36,9,8,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(37,2,3,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(38,8,10,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(39,3,5,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(40,11,12,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(41,6,7,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(42,1,10,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(43,16,9,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(44,16,3,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(45,5,4,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(46,7,8,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(47,12,6,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(48,8,2,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(49,6,13,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(50,1,5,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(51,4,13,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(52,4,6,'2016-03-03 16:18:47','2016-03-03 16:18:47'),(53,3,3,'2016-03-03 16:18:47','2016-03-03 16:18:47');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journals`
--

DROP TABLE IF EXISTS `journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `material_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `journals_material_id_foreign` (`material_id`),
  CONSTRAINT `journals_material_id_foreign` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journals`
--

LOCK TABLES `journals` WRITE;
/*!40000 ALTER TABLE `journals` DISABLE KEYS */;
INSERT INTO `journals` VALUES (4,15,'2016-03-18 05:00:37','2016-03-18 05:00:37');
/*!40000 ALTER TABLE `journals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_tag`
--

DROP TABLE IF EXISTS `material_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `material_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `material_tag_material_id_index` (`material_id`),
  KEY `material_tag_tag_id_index` (`tag_id`),
  CONSTRAINT `material_tag_material_id_foreign` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`),
  CONSTRAINT `material_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_tag`
--

LOCK TABLES `material_tag` WRITE;
/*!40000 ALTER TABLE `material_tag` DISABLE KEYS */;
INSERT INTO `material_tag` VALUES (1,2,1,'2016-02-20 10:38:20','2016-02-20 10:38:20'),(2,2,2,'2016-02-20 10:38:20','2016-02-20 10:38:20'),(4,2,3,'2016-02-21 01:28:40','2016-02-21 01:28:40'),(5,3,2,'2016-02-21 01:31:31','2016-02-21 01:31:31'),(6,3,3,'2016-02-21 01:31:41','2016-02-21 01:31:41'),(7,4,4,'2016-02-21 04:08:51','2016-02-21 04:08:51'),(8,4,2,'2016-02-21 06:20:01','2016-02-21 06:20:01'),(9,1,3,'2016-02-21 07:32:50','2016-02-21 07:32:50'),(10,1,4,'2016-02-21 07:32:50','2016-02-21 07:32:50'),(11,5,4,'2016-02-23 06:33:24','2016-02-23 06:33:24'),(12,5,5,'2016-02-23 06:33:24','2016-02-23 06:33:24'),(13,6,2,'2016-02-25 08:09:50','2016-02-25 08:09:50'),(14,6,5,'2016-02-25 08:09:50','2016-02-25 08:09:50'),(15,7,2,'2016-02-25 09:57:24','2016-02-25 09:57:24'),(16,7,5,'2016-02-25 09:57:24','2016-02-25 09:57:24'),(17,8,1,'2016-02-26 10:03:17','2016-02-26 10:03:17'),(18,8,5,'2016-02-26 10:03:17','2016-02-26 10:03:17'),(19,9,3,'2016-02-27 01:53:36','2016-02-27 01:53:36'),(20,9,4,'2016-02-27 01:53:36','2016-02-27 01:53:36'),(21,10,3,'2016-02-27 01:56:53','2016-02-27 01:56:53'),(22,11,2,'2016-02-27 01:57:25','2016-02-27 01:57:25'),(23,11,3,'2016-02-27 01:57:25','2016-02-27 01:57:25'),(24,12,3,'2016-03-02 10:56:02','2016-03-02 10:56:02'),(25,13,2,'2016-03-02 10:57:14','2016-03-02 10:57:14'),(26,13,5,'2016-03-02 10:57:14','2016-03-02 10:57:14'),(27,14,2,'2016-03-04 02:42:04','2016-03-04 02:42:04'),(28,14,3,'2016-03-04 02:42:04','2016-03-04 02:42:04'),(29,15,2,'2016-03-04 02:56:46','2016-03-04 02:56:46'),(30,16,5,'2016-03-04 03:07:26','2016-03-04 03:07:26'),(31,17,6,'2016-03-18 02:31:12','2016-03-18 02:31:12');
/*!40000 ALTER TABLE `material_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `img_url1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `introduce` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `admin_id` int(11) DEFAULT NULL,
  `viewcount` int(11) DEFAULT '0',
  `img_url2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_url3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` VALUES (1,'测试文章','熊仔','<p>测试<span style=\"text-decoration: underline;\">样式么么哒</span></p>',1,'o_1abumr04rede1s5hd2v1s841tnm7.jpg','测试功能','2016-02-20 06:46:18','2016-03-10 01:45:07',1,3,'o_1acvpfsi3qblbs71eui1ktsqq67.png','o_1acvpfsi3qblbs71eui1ktsqq67.png'),(2,'测试标签','熊仔','<p>测试标签能不能用</p>',2,'o_1abv43pcgaadlfm9bu74smno7.png','测试标签能不能用','2016-02-20 10:38:20','2016-03-10 01:45:14',1,1,'o_1acvpfsi3qblbs71eui1ktsqq67.png','o_1acvpfsi3qblbs71eui1ktsqq67.png'),(3,'标签','熊仔','<p>是</p>',2,'o_1ac0n7l9i3kei5ofol10epu867.jpg','测试一下子','2016-02-21 01:31:31','2016-02-21 04:06:27',1,0,'o_1acvpfsi3qblbs71eui1ktsqq67.png','o_1acvpfsi3qblbs71eui1ktsqq67.png'),(4,'在试一次','熊仔','<p>妈妈告诉我</p>',4,'o_1ac107kgqgski9v130n1cpv1q6i7.jpg','介绍一下子','2016-02-21 04:08:51','2016-02-21 05:52:24',1,0,'o_1acvpfsi3qblbs71eui1ktsqq67.png','o_1acvpfsi3qblbs71eui1ktsqq67.png'),(5,'测试文章','熊仔','<p>测试文章<em>测试文章</em></p>',2,'o_1ac6d9gi27an19f07ce1ehsfse7.png','文章介绍','2016-02-23 06:33:24','2016-02-23 06:33:24',1,0,'o_1acvpfsi3qblbs71eui1ktsqq67.png','o_1acvpfsi3qblbs71eui1ktsqq67.png'),(6,'是的发生','阿斯顿发生','<p>撒的发生的<span style=\"text-decoration: underline;\">是的发生的</span><br/></p>',1,'o_1acbnjoit1aol1r1mu5j1nia1dei7.png','撒的发','2016-02-25 08:09:50','2016-02-25 08:09:50',1,0,'o_1acvpfsi3qblbs71eui1ktsqq67.png','o_1acvpfsi3qblbs71eui1ktsqq67.png'),(7,'sdfsadfsadf','','<p>asdfasdfas</p>',1,'o_1acbtq3ksec3dgrjoc2tb1kja7.png','sadfasdfasd','2016-02-25 09:57:24','2016-02-25 09:57:48',1,0,'o_1acvpfsi3qblbs71eui1ktsqq67.png','o_1acvpfsi3qblbs71eui1ktsqq67.png'),(8,'asdfasdf','','<p>asdfasdfa</p>',1,'o_1acg6s4911oe81j53oau152b1erh7.png','asdfasdf','2016-02-26 10:03:17','2016-02-27 01:53:20',1,0,'o_1acvpfsi3qblbs71eui1ktsqq67.png','o_1acvpfsi3qblbs71eui1ktsqq67.png'),(9,'asdfasdf','','<p>asdfasdf</p>',1,'o_1acg73033o40ugioomu89uvd7.png','asdfasdf','2016-02-27 01:53:36','2016-02-27 01:57:05',16,0,'o_1acvpfsi3qblbs71eui1ktsqq67.png','o_1acvpfsi3qblbs71eui1ktsqq67.png'),(10,'sadfasdfasdf','','<p>sdfs</p>',1,'o_1acg6vk1em1n1ebf1fcmebsiep7.png','asdfasdfas','2016-02-27 01:56:53','2016-02-27 01:56:53',1,0,'o_1acvpfsi3qblbs71eui1ktsqq67.png','o_1acvpfsi3qblbs71eui1ktsqq67.png'),(11,'asdfasdf','','<p>asdfasdf</p>',2,'o_1acg73kke1tg05l6lntjqqlb87.png','asdfasdf','2016-02-27 01:57:25','2016-03-10 08:10:57',1,2,'o_1acvpfsi3qblbs71eui1ktsqq67.png','o_1acvpfsi3qblbs71eui1ktsqq67.png'),(12,'sdfasdf','','<p style=\"box-sizing: border-box; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; font-size: 17px; vertical-align: baseline; margin-top: 0px; margin-bottom: 30px; padding: 0px; word-break: break-word; line-height: 30.6px; white-space: normal; background-color: rgb(255, 255, 255);\">2006年，当第九城市的董事长朱骏站在球场边时，作为上海联城队老板，他一定不会想到，2016年 的中超赛场上能见到这么多互联网公司。淘宝、苏宁已经买了球队，乐视、努比亚出现在了球队名称上，京东已经成为中超联赛一级合作伙伴，乐视花了几十亿拿下中超联赛转播权……</p><p style=\"box-sizing: border-box; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; font-size: 17px; vertical-align: baseline; margin-top: 0px; margin-bottom: 30px; padding: 0px; word-break: break-word; line-height: 30.6px; white-space: normal; background-color: rgb(255, 255, 255);\">足球皇帝贝肯鲍尔曾说过的一句话：“在绿茵场上滚动的不是足球，而是黄金”。相必这句话朱骏一定深有感触。他最拉风的时代，中超联赛还是 “房地产超级联赛”。</p><p style=\"box-sizing: border-box; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; font-size: 17px; vertical-align: baseline; margin-top: 0px; margin-bottom: 30px; padding: 0px; word-break: break-word; line-height: 30.6px; white-space: normal; background-color: rgb(255, 255, 255);\">匆匆数年再回首，中超赛场早已见不到朱骏和他的上海联城队，就如同绿茵场上那些迟暮的英雄。只是，风再起时，球场上早已换了人间。</p><p style=\"box-sizing: border-box; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; font-size: 17px; vertical-align: baseline; margin-top: 0px; margin-bottom: 30px; padding: 0px; word-break: break-word; line-height: 30.6px; white-space: normal; background-color: rgb(255, 255, 255);\">这是一个旧商业时代的挽歌，也是一个新商业时代的初升。</p><p style=\"box-sizing: border-box; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; font-size: 17px; vertical-align: baseline; margin-top: 0px; margin-bottom: 30px; padding: 0px; word-break: break-word; line-height: 30.6px; white-space: normal; background-color: rgb(255, 255, 255);\"><img alt=\"中超，互联网公司的新战场\" data-img-size-val=\"629,341\" width=\"629\" class=\"before-fade-in after-fade-in\" src=\"/ueditor/php/upload/image/20160302/1456916154962923.png\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; margin: 0px auto; padding: 0px; max-width: 100%; display: block;\"/><br style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased;\"/></p><p style=\"box-sizing: border-box; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; font-size: 17px; vertical-align: baseline; margin-top: 0px; margin-bottom: 30px; padding: 0px; word-break: break-word; line-height: 30.6px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-weight: 600;\">一</span></p><p style=\"box-sizing: border-box; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; font-size: 17px; vertical-align: baseline; margin-top: 0px; margin-bottom: 30px; padding: 0px; word-break: break-word; line-height: 30.6px; white-space: normal; background-color: rgb(255, 255, 255);\">互联网公司对于足球的渴求，早就不是什么新鲜事了。中超热之前，是互联网公司海外 “寻球” 热。</p><p style=\"box-sizing: border-box; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; font-size: 17px; vertical-align: baseline; margin-top: 0px; margin-bottom: 30px; padding: 0px; word-break: break-word; line-height: 30.6px; white-space: normal; background-color: rgb(255, 255, 255);\">进入 21 世纪第二个十年后，一批中国公司将目光投向欧洲联赛，这其中就有不少互联网公司，既有苏宁这样的知名公司，到钱宝这样的非知名公司；既有新浪微博、人人网这样的软件公司，也有华为、OPPO 这样的硬件厂商。</p><p style=\"box-sizing: border-box; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; font-size: 17px; vertical-align: baseline; margin-top: 0px; margin-bottom: 30px; padding: 0px; word-break: break-word; line-height: 30.6px; white-space: normal; background-color: rgb(255, 255, 255);\">2014-2015年 的西甲联赛，正是这种趋势最清晰的写照。有人曾专门做过调研，当年20 支西甲球队中，<a href=\"http://sports.sina.com.cn/china/other/2015-11-04/doc-ifxkhcfk7613176.shtml\" target=\"_blank\" ref=\"nofollow\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(61, 169, 247); transition: all 0.2s ease; text-decoration: none;\">16 支与中国资本相关</a>，与至少 6 家中国互联网公司有关。</p><p style=\"box-sizing: border-box; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; font-size: 17px; vertical-align: baseline; margin-top: 0px; margin-bottom: 30px; padding: 0px; word-break: break-word; line-height: 30.6px; white-space: normal; background-color: rgb(255, 255, 255);\">当年西甲赛季的最后一轮，皇家社会客场对阵巴列卡诺，因为共同的球衣赞助商钱宝，俨然成了一场 “中国钱宝德比”。事实上，那一赛季，华为赞助了马德里竞技的球衣广告（最后三场），人人网赞助了比利亚雷尔的球衣广告（后者还在 2011-2012 赛季接受过的新浪微博的赞助）。</p><p style=\"box-sizing: border-box; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; font-size: 17px; vertical-align: baseline; margin-top: 0px; margin-bottom: 30px; padding: 0px; word-break: break-word; line-height: 30.6px; white-space: normal; background-color: rgb(255, 255, 255);\">更任性的苏宁，成为了巴萨的独家赞助商，赚足了眼球。紧随其后，OPPO 在 2015年5月，也晋级为巴萨的全球合作伙伴。</p><p style=\"box-sizing: border-box; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; font-size: 17px; vertical-align: baseline; margin-top: 0px; margin-bottom: 30px; padding: 0px; word-break: break-word; line-height: 30.6px; white-space: normal; background-color: rgb(255, 255, 255);\">冠名、投广告、赞助这种参与方式，有钱任性的中国互联网公司已经不能满足于此了，他们还要更深入。2015年 初，万达掌门王健林出资 4500 万欧元入股马德里竞技。11月3日，汕头的互动娱乐宣布收购西班牙人俱乐部，这已经是进阶版。欧洲五大联赛的豪门，自然少不了中国公司问津。此前有意媒爆料，有多家中国公司曾联系入股 AC 米兰事宜，其中也有中国的互联网公司。这种情况下，被传言将收购英冠球队狼队的网易和丁磊，就显得小家子气多了。</p><p style=\"box-sizing: border-box; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; font-size: 17px; vertical-align: baseline; margin-top: 0px; margin-bottom: 30px; padding: 0px; word-break: break-word; line-height: 30.6px; white-space: normal; background-color: rgb(255, 255, 255);\">欧洲联赛的球场之外，其实也能见到不少中国互联网公司身影。在中国拥有众多球迷的梅西、C 罗等巨星，成为腾讯、乐视等互联网公司追捧的对象，梅西代言了微信，C 罗则被乐视众筹了一回。即使是贝克汉姆、迈克尔欧文这样的老一代男神，也成了互联网公司的香饽饽，前者代言了神州租车，后者被酒仙网请来参加双 12 活动。</p><p style=\"box-sizing: border-box; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; font-size: 17px; vertical-align: baseline; margin-top: 0px; margin-bottom: 30px; padding: 0px; word-break: break-word; line-height: 30.6px; white-space: normal; background-color: rgb(255, 255, 255);\">这样公司，以境外上市为主，普遍需要拓展海外业务，或是扩大海外知名度，自然愿意将广告费投向海外。这其中，华为在过去几年，则是最明显的例证。自 2011年7月，独家冠名赞助 2011TIM 意大利超级杯比赛以来，华为共计赞助支持了 11 支欧洲球队，包括了英超阿森纳、西甲马德里竞技、德甲多特蒙德、意甲 AC 米兰、巴法甲黎圣日耳曼、荷甲阿贾克斯等。受足球营销带动，华为在欧洲、非洲和中东的销售业绩也大幅提升，从 2011 年的 729.56 亿上升到了 2014 年的 1009.9 亿元。</p><p style=\"box-sizing: border-box; font-family: &#39;Lantinghei SC&#39;, &#39;Open Sans&#39;, Arial, &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, 微软雅黑, STHeiti, &#39;WenQuanYi Micro Hei&#39;, SimSun, sans-serif; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: antialiased; border: 0px; font-size: 17px; vertical-align: baseline; margin-top: 0px; margin-bottom: 30px; padding: 0px; word-break: break-word; line-height: 30.6px; white-space: normal; background-color: rgb(255, 255, 255);\">与之相反，国内上市或者主要业务在国内的公司，往往会选择最知名的球队或者球星，以此示好国内球迷，提升企业知名度。比如苏宁，虽然成为了巴萨的赞助商，但赞助级别较低。即使如此，宣传噱头十足，国内球迷买账，知名度飙升。</p><p><br/></p>',1,'o_1acrfeupp14uefccgmh1ais1qs97.png','asdfasdf','2016-03-02 10:56:02','2016-03-02 10:56:02',1,0,'o_1acvpfsi3qblbs71eui1ktsqq67.png','o_1acvpfsi3qblbs71eui1ktsqq67.png'),(13,'是的发生的发生','','<p>阿斯顿发生地方撒地方<img src=\"/upload/image/20160302/1456916231835916.png\" title=\"1456916231835916.png\" alt=\"Screenshot from 2015-12-15 19:15:00.png\"/></p>',1,'o_1acrfibc0o43kj21r581jn21bun7.png','阿斯顿发生的','2016-03-02 10:57:14','2016-03-02 10:57:14',1,0,'o_1acvpfsi3qblbs71eui1ktsqq67.png','o_1acvpfsi3qblbs71eui1ktsqq67.png'),(14,'sdfsdfsd','','<p>s<img src=\"/upload/image/20160304/1457059399875752.png\" title=\"1457059399875752.png\" alt=\"qq5.png\"/></p>',1,'o_1acvo1aak1evi1cfebck11qo199g7.png','sdfsdfsd','2016-03-04 02:42:04','2016-03-04 02:43:22',1,0,'o_1acvpfsi3qblbs71eui1ktsqq67.png','o_1acvpfsi3qblbs71eui1ktsqq67.png'),(15,'sdfsdfaaa','','<p><img src=\"/upload/image/20160304/1457060191512250.png\" title=\"1457060191512250.png\" alt=\"qq8.png\"/></p>',2,'o_1acvosg5fdiekm71s701ooalau7.png','sdfsdf','2016-03-04 02:56:46','2016-03-04 02:56:46',1,0,'o_1acvpfsi3qblbs71eui1ktsqq67.png','o_1acvpfsi3qblbs71eui1ktsqq67.png'),(16,'dafsadfasd','','<p>sdfsd<img src=\"http://api.sjf.app/upload/image/20160304/1457061234254088.png\" title=\"1457061234254088.png\" alt=\"qq6.png\"/></p>',1,'o_1acvpfsi3qblbs71eui1ktsqq67.png','sdfsadf','2016-03-04 03:07:26','2016-03-04 03:13:56',1,0,'o_1acvpfsi3qblbs71eui1ktsqq67.png','o_1acvpfsi3qblbs71eui1ktsqq67.png'),(17,'测试作者','','<p>试试看呗</p>',1,'o_1ae3q0vch1li24kmg7s1a501cl5h.png','试试看呗','2016-03-18 02:31:12','2016-03-18 02:31:12',16,0,'','');
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_admins_table',1),('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2014_10_12_100000_create_roles_table',1),('2014_10_13_100000_create_permissions_table',1),('2014_10_13_100000_create_role_user_table',1),('2014_10_14_100000_create_permission_role_table',1),('2016_02_19_031309_create_materials_table',2),('2016_02_20_074253_create_tags_table',3),('2016_02_20_074625_create_material_tag_table',3),('2016_02_21_081727_add_category_id_column_to_tags',4),('2015_12_21_111514_create_sms_table',5),('2016_02_25_021005_create_favorites_table',6),('2016_02_25_031919_create_comments_table',7),('2016_03_02_130049_create_supports_table',8),('2016_03_07_021911_create_tag_subscribe_table',9),('2016_03_17_001948_create_is_author_table',10),('2016_03_18_024119_create_journals_table',11);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(1,2);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'admin','超级管理员权限',NULL,'2016-02-18 09:54:37','2016-02-18 09:54:37'),(2,'editor','编辑','编辑文章','2016-02-20 01:51:02','2016-02-20 01:51:02'),(3,'军事',NULL,NULL,'2016-02-20 08:10:42','2016-02-20 08:10:42');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_admin`
--

DROP TABLE IF EXISTS `role_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_admin` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_admin_role_id_foreign` (`role_id`),
  CONSTRAINT `role_admin_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_admin_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_admin`
--

LOCK TABLES `role_admin` WRITE;
/*!40000 ALTER TABLE `role_admin` DISABLE KEYS */;
INSERT INTO `role_admin` VALUES (1,1),(2,1),(9,1),(1,2);
/*!40000 ALTER TABLE `role_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','超级管理员',NULL,'2016-02-18 09:54:37','2016-02-18 09:54:37'),(2,'editor','编辑一号','负责编辑咨询栏目','2016-02-20 01:51:52','2016-02-20 01:51:52'),(3,'编辑二号','编辑二号','编辑','2016-02-25 08:07:41','2016-02-25 08:07:41');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supports`
--

DROP TABLE IF EXISTS `supports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned NOT NULL,
  `material_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `supports_admin_id_foreign` (`admin_id`),
  KEY `supports_material_id_foreign` (`material_id`),
  CONSTRAINT `supports_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  CONSTRAINT `supports_material_id_foreign` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supports`
--

LOCK TABLES `supports` WRITE;
/*!40000 ALTER TABLE `supports` DISABLE KEYS */;
INSERT INTO `supports` VALUES (1,12,11,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(2,2,8,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(3,3,7,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(4,16,11,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(5,1,3,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(6,1,2,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(7,6,10,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(8,1,8,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(9,5,7,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(10,7,4,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(11,11,11,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(12,3,4,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(13,9,12,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(14,2,7,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(15,8,10,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(16,7,1,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(17,1,7,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(18,1,1,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(19,7,6,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(20,4,13,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(21,5,2,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(22,5,13,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(23,9,11,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(24,5,9,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(25,5,11,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(26,3,7,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(27,12,13,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(28,8,2,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(29,2,13,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(30,3,1,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(31,12,13,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(32,3,12,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(33,4,12,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(34,2,2,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(35,4,3,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(36,1,2,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(37,8,4,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(38,2,5,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(39,9,9,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(40,9,1,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(41,4,12,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(42,9,13,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(43,6,4,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(44,16,8,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(45,5,4,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(46,5,12,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(47,8,11,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(48,5,7,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(49,3,5,'2016-03-03 16:17:53','2016-03-03 16:17:53'),(50,8,9,'2016-03-03 16:17:53','2016-03-03 16:17:53');
/*!40000 ALTER TABLE `supports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_subscribe`
--

DROP TABLE IF EXISTS `tag_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_subscribe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_subscribe_admin_id_foreign` (`admin_id`),
  KEY `tag_subscribe_tag_id_foreign` (`tag_id`),
  CONSTRAINT `tag_subscribe_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  CONSTRAINT `tag_subscribe_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_subscribe`
--

LOCK TABLES `tag_subscribe` WRITE;
/*!40000 ALTER TABLE `tag_subscribe` DISABLE KEYS */;
INSERT INTO `tag_subscribe` VALUES (2,16,2,'2016-03-07 03:20:22','2016-03-07 03:20:22'),(3,11,3,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(4,9,2,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(5,6,6,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(6,16,5,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(7,7,6,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(8,9,5,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(9,12,6,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(10,4,6,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(11,7,3,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(12,8,1,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(13,4,4,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(14,6,5,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(15,11,2,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(16,7,4,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(17,3,5,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(18,9,6,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(19,17,1,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(20,6,4,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(21,11,5,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(22,11,5,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(23,9,5,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(24,16,4,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(25,6,2,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(26,3,4,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(27,2,1,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(28,8,1,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(29,3,5,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(30,7,1,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(31,1,5,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(32,8,4,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(33,3,4,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(34,6,2,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(35,1,6,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(36,7,2,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(37,12,2,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(38,2,6,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(39,11,3,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(40,11,5,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(41,12,6,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(42,16,6,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(43,7,4,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(44,7,1,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(45,6,5,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(46,8,4,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(47,9,3,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(48,16,6,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(49,17,1,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(50,7,2,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(51,3,2,'2016-03-08 08:13:15','2016-03-08 08:13:15'),(52,16,3,'2016-03-10 00:47:29','2016-03-10 00:47:29'),(53,16,3,'2016-03-10 00:54:41','2016-03-10 00:54:41');
/*!40000 ALTER TABLE `tag_subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `category_id` int(11) NOT NULL DEFAULT '1',
  `tag_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'军事','2016-02-20 08:13:54','2016-03-10 00:56:56',1,'o_1adamaa9s1tc14nj44g18om16d27.png',7),(2,'地理','2016-02-20 08:14:15','2016-03-10 00:56:59',1,'o_1adamaa9s1tc14nj44g18om16d27.png',9),(3,'教育','2016-02-20 08:14:20','2016-03-10 00:54:41',1,'o_1adamaa9s1tc14nj44g18om16d27.png',6),(4,'科技','2016-02-20 08:14:27','2016-03-10 00:57:10',1,'o_1adamaa9s1tc14nj44g18om16d27.png',9),(5,'太原','2016-02-21 04:09:13','2016-03-10 00:57:14',3,'o_1adamaa9s1tc14nj44g18om16d27.png',11),(6,'数据库','2016-02-23 06:32:15','2016-03-10 00:57:17',5,'o_1adamaa9s1tc14nj44g18om16d27.png',10),(7,'Jquery','2016-03-08 08:25:25','2016-03-08 08:25:25',3,'o_1adamaa9s1tc14nj44g18om16d27.png',0),(8,'坦克','2016-03-08 08:33:53','2016-03-08 08:33:53',1,'o_1adamaa9s1tc14nj44g18om16d27.png',0),(9,'大炮','2016-03-08 08:37:13','2016-03-08 08:37:13',1,'o_1adamaa9s1tc14nj44g18om16d27.png',0),(10,'火车','2016-03-08 08:44:56','2016-03-08 08:44:56',1,'o_1adamaa9s1tc14nj44g18om16d27.png',0);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `confirm_code` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_confirmed` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'xiongzai','xiong@zai.com','$2y$10$cScYXgXpJal0GRvflGqMZOte.ICz1EENqSj8c6URwuOjrX4qCFCGy',NULL,'2016-02-24 07:33:56','2016-02-24 07:33:56',NULL,0);
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

-- Dump completed on 2016-03-18 18:31:51
