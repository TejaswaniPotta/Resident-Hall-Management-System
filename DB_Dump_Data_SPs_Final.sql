-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: finalproject_balasubramanianspottat
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `driverlicense`
--

DROP TABLE IF EXISTS `driverlicense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driverlicense` (
  `card_id` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `expiration_date` datetime NOT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driverlicense`
--

LOCK TABLES `driverlicense` WRITE;
/*!40000 ALTER TABLE `driverlicense` DISABLE KEYS */;
INSERT INTO `driverlicense` VALUES ('82374732','MA','2025-04-03 00:00:00'),('F98967259','Rhode Island','2025-03-14 00:00:00'),('G28904843','New York','2025-07-17 00:00:00'),('L59452884','New Hampshire','2026-02-13 00:00:00'),('O58581451','Massachusetts','2027-03-19 00:00:00'),('P27050269','North Carolina','2027-02-15 00:00:00'),('S06857756','California','2025-11-04 00:00:00'),('S15615258','Washington','2026-03-23 00:00:00'),('U92679162','Vermont','2026-05-07 00:00:00'),('W69373737','New Jersey','2027-03-28 00:00:00'),('X27907425','Florida','2026-01-12 00:00:00');
/*!40000 ALTER TABLE `driverlicense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `resident_id` int DEFAULT NULL,
  `id_no` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `guest_ibfk_1` (`resident_id`),
  CONSTRAINT `guest_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `resident` (`resident_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES (1,'Pasquale','Philott',1,'F98967259'),(2,'Ilyse','McKee',2,'G28904843'),(3,'Doralia','ODonnelly',3,'L59452884'),(4,'Annie','Fricke',4,'O58581451'),(5,'Vinson','Flaubert',5,'P27050269'),(6,'Biddy','Dimond',6,'S06857756'),(7,'Carolyn','MacAllen',7,'S15615258'),(8,'Gracia','Winchurst',8,'U92679162'),(9,'Jarib','Willmott',9,'W69373737'),(10,'James','Lawther',10,'X27907425'),(11,'Korey','Lycett',11,'A0000000'),(12,'Marice','Dering',12,'AB123456'),(13,'Gerladina','Myles',1,'B9999999'),(14,'Gale','Curwood',2,'C1111111'),(15,'Timmie','Janaszewski',3,'D8907890'),(16,'Vanessa','Cayser',4,'G9087890'),(17,'Jacinta','Florence',5,'M4624586'),(18,'Star','Giroldo',6,'TT907578'),(19,'Baldwin','Deery',7,'UT987654'),(20,'Petr','Prazer',8,'ZA456123'),(21,'Tiffanie','Ambrogelli',9,'S000-4567-6501-00'),(22,'Donn','Domnin',10,'S123-4567-6501-00'),(23,'Modesty','Briskey',11,'S123-4567-6501-22'),(24,'Annadiane','Thon',12,'S123-4567-6501-55'),(25,'Bailey','Simonnet',1,'S123-4567-6501-65'),(26,'Zarah','Duff',2,'S123-4567-6501-66'),(27,'Marsiella','Thorndale',3,'S123-4567-6501-77'),(28,'Banky','Rippen',4,'S123-4567-6501-88'),(29,'Pammi','Jaime',5,'S123-4567-6501-99'),(30,'Wit','Cottle',6,'S143-9567-6501-10'),(37,'TJ','PT',32,'A87434223'),(38,'SB','BS',32,'82374732');
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passport`
--

DROP TABLE IF EXISTS `passport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passport` (
  `card_id` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `expiry_date` datetime NOT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passport`
--

LOCK TABLES `passport` WRITE;
/*!40000 ALTER TABLE `passport` DISABLE KEYS */;
INSERT INTO `passport` VALUES ('A0000000','Philippines','2028-01-04 20:15:04'),('A87434223','India','2029-09-04 00:00:00'),('AB123456','India','2024-03-06 13:46:32'),('B9999999','Brazil','2029-07-23 12:12:27'),('C1111111','Czech Republic','2030-04-21 18:50:31'),('D8907890','Indonesia','2025-12-10 22:33:25'),('G9087890','China','2027-06-18 01:11:13'),('M4624586','Portugal','2027-05-18 09:20:56'),('TT907578','Bosnia and Herzegovina','2024-01-05 11:23:14'),('UT987654','Argentina','2026-06-12 22:28:03'),('ZA456123','China','2025-04-09 20:18:34');
/*!40000 ALTER TABLE `passport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resident`
--

DROP TABLE IF EXISTS `resident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resident` (
  `resident_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `room_number` varchar(4) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `hallname` varchar(20) NOT NULL,
  PRIMARY KEY (`resident_id`),
  KEY `resident_ibfk_1` (`hallname`),
  CONSTRAINT `resident_ibfk_1` FOREIGN KEY (`hallname`) REFERENCES `resident_hall` (`hallname`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resident`
--

LOCK TABLES `resident` WRITE;
/*!40000 ALTER TABLE `resident` DISABLE KEYS */;
INSERT INTO `resident` VALUES (1,'Kayle','Fricke','98','2329100538','finn hall'),(2,'Damon','McGirl','17','2049693454','light hall'),(3,'Melisse','Peters','6','9359488137','popes hall'),(4,'Cathyleen','Ballach','45','5717895613','edwards hall'),(5,'Merrile','Cridlan','45','1552476549','light hall'),(6,'Willette','Gainforth','43','5813894110','edwards hall'),(7,'Lotta','Callingham','490','8479773942','andrews hall'),(8,'Bobinette','Aiskovitch','31','7563517636','light hall'),(9,'Ody','Giocannoni','18','6977537854','tower hall'),(10,'Rice','Giorgielli','36','9498103690','andrews hall'),(11,'Kakalina','Kulis','11','3612497855','tower hall'),(12,'Giavani','Blunn','10','1763375077','tower hall'),(13,'Callida','Stretton','30','2868918095','light hall'),(14,'Ernestine','Aronovich','41','4747671828','andrews hall'),(15,'Webster','Trustrie','42','4944453649','tower hall'),(16,'Thorn','Storah','46','2297306313','edwards hall'),(17,'Ingeberg','Philp','26','6243459880','tower hall'),(18,'Demetri','Auletta','46','6267468173','edwards hall'),(19,'Beatrice','Ladell','16','2778611851','tower hall'),(20,'Edik','Sommerlin','34','1403458868','edwards hall'),(21,'Nissa','Denyukhin','22','7154625350','andrews hall'),(22,'Nero','Cullinan','47','7063052074','tower hall'),(23,'Noellyn','Schroder','14','3577542496','tower hall'),(24,'Mel','Gossop','31','9613896057','edwards hall'),(25,'Elvis','Vasishchev','19','5229858360','tower hall'),(26,'Halimeda','Lindbergh','12','6984897336','light hall'),(27,'Gratiana','Dawkins','33','6715790010','light hall'),(28,'Rita','Simpson','44','5162964544','light hall'),(29,'Heriberto','Bim','43','1704684544','andrews hall'),(30,'Ruthe','Scholtz','9','4704801508','tower hall'),(31,'Iago','Dewett','38','1838203350','tower hall'),(32,'Zak','Lisle','47','5457633516','finn hall'),(33,'Maxie','Bolgar','26','5072870455','finn hall'),(34,'Eleanore','Hixley','45','1686343595','finn hall'),(35,'Clemmie','Cuolahan','30','3244003213','tower hall'),(36,'Ahmed','Ardern','1','8552131473','tower hall'),(37,'Trace','Jobke','20','2162213956','andrews hall'),(38,'Fay','Romke','30','3677374789','light hall'),(39,'Sib','Cosgrive','45','6783383192','light hall'),(40,'Solomon','Tallowin','46','9283003961','edwards hall'),(41,'Kendre','Badger','17','8227875351','popes hall'),(42,'Magdalene','Rodway','9','1209336209','light hall'),(43,'Linnell','Brownsett','1','1165753605','tower hall'),(44,'Bone','Aberdeen','23','5026914204','light hall'),(45,'Kevin','Bawcock','47','8487007131','finn hall'),(46,'Andra','Felmingham','21','1444193225','edwards hall'),(47,'Kin','Reichert','3','1588159999','edwards hall'),(48,'Inesita','Delaprelle','20','1068385012','light hall'),(49,'Jilleen','Duffer','19','7792099544','light hall'),(50,'Immanuel','McCreadie','29','7569140585','edwards hall'),(51,'Cristina','Kornilov','4','2614929454','light hall'),(52,'Joyous','Addey','28','2379249758','light hall'),(53,'Blondie','Challiss','23','9092080224','light hall'),(54,'Aliza','Ciotti','7','9593851482','light hall'),(55,'Pancho','Gayton','49','2089043689','light hall'),(56,'Holly','OGlassane','50','6532280785','light hall'),(57,'Eimile','Dalgetty','28','6431204016','light hall'),(58,'Wolfie','Croucher','32','4181273220','tower hall'),(59,'Deva','Charnley','50','2884634592','edwards hall'),(60,'Vitoria','Ridesdale','50','3347544126','tower hall'),(61,'Stepha','Painten','47','1101769199','finn hall'),(62,'Daron','Vell','49','1807759353','light hall'),(63,'Sherie','Burnet','3','5409019457','finn hall'),(64,'Denny','Reddick','5','4368235121','tower hall'),(65,'Danna','Trevor','11','2001324391','andrews hall'),(66,'Elliot','Lailey','47','7316589970','finn hall'),(67,'Dela','Crosier','1','3978995839','edwards hall'),(68,'Annadiana','Garrold','36','3775280902','finn hall'),(69,'Brooke','Earingey','24','9502723112','finn hall'),(70,'Ulric','Poure','11','8605781126','finn hall'),(71,'Vail','Robarts','34','5855105744','finn hall'),(72,'Kissiah','Restill','3','7259516402','edwards hall'),(73,'Luciana','Mogra','28','7548922852','andrews hall'),(74,'Arlin','Flux','27','1386810274','tower hall'),(75,'Vincenty','Snookes','25','3284493946','tower hall'),(76,'Hana','Millmore','44','9349756088','edwards hall'),(77,'Cathe','Romagnosi','41','6307993489','finn hall'),(78,'Jean','Panons','38','6527911487','light hall'),(79,'Colly','Goodbur','16','4833780706','light hall'),(80,'Etan','Rymmer','47','8765105797','tower hall'),(81,'Drona','Standering','43','2603611310','light hall'),(82,'Pattin','Van den Broek','26','5008908793','edwards hall'),(83,'Zita','Swaysland','5','4578532443','finn hall'),(84,'Brent','Rhodes','43','2788653402','tower hall'),(85,'Krissie','Powdrell','48','3787293444','tower hall'),(86,'Ezra','Huton','25','8595130575','popes hall'),(87,'Eal','Gai','24','8662316107','popes hall'),(88,'Karie','Dowtry','44','3491153850','light hall'),(89,'Marcelline','Isaak','50','7932574754','finn hall'),(90,'Cyndi','Medcraft','5','1455761951','light hall'),(91,'Falito','Delves','8','6613817561','finn hall'),(92,'Lonnard','Shackleford','2','6205015868','tower hall'),(93,'Charil','Symington','27','2341134591','finn hall'),(94,'Gardiner','Matkin','31','5414098086','popes hall'),(95,'Simeon','Braithwait','9','2574324484','light hall'),(96,'Ebeneser','Scyone','36','6208813587','light hall'),(97,'Marcela','Beckinsall','27','3121853664','tower hall'),(98,'Sheeree','Desouza','25','4453548207','tower hall'),(99,'Sebastien','Whimp','19','3106596936','edwards hall'),(100,'Manda','Reisenstein','43','4122359471','edwards hall'),(101,'Tracie','Spadoni','7','4921395038','light hall'),(102,'Renato','Siddon','28','1611437171','finn hall'),(103,'Sarge','Grima','38','6671798996','light hall'),(104,'Oralla','Dinsell','9','5431629191','edwards hall'),(105,'Holli','Alcock','47','2696110260','finn hall'),(106,'Dwain','Chatfield','28','2498653931','finn hall'),(107,'Camel','Strickland','5','5448529843','tower hall'),(108,'Robena','Luten','46','8223979230','finn hall'),(109,'Serge','Arnholtz','47','5816480828','edwards hall'),(110,'Alair','Mantz','26','9478560544','popes hall'),(111,'Bard','OHara','10','4337052136','light hall'),(112,'Pierette','Nutbean','46','2591912060','andrews hall'),(113,'Ambrosi','Janovsky','44','6959923538','tower hall'),(114,'Juliana','Pyne','33','1051946340','finn hall'),(115,'Brooke','Antonat','19','9509910358','tower hall'),(116,'Merrielle','Suffield','46','2992706802','finn hall'),(117,'Webb','Assiter','17','3408735776','andrews hall'),(118,'Base','Witherup','33','8106416734','tower hall'),(119,'Kiri','Jenik','29','1814304732','edwards hall'),(120,'Ad','Spire','38','4973046557','finn hall'),(121,'Berny','Agirre','24','3101223749','finn hall'),(122,'Frederique','Vest','16','5131638526','tower hall'),(123,'Camellia','Pershouse','37','1743231372','tower hall'),(124,'Clerc','Manley','33','3948740271','edwards hall'),(125,'Fanny','Crisford','5','6537900890','edwards hall'),(126,'Mathian','Drage','40','9203922750','light hall'),(127,'Viviene','Paulton','40','7641029998','finn hall'),(128,'Celka','Boots','13','7066990997','tower hall'),(129,'Emelda','Brumpton','14','3973498715','tower hall'),(130,'Desiree','Ramlot','24','4371596162','popes hall'),(131,'Finlay','Gainsburgh','2','5076002605','andrews hall'),(132,'Ferrel','Tweedell','42','3269971275','light hall'),(133,'Juli','Hempshall','11','7758283977','andrews hall'),(134,'Liliane','Barbara','49','8565174926','popes hall'),(135,'Gwendolyn','Denacamp','2','7055121875','light hall'),(136,'Ophelie','Sappson','9','5567380111','tower hall'),(137,'Kaine','Towriss','13','5945153599','andrews hall'),(138,'Shaylynn','Viscovi','44','9424652176','finn hall'),(139,'Haydon','Litel','10','7362212888','tower hall'),(140,'Nora','McCaghan','18','3227347473','light hall'),(141,'Nady','Donhardt','41','1382719982','andrews hall'),(142,'Mable','Lawrenceson','30','2697844596','edwards hall'),(143,'Cary','Rubinowicz','42','8074768942','tower hall'),(144,'Tommie','Waycot','41','9623218632','andrews hall'),(145,'Patric','Brenston','39','7841194996','edwards hall'),(146,'Hillary','Jozsef','15','4714366186','tower hall'),(147,'Brandy','Tetsall','33','7559179638','tower hall'),(148,'Fernande','Pursglove','24','8177113498','edwards hall'),(149,'Moria','Netherwood','34','1241443869','andrews hall'),(150,'Gusella','Ferrucci','31','8042292997','finn hall'),(151,'Shea','Gillott','33','3073645146','light hall'),(152,'Corrina','Dumingos','45','1376963289','light hall'),(153,'Tracy','Tocher','43','6326941112','edwards hall'),(154,'Fairleigh','Cruess','36','8634501244','andrews hall'),(155,'Nancee','Bangle','42','3653306933','finn hall'),(156,'Roxanne','Loughan','25','7238521637','edwards hall'),(157,'Avigdor','Costelow','25','6769824545','andrews hall'),(158,'Olin','McGettigan','36','2048196152','finn hall'),(159,'Griffie','Westwood','14','2027818416','finn hall'),(160,'Fidelia','Dimitresco','12','3231806133','finn hall'),(161,'Mitchell','Pettingill','9','6409060335','tower hall'),(162,'Roselin','Bracken','48','4796628758','tower hall'),(163,'Constance','Hulle','46','6297342965','light hall'),(164,'Frederigo','Attkins','46','1814547009','finn hall'),(165,'Abba','Jonczyk','31','1115311521','tower hall'),(166,'Zsazsa','Sogg','24','8912524082','finn hall'),(167,'Bridie','Perham','26','5402797402','tower hall'),(168,'Lorrie','Trobe','42','6593177517','popes hall'),(169,'Jodi','Mattiacci','2','4336606789','popes hall'),(170,'Benjie','Godlip','12','5384207838','tower hall'),(171,'Haskell','Desorts','4','1024446573','light hall'),(172,'Bethena','Burnage','34','1495904689','light hall'),(173,'Cecil','Lyford','23','1177528753','edwards hall'),(174,'Talia','Wyndham','45','3288179798','edwards hall'),(175,'Elizabeth','Chelam','31','4958894587','tower hall'),(176,'Dorothee','Grasha','1','3891384699','tower hall'),(177,'Josephina','Seedman','41','7163397997','light hall'),(178,'Yorker','Seefus','33','1177016604','andrews hall'),(179,'Sherill','Egar','38','6239917523','popes hall'),(180,'Eward','Trinbey','32','2527440155','tower hall'),(181,'Ulric','MacDermand','6','6523662454','finn hall'),(182,'Zach','Luney','30','3771663895','light hall'),(183,'Sylas','Gowrich','46','9206792065','light hall'),(184,'Grethel','Riddiough','42','7331307617','tower hall'),(185,'Aldous','Mougel','41','2437996566','popes hall'),(186,'Farand','Salzburg','1','3006250383','edwards hall'),(187,'Sidonia','Braime','14','9295111476','popes hall'),(188,'Barton','Weldon','44','7014276312','light hall'),(189,'Mervin','Risbrough','35','3928097031','andrews hall'),(190,'Caesar','Plet','34','7277815421','andrews hall'),(191,'Asia','Lautie','14','3699655036','andrews hall'),(192,'Bobbi','Vasyutichev','49','4667710022','finn hall'),(193,'Nathanial','Bolderson','42','8902756429','popes hall'),(194,'Duffy','Wooddisse','7','1838878194','andrews hall'),(195,'Deeyn','Gutherson','22','9241683586','andrews hall'),(196,'Kristyn','Winspur','8','5483668331','andrews hall'),(197,'Leshia','Slaight','9','3392528312','light hall'),(198,'Gery','Nestle','20','5645943590','tower hall'),(199,'Shermie','Rettie','24','4057629830','andrews hall'),(200,'Elsbeth','De Dei','4','5566405863','tower hall'),(201,'Frannie','Hillatt','40','4423677946','tower hall'),(202,'Kit','Padilla','20','7073918275','andrews hall'),(203,'Flo','Loan','29','5551592439','andrews hall'),(204,'Seth','Mangeney','28','6795705514','tower hall'),(205,'Edmund','Collidge','30','6675557269','tower hall'),(206,'Hyatt','Kilford','43','1193494337','finn hall'),(207,'Helene','Palethorpe','9','3975607418','edwards hall'),(208,'Adi','Moultrie','18','1375232999','tower hall'),(209,'Cindy','Compton','25','1011656452','tower hall'),(210,'Darleen','Elacoate','16','2035856482','edwards hall'),(211,'Saul','Connold','9','7486716845','popes hall'),(212,'Terence','Redholls','18','7702271512','finn hall'),(213,'Dwayne','Yirrell','29','9169839456','edwards hall'),(214,'Dene','Dielhenn','48','1027917918','light hall'),(215,'Danyette','Kinghorn','4','2452226003','light hall'),(216,'Reeta','OCullinane','12','8985817329','edwards hall'),(217,'Alistair','Unworth','4','3918655739','popes hall'),(218,'Bradford','MacKaig','45','5981934094','popes hall'),(219,'Sasha','OSculley','5','5188471312','finn hall'),(220,'Livvy','Gullifant','8','6646695045','finn hall'),(221,'Hasheem','Sawdon','10','2199848711','andrews hall'),(222,'Ced','Powling','17','7728011698','finn hall'),(223,'Donni','Whittick','21','4923712859','tower hall'),(224,'Parke','Heigold','45','6764063425','light hall'),(225,'Maryl','Wornham','7','5692630170','light hall'),(226,'Lara','Kille','9','9613301504','edwards hall'),(227,'Gisella','Lazare','22','3881339205','finn hall'),(228,'Mick','Chong','9','8222583523','light hall'),(229,'Beau','Trimbey','2','6848780553','andrews hall'),(230,'Freddy','Wilcockes','13','1029492660','tower hall'),(231,'Melvin','Domelaw','7','3178898863','light hall'),(232,'Mozes','Ebbins','32','4068265335','finn hall'),(233,'Obidiah','Bold','2','7003686867','edwards hall'),(234,'Gustavo','Teece','43','2998699660','andrews hall'),(235,'Jobyna','Goymer','29','7279728511','andrews hall'),(236,'Adelbert','Kynd','31','3341999325','light hall'),(237,'Janice','Hucklesby','2','8143535996','edwards hall'),(238,'Mord','Gabbitis','8','7961982738','tower hall'),(239,'Ardelis','Behneke','36','4224652838','edwards hall'),(240,'Valle','Grishelyov','44','4892600146','tower hall'),(241,'Hettie','Hindshaw','33','3896504238','popes hall'),(242,'Gwenneth','Racher','3','2586045978','finn hall'),(243,'Tricia','Kilban','31','6493460227','tower hall'),(244,'Dawna','Baggally','36','5618960571','andrews hall'),(245,'Egor','Rampley','41','7163927919','tower hall'),(246,'Nico','McCloy','11','7446155654','finn hall'),(247,'Lira','Jump','24','9986384534','light hall'),(248,'Benny','Hickenbottom','39','4019012812','finn hall'),(249,'Jordon','Parren','34','7274000608','popes hall'),(250,'Vidovic','Denington','5','7414172392','andrews hall'),(251,'Zelig','OCriane','4','5156606728','andrews hall'),(252,'Arie','Pollendine','32','3534029891','finn hall'),(253,'Bonny','Pallesen','26','9601117035','edwards hall'),(254,'Lind','Harmar','47','5466792447','andrews hall'),(255,'Dodi','Donnison','26','1023153162','light hall'),(256,'Robinetta','Vidgen','9','6107331767','edwards hall'),(257,'Ivory','Hagart','8','7082185653','tower hall'),(258,'Rubina','Tilburn','19','9049310345','edwards hall'),(259,'Ilario','Wellwood','1','8963211137','edwards hall'),(260,'Fawnia','Wardingly','5','3403964810','andrews hall'),(261,'Philippa','Bignal','8','9225676564','tower hall'),(262,'Layla','Dmiterko','8','1383321052','tower hall'),(263,'Yule','Lofty','30','2422269886','tower hall'),(264,'Tandi','Harker','32','6674937152','finn hall'),(265,'Byran','Borleace','40','3413836892','finn hall'),(266,'Pierce','Wyldes','49','4811022379','popes hall'),(267,'Kris','Stickens','7','6896752297','tower hall'),(268,'Constantino','Dyers','29','3151988001','tower hall'),(269,'Davis','Bloy','35','6567923546','tower hall'),(270,'Jamil','Feron','20','1776794884','light hall'),(271,'Kalie','Lamping','48','6641343080','finn hall'),(272,'Novelia','Niese','34','1198902155','tower hall'),(273,'Madelle','Tidcomb','5','1905720560','light hall'),(274,'Willy','Heindle','34','9148444191','tower hall'),(275,'Esme','Baggelley','36','1672223469','andrews hall'),(276,'Laurianne','Jessep','5','9138184033','tower hall'),(277,'Nap','de Clercq','15','9548974141','tower hall'),(278,'Ofella','Keitch','19','9376924075','finn hall'),(279,'Rowland','Craster','26','7117396400','tower hall'),(280,'Berkeley','Woolley','39','9617747418','tower hall'),(281,'Laughton','Kilduff','39','7564268558','andrews hall'),(282,'Corrie','Meecher','3','8418913312','light hall'),(283,'Pier','Athelstan','12','5971010515','finn hall'),(284,'Eran','Senter','22','3582883667','tower hall'),(285,'Lu','aManger','34','6626181365','tower hall'),(286,'Fredra','Slator','11','5011760061','edwards hall'),(287,'Koressa','Halvorsen','18','7575545579','light hall'),(288,'Merrick','January','46','2757050324','tower hall'),(289,'Carling','Staker','1','3463025675','light hall'),(290,'Kaleb','Birchwood','14','1677413226','tower hall'),(291,'Cynthea','Leverton','33','1284381255','light hall'),(292,'Evangeline','Scandwright','12','3632822703','tower hall'),(293,'Adelice','Screwton','48','5283284467','finn hall'),(294,'Geordie','Cordero','16','2251445220','popes hall'),(295,'Paulina','Yatman','35','9443594465','edwards hall'),(296,'Valencia','Assante','23','6285535365','andrews hall'),(297,'Christoffer','Floch','25','2554588079','tower hall'),(298,'Oran','Molen','29','5704341022','edwards hall'),(299,'Ariana','Vickerstaff','44','3473831432','andrews hall'),(300,'Filippa','Bickerstasse','50','6226667304','popes hall');
/*!40000 ALTER TABLE `resident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resident_hall`
--

DROP TABLE IF EXISTS `resident_hall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resident_hall` (
  `hallname` varchar(20) NOT NULL,
  `street_name` varchar(50) NOT NULL,
  `zip_code` varchar(5) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(2) NOT NULL,
  `typeofstation` enum('single','double') DEFAULT NULL,
  `supervisor_id` int DEFAULT NULL,
  `proctor_id` int DEFAULT NULL,
  PRIMARY KEY (`hallname`),
  KEY `hall_supervisor` (`supervisor_id`),
  KEY `hall_proctor` (`proctor_id`),
  CONSTRAINT `hall_proctor` FOREIGN KEY (`proctor_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `hall_supervisor` FOREIGN KEY (`supervisor_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resident_hall`
--

LOCK TABLES `resident_hall` WRITE;
/*!40000 ALTER TABLE `resident_hall` DISABLE KEYS */;
INSERT INTO `resident_hall` VALUES ('andrews hall','121 Amber street','11010','Boston','MA','single',1,1062255),('edwards hall','110 Amber street','11010','Boston','MA','single',2,1725166),('finn hall','131 Moore street','11012','Boston','MA','single',3,2365293),('light hall','161 Hughes street','11015','Boston','MA','double',4,2452865),('popes hall','151 finnys street','11014','Boston','MA','single',5,9876543),('tower hall','141 Moore street','11012','Boston','MA','double',6,3900230);
/*!40000 ALTER TABLE `resident_hall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stateid`
--

DROP TABLE IF EXISTS `stateid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stateid` (
  `card_id` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `date_of_birth` datetime NOT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stateid`
--

LOCK TABLES `stateid` WRITE;
/*!40000 ALTER TABLE `stateid` DISABLE KEYS */;
INSERT INTO `stateid` VALUES ('S000-4567-6501-00','Washington','2005-01-03 22:11:38'),('S123-4567-6501-00','Ohio','1998-12-05 19:12:33'),('S123-4567-6501-22','Florida','2001-02-16 17:37:19'),('S123-4567-6501-55','Hawaii','2002-05-15 02:51:18'),('S123-4567-6501-65','South Carolina','1999-09-30 11:07:55'),('S123-4567-6501-66','Nebraska','1996-06-04 17:34:24'),('S123-4567-6501-77','Florida','1994-03-03 05:13:23'),('S123-4567-6501-88','Tennessee','2004-12-24 09:44:04'),('S123-4567-6501-99','District of Columbia','2001-08-03 20:21:03'),('S143-9567-6501-10','Illinois','1999-06-12 14:00:24');
/*!40000 ALTER TABLE `stateid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `role` varchar(25) NOT NULL,
  `phone_number` varchar(12) NOT NULL,
  `mail_id` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'John','Doe','Supervisor','1234567890','johndoe@example.com'),(2,'Jane','Smith','Supervisor','5555678900','janesmith@example.com'),(3,'Bob','Johnson','Supervisor','5559901200','bobjohnson@example.com'),(4,'Sarah','Williams','Supervisor','555345666','sarahwilliams@example.com'),(5,'Johnny','Ding','Supervisor','1234567899','johnnyding@example.com'),(6,'Janet','violet','Supervisor','1234567990','janetviolet@example.com'),(7,'Bobby','Johnson','Supervisor','1111111111','bobbyjohnson@example.com'),(8,'Sara','Wear','Supervisor','2222222222','sarawear@example.com'),(9,'Will','Torres','Supervisor','3333333333','willtorres@example.com'),(10,'Tobi','tutu','Supervisor','4444444444','tobitutu@example.com'),(1062255,'Isacco','Blancowe','Proctor','7637842523','iblancowe7@eepurl.com'),(1234567,'Sindhya','Bala','Proctor','8589236299','sindhya@gmail.com'),(1725166,'Griffin','Carine','Proctor','3573190277','gcarines@boston.com'),(2365293,'Hamlin','ORegan','Proctor','5828430317','horegan0@is.gd'),(2452865,'Livvie','Asee','Proctor','1102685546','lasee4@ehow.com'),(3457665,'Amaleta','Patron','Proctor','7263956994','apatron@behance.net'),(3900230,'Lorens','Josephoff','Proctor','9717477807','ljosephoffr@facebook.com'),(3977629,'Calhoun','Tregoning','Proctor','7313034351','ctregoning1@loc.gov'),(4048222,'Dulcia','Witchard','Proctor','2377154305','dwitchardj@ehow.com'),(4107024,'Harri','Mingus','Proctor','7599157947','hmingusl@mapquest.com'),(4163205,'Regine','Vaulkhard','Proctor','9927403152','rvaulkhardh@mit.edu'),(4267998,'Ricki','Signori','Proctor','9925707960','rsignori3@instagram.com'),(4518187,'Jeni','Luc','Proctor','2471656756','jluc8@icq.com'),(4543028,'Alexandro','Fransseni','Proctor','6865708304','afransseni9@skyrock.com'),(5204490,'Perice','Attyeo','Proctor','4498249559','pattyeod@pen.io'),(5240106,'Alfie','Heibl','Proctor','3603849790','aheiblg@princeton.edu'),(5514752,'Carrie','Hurley','Proctor','8748890849','churleyn@webeden.co.uk'),(5645429,'Sissy','Auletta','Proctor','7308651713','saulettaq@ebay.co.uk'),(5881951,'Norma','Buckston','Proctor','3458178561','nbuckstonp@weibo.com'),(6795328,'Horst','Thurlborn','Proctor','5285041008','hthurlborno@nyu.edu'),(7176201,'Alfie','Peacop','Proctor','6023341758','apeacopi@amazon.co.jp'),(7222601,'Petrina','Clementucci','Proctor','4413777810','pclementucci2@pbs.org'),(7499446,'Darryl','Doore','Proctor','8244773466','ddoore6@tmall.com'),(7569500,'Homere','Cowan','Proctor','6167792137','hcowana@reddit.com'),(8064942,'Julius','Blick','Proctor','1181039873','jblicke@samsung.com'),(8355829,'Waly','Bent','Proctor','9666358508','wbentb@goo.gl'),(8557638,'Edi','Tales','Proctor','1818692572','etalesm@infoseek.co.jp'),(8784248,'Maryanna','Denty','Proctor','3339667899','mdentyk@yellowpages.com'),(9106662,'Quent','Gerger','Proctor','4489525685','qgergerf@eepurl.com'),(9876543,'Teja','Potta','Proctor','9876543210','teja.potta@gmail.com'),(32121312,'SB','Bala','Proctor','9876543210','daas@sdad.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_access`
--

DROP TABLE IF EXISTS `user_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_access` (
  `user_id` int NOT NULL,
  `pass_key` varchar(50) NOT NULL,
  `active` varchar(12) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `access_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_access`
--

LOCK TABLES `user_access` WRITE;
/*!40000 ALTER TABLE `user_access` DISABLE KEYS */;
INSERT INTO `user_access` VALUES (1,'rand1Sup','1'),(2,'rand2Sup','1'),(3,'rand3Sup','1'),(4,'rand4Sup','1'),(5,'rand5Sup','1'),(6,'rand6Sup','1'),(7,'rand7Sup','1'),(8,'rand8Sup','1'),(9,'rand9Sup','0'),(10,'rand10Sup','1'),(1062255,'rand1062255Pro','1'),(1234567,'rand1234567Pro','1'),(1725166,'rand1725166Pro','1'),(2365293,'rand2365293Pro','1'),(2452865,'rand2452865Pro','1'),(3457665,'rand3457665Pro','1'),(3900230,'rand3900230Pro','1'),(3977629,'rand3977629Pro','1'),(4048222,'rand4048222Pro','1'),(4107024,'rand4107024Pro','1'),(4163205,'rand4163205Pro','1'),(4267998,'rand4267998Pro','1'),(4518187,'rand4518187Pro','1'),(4543028,'rand4543028Pro','1'),(5204490,'rand5204490Pro','1'),(5240106,'rand5240106Pro','1'),(5514752,'rand5514752Pro','1'),(5645429,'rand5645429Pro','1'),(5881951,'rand5881951Pro','1'),(6795328,'rand6795328Pro','1'),(7176201,'rand7176201Pro','1'),(7222601,'rand7222601Pro','1'),(7499446,'rand7499446Pro','1'),(7569500,'rand7569500Pro','1'),(8064942,'rand8064942Pro','1'),(8355829,'rand8355829Pro','1'),(8557638,'rand8557638Pro','1'),(8784248,'rand8784248Pro','1'),(9106662,'rand9106662Pro','1'),(9876543,'rand9876543Pro','1'),(32121312,'rand32121312Pro','1');
/*!40000 ALTER TABLE `user_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'finalproject_balasubramanianspottat'
--
/*!50003 DROP PROCEDURE IF EXISTS `guest_CRUD_create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `guest_CRUD_create`(
    IN p_first_name VARCHAR(50),
    IN p_last_name VARCHAR(50),
    IN p_res_id INT,
    IN p_id_no	VARCHAR(50)
)
BEGIN
	INSERT INTO guest (first_name, last_name, resident_id, id_no)
	VALUES (p_first_name, p_last_name, p_res_id, p_id_no);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `guest_CRUD_del` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `guest_CRUD_del`(
    IN p_card_id VARCHAR(50)
)
BEGIN
	DELETE FROM guest
    where id_no = p_card_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `guest_CRUD_read` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `guest_CRUD_read`(
    IN p_res_id INT
)
BEGIN
	select resident_id, count(*) as no_of_guests
    from guest
    group by resident_id
    having resident_id = p_res_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `guest_dl_CRUD_create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `guest_dl_CRUD_create`(
    IN p_card_id VARCHAR(50),
    IN p_state VARCHAR(50),
    IN p_expiry_date DATETIME
)
BEGIN
	INSERT INTO driverlicense (card_id, state, expiration_date)
	VALUES (p_card_id, p_state, p_expiry_date);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `guest_dl_CRUD_del` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `guest_dl_CRUD_del`(
    IN p_card_id VARCHAR(50)
)
BEGIN
	DELETE FROM driverlicense
    where card_id = p_card_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `guest_pp_CRUD_create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `guest_pp_CRUD_create`(
    IN p_card_id VARCHAR(50),
    IN p_country VARCHAR(50),
    IN p_expiry_date DATETIME
)
BEGIN
	INSERT INTO passport (card_id, country, expiry_date)
	VALUES (p_card_id, p_country, p_expiry_date);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `guest_pp_CRUD_del` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `guest_pp_CRUD_del`(
    IN p_card_id VARCHAR(50)
)
BEGIN
	DELETE FROM passport
    where card_id = p_card_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `guest_sid_CRUD_del` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `guest_sid_CRUD_del`(
    IN p_card_id VARCHAR(50)
)
BEGIN
	DELETE FROM stateid
    where card_id = p_card_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `guest_stateid_CRUD_create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `guest_stateid_CRUD_create`(
    IN p_card_id VARCHAR(50),
    IN p_state VARCHAR(50),
    IN p_dob DATETIME
)
BEGIN
	INSERT INTO stateid (card_id, state, date_of_birth)
	VALUES (p_card_id, p_state, p_dob);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hall_CRUD_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hall_CRUD_update`(
    IN p_supervisor_id INT,
    IN p_proc_id INT
)
BEGIN
	UPDATE resident_hall
	SET proctor_id = p_proc_id
	WHERE supervisor_id = p_supervisor_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proctor_CRUD_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proctor_CRUD_delete`(
    IN p_proc_id INT
)
BEGIN
	DELETE FROM user_access
	WHERE user_id = p_proc_id;
	DELETE FROM user
	WHERE user_id = p_proc_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ress_CRUD_read_proctor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ress_CRUD_read_proctor`(
    IN p_proc_id INT,
    IN p_resident_id INT
)
BEGIN
	SELECT r.*
    FROM resident r
    inner join resident_hall rh on r.hallname = rh.hallname
    WHERE rh.proctor_id = p_proc_id
    and r.resident_id = p_resident_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ress_CRUD_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ress_CRUD_update`(
    IN p_res_id INT,
    IN p_room_no INT
)
BEGIN
	UPDATE resident
	SET room_number = p_room_no
	WHERE resident_id = p_res_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `useraccess_R` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `useraccess_R`(
    IN p_user_id INT,
    IN p_pass_key VARCHAR(50)
    )
BEGIN
-- READ OPERATION
	SELECT * FROM user_access WHERE user_id = p_user_id AND pass_key = p_pass_key;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_CRUD_create` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_CRUD_create`(
    IN p_user_id INT,
    IN p_first_name VARCHAR(50),
    IN p_last_name VARCHAR(50),
    IN p_phone_number VARCHAR(20),
    IN p_mail_id VARCHAR(30)
)
BEGIN
	INSERT INTO user (user_id, first_name, last_name, role, phone_number, mail_id)
	VALUES (p_user_id, p_first_name, p_last_name, 'Proctor', p_phone_number, p_mail_id);
	INSERT INTO user_access (user_id, pass_key, active)
	VALUES (p_user_id, concat('rand', user_id, 'Pro'), 1);	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_CRUD_read` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_CRUD_read`(
    IN p_supervisor_id INT
)
BEGIN
	SELECT u.*, rh.hallname
    FROM user u
    INNER JOIN resident_hall rh on u.user_id = rh.proctor_id
    WHERE rh.supervisor_id = p_supervisor_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_CRUD_read_proctor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_CRUD_read_proctor`(
    IN p_proc_id INT
)
BEGIN
	SELECT u.*, rh.hallname
    FROM user u
    INNER JOIN resident_hall rh on u.user_id = rh.proctor_id
    WHERE rh.proctor_id = p_proc_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_CRUD_read_unassigned` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_CRUD_read_unassigned`()
BEGIN
	select group_concat(user_id) as available_users
	from user
	where user_id not in
		(select proctor_id from resident_hall)
	and role = 'Proctor';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_CRUD_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_CRUD_update`(
    IN p_user_id INT,
    IN p_phone_number VARCHAR(20),
    IN p_mail_id VARCHAR(30)
)
BEGIN
	UPDATE user
	SET phone_number = p_phone_number, mail_id = p_mail_id
	WHERE user_id = p_user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-19  2:36:32
