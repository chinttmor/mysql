-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: Custom
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

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
-- Current Database: `Custom`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Custom` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `Custom`;

--
-- Table structure for table `Course`
--

DROP TABLE IF EXISTS `Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Course` (
  ` courseId` int NOT NULL,
  ` courseName` varchar(200) NOT NULL,
  `courseDescription` varchar(200) NOT NULL,
  `teacherId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (` courseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course`
--

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;
/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Exam`
--

DROP TABLE IF EXISTS `Exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Exam` (
  `examId` int NOT NULL,
  `tilte` varchar(45) NOT NULL,
  `total_mark` int NOT NULL,
  `total_time` int NOT NULL,
  `createTime` date NOT NULL,
  `courseId` int NOT NULL,
  `content` json NOT NULL,
  PRIMARY KEY (`examId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Exam`
--

LOCK TABLES `Exam` WRITE;
/*!40000 ALTER TABLE `Exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `Exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Quiz`
--

DROP TABLE IF EXISTS `Quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Quiz` (
  `quizId` int NOT NULL,
  `content` json NOT NULL,
  `correct_answer` varchar(45) NOT NULL,
  PRIMARY KEY (`quizId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Quiz`
--

LOCK TABLES `Quiz` WRITE;
/*!40000 ALTER TABLE `Quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `Quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student` (
  `studentId` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `courseId` int NOT NULL,
  `number` varchar(45) NOT NULL,
  PRIMARY KEY (`studentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES (1,'Cori Deans','cdeans0@wordpress.org','mK0*2\'0b)o*EHKEQ',1,'1087231072'),(2,'Corie Woolatt','cwoolatt1@wordpress.com','tO3@>*}Oh1Bm,1N!',2,'6964578175'),(3,'Trudie Japp','tjapp2@godaddy.com','tZ9_D~G/uc!_\\z',3,'3181967140'),(4,'Nydia Roubottom','nroubottom3@deviantart.com','qT9\\vasbcPlzwW',4,'4457687843'),(5,'Anne Hutten','ahutten4@w3.org','mA1!bB~,\'wbxSrNs',5,'5039794121'),(6,'Bunni Tale','btale5@psu.edu','fQ6)qFe7AI/=,C($',6,'3131158411'),(7,'Bobinette Brimblecombe','bbrimblecombe6@fda.gov','vU1!kUR$KKCQ*y>N',7,'2568019015'),(8,'Johnny Oleszkiewicz','joleszkiewicz7@facebook.com','kY3*>85%o<D',8,'5786633203'),(9,'April Rizzardo','arizzardo8@live.com','gF6&16{<hNJj',9,'7242574301'),(10,'Tabbitha Middle','tmiddle9@privacy.gov.au','sD2/(GQ`q%',10,'8695058977'),(11,'Carolyn Barhims','cbarhimsa@addthis.com','bF1!4Uu)#0',11,'2622396689'),(12,'Eberto Sandercock','esandercockb@dailymotion.com','qI2/*Y=.R9K',12,'1678218749'),(13,'Harland Tendahl','htendahlc@cnbc.com','uD7`FZ%rXCeBGp',13,'1503470638'),(14,'Avictor Dedden','adeddend@admin.ch','wL1>e}y,gY8EtD',14,'4937616979'),(15,'Cherish Allum','callume@gmpg.org','jU9)k@Ye}kqUC5h',15,'2083213086'),(16,'Malena Blackman','mblackmanf@xing.com','dD7\'g%04`',16,'3758490641'),(17,'Jen Eatttok','jeatttokg@addtoany.com','eI1\"s?w5p$p9\"',17,'9147975830'),(18,'Pennie Moncaster','pmoncasterh@bloglines.com','rL9*BfNQ@A~#f',18,'4339366225'),(19,'Jane Dasent','jdasenti@rambler.ru','eW3~\"\"\"Np0R9{\"',19,'7566024148'),(20,'Keane Sloley','ksloleyj@zdnet.com','nM5`u6l@)3',20,'2565268796'),(21,'Violette Cantillion','vcantillionk@jiathis.com','tY9_0\'/@y',21,'3879937375'),(22,'Truda Bicker','tbickerl@nature.com','dH3_S<x)o',22,'4764828558'),(23,'Randolph Ivashinnikov','rivashinnikovm@e-recht24.de','lD1?i2~t4',23,'4785763583'),(24,'Pierette Ezele','pezelen@rakuten.co.jp','bK1\"3$&a|D\"',24,'1834607858'),(25,'Norris Witherby','nwitherbyo@indiatimes.com','bL5}m|*4<omi',25,'5029918214'),(26,'Tobias Hafner','thafnerp@businessweek.com','pO9/o4R{MZT_mZWo',26,'3825825189'),(27,'Jeramie Dodwell','jdodwellq@europa.eu','iX7$XRdv1MCi',27,'6345837468'),(28,'Alleen Ramelot','aramelotr@addtoany.com','bG1+pJh<hM',28,'9729302810'),(29,'Calvin Curtois','ccurtoiss@geocities.com','xY7@O6IH\'t',29,'6134157231'),(30,'Erv Eyre','eeyret@bravesites.com','mA1~>iB}x',30,'9429793219'),(31,'Bernadine Stoffer','bstofferu@forbes.com','xL6*Q3M7s',31,'6369510619'),(32,'Darcy Clinnick','dclinnickv@cornell.edu','bT4=FA|MG',32,'7407628405'),(33,'Nanice Newall','nnewallw@netvibes.com','nT5=\\(4.r{?x',33,'2857995250'),(34,'Tamiko Flockhart','tflockhartx@businesswire.com','wJ2|A8tn5/M',34,'2187961457'),(35,'Carolann Fynn','cfynny@usda.gov','vL1@@\"?<~({/W\"',35,'4779465703'),(36,'Dasha Brazur','dbrazurz@about.com','qX0!(+0_{>!3JL~+',36,'2681349507'),(37,'Deerdre Greydon','dgreydon10@army.mil','aD4/5&0gD',37,'4331516169'),(38,'Devin Demko','ddemko11@miitbeian.gov.cn','sE4|T/%{Y?',38,'6644289691'),(39,'Dore Leel','dleel12@t-online.de','cH3\'yLs_|',39,'3443945287'),(40,'Harbert Verrick','hverrick13@samsung.com','vU9%)Lanj,',40,'7529584161'),(41,'Pru Liccardi','pliccardi14@tripod.com','zY5$\"`P1\"',41,'1847759341'),(42,'Sheena Blofield','sblofield15@example.com','yB3(K@SreF)}=_?',42,'3803617997'),(43,'Raphael Pavlata','rpavlata16@chron.com','eH8<t\"(5i8lV|\"',43,'8803163173'),(44,'Keeley Bygraves','kbygraves17@nba.com','bQ4_o\'t/@}(Hi@(@',44,'2355743983'),(45,'Crystal Whittenbury','cwhittenbury18@wikimedia.org','vI2{~d%UK*$`',45,'6304985899'),(46,'Baudoin Aldington','baldington19@w3.org','yY8>#\\c)a>56m4Wy',46,'1345349897'),(48,'Tonie Chapelle','tchapelle1b@ebay.co.uk','iE4`9hGOCp',48,'8484162949'),(49,'Carlin Esome','cesome1c@surveymonkey.com','eR7|VGa\"?\"',49,'2966970279'),(50,'Teresita Orr','torr1d@elpais.com','iM4.45Lq_Lp',50,'8436068421');
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teacher`
--

DROP TABLE IF EXISTS `Teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teacher` (
  `teacherId` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `number` varchar(45) NOT NULL,
  `position` varchar(45) NOT NULL,
  PRIMARY KEY (`teacherId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teacher`
--

LOCK TABLES `Teacher` WRITE;
/*!40000 ALTER TABLE `Teacher` DISABLE KEYS */;
INSERT INTO `Teacher` VALUES (1,'emudd0@upenn.edu','mZ1\\l`BlTh','Ernesto Mudd','3684974750','Speech Pathologist'),(2,'ssyddie1@studiopress.com','uH0{Xw+.@\"gp\"','Spense Syddie','1111105646','Speech Pathologist'),(3,'wsarver2@live.com','oU7.\'ZRJELYu','Winna Sarver','3431423939','Environmental Specialist'),(4,'lbundy3@opensource.org','zH5($#IoJuJ','Loydie Bundy','5035113516','Civil Engineer'),(5,'bshelford4@gnu.org','mZ8}>GJsCg','Brana Shelford','8368317599','General Manager'),(6,'rhadgraft5@dot.gov','iO9#mPpp7','Rivalee Hadgraft','1975180624','Operator'),(7,'cbayfield6@cdc.gov','aZ1)\"2oG\"','Ches Bayfield','2507456204','Sales Representative'),(8,'rhadeke7@zdnet.com','pK1!c%g.ibIZptzG','Rogerio Hadeke','8881317366','Accounting Assistant IV');
/*!40000 ALTER TABLE `Teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-09 17:23:42
