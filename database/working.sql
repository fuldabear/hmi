-- MySQL dump 10.11
--
-- Host: localhost    Database: hmi
-- ------------------------------------------------------
-- Server version	5.0.51a-3ubuntu5

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
-- Table structure for table `accessRights`
--

DROP TABLE IF EXISTS `accessRights`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `accessRights` (
  `policy_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `dash_id` int(11) default NULL,
  PRIMARY KEY  (`policy_id`),
  KEY `dash_id` (`dash_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `accessRights`
--

LOCK TABLES `accessRights` WRITE;
/*!40000 ALTER TABLE `accessRights` DISABLE KEYS */;
INSERT INTO `accessRights` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11);
/*!40000 ALTER TABLE `accessRights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customDash`
--

DROP TABLE IF EXISTS `customDash`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `customDash` (
  `custom_id` int(11) NOT NULL auto_increment,
  `dash_id` int(11) default NULL,
  `widget_id` int(11) default NULL,
  `setting_id` int(11) default NULL,
  PRIMARY KEY  (`custom_id`),
  KEY `dash_id` (`dash_id`),
  KEY `setting_id` (`setting_id`),
  KEY `widget_id` (`widget_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `customDash`
--

LOCK TABLES `customDash` WRITE;
/*!40000 ALTER TABLE `customDash` DISABLE KEYS */;
/*!40000 ALTER TABLE `customDash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashBoards`
--

DROP TABLE IF EXISTS `dashBoards`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `dashBoards` (
  `dash_id` int(11) NOT NULL auto_increment,
  `dash_name` varchar(255) default NULL,
  `dash_title` varchar(255) default NULL,
  `dash_discription` varchar(255) default NULL,
  `dash_path` varchar(255) default NULL,
  `on_menu` tinyint(4) default '0',
  `menu_cat_id` int(11) default NULL,
  PRIMARY KEY  (`dash_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `dashBoards`
--

LOCK TABLES `dashBoards` WRITE;
/*!40000 ALTER TABLE `dashBoards` DISABLE KEYS */;
INSERT INTO `dashBoards` VALUES (1,'Query Runner','Query Runner','Enable advanced database queries','./xmlRunner/xmlRun.swf',-1,4),(2,'CWRSAD','Chilled Water Reduced Scale Advanced Demostrator (CWRSAD)',NULL,'./cwrsad/cwrsad.swf',-1,1),(3,'Dashboard Builder','Dash Builder',NULL,'./dashBuilder/dashBuilder.swf',0,1),(4,'Dashboard Manager','Dashboard Manager',NULL,'./dashboardManager/manDash.swf',-1,1),(5,'Who am I','Who am I',NULL,'./whoAmI/whoAmI.swf',0,2),(6,'User Manager','User Manager','','./manUsers/manUsers.swf',-1,2),(7,'Lock / Logout','Lock / Logout',NULL,'./logout/logout.swf',-1,2),(8,'Cluster Manager','Cluster Manager',NULL,'./clusterManager/clusterManager.swf',0,4),(9,'Database Manager','Database Manager',NULL,'./databaseManager/databaseManager.swf',0,4),(10,'Simulation Manager','Simulation Manager',NULL,'./simulationManager/simulationManager.swf',0,3),(11,'Data Manager','Data Manager',NULL,'./dataManager/dataManager.swf',0,3);
/*!40000 ALTER TABLE `dashBoards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashConfiguration`
--

DROP TABLE IF EXISTS `dashConfiguration`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `dashConfiguration` (
  `config_id` int(11) NOT NULL auto_increment,
  `simulation_id` varchar(255) default NULL,
  `dash_id` varchar(255) default NULL,
  `config_data` text,
  PRIMARY KEY  (`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `dashConfiguration`
--

LOCK TABLES `dashConfiguration` WRITE;
/*!40000 ALTER TABLE `dashConfiguration` DISABLE KEYS */;
INSERT INTO `dashConfiguration` VALUES (5,'2','2','<chiller><size>4</size><rotation>0</rotation><percentXofCenter>0.7796052631578947</percentXofCenter><percentYofCenter>0.297823911955978</percentYofCenter><componentVarable>a</componentVarable><plot><varable>d</varable><varable>a</varable></plot><control></control></chiller><chiller><size>4</size><rotation>0</rotation><percentXofCenter>0.7828947368421053</percentXofCenter><percentYofCenter>0.7168334167083542</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></chiller><load><size>3</size><rotation>0</rotation><percentXofCenter>0.6567982456140351</percentXofCenter><percentYofCenter>0.4268634317158579</percentYofCenter><componentVarable>b</componentVarable><plot><varable>a</varable><varable>c</varable></plot><control></control></load><load><size>3</size><rotation>0</rotation><percentXofCenter>0.5087719298245614</percentXofCenter><percentYofCenter>0.33196598299149577</percentYofCenter><componentVarable>a</componentVarable><plot></plot><control></control></load><load><size>3</size><rotation>0</rotation><percentXofCenter>0.6573900214592274</percentXofCenter><percentYofCenter>0.5251375687843922</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></load><load><size>3</size><rotation>0</rotation><percentXofCenter>0.5087719298245614</percentXofCenter><percentYofCenter>0.47619047619047616</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></load><load><size>3</size><rotation>0</rotation><percentXofCenter>0.5076754385964912</percentXofCenter><percentYofCenter>0.6033516758379189</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></load><load><size>3</size><rotation>90</rotation><percentXofCenter>0.1340799356223176</percentXofCenter><percentYofCenter>0.6704260651629073</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></load><load><size>3</size><rotation>90</rotation><percentXofCenter>0.3337312231759657</percentXofCenter><percentYofCenter>0.8107769423558897</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></load><load><size>3</size><rotation>90</rotation><percentXofCenter>0.4135327253218885</percentXofCenter><percentYofCenter>0.8107769423558897</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></load><load><size>3</size><rotation>90</rotation><percentXofCenter>0.4976260729613734</percentXofCenter><percentYofCenter>0.8120300751879699</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></load><load><size>3</size><rotation>90</rotation><percentXofCenter>0.3062634120171674</percentXofCenter><percentYofCenter>0.29197994987468673</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></load><load><size>3</size><rotation>0</rotation><percentXofCenter>0.30043859649122806</percentXofCenter><percentYofCenter>0.5372686343171585</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></load><load><size>3</size><rotation>0</rotation><percentXofCenter>0.35964912280701755</percentXofCenter><percentYofCenter>0.5555527763881941</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></load><load><size>3</size><rotation>0</rotation><percentXofCenter>0.14473684210526316</percentXofCenter><percentYofCenter>0.4321160580290145</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></load><load><size>3</size><rotation>0</rotation><percentXofCenter>0.14473684210526316</percentXofCenter><percentYofCenter>0.2910455227613807</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></load><load><size>3</size><rotation>0</rotation><percentXofCenter>0.543859649122807</percentXofCenter><percentYofCenter>0.11840920460230114</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></load><load><size>3</size><rotation>90</rotation><percentXofCenter>0.20757778969957083</percentXofCenter><percentYofCenter>0.13659147869674185</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></load><pump><size>3</size><rotation>0</rotation><percentXofCenter>0.7528701716738196</percentXofCenter><percentYofCenter>0.8220551378446115</percentYofCenter><componentVarable>c</componentVarable><plot></plot><control></control></pump><pump><size>3</size><rotation>0</rotation><percentXofCenter>0.7532322961373391</percentXofCenter><percentYofCenter>0.1862431215607804</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></pump><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.731359649122807</percentXofCenter><percentYofCenter>0.4581290645322661</percentYofCenter><componentVarable>d</componentVarable><plot><varable>a</varable></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.731359649122807</percentXofCenter><percentYofCenter>0.4849624060150376</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.7324561403508771</percentXofCenter><percentYofCenter>0.5553276638319159</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.7324561403508771</percentXofCenter><percentYofCenter>0.582391195597799</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.4692982456140351</percentXofCenter><percentYofCenter>0.3618309154577288</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.4692982456140351</percentXofCenter><percentYofCenter>0.3891945972986493</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.4692982456140351</percentXofCenter><percentYofCenter>0.501975987993997</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.4692982456140351</percentXofCenter><percentYofCenter>0.5295397698849424</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.47039473684210525</percentXofCenter><percentYofCenter>0.6332416208104051</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.47039473684210525</percentXofCenter><percentYofCenter>0.6606053026513257</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.9424356223175966</percentXofCenter><percentYofCenter>0.5238095238095238</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.9704130901287552</percentXofCenter><percentYofCenter>0.5235867933966984</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.03774141630901287</percentXofCenter><percentYofCenter>0.5213032581453634</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.06321083690987124</percentXofCenter><percentYofCenter>0.5213032581453634</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.11396190987124465</percentXofCenter><percentYofCenter>0.8558897243107769</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.23429452789699573</percentXofCenter><percentYofCenter>0.8558897243107769</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.23429452789699573</percentXofCenter><percentYofCenter>0.6904761904761905</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.4692982456140351</percentXofCenter><percentYofCenter>0.9342921460730366</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.5</percentXofCenter><percentYofCenter>0.950600300150075</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.7050438596491229</percentXofCenter><percentYofCenter>0.9345172586293146</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.731359649122807</percentXofCenter><percentYofCenter>0.950600300150075</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.5252192982456141</percentXofCenter><percentYofCenter>0.049599799899949976</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.4978070175438597</percentXofCenter><percentYofCenter>0.06516290726817042</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.7203947368421053</percentXofCenter><percentYofCenter>0.049349674837418714</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.6962719298245614</percentXofCenter><percentYofCenter>0.06538269134567283</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.41126609442060086</percentXofCenter><percentYofCenter>0.24812030075187969</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.43433476394849785</percentXofCenter><percentYofCenter>0.24759879939969984</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.37345761802575106</percentXofCenter><percentYofCenter>0.3132832080200501</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.3737392703862661</percentXofCenter><percentYofCenter>0.15789473684210523</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.2855552575107296</percentXofCenter><percentYofCenter>0.15914786967418543</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.7898336909871244</percentXofCenter><percentYofCenter>0.11779448621553884</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.809482296137339</percentXofCenter><percentYofCenter>0.11779448621553884</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.7631578947368421</percentXofCenter><percentYofCenter>0.1418209104552276</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.6754385964912281</percentXofCenter><percentYofCenter>0.1819159579789895</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.8410087719298246</percentXofCenter><percentYofCenter>0.2907268170426065</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.7489035087719298</percentXofCenter><percentYofCenter>0.3558897243107769</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.7478070175438597</percentXofCenter><percentYofCenter>0.6442971485742872</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.8453947368421053</percentXofCenter><percentYofCenter>0.709479739869935</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.6798245614035088</percentXofCenter><percentYofCenter>0.818295739348371</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.768640350877193</percentXofCenter><percentYofCenter>0.8583959899749374</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.7902896995708154</percentXofCenter><percentYofCenter>0.931077694235589</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.8185219957081544</percentXofCenter><percentYofCenter>0.9298245614035088</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.5966335836909872</percentXofCenter><percentYofCenter>0.4298245614035088</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.6094688841201716</percentXofCenter><percentYofCenter>0.399749373433584</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.5960568669527897</percentXofCenter><percentYofCenter>0.5614035087719298</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.6094420600858369</percentXofCenter><percentYofCenter>0.5297398699349675</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.5354479613733906</percentXofCenter><percentYofCenter>0.43107769423558895</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.5486185622317596</percentXofCenter><percentYofCenter>0.46115288220551376</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.5360246781115879</percentXofCenter><percentYofCenter>0.5714285714285714</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.5489002145922747</percentXofCenter><percentYofCenter>0.5964912280701754</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.3433208154506438</percentXofCenter><percentYofCenter>0.7531328320802005</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.37180793991416305</percentXofCenter><percentYofCenter>0.7543859649122807</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.423350321888412</percentXofCenter><percentYofCenter>0.7531328320802005</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.4521861587982833</percentXofCenter><percentYofCenter>0.7531328320802005</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.5069742489270386</percentXofCenter><percentYofCenter>0.7543859649122807</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.5357296137339056</percentXofCenter><percentYofCenter>0.7543859649122807</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.3607456140350877</percentXofCenter><percentYofCenter>0.4726363181590795</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.3607456140350877</percentXofCenter><percentYofCenter>0.6119309654827414</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.14364035087719298</percentXofCenter><percentYofCenter>0.3645572786393197</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.14364035087719298</percentXofCenter><percentYofCenter>0.5054277138569285</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.4682017543859649</percentXofCenter><percentYofCenter>0.14807403701850924</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>0</rotation><percentXofCenter>0.4682017543859649</percentXofCenter><percentYofCenter>0.17543859649122806</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.2153567596566524</percentXofCenter><percentYofCenter>0.2581453634085213</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve><valve><size>2</size><rotation>-90</rotation><percentXofCenter>0.2430659871244635</percentXofCenter><percentYofCenter>0.2593984962406015</percentYofCenter><componentVarable></componentVarable><plot></plot><control></control></valve>');
/*!40000 ALTER TABLE `dashConfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `log` (
  `log_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `log` varchar(255) default NULL,
  `time` datetime default NULL,
  PRIMARY KEY  (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logins`
--

DROP TABLE IF EXISTS `logins`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `logins` (
  `login_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `ip_address` varchar(255) default NULL,
  PRIMARY KEY  (`login_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `logins`
--

LOCK TABLES `logins` WRITE;
/*!40000 ALTER TABLE `logins` DISABLE KEYS */;
INSERT INTO `logins` VALUES (1,1,'127.0.0.1'),(2,1,'10.16.1.1'),(7,1,'128.61.191.50'),(4,1,'10.16.1.254');
/*!40000 ALTER TABLE `logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuCatagorys`
--

DROP TABLE IF EXISTS `menuCatagorys`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `menuCatagorys` (
  `menu_cat_id` int(11) NOT NULL auto_increment,
  `menu_cat_name` varchar(255) default NULL,
  PRIMARY KEY  (`menu_cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `menuCatagorys`
--

LOCK TABLES `menuCatagorys` WRITE;
/*!40000 ALTER TABLE `menuCatagorys` DISABLE KEYS */;
INSERT INTO `menuCatagorys` VALUES (1,'Dashboards'),(2,'Users'),(3,'Data'),(4,'Server');
/*!40000 ALTER TABLE `menuCatagorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settingTypes`
--

DROP TABLE IF EXISTS `settingTypes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settingTypes` (
  `settingType_id` int(11) NOT NULL auto_increment,
  `settingType_name` varchar(255) default NULL,
  `settingType` varchar(255) default NULL,
  PRIMARY KEY  (`settingType_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settingTypes`
--

LOCK TABLES `settingTypes` WRITE;
/*!40000 ALTER TABLE `settingTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `settingTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simData`
--

DROP TABLE IF EXISTS `simData`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `simData` (
  `data_id` int(11) NOT NULL auto_increment,
  `user_id` varchar(255) default NULL,
  `simulation_id` varchar(255) default NULL,
  `data` text,
  `cdata` text,
  `time` varchar(255) default NULL,
  PRIMARY KEY  (`data_id`),
  KEY `simulation_id` (`simulation_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `simData`
--

LOCK TABLES `simData` WRITE;
/*!40000 ALTER TABLE `simData` DISABLE KEYS */;
INSERT INTO `simData` VALUES (8,NULL,'2','\r<time>\r0\r</time>\r<a>\r0\r</a>\r<b>\r1\r</b>\r<c>\r2\r</c>\r<d>\r3\r</d>\r',NULL,'1234325284'),(9,NULL,'2','\r<time>\r1\r</time>\r<a>\r1\r</a>\r<b>\r2\r</b>\r<c>\r3\r</c>\r<d>\r0\r</d>\r',NULL,'1234325392'),(10,NULL,'2','\r<time>\r2\r</time>\r<a>\r2\r</a>\r<b>\r3\r</b>\r<c>\r0\r</c>\r<d>\r1\r</d>\r',NULL,'1234325422'),(11,NULL,'2','\r<time>\r3\r</time>\r<a>\r3\r</a>\r<b>\r0\r</b>\r<c>\r1\r</c>\r<d>\r2\r</d>\r',NULL,'1234325448'),(12,NULL,'2','\r<time>\r4\r</time>\r<a>\r0\r</a>\r<b>\r1\r</b>\r<c>\r2\r</c>\r<d>\r3\r</d>\r',NULL,'1234325470'),(13,NULL,'2','\r<time>\r5\r</time>\r<a>\r1\r</a>\r<b>\r2\r</b>\r<c>\r3\r</c>\r<d>\r0\r</d>\r',NULL,'1234325492'),(14,NULL,'2','\r<time>\r6\r</time>\r<a>\r0\r</a>\r<b>\r0\r</b>\r<c>\r0\r</c>\r<d>\r0\r</d>\r',NULL,'1234325510'),(15,NULL,'2','\r<time>\r7\r</time>\r<a>\r1\r</a>\r<b>\r1\r</b>\r<c>\r1\r</c>\r<d>\r1\r</d>\r',NULL,'1234325530'),(16,NULL,'2','\r<time>\r8\r</time>\r<a>\r2\r</a>\r<b>\r2\r</b>\r<c>\r2\r</c>\r<d>\r2\r</d>\r',NULL,'1234325548'),(17,NULL,'2','\r<time>\r9\r</time>\r<a>\r3\r</a>\r<b>\r3\r</b>\r<c>\r3\r</c>\r<d>\r3\r</d>\r',NULL,'1234325564'),(18,NULL,'1','v0:0;v1:1;v2:2;v3:3;v4:4;',NULL,'1234808151'),(19,NULL,'1','v0:0;v1:1;v2:2;v3:3;v4:4;',NULL,'1234809014'),(20,NULL,'1','<a>123</a>',NULL,'1235405554'),(21,NULL,'1','<valves></valves><service loads></service loads><rupture valves></rupture valves>',NULL,'1235484134'),(22,NULL,'1','<valves></valves><service loads></service loads><rupture valves></rupture valves>',NULL,'1235484140'),(23,NULL,'1','<valves1>1</valves1>',NULL,'1236111479'),(24,NULL,'1','<valves1>1</valves1>',NULL,'1236111491'),(25,NULL,'1','<valves1>1</valves1>',NULL,'1236111509'),(26,NULL,'1','<valves1>1</valves1>',NULL,'1236111523'),(27,NULL,'1','<time>0</time>',NULL,'1236111873'),(28,NULL,'1','<time>0</time>',NULL,'1236111905'),(29,NULL,'1','<time>0</time>',NULL,'1236985889'),(30,NULL,'1','<time>0</time>',NULL,'1237215836'),(31,NULL,'1','<time>0</time>',NULL,'1237216238'),(32,NULL,'1','<time>0</time>',NULL,'1237216259'),(33,NULL,'1','<time>0</time><valve0>0</valve0><valve1>0</valve1><valve2>0</valve2><valve3>0</valve3><valve4>0</valve4><valve5>0</valve5><valve6>0</valve6><serviceLoad0>0</serviceLoad0><serviceLoad1>0</serviceLoad1><serviceLoad2>0</serviceLoad2><serviceLoad3>0</serviceLoad3><serviceLoad4>0</serviceLoad4><serviceLoad5>0</serviceLoad5><serviceLoad6>0</serviceLoad6><ruptureValve0>0</ruptureValve0><ruptureValve1>0</ruptureValve1><ruptureValve2>0</ruptureValve2><ruptureValve3>0</ruptureValve3><ruptureValve4>0</ruptureValve4><ruptureValve5>0</ruptureValve5><ruptureValve6>0</ruptureValve6>',NULL,'1237216934'),(34,NULL,'1','<time>0</time><valve0>0</valve0><valve1>0</valve1><valve2>0</valve2><valve3>0</valve3><valve4>0</valve4><valve5>0</valve5><valve6>0</valve6><serviceLoad0>0</serviceLoad0><serviceLoad1>0</serviceLoad1><serviceLoad2>0</serviceLoad2><serviceLoad3>0</serviceLoad3><serviceLoad4>0</serviceLoad4><serviceLoad5>0</serviceLoad5><serviceLoad6>0</serviceLoad6><ruptureValve0>0</ruptureValve0><ruptureValve1>0</ruptureValve1><ruptureValve2>0</ruptureValve2><ruptureValve3>0</ruptureValve3><ruptureValve4>0</ruptureValve4><ruptureValve5>0</ruptureValve5><ruptureValve6>0</ruptureValve6>',NULL,'1237216953'),(35,NULL,'1','<time>0</time><valve0>0</valve0><valve1>0</valve1><valve2>0</valve2><valve3>0</valve3><valve4>0</valve4><valve5>0</valve5><valve6>0</valve6><serviceLoad0>0</serviceLoad0><serviceLoad1>0</serviceLoad1><serviceLoad2>0</serviceLoad2><serviceLoad3>0</serviceLoad3><serviceLoad4>0</serviceLoad4><serviceLoad5>0</serviceLoad5><serviceLoad6>0</serviceLoad6><ruptureValve0>0</ruptureValve0><ruptureValve1>0</ruptureValve1><ruptureValve2>0</ruptureValve2><ruptureValve3>0</ruptureValve3><ruptureValve4>0</ruptureValve4><ruptureValve5>0</ruptureValve5><ruptureValve6>0</ruptureValve6>',NULL,'1237218213'),(36,NULL,'1','<time>0</time><valve0>0</valve0><valve1>0</valve1><valve2>0</valve2><valve3>0</valve3><valve4>0</valve4><valve5>0</valve5><valve6>0</valve6><serviceLoad0>0</serviceLoad0><serviceLoad1>0</serviceLoad1><serviceLoad2>0</serviceLoad2><serviceLoad3>0</serviceLoad3><serviceLoad4>0</serviceLoad4><serviceLoad5>0</serviceLoad5><serviceLoad6>0</serviceLoad6><ruptureValve0>0</ruptureValve0><ruptureValve1>0</ruptureValve1><ruptureValve2>0</ruptureValve2><ruptureValve3>0</ruptureValve3><ruptureValve4>0</ruptureValve4><ruptureValve5>0</ruptureValve5><ruptureValve6>0</ruptureValve6>',NULL,'1237218241'),(37,NULL,'1','<time>0</time>',NULL,'1237218573'),(38,NULL,'1','<time>0</time>',NULL,'1237218593'),(39,NULL,'1','<time>0</time>',NULL,'1239221892'),(40,NULL,'1','<time>0</time>',NULL,'1239221934'),(41,NULL,'1','<time>0</time>',NULL,'1239221960'),(42,NULL,'1','<time>0</time>',NULL,'1239222246'),(43,NULL,'1','<time>0</time>',NULL,'1239222441'),(44,NULL,'1','<time>0</time>',NULL,'1239222477'),(45,NULL,'1','<time>0</time>',NULL,'1239222536'),(46,NULL,'1','<time>0</time>',NULL,'1239222564'),(47,NULL,'1','<time>0</time><valve0>0</valve0><valve1>0</valve1><valve2>0</valve2><valve3>0</valve3><valve4>0</valve4><valve5>0</valve5><valve6>1</valve6><valve7>0</valve7><valve8>0</valve8><valve9>0</valve9><valve10>0</valve10><valve11>0</valve11><valve12>0</valve12><valve13>0</valve13><valve14>0</valve14><valve15>0</valve15><valve16>0</valve16><valve17>0</valve17><valve18>0</valve18><valve19>4</valve19><valve20>0</valve20><valve21>0</valve21><valve22>0</valve22><valve23>0</valve23><valve24>0</valve24><valve25>0</valve25><valve26>0</valve26><valve27>0</valve27><valve28>0</valve28><valve29>0</valve29><valve30>0</valve30><valve31>5</valve31><valve32>0</valve32><valve33>0</valve33><valve34>0</valve34><valve35>0</valve35><valve36>0</valve36><valve37>0</valve37><valve38>0</valve38><valve39>0</valve39><valve40>0</valve40><valve41>0</valve41><valve42>0</valve42><valve43>0</valve43><valve44>0</valve44><valve45>0</valve45><valve46>0</valve46><valve47>0</valve47><valve48>0</valve48><valve49>0</valve49><valve50>0</valve50><valve51>0</valve51><valve52>0</valve52><valve53>0</valve53>',NULL,'1239222795');
/*!40000 ALTER TABLE `simData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simulations`
--

DROP TABLE IF EXISTS `simulations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `simulations` (
  `simulation_id` int(11) NOT NULL auto_increment,
  `simulation_name` varchar(255) default NULL,
  `simulation_discription` varchar(255) default NULL,
  `simulation_source_ip` varchar(255) default NULL,
  PRIMARY KEY  (`simulation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `simulations`
--

LOCK TABLES `simulations` WRITE;
/*!40000 ALTER TABLE `simulations` DISABLE KEYS */;
INSERT INTO `simulations` VALUES (1,'old CWRSAD with no\ncomponents','dfw','128.61.191.50'),(2,'old CWRSAD','dfw','10.16.1.254');
/*!40000 ALTER TABLE `simulations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `units` (
  `units_id` int(11) NOT NULL auto_increment,
  `units_name` varchar(255) default NULL,
  `units_discription` varchar(255) default NULL,
  PRIMARY KEY  (`units_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL auto_increment,
  `user_name` varchar(255) default NULL,
  `first_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `activated` tinyint(4) default '0',
  `is_logged_in` tinyint(4) default '0',
  `is_administrator` tinyint(4) default '0',
  `last_communication` datetime default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'david','David','Fullmer','david.fullmer@asdl.gatech.edu','fullmer',-1,0,-1,NULL),(2,'sarah','Sarah','Fullmer','sarah@none.com','fullmer',-1,0,0,NULL),(3,'brennan','Brennan','Fullmer','brennan@none.com','fullmer',0,0,0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variables`
--

DROP TABLE IF EXISTS `variables`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `variables` (
  `variable_id` int(11) NOT NULL auto_increment,
  `variable_name` varchar(255) default NULL,
  `variable_type` varchar(255) default NULL,
  `variable_units` varchar(255) default NULL,
  PRIMARY KEY  (`variable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `variables`
--

LOCK TABLES `variables` WRITE;
/*!40000 ALTER TABLE `variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `widgets` (
  `widget_id` int(11) NOT NULL auto_increment,
  `widget_name` varchar(255) default NULL,
  `widget_path` varchar(255) default NULL,
  `widget_discription` varchar(255) default NULL,
  PRIMARY KEY  (`widget_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-04-27 18:58:11
