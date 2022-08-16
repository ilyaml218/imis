-- MySQL dump 10.13  Distrib 8.0.29, for macos11.6 (x86_64)
--
-- Host: localhost    Database: imis
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (33);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_no` varchar(50) NOT NULL COMMENT '用户编号',
  `user_name` varchar(50) NOT NULL COMMENT '用户姓名',
  `password` varchar(100) NOT NULL COMMENT '用户密码',
  `role` int NOT NULL COMMENT '角色',
  `phone` varchar(50) NOT NULL COMMENT '手机号',
  `photo` varchar(100) NOT NULL COMMENT '头像照片',
  `sex` char(2) DEFAULT '男',
  `deleted` int NOT NULL DEFAULT '0' COMMENT '有效性(0:有效 1:无效)',
  `created_user` varchar(64) NOT NULL DEFAULT '' COMMENT '创建人',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `modified_user` varchar(64) NOT NULL DEFAULT '' COMMENT '修改人',
  `modified_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改日期',
  `company` varchar(500) NOT NULL DEFAULT ' ' COMMENT '单位',
  `title` varchar(500) NOT NULL DEFAULT ' ' COMMENT '职称',
  `random_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_user_no` (`user_no`),
  UNIQUE KEY `uniq_user_name` (`user_name`),
  UNIQUE KEY `uniq_phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=38982 DEFAULT CHARSET=utf8mb3 COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (14,'05017777','admin','3012CC20B1A331D08F9A428636FB599D',1,'13800138000','7e13b201-8827-415c-8ea9-4e175544b948.jpeg','男',0,'admin','2022-06-23 18:01:21','admin','2022-06-28 15:50:58',' ',' ',NULL),(16,'06289470','test1','4BEC530A9ED0F42C65B326FECEBE062A',4,'13800138002','82f6b164-af14-4afc-b0c2-08e5e7d3add0.jpeg','男',0,'admin','2022-06-28 15:28:01','admin','2022-08-16 15:42:03',' ',' ',NULL),(17,'06293061','我','09342FF0E5E2FFD39B50AC8DCE118BF1',4,'13800138001','1eb56675-abd0-45e8-a23a-eebd97917373.jpeg','男',0,'admin','2022-06-29 00:15:21','admin','2022-08-16 15:42:03',' ',' ',NULL),(18,'06294534','小','09342FF0E5E2FFD39B50AC8DCE118BF1',4,'13800138003','57c1fec3-e53c-48df-9582-24665b826e1c.jpeg','男',0,'admin','2022-06-29 00:15:48','admin','2022-08-16 15:42:03',' ',' ',NULL),(19,'06298138','卫','09342FF0E5E2FFD39B50AC8DCE118BF1',4,'13800138004','e8292b16-c729-4f91-a157-0cbff421709f.jpeg','男',0,'admin','2022-06-29 00:16:04','admin','2022-08-16 15:42:03',' ',' ',NULL),(20,'06297699','张','09342FF0E5E2FFD39B50AC8DCE118BF1',4,'13800138005','6538156d-3410-4374-a16d-d5146f8c13b3.jpeg','女',0,'admin','2022-06-29 00:16:43','admin','2022-08-16 15:42:03',' ',' ',NULL),(22,'06294558','sd','09342FF0E5E2FFD39B50AC8DCE118BF1',4,'13800138006','c74f7d22-2956-440c-970c-93cccebd0d61.jpeg','男',0,'admin','2022-06-29 00:41:27','admin','2022-08-16 15:42:03',' ',' ',NULL),(23,'06297784','we','09342FF0E5E2FFD39B50AC8DCE118BF1',4,'13800138007','52c9fcd3-003f-4154-939e-cf32cc7e8fb8.jpeg','男',0,'admin','2022-06-29 00:41:41','admin','2022-08-16 15:42:03',' ',' ',NULL),(24,'06292663','dfa','09342FF0E5E2FFD39B50AC8DCE118BF1',4,'13800138008','31a07a92-58cb-4e99-852b-63c431eb718b.jpeg','男',0,'admin','2022-06-29 00:42:03','admin','2022-08-16 15:42:03',' ',' ',NULL),(25,'06290832','138','09342FF0E5E2FFD39B50AC8DCE118BF1',4,'13800138009','52a4ffe3-9f9b-4e78-9ba7-fd310f9fc5fb.jpeg','男',0,'admin','2022-06-29 00:42:16','admin','2022-08-16 15:42:03',' ',' ',NULL),(26,'06296650','139','09342FF0E5E2FFD39B50AC8DCE118BF1',4,'13900138000','e45821c0-ce37-4127-9e38-ca89f49cb5dc.jpeg','男',0,'admin','2022-06-29 00:42:26','admin','2022-08-16 15:42:03',' ',' ',NULL),(27,'06296743','130','09342FF0E5E2FFD39B50AC8DCE118BF1',4,'13000138000','08e2154e-0faa-4085-b3fc-c60a531373c8.jpeg','男',0,'admin','2022-06-29 00:42:47','admin','2022-08-16 15:42:03',' ',' ',NULL),(28,'08164161','test007','EB9AFF94F0C60AFD47BD2862DAD9633D',4,'13200132000','901d6e51-7f56-4f02-afef-a342432c3444.png','男',0,'admin','2022-08-16 15:32:50','admin','2022-08-16 15:32:50','单位名称','职称',NULL),(29,'08166548','wzc','EB9AFF94F0C60AFD47BD2862DAD9633D',2,'13933173859','c1e15ed7-455d-49c5-894b-68d4469d7a7e.png','男',0,'admin','2022-08-16 17:41:57','admin','2022-08-16 18:02:28','专家选取','老板',NULL),(32,'08162859','manager','EB9AFF94F0C60AFD47BD2862DAD9633D',3,'13900001390','c7c22e04-a01b-4bc3-ad10-ba703665a906.png','男',0,'wzc','2022-08-16 18:00:06','wzc','2022-08-16 18:01:23','专家选取单位','管理者',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-16 18:43:56
