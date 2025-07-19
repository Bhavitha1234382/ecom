-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: ecom
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `admindata`
--

DROP TABLE IF EXISTS `admindata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admindata` (
  `adminemail` varchar(255) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varbinary(255) DEFAULT NULL,
  `address` text,
  `agree` enum('on','off') DEFAULT NULL,
  `profilepic` varchar(15) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`adminemail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admindata`
--

LOCK TABLES `admindata` WRITE;
/*!40000 ALTER TABLE `admindata` DISABLE KEYS */;
INSERT INTO `admindata` VALUES ('bhavitha448@gmail.com','bhavitha',_binary '$2b$12$CDmdq13XD1yzDdBmNNyKxOK7gJJy5DhWLPwc16P4KEihu3/0Dydhe','vuyyu','on','Us8Sw1.webp','12344');
/*!40000 ALTER TABLE `admindata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `itemid` binary(16) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `description` text,
  `quantity` mediumint DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `category` enum('Home Appliances','sports','Electronics','Grocery','Fashion') DEFAULT NULL,
  `imagename` varchar(15) DEFAULT NULL,
  `create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `admindata` (`adminemail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (_binary '*w&Vl\®v\'r\»','Nature Prime 100% Natural Premium Mix Dry Fruits 500Gm with Almonds | Cashew | Kishmish | Apricot | Black Raisins | Dried Kiwi | Nuts and Dry Fruits 500Gm (Jar pack)','About this item\r\nWith natural sugars and fiber, zero cholesterol and fats, and a variety of delectable flavors, nuts and dry fruits are an easy source of all essential nutrients. The right and regular mix of almonds, cashews, pistachios, dates, raisins and other nuts and dry fruits are all you need to maintain a healthy lifestyle.\r\nThey also consist of significant calories per serving. If one is on weight loss regime, he/she may want to limit intake of calorie content foods. But dry fruit can be a tasty treat as well help in reducing weight as a handful of Dry fruits, curd/milk and cornflakes make for a healthy diet and due to the high fibre contentthey keep you full throughout the day.\r\nRaisins keep our skin healthy as they contain Resveratrol, an antioxidant that slows down skin ageing. ve its texture, Almonds and other dry fruits are effective in treating acne.',10,500.00,'Grocery','Bo0Zh3.jpg','2025-07-01 16:41:41','bhavitha448@gmail.com'),(_binary 'E≤\'	Vn\®v\'r\»','Bodyband Hand Grip Workout Strengthener, Adjustable Hand Gripper for Men & Women for Gym Workout Hand Exercise Equipment to Use in Home for Forearm Exercise, Finger Power Gripper Plastic 40 Kg Black-Orange','About this item\r\nADJUSTABLE RESISTANCE : Hand gripper 40 kg is easy to adjust the resistance from 10-40Kgs as needs. The hand Gripper is suitable for everyone, like Athletes, sports, fitness coaches, fitness, musicians and people who want to exercise their hand, wrist and fingers. Also its easy and fast to do so. The resistance of hand grips for strength training is perfect for both men and women with different strength as it can be adjusted easily.\r\nCOMFORTABLE HANDLE : Arm exercise equipment men is comfortable to hold and made from non-slip material. Gym hand grip holds your hands to keep from slipping during the workout exercise, and protects your hands from pain. You can feel the hand grip sticks on you hands. The size of the gripper is optimized for the general handle length of hand grips, so it‚Äôs available to wrap and use onto all types of hand grips. Hence it will give you extra grip and comfort while exercise.',36,100.00,'sports','Bd0Oj8.jpg','2025-07-01 16:56:46','bhavitha448@gmail.com'),(_binary 'yQR\ZVi\®v\'r\»','Boult Audio ','About this item\r\n‚úÖ 60-Hour Playtime: The Boult Z40 earbuds offer an impressive 60 hours of continuous playtime on a single charge, ensuring you can enjoy your music, podcasts, or calls for days without needing a recharge. Perfect for long journeys, workdays, or extended use.\r\n‚úÖ Zen ENC Mic for Clear Calls: Communicate with ease using the advanced Zen Environmental Noise Cancellation (ENC) mic. This technology reduces background noise, providing clear and crisp voice quality for calls and voice commands.\r\n‚úÖ Low Latency Gaming Mode: The Z40 earbuds feature a low latency mode, designed to minimize audio delay, enhancing your gaming experience with perfectly synchronized sound. Enjoy an immersive and competitive edge in your favorite games.',8,897.00,'Home Appliances','Lo4Qg7.jpg','2025-07-01 16:22:25','bhavitha448@gmail.com'),(_binary 'Å\À ùVl\®v\'r\»','Campus Women Claire Running Shoes','About this item\r\nCushioned Comfort - Have your feet feel like its walking on clouds with these shoes for women - all thanks to the extra cushioning!\r\nSecured Steps - The classic lace-up closure ensures the shoes have good hold and stability, while also ensuring customizable fit.\r\nEnhanced Traction - The anti-skid sole design increases traction, securing your stride on all surfaces. Trust these shoes to keep up with your fun self!\r\nTrendy & Stylish - Featuring a sleek design, this pair elevates your basic fits effortlessly. Ace the style game with these sports shoes for women!\r\nEasy Care - No headache of maintenance here! Wipe these shoes with a damp cloth to keep them clean. Rinse with soap water to take it up a notch.',12,900.00,'sports','Zc2Vf7.jpg','2025-07-01 16:44:08','bhavitha448@gmail.com'),(_binary '©ê\"\÷Vk\®v\'r\»','Fossil Women Leather Analog Silver Dial Watch-Es4794, Band Color-Beige','Dial Color: Silver, Case Shape: Round, Dial Glass Material: Mineral\r\nBand Color: Beige, Band Material: Leather\r\nWatch Movement Type: Quartz, Watch Display Type: Analog\r\nCase Material: Stainless Steel, Case Diameter: 34 millimeters, Stainless Steel Bezel\r\nWater Resistance Depth: 50 meters, Buckle Clasp',3,2000.00,'Fashion','Sx1Iu8.jpg','2025-07-01 16:38:05','bhavitha448@gmail.com'),(_binary '…ätRVm\®v\'r\»','Accessorize London Women\'s Meghan Printed Hand bag| hand bags for women stylish medium size | Ladies Purse Sling Bag | Party bags for ladies','About this item\r\nTRENDY AND STYLISH, LATEST HANDBAG FOR WOMEN: Stand out of the crowd by carrying this Black textured handbag with crossbody and top handle from Accessorize London. Stay forth in your fashion game with this premium faux leather stylish satchel sling bag that has a gold toned metal detailing. Make this handbag your perfect companion for your everyday office looks. Inspired and created for the quintessential modern woman\r\nSPACIOUS HANDBAG: This shoulder hand bag has plenty of space for all your on the go work necessities. The hand bag comes with a sleek and modern style that makes it the perfect for workwear and weekends, that suits every outfit because of it\'s classic and versatile color.',15,2000.00,'Fashion','Jl3Rf3.jpg','2025-07-01 16:53:18','bhavitha448@gmail.com'),(_binary '\È\Ÿ(Vk\®v\'r\»','BLUEWUD Wilbrome Engineering Wood Floor Standing TV Entertainment Unit Set Top Box Stand/TV Cabinet with Shelves for Books & D√©cor Display Unit, Upto 75 Inches (Brown Maple & White)','About this item\r\nProduct Dimensions Length ( 180Cm or 70.8 Inches) Breadth ( 36.5Cm or 14.3 Inches) Height ( 50Cm or 19.6 Inches)\r\nMade of Particle Board (High grade prelam engineering wood with natural wood grain finish)\r\nColor: Maple Brown & White, Floor Standing TV Unit with Two closed Shelves for Storage, TV Size : Upto 75 Inches\r\nAssembly Required Diy (Do-It-Yourself) Installation, It means you\'ll have to install it yourself or arrange a carpenter to install it for you. It comes with the necessary hardware including a detailed installation guide.\r\nWarranty 2 years warranty on manufacturing defects.',8,7000.00,'Home Appliances','In9Kg5.jpg','2025-07-01 16:39:53','bhavitha448@gmail.com'),(_binary '˛«î\ÌVm\®v\'r\»','Lenovo IdeaPad Slim 5 AMD Ryzen AI 7 350, Copilot+ AI PC(24GB RAM/1TB SSD/14(35.5cm) WUXGA OLED/AI Now/50TOPS/Win 11/Office Home 2024/Backlit Keyboard/1Yr ADP Free/Grey/1.4Kg), 83HX001NIN AI Laptop','About this item\r\nProcessor: AMD Ryzen AI 7 350 | Speed: 2.0GHz (Base) - 5.0GHz (Max), 8MB L2 / 16MB L3) | 8 Cores | 16 Threads | NPU: Integrated AMD Ryzen AI, up to 50 TOPS\r\nDisplay: 14\" WUXGA OLED (1920x1200) | 400Nits Brightness | 100% DCI-P3 |DisplayHDR True Black 500 | Anti Glare |TUV Low Blue Light Certified\r\nMemory and Storage: 2x 12GB SO-DIMM DDR5-4800, Max Memory Up to 24GB DDR5-4800 offering | 1TB SSD M.2 2242 PCIe 4.0x4 NVMe\r\nOS and Software: Windows 11 Home Single Language, English | Office Home 2024 | Lenovo AI Now | Xbox GamePass Ultimate 3-month subscription',30,70000.00,'Electronics','Dc7Nz7.jpg','2025-07-01 16:54:47','bhavitha448@gmail.com');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `total_amount` bigint unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `payment_by` varchar(50) DEFAULT NULL,
  `address` text,
  PRIMARY KEY (`order_id`),
  KEY `payment_by` (`payment_by`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`payment_by`) REFERENCES `users` (`useremail`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Accessorize London Women\'s Meghan Printed Hand bag| hand bags for women stylish medium size | Ladies Purse Sling Bag | Party bags for ladies',2000,1,'2025-07-14 15:38:26','bhavitha448@gmail.com','vuyyuru'),(2,'Boult Audio ',897,1,'2025-07-15 15:21:34','bhavitha448@gmail.com','vuyyuru'),(3,'Boult Audio ',897,1,'2025-07-16 16:30:26','konchadaswetha520@gmail.com','srikakulam'),(4,'Accessorize London Women\'s Meghan Printed Hand bag| hand bags for women stylish medium size | Ladies Purse Sling Bag | Party bags for ladies',2000,1,'2025-07-17 15:56:53','konchadaswetha520@gmail.com','srikakulam'),(5,'Fossil Women Leather Analog Silver Dial Watch-Es4794, Band Color-Beige',4000,2,'2025-07-17 15:58:06','konchadaswetha520@gmail.com','srikakulam');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `reviewid` int unsigned NOT NULL AUTO_INCREMENT,
  `review` longtext,
  `rating` enum('1','2','3','4','5') DEFAULT NULL,
  `itemid` binary(16) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reviewid`),
  KEY `itemid` (`itemid`),
  KEY `user` (`user`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`itemid`) REFERENCES `items` (`itemid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user`) REFERENCES `users` (`useremail`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'good','4',_binary '*w&Vl\®v\'r\»','bhavitha448@gmail.com','2025-07-15 16:17:44'),(2,'good','4',_binary '*w&Vl\®v\'r\»','bhavitha448@gmail.com','2025-07-15 16:17:54'),(3,'kjh','3',_binary '*w&Vl\®v\'r\»','bhavitha448@gmail.com','2025-07-15 16:19:35'),(4,'bnjkl','4',_binary '©ê\"\÷Vk\®v\'r\»','bhavitha448@gmail.com','2025-07-15 17:45:31'),(5,'ioi','3',_binary '˛«î\ÌVm\®v\'r\»','bhavitha448@gmail.com','2025-07-16 14:09:26');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `password` varbinary(255) NOT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  PRIMARY KEY (`useremail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('bhavitha448@gmail.com','bhavitha448@gmail.com','vuyyuru',_binary '$2b$12$o8mpFUJcna/WX4XSWqBeVOESy/DQXuZu0Lt2OLNtHiw7QoRNKY6AS','female'),('swetha','konchadaswetha520@gmail.com','srikakulam',_binary '$2b$12$ltr.mDgs7epHPewsU.PQQuoq7ZyQzbgIUxaBswsXtoATbIt5I31aC','female');
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

-- Dump completed on 2025-07-19 15:22:35
