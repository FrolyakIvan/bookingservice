-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: bookingservice
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `variantName` varchar(255) DEFAULT NULL,
  `variantDescription` text,
  `variantQuantity` int DEFAULT NULL,
  `variantImage` text,
  `variantDirection` varchar(255) DEFAULT NULL,
  `variantGuests` varchar(255) DEFAULT NULL,
  `variantRooms` varchar(255) DEFAULT NULL,
  `variantOffer` int DEFAULT NULL,
  `variantPrice` int DEFAULT NULL,
  `id` varchar(255) NOT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('Hotel Blue Haven','Aute quis duis excepteur excepteur ipsum cat eiusmod consectetur enim laborum magna llit.Ipsum est fugiat velit ea llamco do esse ut in veniam sun in onsequat.Aute quis duis epteur excepteur ipsum occaecat eiusmod nsectetur enim laborum magna mollit.Ipsum est fugiat velit ea ullamco do ',1,'https://i.pinimg.com/originals/16/89/e2/1689e265a8b17f924aba2e14cdffc057.jpg;https://f22bfca7a5abd176cefa-59c40a19620c1f22577ade10e9206cf5.ssl.cf1.rackcdn.com/u/seaside-palm-beach-suite-bedroom-interior-design-balcony-beach-ocean-view-M-13-r.jpg;https://www.lopesan.com/img/hotels/1450/Restaurantes-Hotel-Lopesan-Baobab-Resort-Akara-01.jpeg','1749 Wheeler Ridge Delaware','2 x Guests','1 x Room',20,10500,'H01',0,'2020-11-12 21:46:54','2020-11-12 21:46:54'),('LUX* Belle Mare','Aute quis duis excepteur excepteur ipsum cat eiusmod consectetur enim laborum magna llit.Ipsum est fugiat velit ea llamco do esse ut in veniam sun in onsequat.Aute quis duis epteur excepteur ipsum occaecat eiusmod nsectetur enim laborum magna mollit.Ipsum est fugiat velit ea ullamco do ',6,'https://q-cf.bstatic.com/images/hotel/max1280x900/409/40917883.jpg;https://www.hesperia.com/es/en/hotels/spain/barcelona/hesperia-barcelona-presidente/_jcr_content/root/responsivegrid/carousel/item_1564134597204.coreimg.jpeg/1575301764507/entrada-hotel-hesperia-presidente-.jpeg;https://www.lopesan.com/img/hotels/1583/imagenes-restaurante-Hotel-Lopesan-Costa-Meloneras-el-churrasco05.jpeg','1749 Wheeler Ridge Delaware','2 x Guests','1 x Room',10,8500,'H02',0,'2020-11-12 21:47:07','2020-11-12 21:47:07'),('White Palace','Aute quis duis excepteur excepteur ipsum cat eiusmod consectetur enim laborum magna llit.Ipsum est fugiat velit ea llamco do esse ut in veniam sun in onsequat.Aute quis duis epteur excepteur ipsum occaecat eiusmod nsectetur enim laborum magna mollit.Ipsum est fugiat velit ea ullamco do ',5,'https://www.vamely.com/wp-content/uploads/2019/12/hotel.jpg;https://www.lopesan.com/img/images/234/vista-interior-abora-continental-by-lopesan-hotels.jpg;https://lumon.com/sites/default/files/images/en/lumon-restaurant-4.jpg','1749 Wheeler Ridge Delaware','2 x Guests','1 x Room',20,10500,'H03',0,'2020-11-12 21:47:19','2020-11-12 21:47:19'),('Luxury Palace','Aute quis duis excepteur excepteur ipsum cat eiusmod consectetur enim laborum magna llit.Ipsum est fugiat velit ea llamco do esse ut in veniam sun in onsequat.Aute quis duis epteur excepteur ipsum occaecat eiusmod nsectetur enim laborum magna mollit.Ipsum est fugiat velit ea ullamco do ',1,'https://cache.marriott.com/marriottassets/marriott/SVQLC/svqlc-exterior-1214-hor-wide.jpg?interpolation=progressive-bilinear&downsize=1440px:*;https://www.matteothun.com/files/mediagallery/2017/M_venpick_Basel_lobby_WEB.jpg;https://www.lopesan.com/img/hotels/317/imagenes-restaurante-Hotel-Lopesan-Costa-Meloneras-La-Toscana12.jpg','1749 Wheeler Ridge Delaware','2 x Guests','1 x Room',25,4500,'H04',0,'2020-11-12 21:47:31','2020-11-12 21:47:31'),('Hotel Five Star','Aute quis duis excepteur excepteur ipsum cat eiusmod consectetur enim laborum magna llit.Ipsum est fugiat velit ea llamco do esse ut in veniam sun in onsequat.Aute quis duis epteur excepteur ipsum occaecat eiusmod nsectetur enim laborum magna mollit.Ipsum est fugiat velit ea ullamco do ',5,'https://images.trvl-media.com/hotels/33000000/32690000/32682100/32682023/92a4dd80.jpg?impolicy=fcrop&w=1200&h=800&p=1&q=medium;https://www.gateshotelbarcelona.com/wp-content/uploads/THE-GATES-interior-1.jpg;https://www.vendom.jobs/image/news/news-main-kimpton-hotels-restaurants-arrives-in-vibrant-glasgow.1558017910.jpg','1749 Wheeler Ridge Delaware','2 x Guests','1 x Room',40,6500,'H05',0,'2020-11-12 21:47:43','2020-11-12 21:47:43'),('Mercedes Benz GLE Coupe','Aute quis duis excepteur excepteur ipsum cat eiusmod consectetur enim laborum magna llit.Ipsum est fugiat velit ea llamco do esse ut in veniam sun in onsequat.Aute quis duis epteur excepteur ipsum occaecat eiusmod nsectetur enim laborum magna mollit.Ipsum est fugiat velit ea ullamco do ',10,'https://s1.cdn.autoevolution.com/images/gallery/MERCEDES-BENZ-GLE-Coupe-AMG-5418_14.jpg;https://www.mercedes-benz.co.uk/passengercars/mercedes-benz-cars/models/gle/coupe-c167/specifications/model-lines/_jcr_content/swipeableteaserbox/par/swipeableteaser/asset.MQ6.12.20191216162515.jpeg;https://www.mercedes-benz.es/passengercars/mercedes-benz-cars/models/gle/coupe-c167/design/lines/_jcr_content/swipeableteaserbox/par/swipeableteaser_1844293348/asset.MQ6.12.20191119093503.jpeg','1749 Wheeler Ridge Delaware','People x 4','Your destination',0,10500,'T01',0,'2020-11-12 21:47:53','2020-11-12 21:47:53'),('BMW M8','Aute quis duis excepteur excepteur ipsum cat eiusmod consectetur enim laborum magna llit.Ipsum est fugiat velit ea llamco do esse ut in veniam sun in onsequat.Aute quis duis epteur excepteur ipsum occaecat eiusmod nsectetur enim laborum magna mollit.Ipsum est fugiat velit ea ullamco do ',5,'https://images.caricos.com/b/bmw/2020_bmw_m8_coupe/images/2560x1440/2020_bmw_m8_coupe_2_2560x1440.jpg;https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/p90348771-highres-01-1582219030.jpg;https://www.bmwblog.es/wp-content/uploads/2018/06/P90306608-highRes-1.jpg','1749 Wheeler Ridge Delaware','People x 4','Your destination',20,8500,'T02',0,'2020-11-12 21:48:04','2020-11-12 21:48:04'),('Mustang GT500','Aute quis duis excepteur excepteur ipsum cat eiusmod consectetur enim laborum magna llit.Ipsum est fugiat velit ea llamco do esse ut in veniam sun in onsequat.Aute quis duis epteur excepteur ipsum occaecat eiusmod nsectetur enim laborum magna mollit.Ipsum est fugiat velit ea ullamco do ',0,'https://i.pinimg.com/originals/d5/f6/58/d5f658cd16233cd83032811576dee41d.jpg;https://www.wallpaperflare.com/static/763/296/848/ford-mustang-gt-apollo-edition-car-muscle-cars-ford-wallpaper.jpg;https://periodismodelmotor.com/wp-content/uploads/2019/12/interior-ford-mustang-shelby-gt500-2020.jpg','1749 Wheeler Ridge Delaware','People x 2','Your destination',20,10500,'T03',0,'2020-11-12 21:48:09','2020-11-12 21:48:09');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-13 13:17:32
