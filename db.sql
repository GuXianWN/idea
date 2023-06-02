-- MySQL dump 10.13  Distrib 5.7.28, for Win64 (x86_64)
--
-- Host: 120.48.24.105    Database: idea
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `browse_idea`
--

DROP TABLE IF EXISTS `browse_idea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `browse_idea` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int DEFAULT NULL COMMENT '用户id',
  `idea_id` int DEFAULT NULL COMMENT '用户浏览的ideaId',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `browse_idea`
--

LOCK TABLES `browse_idea` WRITE;
/*!40000 ALTER TABLE `browse_idea` DISABLE KEYS */;
/*!40000 ALTER TABLE `browse_idea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_idea`
--

DROP TABLE IF EXISTS `collection_idea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_idea` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `idea_id` int DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_idea`
--

LOCK TABLES `collection_idea` WRITE;
/*!40000 ALTER TABLE `collection_idea` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection_idea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int NOT NULL COMMENT '用户id',
  `idea_id` int DEFAULT NULL COMMENT '帖子id',
  `reward_id` int DEFAULT NULL COMMENT '悬赏id',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `like` int DEFAULT NULL COMMENT '点赞数',
  `unlike` int DEFAULT NULL COMMENT '点踩数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (75,16,102,0,'这项目不错 我王多投了[嗑瓜子]','2022-05-06 18:42:07',0,0),(76,16,69,0,'坐标南京，欢迎合作[惊喜]','2022-05-06 18:44:07',0,0),(77,16,100,0,'hello[狗子]','2022-05-07 13:30:45',0,1),(78,16,115,0,'[囧]','2022-05-07 13:39:39',0,1),(79,16,110,0,'hello','2022-05-07 16:58:09',0,0);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emo`
--

DROP TABLE IF EXISTS `emo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emo`
--

LOCK TABLES `emo` WRITE;
/*!40000 ALTER TABLE `emo` DISABLE KEYS */;
INSERT INTO `emo` VALUES (5,'[口罩]','http://bycg.xyz:9000/emo/口罩'),(6,'[doge]','http://bycg.xyz:9000/emo/doge'),(7,'[妙啊]','http://bycg.xyz:9000/emo/妙啊'),(8,'[OK]','http://bycg.xyz:9000/emo/OK'),(9,'[微笑]','http://bycg.xyz:9000/emo/微笑'),(10,'[星星眼]','http://bycg.xyz:9000/emo/星星眼'),(11,'[辣眼睛]','http://bycg.xyz:9000/emo/辣眼睛'),(12,'[吃瓜]','http://bycg.xyz:9000/emo/吃瓜'),(13,'[滑稽]','http://bycg.xyz:9000/emo/滑稽'),(14,'[呲牙]','http://bycg.xyz:9000/emo/呲牙'),(15,'[打call]','http://bycg.xyz:9000/emo/打call'),(16,'[歪嘴]','http://bycg.xyz:9000/emo/歪嘴'),(17,'[调皮]','http://bycg.xyz:9000/emo/调皮'),(18,'[2022]','http://bycg.xyz:9000/emo/2022'),(19,'[虎年]','http://bycg.xyz:9000/emo/虎年'),(20,'[豹富]','http://bycg.xyz:9000/emo/豹富'),(21,'[嗑瓜子]','http://bycg.xyz:9000/emo/嗑瓜子'),(22,'[笑哭]','http://bycg.xyz:9000/emo/笑哭'),(23,'[藏狐]','http://bycg.xyz:9000/emo/藏狐'),(24,'[脸红]','http://bycg.xyz:9000/emo/脸红'),(25,'[脱单doge]','http://bycg.xyz:9000/emo/脱单doge'),(26,'[给心心]','http://bycg.xyz:9000/emo/给心心'),(27,'[嘟嘟]','http://bycg.xyz:9000/emo/嘟嘟'),(28,'[哦呼]','http://bycg.xyz:9000/emo/哦呼'),(29,'[喜欢]','http://bycg.xyz:9000/emo/喜欢'),(30,'[酸了]','http://bycg.xyz:9000/emo/酸了'),(31,'[嫌弃]','http://bycg.xyz:9000/emo/嫌弃'),(32,'[大哭]','http://bycg.xyz:9000/emo/大哭'),(33,'[害羞]','http://bycg.xyz:9000/emo/害羞'),(34,'[疑惑]','http://bycg.xyz:9000/emo/疑惑'),(35,'[喜极而泣]','http://bycg.xyz:9000/emo/喜极而泣'),(36,'[奸笑]','http://bycg.xyz:9000/emo/奸笑'),(37,'[笑]','http://bycg.xyz:9000/emo/笑'),(38,'[偷笑]','http://bycg.xyz:9000/emo/偷笑'),(39,'[惊讶]','http://bycg.xyz:9000/emo/惊讶'),(40,'[捂脸]','http://bycg.xyz:9000/emo/捂脸'),(41,'[阴险]','http://bycg.xyz:9000/emo/阴险'),(42,'[囧]','http://bycg.xyz:9000/emo/囧'),(43,'[呆]','http://bycg.xyz:9000/emo/呆'),(44,'[抠鼻]','http://bycg.xyz:9000/emo/抠鼻'),(45,'[大笑]','http://bycg.xyz:9000/emo/大笑'),(46,'[惊喜]','http://bycg.xyz:9000/emo/惊喜'),(47,'[无语]','http://bycg.xyz:9000/emo/无语'),(48,'[点赞]','http://bycg.xyz:9000/emo/点赞'),(49,'[鼓掌]','http://bycg.xyz:9000/emo/鼓掌'),(50,'[尴尬]','http://bycg.xyz:9000/emo/尴尬'),(51,'[灵魂出窍]','http://bycg.xyz:9000/emo/灵魂出窍'),(52,'[委屈]','http://bycg.xyz:9000/emo/委屈'),(53,'[傲娇]','http://bycg.xyz:9000/emo/傲娇'),(54,'[疼]','http://bycg.xyz:9000/emo/疼'),(55,'[冷]','http://bycg.xyz:9000/emo/冷'),(56,'[生病]','http://bycg.xyz:9000/emo/生病'),(57,'[吓]','http://bycg.xyz:9000/emo/吓'),(58,'[吐]','http://bycg.xyz:9000/emo/吐'),(59,'[捂眼]','http://bycg.xyz:9000/emo/捂眼'),(60,'[嘘声]','http://bycg.xyz:9000/emo/嘘声'),(61,'[思考]','http://bycg.xyz:9000/emo/思考'),(62,'[再见]','http://bycg.xyz:9000/emo/再见'),(63,'[翻白眼]','http://bycg.xyz:9000/emo/翻白眼'),(64,'[哈欠]','http://bycg.xyz:9000/emo/哈欠'),(65,'[奋斗]','http://bycg.xyz:9000/emo/奋斗'),(66,'[墨镜]','http://bycg.xyz:9000/emo/墨镜'),(67,'[难过]','http://bycg.xyz:9000/emo/难过'),(68,'[撇嘴]','http://bycg.xyz:9000/emo/撇嘴'),(69,'[抓狂]','http://bycg.xyz:9000/emo/抓狂'),(70,'[生气]','http://bycg.xyz:9000/emo/生气'),(71,'[牛年]','http://bycg.xyz:9000/emo/牛年'),(72,'[水稻]','http://bycg.xyz:9000/emo/水稻'),(73,'[汤圆]','http://bycg.xyz:9000/emo/汤圆'),(74,'[锦鲤]','http://bycg.xyz:9000/emo/锦鲤'),(75,'[弹幕破百亿]','http://bycg.xyz:9000/emo/弹幕破百亿'),(76,'[12周年]','http://bycg.xyz:9000/emo/12周年'),(77,'[福到了]','http://bycg.xyz:9000/emo/福到了'),(78,'[鸡腿]','http://bycg.xyz:9000/emo/鸡腿'),(79,'[雪花]','http://bycg.xyz:9000/emo/雪花'),(80,'[视频卫星]','http://bycg.xyz:9000/emo/视频卫星'),(81,'[干杯]','http://bycg.xyz:9000/emo/干杯'),(82,'[爱心]','http://bycg.xyz:9000/emo/爱心'),(83,'[胜利]','http://bycg.xyz:9000/emo/胜利'),(84,'[加油]','http://bycg.xyz:9000/emo/加油'),(85,'[抱拳]','http://bycg.xyz:9000/emo/抱拳'),(86,'[响指]','http://bycg.xyz:9000/emo/响指'),(87,'[保佑]','http://bycg.xyz:9000/emo/保佑'),(88,'[支持]','http://bycg.xyz:9000/emo/支持'),(89,'[拥抱]','http://bycg.xyz:9000/emo/拥抱'),(90,'[跪了]','http://bycg.xyz:9000/emo/跪了'),(91,'[怪我咯]','http://bycg.xyz:9000/emo/怪我咯'),(92,'[黑洞]','http://bycg.xyz:9000/emo/黑洞'),(93,'[老鼠]','http://bycg.xyz:9000/emo/老鼠'),(94,'[坎公骑冠剑_吃鸡]','http://bycg.xyz:9000/emo/坎公骑冠剑_吃鸡'),(95,'[坎公骑冠剑_钻石]','http://bycg.xyz:9000/emo/坎公骑冠剑_钻石'),(96,'[坎公骑冠剑_无语]','http://bycg.xyz:9000/emo/坎公骑冠剑_无语'),(97,'[来古-沉思]','http://bycg.xyz:9000/emo/来古-沉思'),(98,'[来古-呆滞]','http://bycg.xyz:9000/emo/来古-呆滞'),(99,'[来古-疑问]','http://bycg.xyz:9000/emo/来古-疑问'),(100,'[来古-震撼]','http://bycg.xyz:9000/emo/来古-震撼'),(101,'[来古-注意]','http://bycg.xyz:9000/emo/来古-注意'),(102,'[哭泣]','http://bycg.xyz:9000/emo/哭泣'),(103,'[哈哈]','http://bycg.xyz:9000/emo/哈哈'),(104,'[狗子]','http://bycg.xyz:9000/emo/狗子'),(105,'[羞羞]','http://bycg.xyz:9000/emo/羞羞'),(106,'[亲亲]','http://bycg.xyz:9000/emo/亲亲'),(107,'[原神_哇]','http://bycg.xyz:9000/emo/原神_哇'),(108,'[原神_哼]','http://bycg.xyz:9000/emo/原神_哼'),(109,'[原神_嗯]','http://bycg.xyz:9000/emo/原神_嗯'),(110,'[原神_欸嘿]','http://bycg.xyz:9000/emo/原神_欸嘿'),(111,'[原神_喝茶]','http://bycg.xyz:9000/emo/原神_喝茶'),(112,'[原神_生气]','http://bycg.xyz:9000/emo/原神_生气'),(113,'[保卫萝卜_白眼]','http://bycg.xyz:9000/emo/保卫萝卜_白眼'),(114,'[保卫萝卜_笔芯]','http://bycg.xyz:9000/emo/保卫萝卜_笔芯'),(115,'[保卫萝卜_哭哭]','http://bycg.xyz:9000/emo/保卫萝卜_哭哭'),(116,'[保卫萝卜_哇]','http://bycg.xyz:9000/emo/保卫萝卜_哇'),(117,'[保卫萝卜_问号]','http://bycg.xyz:9000/emo/保卫萝卜_问号'),(118,'[无悔华夏_不愧是你]','http://bycg.xyz:9000/emo/无悔华夏_不愧是你'),(119,'[无悔华夏_吃瓜]','http://bycg.xyz:9000/emo/无悔华夏_吃瓜'),(120,'[无悔华夏_达咩]','http://bycg.xyz:9000/emo/无悔华夏_达咩'),(121,'[无悔华夏_点赞]','http://bycg.xyz:9000/emo/无悔华夏_点赞'),(122,'[无悔华夏_好耶]','http://bycg.xyz:9000/emo/无悔华夏_好耶');
/*!40000 ALTER TABLE `emo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idea`
--

DROP TABLE IF EXISTS `idea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idea` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int DEFAULT NULL COMMENT '用户的id',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '详情',
  `detailed` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '标题',
  `like_num` int DEFAULT NULL COMMENT '点赞量',
  `unlike_num` int DEFAULT NULL COMMENT '点踩数',
  `cad` int DEFAULT NULL COMMENT '收藏数量',
  `traffic` int DEFAULT NULL COMMENT '访问量',
  `comments_num` int DEFAULT NULL COMMENT '评论数',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `tag` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '标签',
  `status` int DEFAULT NULL COMMENT '状态0审核/1审核通过/2帖子完结 或关闭',
  `programa` int DEFAULT NULL COMMENT '专栏 1寻找合伙人 2创意点子 3交流',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idea`
--

LOCK TABLES `idea` WRITE;
/*!40000 ALTER TABLE `idea` DISABLE KEYS */;
INSERT INTO `idea` VALUES (69,16,'【南京】书店空间新零售，寻找合伙人','#### 【项目简介】：“斐波那契”项目将深度构建书业生态SaaS，赋能实体书店领跑「空间」新零售赛道\n\n        “斐波那契”项目，基于对「空间」零售的全面构想，并以实体书店为最佳业态切入；\n\n        充分运用云端、物联、数据库、API服务等成熟的技术，深度构建书业唯一SaaS生态；\n\n        链接供应商（B端）、实体书店（B端）、内容合伙人（CP），直达终端用户（C端），解决供应链和营销两大核心难题。\n\n        当前进展：完成200张原型图；自主研发的erp系统成熟应用20年；O2O单店小程序\n\n\n\n####        【创始人简介】\n\n        教育背景：1988-1992 合肥工业大学/自动控制 学士。\n\n        工作背景：毕业后在深圳、香港地区的外企做管理工作。2000年回南京在图书发行行业创业至今。\n\n        1. 20年以上持之以恒的企业经营和品牌打造（万象书坊&唐人图书），遍历各种业态，都曾做到行业翘楚。2016年，实体店万象书坊，持牌江苏最美书店。2012年10-12月天猫图书类目第一名。\n\n        2. 通晓图书经销行业的各种营销及产品设计，经验和人脉资源丰富（资深专家）\n\n        3. 独立完成互联网技术在本行业的研发和应用（行业唯一），自主研发图书发行发行全套ERP，陆续和各平台实现API对接。\n\n        4. 熟练掌管公司财务、融资、法务及相关政策\n\n\n\n####        【寻找这样的你】\n\n        1. 有强烈且坚定地创意意愿\n\n        2. 与创始人形成明细的互补（资源&能力&性格）\n\n        3. 专精于以下至少一个领域（A 咖啡&清吧运营 B电商或门店零售业务 C 技术研发 D 对外融资）\n\n        4. 成熟的领导力（团队管理&产品控制&营销策划#### 【项目简介】：“斐波那契”项目将深度构建书业生态SaaS，赋能实体书店领跑「空间」新零售赛道\n\n        “斐波那契”项目，基于对「空间」零售的全面构想，并以实体书店为最佳业态切入；\n\n        充分运用云端、物联、数据库、API服务等成熟的技术，深度构建书业唯一SaaS生态；\n\n        链接供应商（B端）、实体书店（B端）、内容合伙人（CP），直达终端用户（C端），解决供应链和营销两大核心难题。\n\n        当前进展：完成200张原型图；自主研发的erp系统成熟应用20年；O2O单店小程序\n\n\n\n####        【创始人简介】\n\n        教育背景：1988-1992 合肥工业大学/自动控制 学士。\n\n        工作背景：毕业后在深圳、香港地区的外企做管理工作。2000年回南京在图书发行行业创业至今。\n\n        1. 20年以上持之以恒的企业经营和品牌打造（万象书坊&唐人图书），遍历各种业态，都曾做到行业翘楚。2016年，实体店万象书坊，持牌江苏最美书店。2012年10-12月天猫图书类目第一名。\n\n        2. 通晓图书经销行业的各种营销及产品设计，经验和人脉资源丰富（资深专家）\n\n        3. 独立完成互联网技术在本行业的研发和应用（行业唯一），自主研发图书发行发行全套ERP，陆续和各平台实现API对接。\n\n        4. 熟练掌管公司财务、融资、法务及相关政策\n\n\n\n####        【寻找这样的你】\n\n        1. 有强烈且坚定地创意意愿\n\n        2. 与创始人形成明细的互补（资源&能力&性格）\n\n        3. 专精于以下至少一个领域（A 咖啡&清吧运营 B电商或门店零售业务 C 技术研发 D 对外融资）\n\n        4. 成熟的领导力（团队管理&产品控制&营销策划等）等）',0,0,0,18,0,'2022-05-07 17:40:46','[\"南京\",\"书店\"]',0,3),(100,23,'关于方便面的开创性创意demo','对于方便面大家都非常的熟悉，或许认为方便面已近很完善了吧！今天就提出方便面的一点不足之处，那就是方便面配料包装上的不足，特别是对于油料的包装我个人觉得很不满意，每次都要去挤一挤，有特容易弄到手上，所一个人提出了这个方案加以解决，那就是可食性包装，这样的话就不用去挤了直接拿着去泡就是了，而且可以减少白色污染，是不，也许成本会高那么一点不过我相信一点可以赢得广大客户的喜爱',0,1,0,49,0,'2022-05-06 09:00:26','[\"食品\",\"方便面\",\"demo\"]',1,3),(102,23,'足不出户健身赏美景','现在的健身房特别的单调，除了看见器材就是大汗淋漓的人们在健身，感觉特别的枯燥\n我想的就是在器材的左右 和前面加上一种可以显示3D的影像的屏风，有各式各样的场景，例如，海浪沙滩，丛林幽径，花海，雨中，城市街道，名胜古迹 ，MV 注：（真实性的）\n就拿跑步机来说，例如生活中人们商场失意，情场失恋，生活委屈都可以根据自己的心情 想法来选择场景，在运动中尽情的释放的内心的感受，即使流泪也不怕，因为左右和前面都有屏风遮挡。注：（每个场景配上几首相衬的歌曲来衬托\n这样只要是适合安装这类的器材，人们都能丰富运动的感情,，来健身的人也会越来越多，因为没有几个人是可以世界各地都走遍的。',2,0,0,76,0,'2022-05-01 12:05:38','[\"健身\"]',1,3),(110,16,'社交电商淘宝客APP项目招聘合伙人','这是一个和工资没关系的，但和事业甚至和财富自由有关的事情。。。淘宝客APP项目介绍：淘宝客——商家设置推广佣金，买家购物，推广人便获得佣金，推广人0投入靠佣金赚钱。淘宝客就是推广者。淘宝客APP+——顾客在APP上面购物，淘宝客邀请粉丝注册激活绑定上下级关系，从而对佣金分成。淘宝客是一个统称，不断发展壮大中，目前主流电商平台都开通了淘客类业务。市场巨大。只要电商存在，淘客业务就存在。+当然也承认一点就是，竞争也是少不了的。项目现状与需求目前IOS+APP、安卓APP均已开发完毕，IOS在上架审核中，安卓APP在申请软件著作权中。APP后台网页管理系统已开发完毕。技术方面有专人负责。现营销、推广运营方面人手紧缺。合伙人需求和自身情况1，我们的想法是先打造出来产品，目前产品方面1.0版本已开发完+。2，创始人是全职做，合伙人可以兼职做，但是因为这是一个努力让各位合伙人脱离打工圈的行动，所以兼职也需要全力以赴。3，工作日至少保证4小时，至于休息日看合伙人动力；以不影响团队进度最好。网络远程上班、+不需要实地工作营销、推广运营方面紧缺，也非常欢迎VC投资人，欢迎淘客行业资源者对接，+也欢迎运营推广合伙人',1,0,0,14,0,'2022-05-06 19:13:14','[\"网店\"]',1,1),(111,47,'启动资金30w，寻找好的创意项目。','30w的启动资金，寻找好的创意项目，可以做合伙人，也可以投资',0,0,0,0,0,'2022-05-06 19:41:41','[\"启动资金\"]',1,3),(112,47,'方便面为什么没甜味的呢','几十年的方便面市场！怎么就不能来一次小小的创新呢！纯属无聊而发！',0,0,0,2,0,'2022-05-06 19:42:37','[\"方便面\"]',1,2),(113,47,'我朋友贵州山里的，想把当地的蜂蜜，竹笋，猪肉，还有野果子放到网上卖','现在手里有5万，想让大家帮助分析下看看可行的办法。1 注册公司自己弄个食品厂，这样有食品许可证，可以上市流通，但是周期比较慢，还有就是想找个食品厂代加工，贴标上市，大家看看谁有更好的办法。2 关于销售：有了上市条件，我觉得还是通过网络来做销售，那样可以让更多的人知道这里的产品，再有就是联系经销商，毕竟才有5万，没有万全的把握他的钱估计不够打水漂的，如果大家有更好的办法也可以。',0,0,0,0,0,'2022-05-06 19:43:45','[\"贵州\",\"网店\"]',1,1),(114,47,'防丢失信息棒项目，感兴趣的联系我','老人、孩子丢了、包丢了、宠物丢了，但着急的人真的不知道该向谁求助？如果你使用阿甘的防丢失信息棒，你可能会在最短的时间内找到它。最近，阿甘先生开发了一款防止信息丢失的便捷产品。该产品一经上市，广大市民掌声此起彼伏。据悉，看到新闻中不时有老人和孩子走失，阿甘先生非常难过和难过。同时，机场、车站等公共场所行李遗失或误取事件频发，丢失的行李被工作人员存放在仓库内无人前来认领，有时高峰节假日期间丢失的行李等物品无法堆放。阿甘先生想表达他的观点，所以他发明了这个产品。该产品价格亲民、使用方便、用途广泛，无论是老人、儿童、走失的宠物、遗失的包和钥匙，只要找到的人打开问讯栏，就可以第一时间联系走失人员家属、走失宠物失主和失物失主。同时，防止信息棒丢失的商业潜力很大，可以为很多商家做广告推广。与发放传单、制作名片、制作海报、信息册这些传统的宣传方式相比，信息棒可以逃脱被用户扔掉的命运，留在用户身边，大大提高宣传力度，节约商家成本。对于许多企业来说，这是一个绝佳的选择。',0,0,0,6,0,'2022-05-06 19:44:47','[\"丢失\"]',1,2),(115,47,'创业过程中最容易犯的十个错误','这些错误有很多也是我自己犯过的，甚至正在犯的，总结一些，提醒自己，也与创业者们共勉。创业最易犯的十个错误：1. 缺乏创业前的准备（冷启动是很难的）2. 将一款产品和一个企业业务相混淆（产品只是第一步）3. 不舍得花钱聘用专业人士（应该让专业的人去做专业的事）4. 忽视数据的重要性（不要拍脑袋做决策，一定要有数据支撑）5. 扩张太快，超出能力范围（扩张的同时不要忘了团队提升）6. 抱着错误的想法不放（要与时俱进，经验有时候甚至都靠不住）7. 不懂得授权与放权（创业不是一个人的事，放权是态度和信任）8. 认为钱可以解决一切问题（真正核心的东西往往不是用钱换来的）9. 低估了销售需要花的时间（初期打开局面的销售远比你想象的更难）10. 害怕失败，不敢进取（快速试错才能迭代，才能更快地接近成功）',0,0,0,9,0,'2022-05-06 19:45:29','[\"经验\"]',1,3),(116,47,'坐标合肥的投资机构寻A轮至pre-IPO项目','目前主要针对A轮至pre-IPO、项目领域主要是互联网领域，通过运用互联网手段实现传统行业转型\n![image.png](http://bycg.xyz:9000/ideaimage/1651837614093d1cca5fb-dc54-40f4-83b3-8d78e2400554image.png)\n主要针对目前比较火的领域比如大数据、区块链、人工智能等等。请提供相应的项目BP个人非拥有核心技术项目勿扰，感谢。科创类项目，独立知识产权或专利，项目已落地量产，未来5年有上市规划',0,0,0,5,0,'2022-05-06 19:47:27','[\"互联网\"]',1,1),(117,23,'免费分享一个好点子','去淘宝规则看淘宝又禁止卖什么了，然后用网站、贴吧、微商等一切非电商渠道去卖，没了淘宝比价，自然可以卖高价。',0,0,0,0,0,'2022-05-06 19:48:33','[\"分享\"]',0,2),(118,23,'论坛很棒，希望越来越好','论坛很棒，对我很有帮助，感谢，希望越快越好哈。',0,0,0,8,0,'2022-05-06 19:49:46','[\"交流\"]',1,3),(119,16,'hello','hello',0,0,0,1,0,'2022-05-07 13:34:50','[\"HELLO\"]',1,2),(120,16,'hello','hhhhhh',0,0,0,1,0,'2022-05-07 17:36:43','[\"hello\"]',1,1);
/*!40000 ALTER TABLE `idea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_comments`
--

DROP TABLE IF EXISTS `like_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `like_comments` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int DEFAULT NULL COMMENT '用户id',
  `comments_id` int DEFAULT NULL COMMENT '评论id',
  `state` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_comments`
--

LOCK TABLES `like_comments` WRITE;
/*!40000 ALTER TABLE `like_comments` DISABLE KEYS */;
INSERT INTO `like_comments` VALUES (56,16,1,'0'),(57,16,1,'0'),(88,22,7,'1'),(89,22,2,'1'),(90,22,8,'1'),(91,22,9,'1'),(96,16,2,'1'),(98,16,35,'1'),(99,16,43,'1'),(100,23,50,'1'),(101,23,52,'1'),(102,23,69,'1'),(103,23,74,'1'),(104,16,77,'-1'),(105,16,78,'-1');
/*!40000 ALTER TABLE `like_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_idea`
--

DROP TABLE IF EXISTS `like_idea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `like_idea` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `state` smallint DEFAULT NULL COMMENT '0表示踩1赞',
  `idea_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_idea`
--

LOCK TABLES `like_idea` WRITE;
/*!40000 ALTER TABLE `like_idea` DISABLE KEYS */;
INSERT INTO `like_idea` VALUES (148,16,1,12),(165,22,1,1),(167,16,1,37),(171,16,1,39),(178,16,1,1),(179,16,1,51),(180,16,1,57),(181,23,1,57),(182,23,1,108),(183,16,-1,100),(186,16,1,112),(187,16,1,112),(188,16,1,110);
/*!40000 ALTER TABLE `like_idea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '菜单名',
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '图标',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '路径',
  `sid` int DEFAULT NULL COMMENT '子id',
  `fid` int DEFAULT NULL COMMENT '父id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'用户管理','<svg viewBox=\"0 0 1024 1024\" xmlns=\"http://www.w3.org/2000/svg\" data-v-ba633cb8=\"\"><path fill=\"currentColor\" d=\"M512 512a192 192 0 1 0 0-384 192 192 0 0 0 0 384zm0 64a256 256 0 1 1 0-512 256 256 0 0 1 0 512zm320 320v-96a96 96 0 0 0-96-96H288a96 96 0 0 0-96 96v96a32 32 0 1 1-64 0v-96a160 160 0 0 1 160-160h448a160 160 0 0 1 160 160v96a32 32 0 1 1-64 0z\"></path></svg>','/user',1,NULL),(2,'创意管理','<svg viewBox=\"0 0 1024 1024\" xmlns=\"http://www.w3.org/2000/svg\" data-v-ba633cb8=\"\"><path fill=\"currentColor\" d=\"M640 384v64H448a128 128 0 0 0-128 128v128a128 128 0 0 0 128 128h320a128 128 0 0 0 128-128V576a128 128 0 0 0-64-110.848V394.88c74.56 26.368 128 97.472 128 181.056v128a192 192 0 0 1-192 192H448a192 192 0 0 1-192-192V576a192 192 0 0 1 192-192h192z\"></path><path fill=\"currentColor\" d=\"M384 640v-64h192a128 128 0 0 0 128-128V320a128 128 0 0 0-128-128H256a128 128 0 0 0-128 128v128a128 128 0 0 0 64 110.848v70.272A192.064 192.064 0 0 1 64 448V320a192 192 0 0 1 192-192h320a192 192 0 0 1 192 192v128a192 192 0 0 1-192 192H384z\"></path></svg>','/idea',1,NULL),(3,'未审核创意','<svg viewBox=\"0 0 1024 1024\" xmlns=\"http://www.w3.org/2000/svg\" data-v-ba633cb8=\"\"><path fill=\"currentColor\" d=\"M704 192h160v736H160V192h160.064v64H704v-64zM311.616 537.28l-45.312 45.248L447.36 763.52l316.8-316.8-45.312-45.184L447.36 673.024 311.616 537.28zM384 192V96h256v96H384z\"></path></svg>','/audit',1,NULL);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `private_chat`
--

DROP TABLE IF EXISTS `private_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `private_chat` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int DEFAULT NULL COMMENT 'uid',
  `peer_uid` int DEFAULT NULL COMMENT '同行id',
  `is_send` int DEFAULT NULL COMMENT '状态 0发送 1接收',
  `content` text COMMENT '内容',
  `sent_time` datetime DEFAULT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_chat`
--

LOCK TABLES `private_chat` WRITE;
/*!40000 ALTER TABLE `private_chat` DISABLE KEYS */;
INSERT INTO `private_chat` VALUES (1,16,17,0,'你好','2022-04-25 11:10:32'),(2,16,17,0,'我叫李小白','2022-04-25 11:11:06'),(3,17,16,0,'怎么啦？','2022-04-25 11:11:35'),(4,17,16,0,'我认识你吗？','2022-04-25 11:11:59'),(5,16,17,0,'大哥,你好!','2022-04-25 11:12:27'),(6,16,17,0,'我是你小弟!','2022-04-25 12:23:02'),(12,16,17,0,'大哥带带我','2022-04-26 15:12:05'),(13,16,17,0,'大哥带带我','2022-04-26 15:21:17');
/*!40000 ALTER TABLE `private_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comments_id` int DEFAULT NULL COMMENT '评论的id',
  `to_uid` int DEFAULT NULL COMMENT '回复给哪个用户',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `like_count` int DEFAULT NULL COMMENT '点赞数',
  `unlike` int DEFAULT NULL COMMENT '点踩数',
  `uid` int DEFAULT NULL COMMENT '发布者',
  `content` varchar(255) DEFAULT NULL COMMENT '回复的内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3 COMMENT='回复表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (37,51,NULL,'2022-05-02 10:44:56',0,0,23,'欢迎[狗子]'),(38,52,NULL,'2022-05-02 16:36:14',0,0,16,'牛蛙，大佬带我[豹富]'),(39,74,NULL,'2022-05-06 12:43:14',0,0,23,'[doge]'),(40,77,NULL,'2022-05-07 13:30:59',0,0,16,'hello'),(41,77,NULL,'2022-05-07 13:31:19',0,0,16,'hello'),(42,78,NULL,'2022-05-07 13:39:43',0,0,16,'123'),(43,78,NULL,'2022-05-07 13:40:09',0,0,16,'123123'),(44,78,NULL,'2022-05-07 13:40:10',0,0,16,'123123'),(45,78,NULL,'2022-05-07 13:40:55',0,0,16,'12123'),(46,78,NULL,'2022-05-07 13:41:12',0,0,16,'热'),(47,78,NULL,'2022-05-07 13:41:22',0,0,16,'ew'),(48,79,NULL,'2022-05-07 17:33:48',0,0,16,'hello');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward`
--

DROP TABLE IF EXISTS `reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reward` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `detailed` varchar(255) DEFAULT NULL COMMENT '详细',
  `price` int DEFAULT NULL COMMENT '悬赏的价格',
  `comments_id` int DEFAULT NULL COMMENT '被采纳的评论id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward`
--

LOCK TABLES `reward` WRITE;
/*!40000 ALTER TABLE `reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(255) DEFAULT NULL COMMENT '登录用的账号',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `image` varchar(255) DEFAULT NULL COMMENT '头像',
  `balance` int DEFAULT NULL COMMENT '余额',
  `signature` varchar(255) DEFAULT NULL COMMENT '个人签名',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (16,'123456','GuXian','$2a$10$HWoVgXjzoVO/LwQSVYU/Kuekumpc4PSawCmUbdB5KIt0VIhk5bzsK','2022-05-01 16:17:48','http://bycg.xyz:9000/userhead/1653978737583e307cf3d-5cc9-4e85-80ef-17bbe482f92bblob',0,'hhh','3048855@qq.com'),(23,'1234567','奋斗青年','$2a$10$HWoVgXjzoVO/LwQSVYU/Kuekumpc4PSawCmUbdB5KIt0VIhk5bzsK','2022-05-01 16:17:06','http://bycg.xyz:9000/userhead/1651393470192ebe1abdc-ee62-43a3-a3a5-d082622f31b3blob',0,'健身爱好者',NULL),(47,'12345678','王多鱼','$2a$10$MxjusaglQnKiGK1cWNkpqeOLTEm57vHe6/iPFQJsttAeMHsJqtFCG','2022-05-07 18:47:43','http://bycg.xyz:9000/ideaimage/165156163857006d8531f-2e1d-4683-89c9-b2301db2ec5fakari.jpg',0,NULL,NULL),(49,'255555','晓月酱','$2a$10$NaOrf.IKvwJ.uLNq6g0Mp.g/7YkgaJxlwVWWA1yRrdnTt53gei2Ky','2022-06-03 14:56:27','http://bycg.xyz:9000/ideaimage/165156163857006d8531f-2e1d-4683-89c9-b2301db2ec5fakari.jpg',0,NULL,NULL),(50,'111111','ww','$2a$10$pYF8hJCeKnZuOxj5ZA/Id.z0VelK9ByWvPnG9MknDBv7CP2ZsGH1m','2022-06-23 21:31:25','http://bycg.xyz:9000/ideaimage/165156163857006d8531f-2e1d-4683-89c9-b2301db2ec5fakari.jpg',0,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` int NOT NULL,
  `role` int DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (16,6),(23,1),(46,1),(47,1),(48,1),(49,1),(50,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-02 16:50:57
