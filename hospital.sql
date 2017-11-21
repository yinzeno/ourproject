-- MySQL dump 10.13  Distrib 5.5.11, for Win32 (x86)
--
-- Host: localhost    Database: book
-- ------------------------------------------------------
-- Server version	5.5.11

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'1','iUOoOdMAl7FsB1Kig37hmg==');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `cover` varchar(255) DEFAULT NULL COMMENT '科室',
  `price` float DEFAULT NULL COMMENT '挂号价格',
  `intro` varchar(1024) DEFAULT NULL COMMENT '介绍',
  `auther` varchar(255) DEFAULT NULL COMMENT '职称',
  `press` varchar(255) DEFAULT NULL COMMENT '出版社',
  `pubdate` date DEFAULT NULL COMMENT '出诊日期',
  `special` int(1) DEFAULT '0' COMMENT '名医推荐',
  `news` int(1) DEFAULT '0' COMMENT '特殊报销',
  `sale` int(1) DEFAULT '0' COMMENT '医保折扣',
  `category_id` int(11) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (8,'这个历史挺靠谱','picture/17112142574.jpg',49.5,'《这个历史挺靠谱：袁腾飞讲历史》是《历史是个什么玩意儿》系列的升级珍藏版。本系列开启全民读史新潮流，自问世以来畅销至今，第一册为《这个历史挺靠谱：袁腾飞讲中国史.上》，第二册为《这个历史挺靠谱：袁腾飞讲中国史.下》，第三册为《这个历史挺靠谱：袁腾飞讲世界史》（注：将原《历史是个什么玩意儿3：袁腾飞说世界史上》和《历史是个什么玩意儿4：袁腾飞说世界史下》合并为一本，内容更扎实、更实惠）。','袁腾飞','湖南人民出版社','2013-07-01',0,0,0,4),(9,'芈月传','picture/17112129772.jpg',135.8,'战国时期，芈月是楚威王最宠爱的小公主，但在楚威王死后生活一落千丈，母亲向氏被楚威后逐出宫，芈月和弟弟芈戎躲过了一次次灾难和危机。芈月与楚公子黄歇青梅竹马，真心相爱，但被作为嫡公主芈姝的陪嫁媵侍远嫁秦国。芈姝当上了秦国的王后，芈月不得已成为宠妃。原本的姐妹之情在芈月生下儿子嬴稷以后渐渐分裂。诸子争位，秦王嬴驷抱憾而亡。芈月和儿子被发配到遥远的燕国。不料秦武王嬴荡举鼎而亡，秦国大乱。芈月借义渠军力回到秦国，平定了秦国内乱。芈月儿子嬴稷登基为王，史称秦昭襄王。芈月当上了史上第一个皇太后，史称宣太后。','蒋胜男','浙江文艺出版社','2015-11-01',0,0,0,5),(10,'献给亲爱的邵先生','picture/17112116305.jpg',44.3,'他高冷疏淡，惜字如金，回答她永远只有一个字：“好”。她觉得，他一字，重若千钧。新人气作家浮光锦暖心之作，两万字番外倾情放送。2015年度暖萌动人的纯粹深爱。每一个努力向上的女孩，都值得一个深情如斯的邵先生，谨以此文，献给所有为爱情努力变得更好的女孩。','浮光锦','江苏文艺出版社','2015-10-01',0,0,0,5),(12,'中国陶瓷史增订版','picture/17112101570.jpg',266,'《中国陶瓷史》的主要内容是：古陶瓷学界耆宿叶喆民先生的这部通史巨著，是在其《中国陶瓷史纲要》一书基础上结合近年新发现、新成果倾力著成，集中体现了作者的治学方法：科学研究与传统鉴定方法并重；注重实地考察，并同文献和传统经验相结合，而非孤立、片面地轻断真伪、迟早；同时，不轻易放过窑址出土的特殊品种或典型瓷片。对于各大窑系的分类，作者运用比较学方法来对比观察相似品种及其烧成方法，联系地质特征与历史渊源，找出其主流或分支而理清脉络，例如他在1977—1985年对汝窑窑址的发现和认定，即是用此种方法取得的重大成果。在古陶瓷鉴定与鉴赏方面，作者提倡“既识真假，亦辨美丑”，“既以物稀为贵，亦讲难能可贵”；对于古陶瓷与书画艺术的有机联系，特别是对唐宋陶瓷的推崇，多有阐发。行文雅秀、旁征博引而不失明晰；注释、附录亦堪称周备。蒙读者厚爱，《中国陶瓷史》在初版三年后得以再版。新版增订至近55万字，图版增换计170余帧，其中既有出自各博物馆及私人珍藏，也有作者实地考察所摄罕见之物。','叶喆民','生活.读书.新知三联书店','2014-03-01',0,0,0,6),(13,'美国纽约摄影学院','picture/17112149124.jpg',98,'一本经久实用的教材总是引导我们去把握摄影作晶与影像之外的时空所形成的各种相互冲突和相互生成的关系，从而使得视觉的权力越来越具有主体性。这本实际而通俗的摄影入门书，很好地解答了我对于摄影技术的疑惑，它会让你成为优秀的摄影匠，如果你继续深入阅读与实践，*终会成为优秀的摄影家','美国纽约摄影学院','中国摄影出版社','2010-08-01',0,0,0,7),(14,'单反摄影宝典','picture/17112135662.jpg',44.5,'本书不是简单的为讲解技法而讲解的，而是通过萃取目前国内外最创新的拍摄技法，结合作者多年的实战拍摄经验，整合出一套最适合读者需求的摄影技法宝典。内容全面丰富，包括：1，操作技术——菜单、曝光模式、白平衡、感光度、光圈、快门等操作控制；2，拍摄技法——水平线构图、对角线构图、曲线构图、三角形构图、突破性构图等构图方法，以及顺光、侧光、逆光、色彩搭配等用光法则；3，主题拍摄——风光、人像、建筑和园林、花卉、夜景、体育、动物、静物、美食、展场和舞台等不同主题的实战拍摄；4，镜头与附件——人像镜头、风光镜头、微距镜头等性价比最高的镜头推荐，以及必备的滤镜、摄影包、三脚架、闪光灯等附件的推荐；5，后期技术——色彩优化、曝光调整、对比度调整、曲线应用等。','雷依里，郑毅','水利水电出版社','2012-06-01',0,0,0,7),(15,'汉字书法之美','picture/17112119065.jpg',33.1,'五千多年前，象征黎明曙光的第一个汉字出现了，文字在天地之间被创造出来，在动物骨骸、金属、石头、竹简、纸帛上被记录下来，在各个朝代以或沉重朴厚，或飞扬婉转，或森严宏大，或肆意狂放的书写线条，完成了每个时代美学最集中的表现。到了现代，汉字不曾消失、不肯遗忘，更将拥有悠长丰沛的活力。','蒋勋','广西师范大学出版社','2014-08-01',0,0,0,8),(16,'中国书法','picture/17112105502.jpg',29.9,'中国书法包含丰富而复杂的技法，但从无一份关于全部技法的清单。《中国书法：167个练习》是一部以167个练习组成的书法技法教材，这167个练习包括了传统书法和现代书法创作的全部基本技法。其中包含一些从未被讨论过的内容。','邱振中','中国人民大学出版社','2005-06-01',0,0,0,8),(17,'脊椎病因治疗学','picture/17112151039.jpg',44.9,'脊椎病因治疗学是研究脊椎遭受损害后，对脊髓、周围神经、血管及内脏神经连带出现的一系列病症采用治脊疗法治疗的一门新兴学说。脊椎相关疾病的发现，为一些常见疾病的发病补充了新的病因学说，为临床疑难病症开辟了一条新而有效的诊治途径，在医学界影响深远。','龙层花 ','世界图书出版公司','2012-06-01',0,0,0,9),(22,'张医生','picture/17112131749.jpg',20.9,'擅长一般性的感冒，以及肺炎等治疗','女','副主任医师','2013-11-01',0,1,1,1);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'内科'),(2,'外科'),(3,'口腔科'),(4,'妇科'),(5,'药剂科'),(6,'保健科'),(7,'放射科'),(8,'检验科'),(9,'急诊');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indent`
--

DROP TABLE IF EXISTS `indent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` float DEFAULT NULL COMMENT '总价',
  `amount` int(11) DEFAULT NULL COMMENT '挂号时间',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态(1未处理/2已处理)',
  `name` varchar(20) DEFAULT NULL COMMENT '挂号人姓名',
  `phone` varchar(20) DEFAULT NULL COMMENT '挂号人电话',
  `address` varchar(255) DEFAULT NULL COMMENT '科室地址',
  `systime` datetime DEFAULT NULL COMMENT '预定时间',
  `user_id` int(11) DEFAULT NULL COMMENT '预定用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indent`
--

LOCK TABLES `indent` WRITE;
/*!40000 ALTER TABLE `indent` DISABLE KEYS */;
/*!40000 ALTER TABLE `indent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL COMMENT '挂号费',
  `amount` int(11) DEFAULT NULL COMMENT '金额',
  `book_id` int(11) DEFAULT NULL,
  `indent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'1','iUOoOdMAl7FsB1Kig37hmg==','12312341234');
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

-- Dump completed on 2017-11-21 17:36:01
