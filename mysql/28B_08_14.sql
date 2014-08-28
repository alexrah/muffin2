-- MySQL dump 10.13  Distrib 5.1.67, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: muffin
-- ------------------------------------------------------
-- Server version	5.1.67

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
-- Table structure for table `reob7_assets`
--

DROP TABLE IF EXISTS `reob7_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_assets`
--

LOCK TABLES `reob7_assets` WRITE;
/*!40000 ALTER TABLE `reob7_assets` DISABLE KEYS */;
INSERT INTO `reob7_assets` VALUES (1,0,0,163,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,40,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,41,42,1,'com_cpanel','com_cpanel','{}'),(10,1,43,44,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,45,46,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,47,48,1,'com_login','com_login','{}'),(13,1,49,50,1,'com_mailto','com_mailto','{}'),(14,1,51,52,1,'com_massmail','com_massmail','{}'),(15,1,53,54,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,55,56,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,57,58,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,59,126,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,127,130,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,131,132,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,133,134,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,135,136,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,137,138,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,139,142,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,143,146,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,147,148,1,'com_wrapper','com_wrapper','{}'),(27,8,18,35,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,128,129,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,144,145,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,140,141,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,149,150,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,151,152,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,153,154,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(36,1,155,156,1,'com_contenthistory','com_contenthistory','{}'),(37,1,157,158,1,'com_ajax','com_ajax','{}'),(38,1,159,160,1,'com_postinstall','com_postinstall','{}'),(39,18,60,61,2,'com_modules.module.1','Main Menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(40,18,62,63,2,'com_modules.module.2','Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,18,64,65,2,'com_modules.module.3','Popular Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,18,66,67,2,'com_modules.module.4','Recently Added Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(43,18,68,69,2,'com_modules.module.8','Toolbar','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(44,18,70,71,2,'com_modules.module.9','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,18,72,73,2,'com_modules.module.10','Logged-in Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(46,18,74,75,2,'com_modules.module.12','Admin Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(47,18,76,77,2,'com_modules.module.13','Admin Submenu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(48,18,78,79,2,'com_modules.module.14','User Status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(49,18,80,81,2,'com_modules.module.15','Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(50,18,82,83,2,'com_modules.module.16','Login Form','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(51,18,84,85,2,'com_modules.module.17','Breadcrumbs','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(52,18,86,87,2,'com_modules.module.79','Multilanguage status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(53,18,88,89,2,'com_modules.module.86','Joomla Version','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(54,27,19,20,3,'com_content.article.1','Homepage','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(55,18,90,91,2,'com_modules.module.87','logo','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(56,18,92,93,2,'com_modules.module.88','footer','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(57,18,94,95,2,'com_modules.module.89','left-home','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(58,18,96,97,2,'com_modules.module.90','right-home','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(59,18,98,99,2,'com_modules.module.91','bottoni','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(60,18,100,101,2,'com_modules.module.92','social','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(61,27,21,22,3,'com_content.article.2','SUNDAY BRUNCH','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(62,18,102,103,2,'com_modules.module.93','left-brunch','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(63,18,104,105,2,'com_modules.module.94','Fox Contact',''),(64,1,161,162,1,'com_foxcontact','com_foxcontact','{}'),(65,8,36,39,2,'com_content.category.8','appena sfornati','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(66,18,106,107,2,'com_modules.module.95','left-gluten','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(67,18,108,109,2,'com_modules.module.96','left-tea','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(68,27,23,24,3,'com_content.article.3','AFTERNOON TEA','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(69,65,37,38,3,'com_content.article.4','Muffin mandorle e pistacchio','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(70,18,110,111,2,'com_modules.module.97','contatto','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(71,27,25,26,3,'com_content.article.5','contatto','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(72,27,27,28,3,'com_content.article.6','AFTERNOON TEA1','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(73,27,29,30,3,'com_content.article.7','TEA ROOM','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(74,18,112,113,2,'com_modules.module.98','brands','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(75,18,114,115,2,'com_modules.module.99','ruler','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(76,18,116,117,2,'com_modules.module.100','footer strip','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(77,27,31,32,3,'com_content.article.8','GLUTEN FREE','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(78,27,33,34,3,'com_content.article.9','THE MENU','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(79,18,118,119,2,'com_modules.module.101','left-menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(80,18,120,121,2,'com_modules.module.102','credits','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(81,18,122,123,2,'com_modules.module.103','right','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(82,18,124,125,2,'com_modules.module.104','left','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
/*!40000 ALTER TABLE `reob7_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_associations`
--

DROP TABLE IF EXISTS `reob7_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_associations`
--

LOCK TABLES `reob7_associations` WRITE;
/*!40000 ALTER TABLE `reob7_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_banner_clients`
--

DROP TABLE IF EXISTS `reob7_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_banner_clients`
--

LOCK TABLES `reob7_banner_clients` WRITE;
/*!40000 ALTER TABLE `reob7_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_banner_tracks`
--

DROP TABLE IF EXISTS `reob7_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_banner_tracks`
--

LOCK TABLES `reob7_banner_tracks` WRITE;
/*!40000 ALTER TABLE `reob7_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_banners`
--

DROP TABLE IF EXISTS `reob7_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_banners`
--

LOCK TABLES `reob7_banners` WRITE;
/*!40000 ALTER TABLE `reob7_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_categories`
--

DROP TABLE IF EXISTS `reob7_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_categories`
--

LOCK TABLES `reob7_categories` WRITE;
/*!40000 ALTER TABLE `reob7_categories` DISABLE KEYS */;
INSERT INTO `reob7_categories` VALUES (1,0,0,0,15,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(8,65,1,13,14,1,'appena-sfornati','com_content','appena sfornati','appena-sfornati','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',847,'2014-05-07 10:57:03',0,'0000-00-00 00:00:00',0,'*',1);
/*!40000 ALTER TABLE `reob7_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_contact_details`
--

DROP TABLE IF EXISTS `reob7_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_contact_details`
--

LOCK TABLES `reob7_contact_details` WRITE;
/*!40000 ALTER TABLE `reob7_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_content`
--

DROP TABLE IF EXISTS `reob7_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_content`
--

LOCK TABLES `reob7_content` WRITE;
/*!40000 ALTER TABLE `reob7_content` DISABLE KEYS */;
INSERT INTO `reob7_content` VALUES (1,54,'Homepage','homepage','<center>\r\n<p id=\"slogan\">\r\n  é l\'ora del té, <strong>si accomodi.</strong>\r\n  </p>\r\n<img src=\"images/poltrona_trasparente.png\" alt=\"\" />\r\n</center>','',1,2,'2014-05-06 21:52:02',847,'','2014-08-22 22:39:21',847,0,'0000-00-00 00:00:00','2014-05-06 21:52:02','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,6,'','',1,398,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,61,'SUNDAY BRUNCH','sunday-brunch','<div class=\"brunch\">\r\n<h6>\r\n  La colazione incotra il pranzo,<br />\r\n  ogni prima domenica del mese.\r\n</h6>\r\n<p>\r\nIl brunch e\' un pasto che consiste in una commistione di prima colazione e pranzo. Lo stesso termine riflette questa commistione: si tratta, infatti di una forma sincopata tra gli equivalenti termini inglesi, breakfast e lunch.\r\n</p>\r\n<img src=\"images/brunch_foto.png\" alt=\"\" />\r\n<p>\r\nPuoi scegliere tra 3 menu: Vegetariano, di Carne o di pesce.  \r\n</p>\r\n  <a href=\"index.php/the-menu\">Guarda l\'ultimo menú</a>\r\n  <p>\r\n    \r\n  </p>\r\n  <a style=\"float:right;\" href=\"index.php/sunday-brunch/prenota\" class=\"tiny button secondary\">Prenota</a>\r\n</div>','',1,2,'2014-05-07 10:06:48',847,'','2014-08-27 15:04:51',847,0,'0000-00-00 00:00:00','2014-05-07 10:06:48','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',15,5,'','',1,174,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,68,'AFTERNOON TEA','afternoon-tea','<div class=\"brunch\">\r\n<h6>Un tipico appuntamento British</h6>\r\n<p>\r\ndove poter apprezzare al meglio il té accompagnato da piccoli bocconcini salati che incontrano dolcetti deliziosi il tutto seguito da un buon bicchiere di bollicine. Un rito imperdibile!\r\n</p>\r\n<img src=\"images/afeternoon_tea_foto.png\" alt=\"\" />\r\n<p>\r\n  \r\n</p>\r\n  <a style=\"float:right;\" href=\"index.php/sunday-brunch/prenota\" class=\"tiny button secondary\">Prenota</a>\r\n</div>','',1,2,'2014-05-07 11:00:15',847,'','2014-08-23 01:03:29',847,0,'0000-00-00 00:00:00','2014-05-07 11:00:15','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,4,'','',1,110,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,69,'Muffin mandorle e pistacchio','muffin-mandorle-e-pistacchio','<img src=\"images/muffin_sfornati.png\" alt=\"\" />\r\n<p>\r\n  Testo breve che racconti\r\nla particolarità del giorno o semplicemente informi su uno dei tanti prodotti. La stessa cosa, se possibile dovrebbe essere pubblicata su Facebook.\r\n</p>','',1,8,'2014-05-07 11:04:40',847,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-05-07 11:04:40','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(5,71,'contatto','contatto','<p>\r\n  <b>Muffin &amp; Cakes</b> Tea Room &amp; more\r\n</p>\r\n<p>\r\n  Piazza San Francesco 11 - 17031 Albenga &#40;SV&#41; <br />\r\n  Telefono +39 0182 020622\r\n</p>\r\n<p>\r\n  email: marianna.muffincakes@gmail.com\r\n</p>\r\n<iframe src=\"https://mapsengine.google.com/map/embed?mid=zqJKKIIR0Ig8.kMR-aXnTvmls\" width=\"100%\" height=\"480\"></iframe>','',1,2,'2014-08-12 08:59:39',847,'','2014-08-23 03:01:36',847,0,'0000-00-00 00:00:00','2014-08-12 08:59:39','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,3,'','',1,114,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,72,'AFTERNOON TEA1','afternoon-tea1','<div class=\"brunch\">\r\n<h6>\r\n  La colazione incotra il pranzo,<br />\r\n  ogni prima domenica del mese.\r\n</h6>\r\n<p>\r\nIl brunch è un pasto che consiste\r\nin una commistione di prima colazione e pranzo. Lo stesso termine riflette questa commistione: si tratta, infatti di una forma sincopata tra\r\n￼￼￼￼￼￼￼￼gli equivalenti termini inglesi, breakfast e lunch.\r\n</p>\r\n<img src=\"images/sunday_brunch.jpeg\" alt=\"\" />\r\n<p>\r\nPuoi scegliere tra 3 menu: Vegetariano, di Carne o di pesce.  \r\n</p>\r\n  <a style=\"float:right;\" href=\"index.php/sunday-brunch/prenota\" class=\"tiny button secondary\">Prenota</a>\r\n</div>','',-2,2,'2014-05-07 10:06:48',847,'','2014-08-13 10:55:52',847,0,'0000-00-00 00:00:00','2014-05-07 10:06:48','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(7,73,'TEA ROOM','tea-room','<div class=\"brunch\">\r\n<p>\r\n  Muffin&amp;Cakes&reg; nasce come una \r\n<b>piccola bottega di dolci anglosassoni</b> sviluppando in seguito il progetto anche come Tearoom. Vuole essere un posto accogliente dove poter sostare per la colazione o la merenda, passando anche per un \"light lunch\" oppure semplicemente afferrare  al volo uno dei nostri tantissimi dolci.\r\n</p>\r\n\r\n<img src=\"images/tea_room_and_more_foto.png\" alt=\"\" />\r\n    <p>\r\n    \r\n  </p>\r\n  <a href=\"index.php/the-menu\" class=\"\">Guarda il menù</a>\r\n</div>','',1,2,'2014-08-13 10:57:59',847,'','2014-08-23 03:14:08',847,0,'0000-00-00 00:00:00','2014-08-13 10:57:59','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,2,'','',1,148,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(8,77,'GLUTEN FREE','gluten-free','<div class=\"brunch\">\r\n<p><b>Il mercoledì e il venerdì potrai trovare muffin e torte Gluten Free</b>  e senza lattosio. Provale e non potrai più farne a meno! Inoltre, altri prodotti prodotti direttamente da UK come le patatine Crisps Ten Acre, senza glutine!\r\n</p>\r\n\r\n<img src=\"images/tea_room_and_more_foto.png\" alt=\"\" />\r\n    <p>\r\n  Alcuni prodotti li potrai trovare anche giovedi e venerdi,\r\nma il mercoledi li gustarai appena sfornati, ti aspettiamo!  \r\n  </p>\r\n</div>','',1,2,'2014-08-23 01:07:11',847,'','2014-08-27 14:08:44',847,0,'0000-00-00 00:00:00','2014-08-23 01:07:11','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,1,'','',1,54,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(9,78,'THE MENU','the-menu','<div class=\"row menu\">\r\n  <div class=\"large-6 columns\">\r\n    <h4 class=\"subheader dolci\">Dolci</h4>\r\n    <ul>\r\n    <li>Cupcake</li>\r\n	<li>Mini Cheesecake</li>\r\n    <li>Brownie</li>\r\n    <li>Brownie Cheesecake</li>\r\n    <li>Cookie</li>\r\n    <li>Frollini</li>\r\n    <li>Scone</li>\r\n    <li>Scone con marmellata</li>\r\n    <li>Fetta di torta</li>\r\n    </ul>\r\n    \r\n\r\n    \r\n    <h4 class=\"subheader te\">Té</h4>\r\n    <ul>\r\n    <li><b>NERI</b></li>\r\n    <li>English breakfast</li>\r\n    <li>Darjeling Classico</li>\r\n    <li>Darjeling earl grey</li>\r\n    <li>Fiocchi di cioccolato</li>\r\n    <li>Chai</li>\r\n    <li>Chilli Chai </li>\r\n    <p>\r\n      \r\n      </p>\r\n    <li><b>ROSSI - senza caffeina</b></li>\r\n    <li>Rooibos classico</li>\r\n    <li>Rooibos cannella</li>\r\n    <li>Rooibos caramello</li>\r\n      <p>\r\n        \r\n      </p>\r\n    <li><b>VERDI</b></li>\r\n    <li>Mao Feng classico</li>\r\n    <li>Alla Menta</li>\r\n    <li>Fiori di gelsomino</li>\r\n    <li>Pop corn &#40; con riso tostato &#41;</li>\r\n      <p>\r\n        \r\n      </p>\r\n      <li><b>BIANCO</b></li>\r\n    <p>\r\n      \r\n      </p>\r\n      <li><b>BLU</b></li>\r\n    <li>Oolong ting tung </li>\r\n    </ul>\r\n    <li><b>TISANE</b></li>\r\n      <ul>\r\n        <li>Menta</li>\r\n        <li>Liquirizia &amp; menta</li>\r\n        <li>Limone &amp; zenzero</li>\r\n        <li>Erba limoncella</li>\r\n        <li>Frutti rossi</li>\r\n        <li>Yerba mate</li>\r\n        <li>Camomilla</li>\r\n      </ul>\r\n    <h4 class=\"subheader lunch\"><i style=\"font-weight: normal;\">Light</i> Lunch</h4>\r\n    <ul>\r\n      <li><b>SANDWICHES 3 STRATI</b></li>\r\n      <li><b>Pane Integrale, Cereali, Curry</b></li>\r\n      <li><b>Spalmato con burro</b></li>\r\n      <p>     \r\n      </p>\r\n       <li><b>CAMDEN LOCK MARKET</b></li>\r\n      <li>Open sandwich 2 strati</li>\r\n      <li>Fontina, bacon, pomodoro e uovo</li>\r\n       <p>     \r\n      </p>\r\n       <li><b>BOROUGH MARKET</b></li>\r\n      <li>Salmone, Philadelphia e insalata</li>\r\n       <p>     \r\n      </p>\r\n       <li><b>OLD SPITAFIELDS MARKET</b></li>\r\n      <li>Pollo grigliato, insalata, pomodoro,</li>\r\n      <li>salsa yogurt al curry</li>\r\n       <p>     \r\n      </p>\r\n       <li><b>PORTOBELLO ROAD MARKET</b></li>\r\n      <li>Tacchino, Philadelphia, pomodoro,</li>\r\n      <li>insalata e maionese</li>\r\n       <p>     \r\n      </p>\r\n       <li><b>GREENWICH MARKET</b></li>\r\n      <li>Cotto, mozzarella, pomodoro e insalata</li>\r\n       <p>     \r\n      </p>\r\n       <li><b>BRIXTON MARKET</b></li>\r\n      <li>Tonno, uovo sodo, pomodoro cetriolo</li>\r\n     \r\n       <p>     \r\n      </p>\r\n       <li><b>COVENT GARDEN</b></li>\r\n      <li>Pollo grigliato, bacon, fontina,</li>\r\n      <li>pomodoro, insalata e salsa a piacere</li>\r\n        <p>     \r\n      </p>\r\n       <li><b>TRAMEZZINI</b> 3 STRATI</li>\r\n    </ul>\r\n         \r\n    <ul>\r\n      <li><b>INSALATONA</b></li>\r\n      <li>Misticanze, verdure di stagione,</li>\r\n      <li>mozzarella e tonno</li>\r\n      <p>\r\n        \r\n      </p>\r\n      <li><b>EXTRA: INSALATE, PIATTO DEL GIORNO</b></li>\r\n      <li><b>E ZUPPE DEL GIORNO</b></li>\r\n    </ul>\r\n    \r\n</div>\r\n  \r\n      <div class=\"large-6 columns\">\r\n        <h4 class=\"subheader cioccolate\">Cioccolate</h4>\r\n    <ul>\r\n    <li><b>FONDENTE  70% cacao</b></li>\r\n      <p></p>\r\n	<li><b>al LATTE</b></li>\r\n    <li>Classica</li>\r\n    <li>Menta</li>\r\n    <li>Peperoncino</li>\r\n    <li>Lime e peperoncino</li>\r\n    <li>Caramello</li>\r\n    <li>Cannella</li>\r\n    <li>Zenzero</li>\r\n    <li>Rocky Road - biscottino &amp; marshmallows</li>\r\n    <li>Arancia</li>\r\n    <li>Banana &amp; toffee</li>\r\n    <p>\r\n      \r\n      </p>\r\n    <li><b>BIANCHE</b></li>\r\n    <li>Classica</li>\r\n    <li>Fragola</li>\r\n    <li>Limone &amp; Meringa</li>\r\n    <li>Nocciola</li>\r\n    <li>Creme brulée</li>      \r\n    </ul>\r\n        \r\n    <h4 class=\"subheader bevande\">Bevande</h4>\r\n    <ul>\r\n      <li><b>CENTRIFUGHE DI FRUTTA FRESCA DI STAGIONE</b></li>\r\n      <li>Arancia, carote e mela</li>\r\n      <li>Mela, carote e zenzero</li>\r\n      <li>Pompelmo rosa e mela</li>\r\n      <li>Mela, ananas e Fragola</li>\r\n      <li>Mela e pera</li>\r\n      <li>Pesca, mela e kiwi</li>\r\n      <li>Melone, uva e mela</li>\r\n      <li>Frullati di frutta fresca di stagione</li>\r\n    </ul>\r\n    \r\n        <ul>\r\n          <li><b>CAFFETTERIA TRADIZIONALE</b></li>\r\n          <li>Caffe</li>\r\n          <li>Dek</li>\r\n          <li>Orzo</li>\r\n          <li>Ginseng</li>\r\n          <li>Cappuccino</li>\r\n          <li>Cappuccino latte soya</li>\r\n          <li>Marocchino </li>\r\n          <li>Marocchino latte soya</li>\r\n          <li>Marocchino con nutella</li>\r\n          <li>Latte bianco</li>\r\n          <li>Latte macchiato</li>\r\n          <li>Marocchino freddo...</li>\r\n          <li>non la solita crema caffè!</li>\r\n          <li>&#40;crema di latte con caffè vero&#41;</li>\r\n        </ul>\r\n   \r\n        <ul>\r\n           <li><b>YOGURT FROZEN</b></li>\r\n          <li>Al naturale</li>\r\n          <li>Con frutta</li>\r\n          <li>Con nutella</li>\r\n          <li>Con muesli</li>\r\n          <li>Con Brownie a strati</li>\r\n        </ul>\r\n            \r\n        <ul>\r\n          <li><b>COOKIE ICE COFFEE</b></li>\r\n          <li>Gelato al fior di latte con cookie</li>\r\n		  <li>spezzettato e innaffiato di caffè </li>\r\n        </ul>\r\n\r\n    <ul>\r\n       <li><b>BIRRE ARTIGIANALI BRITISH</b></li>\r\n      <li>FREEDOM</li>\r\n      <li>PIONEER - Bionda</li>\r\n      <li>STOUT - Scura</li>\r\n      <li>ORGANIC LAGER - Bionda biologica</li>\r\n      <li>ORGANIC DARK LAGER - Biologica ambrata</li>\r\n     </ul>\r\n   	    \r\n  </div>\r\n  \r\n  <div class=\"large-1 columns\"></div>\r\n  \r\n</div>','',1,2,'2014-08-23 01:15:32',847,'','2014-08-24 22:08:58',847,0,'0000-00-00 00:00:00','2014-08-23 01:15:32','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',18,0,'','',1,142,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `reob7_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_content_frontpage`
--

DROP TABLE IF EXISTS `reob7_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_content_frontpage`
--

LOCK TABLES `reob7_content_frontpage` WRITE;
/*!40000 ALTER TABLE `reob7_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_content_rating`
--

DROP TABLE IF EXISTS `reob7_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_content_rating`
--

LOCK TABLES `reob7_content_rating` WRITE;
/*!40000 ALTER TABLE `reob7_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_content_types`
--

DROP TABLE IF EXISTS `reob7_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_content_types`
--

LOCK TABLES `reob7_content_types` WRITE;
/*!40000 ALTER TABLE `reob7_content_types` DISABLE KEYS */;
INSERT INTO `reob7_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Weblink','com_weblinks.weblink','{\"special\":{\"dbtable\":\"#__weblinks\",\"key\":\"id\",\"type\":\"Weblink\",\"prefix\":\"WeblinksTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{}}','WeblinksHelperRoute::getWeblinkRoute','{\"formFile\":\"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"featured\",\"images\"], \"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(3,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(4,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(5,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),(6,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(9,'Weblinks Category','com_weblinks.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','WeblinksHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(10,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(11,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(12,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(13,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(14,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(15,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `reob7_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_contentitem_tag_map`
--

DROP TABLE IF EXISTS `reob7_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_contentitem_tag_map`
--

LOCK TABLES `reob7_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `reob7_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_core_log_searches`
--

DROP TABLE IF EXISTS `reob7_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_core_log_searches`
--

LOCK TABLES `reob7_core_log_searches` WRITE;
/*!40000 ALTER TABLE `reob7_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_extensions`
--

DROP TABLE IF EXISTS `reob7_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_extensions`
--

LOCK TABLES `reob7_extensions` WRITE;
/*!40000 ALTER TABLE `reob7_extensions` DISABLE KEYS */;
INSERT INTO `reob7_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"1\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"target\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"count_clicks\":\"1\",\"icons\":1,\"link_icons\":\"\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_num_links\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_links_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"0\",\"show_link_description\":\"1\",\"show_link_hits\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(31,'com_ajax','component','com_ajax','',1,1,1,0,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer\",\"version\":\"5.2.6\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"mediaversion\":\"d7b67e021fd75cdfaadfd31d3653521d\"}','','',0,'0000-00-00 00:00:00',0,0),(104,'IDNA Convert','library','idna_convert','',0,1,1,1,'{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2014-03-09 12:54:48\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2014 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.2.1\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(106,'PHPass','library','phpass','',0,1,1,1,'{\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.15\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\",\"version\":\"4.0.22\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"strong_passwords\":\"1\",\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',5,0),(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(503,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(506,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(507,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.3\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.3\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"April 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.4\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,'SiegeEngine2','template','siegeengine2','',0,1,1,0,'{\"name\":\"SiegeEngine2\",\"type\":\"template\",\"creationDate\":\"April, 2013\",\"author\":\"Antony Doyle\",\"copyright\":\"Copyright (C) 2013 Antony Doyle | Siege21.com | Siegeworks. All rights Reserved\",\"authorEmail\":\"antony@siege21.com\",\"authorUrl\":\"http:\\/\\/www.antonydoyle.co.uk\",\"version\":\"2.0.2\",\"description\":\"TPL_SIEGEENGINE_DESCRIPTION\",\"group\":\"\"}','{\"loadMoo\":\"0\",\"jQuery\":\"1\",\"jQueryOff\":\"0\",\"setWidth\":\"1000\",\"setGeneratorTag\":\"\",\"analytics\":\"UA-XXXXX-X\",\"topbarTitle\":\"SiegeEngine2\",\"customCSS\":\"\",\"rightwidth\":\"4\",\"leftwidth\":\"4\"}','','',0,'0000-00-00 00:00:00',0,0),(10001,'Fox Contact','library','foxcontact','',0,1,1,0,'{\"name\":\"Fox Contact\",\"type\":\"library\",\"creationDate\":\"Mar 2014\",\"author\":\"Demis Palma\",\"copyright\":\"Demis Palma\",\"authorEmail\":\"demis@fox.ra.it\",\"authorUrl\":\"http:\\/\\/www.fox.ra.it\\/\",\"version\":\"3.2.3\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10002,'MOD_FOXCONTACT','module','mod_foxcontact','',0,1,0,0,'{\"name\":\"MOD_FOXCONTACT\",\"type\":\"module\",\"creationDate\":\"Mar 2014\",\"author\":\"Demis Palma\",\"copyright\":\"Demis Palma\",\"authorEmail\":\"demis@fox.ra.it\",\"authorUrl\":\"http:\\/\\/www.fox.ra.it\\/\",\"version\":\"3.2.3\",\"description\":\"MOD_FOXCONTACT_DESCRIPTION\",\"group\":\"\"}','{\"form__width\":\"|auto\",\"customhtml0display\":\"1\",\"customhtml0order\":\"-1000\",\"customhtml1display\":\"1\",\"customhtml1order\":\"1000\",\"labelsdisplay\":\"0\",\"form_layout\":\"stacked\",\"labels__width\":\"230|px\",\"sender0display\":\"2\",\"sender0order\":\"5\",\"sender1display\":\"2\",\"sender1order\":\"10\",\"sender1isemail\":\"1\",\"text0display\":\"1\",\"text0order\":\"15\",\"text1display\":\"0\",\"text1order\":\"20\",\"text2display\":\"0\",\"text2order\":\"25\",\"text3display\":\"0\",\"text3order\":\"30\",\"text4display\":\"0\",\"text4order\":\"35\",\"text5display\":\"0\",\"text5order\":\"40\",\"text6display\":\"0\",\"text6order\":\"45\",\"text7display\":\"0\",\"text7order\":\"50\",\"text8display\":\"0\",\"text8order\":\"55\",\"text9display\":\"0\",\"text9order\":\"60\",\"text__width\":\"100|%\",\"dropdown0display\":\"1\",\"dropdown0order\":\"65\",\"dropdown1display\":\"0\",\"dropdown1order\":\"70\",\"dropdown2display\":\"0\",\"dropdown2order\":\"75\",\"dropdown__width\":\"100|%\",\"textarea0display\":\"1\",\"textarea0order\":\"80\",\"textarea1display\":\"0\",\"textarea1order\":\"85\",\"textarea2display\":\"0\",\"textarea2order\":\"90\",\"textarea__width\":\"100|%\",\"textarea__height\":\"180|px\",\"checkbox0display\":\"1\",\"checkbox0order\":\"95\",\"checkbox1display\":\"0\",\"checkbox1order\":\"100\",\"checkbox2display\":\"0\",\"checkbox2order\":\"105\",\"checkbox3display\":\"0\",\"checkbox3order\":\"110\",\"checkbox4display\":\"0\",\"checkbox4order\":\"115\",\"uploaddisplay\":\"0\",\"uploadmethod\":\"1\",\"uploadmax_file_size\":\"102400\",\"upload_filter\":\"1\",\"upload_audio\":\"0\",\"upload_video\":\"0\",\"upload_images\":\"1\",\"upload_documents\":\"1\",\"upload_archives\":\"1\",\"submittype\":\"0\",\"submiticon\":\"\",\"submitimage\":\"\",\"resetbutton\":\"0\",\"resettype\":\"0\",\"reseticon\":\"\",\"resetimage\":\"\",\"email_sent_action\":\"0\",\"email_sent_textdisplay\":\"1\",\"copy_to_submitter\":\"1\",\"email_copy_summary\":\"0\",\"spam_check\":\"1\",\"spam_detected_textdisplay\":\"1\",\"stdcaptchadisplay\":\"0\",\"stdcaptchatype\":\"0\",\"stdcaptcha_length\":\"5\",\"stdcaptchawidth\":\"150\",\"stdcaptchaheight\":\"75\",\"stdcaptchafont\":\"\",\"stdcaptchafontmin\":\"14\",\"stdcaptchafontmax\":\"20\",\"stdcaptchaangle\":\"20\",\"stdcaptcha_backgroundcolor\":\"#ffffff\",\"stdcaptcha_textcolor\":\"#191919\",\"stdcaptcha_disturbcolor\":\"#c8c8c8\",\"css\":\"bootstrap.css\",\"acymailing\":\"0\",\"acymailing_checkboxes\":\"hidden|hidden\",\"acymailing_auto_checked\":\"0\",\"jnews\":\"0\",\"jnews_checkboxes\":\"hidden|hidden\",\"jnews_auto_checked\":\"0\",\"othernewsletters\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(10003,'plg_content_foxcontact','plugin','foxcontact','content',0,1,1,0,'{\"name\":\"plg_content_foxcontact\",\"type\":\"plugin\",\"creationDate\":\"Mar 2014\",\"author\":\"Demis Palma\",\"copyright\":\"Demis Palma\",\"authorEmail\":\"demis@fox.ra.it\",\"authorUrl\":\"http:\\/\\/www.fox.ra.it\\/\",\"version\":\"3.2.3\",\"description\":\"PLG_FOXCONTACT_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10004,'com_foxcontact','component','com_foxcontact','',1,1,0,0,'{\"name\":\"COM_FOXCONTACT\",\"type\":\"component\",\"creationDate\":\"Mar 2014\",\"author\":\"Demis Palma\",\"copyright\":\"Demis Palma\",\"authorEmail\":\"demis@fox.ra.it\",\"authorUrl\":\"http:\\/\\/www.fox.ra.it\\/\",\"version\":\"3.2.3\",\"description\":\"COM_FOXCONTACT_DESCRIPTION\",\"group\":\"\"}','{\"adminemailfrom\":{\"select\":\"admin\"},\"adminemailreplyto\":{\"select\":\"submitter\"},\"submitteremailfrom\":{\"select\":\"admin\"},\"submitteremailreplyto\":{\"select\":\"admin\"},\"use_dns\":\"dns_check\"}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `reob7_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_filters`
--

DROP TABLE IF EXISTS `reob7_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_filters`
--

LOCK TABLES `reob7_finder_filters` WRITE;
/*!40000 ALTER TABLE `reob7_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_links`
--

DROP TABLE IF EXISTS `reob7_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_links`
--

LOCK TABLES `reob7_finder_links` WRITE;
/*!40000 ALTER TABLE `reob7_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_links_terms0`
--

DROP TABLE IF EXISTS `reob7_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_links_terms0`
--

LOCK TABLES `reob7_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `reob7_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_links_terms1`
--

DROP TABLE IF EXISTS `reob7_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_links_terms1`
--

LOCK TABLES `reob7_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `reob7_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_links_terms2`
--

DROP TABLE IF EXISTS `reob7_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_links_terms2`
--

LOCK TABLES `reob7_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `reob7_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_links_terms3`
--

DROP TABLE IF EXISTS `reob7_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_links_terms3`
--

LOCK TABLES `reob7_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `reob7_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_links_terms4`
--

DROP TABLE IF EXISTS `reob7_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_links_terms4`
--

LOCK TABLES `reob7_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `reob7_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_links_terms5`
--

DROP TABLE IF EXISTS `reob7_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_links_terms5`
--

LOCK TABLES `reob7_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `reob7_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_links_terms6`
--

DROP TABLE IF EXISTS `reob7_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_links_terms6`
--

LOCK TABLES `reob7_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `reob7_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_links_terms7`
--

DROP TABLE IF EXISTS `reob7_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_links_terms7`
--

LOCK TABLES `reob7_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `reob7_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_links_terms8`
--

DROP TABLE IF EXISTS `reob7_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_links_terms8`
--

LOCK TABLES `reob7_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `reob7_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_links_terms9`
--

DROP TABLE IF EXISTS `reob7_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_links_terms9`
--

LOCK TABLES `reob7_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `reob7_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_links_termsa`
--

DROP TABLE IF EXISTS `reob7_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_links_termsa`
--

LOCK TABLES `reob7_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `reob7_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_links_termsb`
--

DROP TABLE IF EXISTS `reob7_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_links_termsb`
--

LOCK TABLES `reob7_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `reob7_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_links_termsc`
--

DROP TABLE IF EXISTS `reob7_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_links_termsc`
--

LOCK TABLES `reob7_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `reob7_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_links_termsd`
--

DROP TABLE IF EXISTS `reob7_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_links_termsd`
--

LOCK TABLES `reob7_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `reob7_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_links_termse`
--

DROP TABLE IF EXISTS `reob7_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_links_termse`
--

LOCK TABLES `reob7_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `reob7_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_links_termsf`
--

DROP TABLE IF EXISTS `reob7_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_links_termsf`
--

LOCK TABLES `reob7_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `reob7_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_taxonomy`
--

DROP TABLE IF EXISTS `reob7_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_taxonomy`
--

LOCK TABLES `reob7_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `reob7_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `reob7_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `reob7_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `reob7_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_taxonomy_map`
--

LOCK TABLES `reob7_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `reob7_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_terms`
--

DROP TABLE IF EXISTS `reob7_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_terms`
--

LOCK TABLES `reob7_finder_terms` WRITE;
/*!40000 ALTER TABLE `reob7_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_terms_common`
--

DROP TABLE IF EXISTS `reob7_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_terms_common`
--

LOCK TABLES `reob7_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `reob7_finder_terms_common` DISABLE KEYS */;
INSERT INTO `reob7_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `reob7_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_tokens`
--

DROP TABLE IF EXISTS `reob7_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_tokens`
--

LOCK TABLES `reob7_finder_tokens` WRITE;
/*!40000 ALTER TABLE `reob7_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `reob7_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_tokens_aggregate`
--

LOCK TABLES `reob7_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `reob7_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_finder_types`
--

DROP TABLE IF EXISTS `reob7_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_finder_types`
--

LOCK TABLES `reob7_finder_types` WRITE;
/*!40000 ALTER TABLE `reob7_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_foxcontact_enquiries`
--

DROP TABLE IF EXISTS `reob7_foxcontact_enquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_foxcontact_enquiries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `exported` tinyint(4) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL,
  `url` text NOT NULL,
  `fields` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_time` (`date`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_foxcontact_enquiries`
--

LOCK TABLES `reob7_foxcontact_enquiries` WRITE;
/*!40000 ALTER TABLE `reob7_foxcontact_enquiries` DISABLE KEYS */;
INSERT INTO `reob7_foxcontact_enquiries` VALUES (1,108,'2014-08-27',0,'2.235.217.141','http://teddydemo.tk/muffin2/index.php/sunday-brunch/prenota','[[\"sender\",\"Nome Cognome\",\"ale sandro\"],[\"sender\",\"Email\",\"jrliban@gmail.com\"],[\"text\",\"Numero di telefono\",\"321654987\"],[\"dropdown\",\"Menu\",\" Afternoon Tea\"],[\"textarea\",\"Commenti\",\"test prova prenotazione\"],[\"checkbox\",\"Accetto i termini e le condizioni d\'uso\",\"Yes\"]]');
/*!40000 ALTER TABLE `reob7_foxcontact_enquiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_foxcontact_settings`
--

DROP TABLE IF EXISTS `reob7_foxcontact_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_foxcontact_settings` (
  `name` varchar(32) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_foxcontact_settings`
--

LOCK TABLES `reob7_foxcontact_settings` WRITE;
/*!40000 ALTER TABLE `reob7_foxcontact_settings` DISABLE KEYS */;
INSERT INTO `reob7_foxcontact_settings` VALUES ('captchadrawer','use_gd'),('mimefilter','use_fileinfo');
/*!40000 ALTER TABLE `reob7_foxcontact_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_languages`
--

DROP TABLE IF EXISTS `reob7_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_languages`
--

LOCK TABLES `reob7_languages` WRITE;
/*!40000 ALTER TABLE `reob7_languages` DISABLE KEYS */;
INSERT INTO `reob7_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,1,1);
/*!40000 ALTER TABLE `reob7_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_menu`
--

DROP TABLE IF EXISTS `reob7_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_menu`
--

LOCK TABLES `reob7_menu` WRITE;
/*!40000 ALTER TABLE `reob7_menu` DISABLE KEYS */;
INSERT INTO `reob7_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,65,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',27,32,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',28,29,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',30,31,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',33,38,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',34,35,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',36,37,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',39,44,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',40,41,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',42,43,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',45,46,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',47,48,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',49,54,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',50,51,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',52,53,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',55,56,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',57,58,0,'*',1),(23,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',59,60,0,'',1),(24,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',61,62,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',10,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_tags\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',11,12,1,'*',0),(102,'mainmenu','TEA ROOM & MORE','tea-room-more','','tea-room-more','index.php?option=com_content&view=article&id=7','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_tags\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',13,14,0,'*',0),(103,'mainmenu','SUNDAY BRUNCH','sunday-brunch','','sunday-brunch','index.php?option=com_content&view=article&id=2','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_tags\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',17,20,0,'*',0),(104,'mainmenu','AFTERNOON TEA','afternoon-tea','','afternoon-tea','index.php?option=com_content&view=article&id=3','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_tags\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',21,22,0,'*',0),(105,'mainmenu','GLUTEN FREE','gluten-free','','gluten-free','index.php?option=com_content&view=article&id=8','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"info_block_position\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_tags\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',23,24,0,'*',0),(106,'mainmenu','CONTACT','contact','','contact','index.php?option=com_content&view=article&id=5','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',10,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_tags\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',25,26,0,'*',0),(107,'main','COM_FOXCONTACT_MENU','com-foxcontact-menu','','com-foxcontact-menu','index.php?option=com_foxcontact','component',0,1,1,10004,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',63,64,0,'',1),(108,'mainmenu','prenota','prenota','','sunday-brunch/prenota','index.php?option=com_foxcontact&view=foxcontact','component',1,103,2,10004,0,'0000-00-00 00:00:00',0,1,'',0,'{\"to_address\":\"marianna.muffincakes@gmail.com\",\"cc_address\":\"\",\"bcc_address\":\"\",\"email_subject\":\"Information request from your website\",\"jmessenger_user\":\"0\",\"page_subheading\":\"Prenota\",\"form__width\":{\"text\":\"\",\"select\":\"auto\"},\"customhtml0\":\"Si prega di completare <b>tutti i campi richiesti<\\/b>.\",\"customhtml0display\":\"1\",\"customhtml0order\":\"-1000\",\"customhtml1\":\"Riceverete una mail di avvenuta prenotazione.\",\"customhtml1display\":\"1\",\"customhtml1order\":\"1000\",\"labelsdisplay\":\"1\",\"form_layout\":\"extended\",\"labels__width\":{\"text\":\"230\",\"select\":\"px\"},\"sender0\":\"Nome Cognome\",\"sender0display\":\"2\",\"sender0order\":\"5\",\"sender1\":\"Email\",\"sender1display\":\"2\",\"sender1order\":\"10\",\"sender1isemail\":\"1\",\"text0\":\"Numero di telefono\",\"text0display\":\"2\",\"text0order\":\"15\",\"text1\":\"\",\"text1display\":\"0\",\"text1order\":\"20\",\"text2\":\"\",\"text2display\":\"0\",\"text2order\":\"25\",\"text3\":\"\",\"text3display\":\"0\",\"text3order\":\"30\",\"text4\":\"\",\"text4display\":\"0\",\"text4order\":\"35\",\"text5\":\"\",\"text5display\":\"0\",\"text5order\":\"40\",\"text6\":\"\",\"text6display\":\"0\",\"text6order\":\"45\",\"text7\":\"\",\"text7display\":\"0\",\"text7order\":\"50\",\"text8\":\"\",\"text8display\":\"0\",\"text8order\":\"55\",\"text9\":\"\",\"text9display\":\"0\",\"text9order\":\"60\",\"text__width\":{\"text\":\"270\",\"select\":\"px\"},\"dropdown0\":\"Menu\",\"dropdown0display\":\"2\",\"dropdown0values\":\"Sunday Brunch, Afternoon Tea, Gluten Free\",\"dropdown0order\":\"65\",\"dropdown1\":\"\",\"dropdown1display\":\"0\",\"dropdown1values\":\"\",\"dropdown1order\":\"70\",\"dropdown2\":\"\",\"dropdown2display\":\"0\",\"dropdown2values\":\"\",\"dropdown2order\":\"75\",\"dropdown__width\":{\"text\":\"270\",\"select\":\"px\"},\"textarea0\":\"Commenti\",\"textarea0display\":\"1\",\"textarea0order\":\"80\",\"textarea1\":\"\",\"textarea1display\":\"0\",\"textarea1order\":\"85\",\"textarea2\":\"\",\"textarea2display\":\"0\",\"textarea2order\":\"90\",\"textarea__width\":{\"text\":\"270\",\"select\":\"px\"},\"textarea__height\":{\"text\":\"180\",\"select\":\"px\"},\"checkbox0\":\"Accetto i termini e le condizioni d\'uso\",\"checkbox0display\":\"1\",\"checkbox0order\":\"95\",\"checkbox1\":\"\",\"checkbox1display\":\"0\",\"checkbox1order\":\"100\",\"checkbox2\":\"\",\"checkbox2display\":\"0\",\"checkbox2order\":\"105\",\"checkbox3\":\"\",\"checkbox3display\":\"0\",\"checkbox3order\":\"110\",\"checkbox4\":\"\",\"checkbox4display\":\"0\",\"checkbox4order\":\"115\",\"uploaddisplay\":\"0\",\"uploadmethod\":\"1\",\"upload\":\"Select files to attach\",\"uploadmax_file_size\":\"102400\",\"upload_filter\":\"1\",\"upload_audio\":\"0\",\"upload_video\":\"0\",\"upload_images\":\"1\",\"upload_documents\":\"1\",\"upload_archives\":\"1\",\"submittext\":\"Prenota\",\"submittype\":\"0\",\"submiticon\":\"-1\",\"submitimage\":\"-1\",\"resetbutton\":\"0\",\"resettext\":\"Reset\",\"resettype\":\"0\",\"reseticon\":\"-1\",\"resetimage\":\"-1\",\"email_sent_action\":\"0\",\"email_sent_text\":\"Il tuo messaggio \\u00e9 stato inviato.\\r\\n<br \\/>\\r\\nSarete ricontattati al pi\\u00fa presto.\\r\\n<br \\/>\\r\\nGrazie per la cortese attenzione\\r\\n<br \\/>\\r\\nMuffin&Cakes\",\"email_sent_textdisplay\":\"1\",\"email_sent_page\":\"101\",\"copy_to_submitter\":\"1\",\"email_copy_subject\":\"Grazie per averci contattato\",\"email_copy_text\":\"Il tuo messaggio \\u00e9 stato inviato.\\r\\n\\r\\nSarete ricontattati al pi\\u00fa presto.\\r\\n\\r\\nGrazie per la cortese attenzione\\r\\n\\r\\nMuffin&Cakes\",\"email_copy_summary\":\"0\",\"spam_check\":\"1\",\"spam_words\":\"www,http,url=,href=,link=,.txt,shit,fuck\",\"spam_detected_text\":\"We are sorry, but it seems that your message contains unwanted advertising therefore it <b>has been blocked<\\/b>.<br \\/>Please try again avoiding words such as <i>www, http,<\\/i> and similar.\",\"spam_detected_textdisplay\":\"1\",\"stdcaptchadisplay\":\"0\",\"stdcaptcha\":\"Security code\",\"stdcaptchatype\":\"0\",\"stdcaptcha_length\":\"5\",\"stdcaptchawidth\":\"150\",\"stdcaptchaheight\":\"75\",\"stdcaptchafont\":\"-1\",\"stdcaptchafontmin\":\"14\",\"stdcaptchafontmax\":\"20\",\"stdcaptchaangle\":\"20\",\"stdcaptcha_backgroundcolor\":\"#ffffff\",\"stdcaptcha_textcolor\":\"#191919\",\"stdcaptcha_disturbcolor\":\"#c8c8c8\",\"css\":\"bootstrap.css\",\"acymailing\":\"0\",\"acymailing_checkboxes\":\"hidden|hidden\",\"acymailing_auto_checked\":\"0\",\"jnews\":\"0\",\"jnews_checkboxes\":\"hidden|hidden\",\"jnews_auto_checked\":\"0\",\"othernewsletters\":\"1\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',18,19,0,'*',0),(109,'mainmenu','THE MENU','the-menu','','the-menu','index.php?option=com_content&view=article&id=9','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',10,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_tags\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',15,16,0,'*',0);
/*!40000 ALTER TABLE `reob7_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_menu_types`
--

DROP TABLE IF EXISTS `reob7_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_menu_types`
--

LOCK TABLES `reob7_menu_types` WRITE;
/*!40000 ALTER TABLE `reob7_menu_types` DISABLE KEYS */;
INSERT INTO `reob7_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site');
/*!40000 ALTER TABLE `reob7_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_messages`
--

DROP TABLE IF EXISTS `reob7_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_messages`
--

LOCK TABLES `reob7_messages` WRITE;
/*!40000 ALTER TABLE `reob7_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_messages_cfg`
--

DROP TABLE IF EXISTS `reob7_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_messages_cfg`
--

LOCK TABLES `reob7_messages_cfg` WRITE;
/*!40000 ALTER TABLE `reob7_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_modules`
--

DROP TABLE IF EXISTS `reob7_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_modules`
--

LOCK TABLES `reob7_modules` WRITE;
/*!40000 ALTER TABLE `reob7_modules` DISABLE KEYS */;
INSERT INTO `reob7_modules` VALUES (1,39,'Main Menu','','',2,'top',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"menu_principale\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(2,56,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,57,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,58,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,59,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,60,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,61,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,62,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,63,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,64,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,65,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,66,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,67,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,68,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,69,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,55,'logo','','<p><a href=\"./\"><img src=\"images/logo_muffin_small.png\" alt=\"\" /></a></p>',1,'top',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" logo\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(88,56,'footer','','<div class=\"row\">\r\n  <div class=\"large-offset-4 large-1 columns\">\r\n    <h4 class=\"subheader\">DOLCI</h4>\r\n    <ul>\r\n    <li>Cupcake</li>\r\n	<li>Mini Cheesecake</li>\r\n    <li>Brownie</li>\r\n    <li>Brownie Cheesecake</li>\r\n    <li>Cookie</li>\r\n    <li>Frollini</li>\r\n    <li>Scone</li>\r\n    <li>Scone con marmellata</li>\r\n    <li>Fetta di torta</li>\r\n    </ul>\r\n    <h4 class=\"subheader\">CIOCCOLATE</h4>\r\n    <ul>\r\n    <li>FONDENTE  70% cacao</li>\r\n	<li>al LATTE</li>\r\n    <li>Classica</li>\r\n    <li>Menta</li>\r\n    <li>Peperoncino</li>\r\n    <li>Lime e peperoncino</li>\r\n    <li>Caramello</li>\r\n    <li>Cannella</li>\r\n    <li>Zenzero</li>\r\n    <li>Rocky Road - biscottino &amp; marshmallows</li>\r\n    <li>Arancia</li>\r\n    <li>Banana &amp; toffee</li>\r\n    <p>\r\n      \r\n      </p>\r\n    <li>BIANCHE</li>\r\n    <li>Classica</li>\r\n    <li>Fragola</li>\r\n    <li>Limone &amp; Meringa</li>\r\n    <li>Nocciola</li>\r\n    <li>Creme brulée</li>      \r\n    </ul>\r\n</div>\r\n  \r\n    <div class=\"large-1 columns\">\r\n    <h4 class=\"subheader\">TÉ</h4>\r\n    <ul>\r\n    <li>English breakfast</li>\r\n    <li>Darjeling Classico</li>\r\n    <li>Darjeling earl grey</li>\r\n    <li>Fiocchi di cioccolato</li>\r\n    <li>Chai</li>\r\n    <li>Chilli Chai </li>\r\n    <li>Rooibos classico</li>\r\n    <li>Rooibos cannella</li>\r\n    <li>Rooibos caramello</li>\r\n    <li>Mao Feng classico</li>\r\n    <li>Alla Menta</li>\r\n    <li>Fiori di gelsomino</li>\r\n    <li>Pop corn &#40; con riso tostato &#41;</li>\r\n    <li>Oolong ting tung </li>\r\n    </ul>\r\n     <h4 class=\"subheader\">TISANE</h4>\r\n      <ul>\r\n        <li>Menta</li>\r\n        <li>Liquirizia &amp; menta</li>\r\n        <li>Limone &amp; zenzero</li>\r\n        <li>Erba limoncella</li>\r\n        <li>Frutti rossi</li>\r\n        <li>Yerba mate</li>\r\n        <li>Camomilla</li>\r\n      </ul>\r\n</div>\r\n  \r\n      <div class=\"large-1 columns\">\r\n    <h4 class=\"subheader\">CENTRIFUGHE DI FRUTTA FRESCA DI STAGIONE</h4>\r\n    <ul>\r\n      <li>Arancia, carote e mela</li>\r\n      <li>Mela, carote e zenzero</li>\r\n      <li>Pompelmo rosa e mela</li>\r\n      <li>Mela, ananas e Fragola</li>\r\n      <li>Mela e pera</li>\r\n      <li>Pesca, mela e kiwi</li>\r\n      <li>Melone, uva e mela</li>\r\n      <li>Frullati di frutta fresca</li>\r\n    </ul>\r\n    <h4 class=\"subheader\">CAFFETTERIA</h4>\r\n        <ul>\r\n          <li>Caffe, capuccino, marocchino, etc.</li>\r\n        </ul>\r\n    <h4 class=\"subheader\">YOGURT FROZEN</h4>\r\n        <ul>\r\n          <li>Al naturale</li>\r\n          <li>Con frutta</li>\r\n          <li>Con nutella</li>\r\n          <li>Con muesli</li>\r\n          <li>Con Brownie a strati</li>\r\n        </ul>\r\n            <h4 class=\"subheader\">COOKIE ICE COFFEE</h4>\r\n        <ul>\r\n          <li>Gelato al fior di latte con cookie</li>\r\n		  <li>spezzettato e innaffiato di caffè </li>\r\n        </ul>\r\n  </div>\r\n  \r\n   <div class=\"large-1 columns\">\r\n    <h4 class=\"subheader\">BIRRE ARTIGIANALI BRITISH</h4>\r\n    <ul>\r\n      <li>FREEDOM</li>\r\n      <li>PIONEER</li>\r\n      <li>STOUT</li>\r\n      <li>ORGANIC LAGER &#40; Bio &#41;</li>\r\n      <li>ORGANIC DARK LAGER &#40; Bio &#40;</li>\r\n     </ul>\r\n   	    <h4 class=\"subheader\">SANDWICHES 3 STRATI</h4>\r\n    <ul>\r\n      <li>Pane Integrale, Cereali, Curry </li>\r\n      <li>Spalmato con burro</li>\r\n    </ul>\r\n         <h4 class=\"subheader\">TRAMEZZINI 3 STRATI</h4>\r\n    <ul>\r\n      <li>Insalatona</li>\r\n      <li>Misticanze, verdure di stagione,</li>\r\n      <li>mozzarella e tonno</li>\r\n      <p>\r\n        \r\n      </p>\r\n      <li>Extra: Insalate, piatto del giorno</li>\r\n      <li>e zuppe del giorno</li>\r\n    </ul>\r\n  </div>\r\n  \r\n  <div class=\"large-1 columns\"></div>\r\n  \r\n</div>',2,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" footer\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(89,57,'left-home','','<img class=\"left-home\" src=\"images/twirl-L.png\" alt=\"\" />',3,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(90,58,'right-home','','<img class=\"right-home\" src=\"images/twirl.png\" alt=\"\" />',1,'right',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(91,59,'bottoni','','<div class=\"bottoni\">\r\n  <a href=\"index.php/the-menu\"><img src=\"images/the_menu.png\" alt=\"\" /></a>\r\n  <a href=\"index.php/sunday-brunch\"><img src=\"images/Sunday_brunch.png\" alt=\"\" /></a>\r\n   <a href=\"index.php/afternoon-tea\"><img src=\"images/afeternoon_tea.png\" alt=\"\" /></a>\r\n</div>',1,'below',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(92,60,'social','','<center>\r\n<img src=\"images/social_fake.png\" alt=\"\" />\r\n</center>',4,'below',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(93,62,'left-brunch','','<img src=\"images/Sunday_brunch.png\" alt=\"\" />',4,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" side_bottone\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(95,66,'left-gluten','','<img src=\"images/gluten_free.png\" alt=\"\" />',5,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" side_bottone\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(96,67,'left-tea','','<img src=\"images/afeternoon_tea.png\" alt=\"\" />',6,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" side_bottone\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(97,70,'contatto','','',1,'contatto',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_foxcontact',1,0,'{\"to_address\":\"dummy@address.com,another@address.com\",\"cc_address\":\"\",\"bcc_address\":\"\",\"email_subject\":\"Information request from your website\",\"jmessenger_user\":\"0\",\"page_subheading\":\"Contatto\",\"form__width\":{\"text\":\"\",\"select\":\"auto\"},\"customhtml0\":\"If you want more information fill in this form. You will be contacted as soon as possible.<br \\/>Please fill in all <b>required fields<\\/b>.\",\"customhtml0display\":\"1\",\"customhtml0order\":\"-1000\",\"customhtml1\":\"By submitting this form, you accept our privacy policy.\",\"customhtml1display\":\"1\",\"customhtml1order\":\"1000\",\"labelsdisplay\":\"0\",\"form_layout\":\"stacked\",\"labels__width\":{\"text\":\"230\",\"select\":\"px\"},\"sender0\":\"Your name\",\"sender0display\":\"2\",\"sender0order\":\"5\",\"sender1\":\"Your email\",\"sender1display\":\"2\",\"sender1order\":\"10\",\"sender1isemail\":\"1\",\"text0\":\"Phone number\",\"text0display\":\"1\",\"text0order\":\"15\",\"text1\":\"\",\"text1display\":\"0\",\"text1order\":\"20\",\"text2\":\"\",\"text2display\":\"0\",\"text2order\":\"25\",\"text3\":\"\",\"text3display\":\"0\",\"text3order\":\"30\",\"text4\":\"\",\"text4display\":\"0\",\"text4order\":\"35\",\"text5\":\"\",\"text5display\":\"0\",\"text5order\":\"40\",\"text6\":\"\",\"text6display\":\"0\",\"text6order\":\"45\",\"text7\":\"\",\"text7display\":\"0\",\"text7order\":\"50\",\"text8\":\"\",\"text8display\":\"0\",\"text8order\":\"55\",\"text9\":\"\",\"text9display\":\"0\",\"text9order\":\"60\",\"text__width\":{\"text\":\"100\",\"select\":\"%\"},\"dropdown0\":\"How did you hear about us?\",\"dropdown0display\":\"1\",\"dropdown0values\":\"Internet search,Recommended by a friend,Positive media review\",\"dropdown0order\":\"65\",\"dropdown1\":\"\",\"dropdown1display\":\"0\",\"dropdown1values\":\"\",\"dropdown1order\":\"70\",\"dropdown2\":\"\",\"dropdown2display\":\"0\",\"dropdown2values\":\"\",\"dropdown2order\":\"75\",\"dropdown__width\":{\"text\":\"100\",\"select\":\"%\"},\"textarea0\":\"Describe your request\",\"textarea0display\":\"1\",\"textarea0order\":\"80\",\"textarea1\":\"\",\"textarea1display\":\"0\",\"textarea1order\":\"85\",\"textarea2\":\"\",\"textarea2display\":\"0\",\"textarea2order\":\"90\",\"textarea__width\":{\"text\":\"100\",\"select\":\"%\"},\"textarea__height\":{\"text\":\"180\",\"select\":\"px\"},\"checkbox0\":\"I agree with your terms and conditions\",\"checkbox0display\":\"1\",\"checkbox0order\":\"95\",\"checkbox1\":\"\",\"checkbox1display\":\"0\",\"checkbox1order\":\"100\",\"checkbox2\":\"\",\"checkbox2display\":\"0\",\"checkbox2order\":\"105\",\"checkbox3\":\"\",\"checkbox3display\":\"0\",\"checkbox3order\":\"110\",\"checkbox4\":\"\",\"checkbox4display\":\"0\",\"checkbox4order\":\"115\",\"uploaddisplay\":\"0\",\"uploadmethod\":\"1\",\"upload\":\"Select files to attach\",\"uploadmax_file_size\":\"102400\",\"upload_filter\":\"1\",\"upload_audio\":\"0\",\"upload_video\":\"0\",\"upload_images\":\"1\",\"upload_documents\":\"1\",\"upload_archives\":\"1\",\"submittext\":\"Submit\",\"submittype\":\"0\",\"submiticon\":\"-1\",\"submitimage\":\"-1\",\"resetbutton\":\"0\",\"resettext\":\"Reset\",\"resettype\":\"0\",\"reseticon\":\"-1\",\"resetimage\":\"-1\",\"email_sent_action\":\"0\",\"email_sent_text\":\"Your message has been received. We will contact you in a few days.\",\"email_sent_textdisplay\":\"1\",\"email_sent_page\":\"101\",\"copy_to_submitter\":\"1\",\"email_copy_subject\":\"Thank you for contacting us\",\"email_copy_text\":\"Your message has been received. We will contact you in a few days.\",\"email_copy_summary\":\"0\",\"spam_check\":\"1\",\"spam_words\":\"www,http,url=,href=,link=,.txt,shit,fuck\",\"spam_detected_text\":\"We are sorry, but it seems that your message contains unwanted advertising therefore it <b>has been blocked<\\/b>.<br \\/>Please try again avoiding words such as <i>www, http,<\\/i> and similar.\",\"spam_detected_textdisplay\":\"1\",\"stdcaptchadisplay\":\"0\",\"stdcaptcha\":\"Security code\",\"stdcaptchatype\":\"0\",\"stdcaptcha_length\":\"5\",\"stdcaptchawidth\":\"150\",\"stdcaptchaheight\":\"75\",\"stdcaptchafont\":\"-1\",\"stdcaptchafontmin\":\"14\",\"stdcaptchafontmax\":\"20\",\"stdcaptchaangle\":\"20\",\"stdcaptcha_backgroundcolor\":\"#ffffff\",\"stdcaptcha_textcolor\":\"#191919\",\"stdcaptcha_disturbcolor\":\"#c8c8c8\",\"layout\":\"_:default\",\"css\":\"bootstrap.css\",\"moduleclass_sfx\":\"\",\"acymailing\":\"0\",\"acymailing_checkboxes\":\"hidden|hidden\",\"acymailing_auto_checked\":\"0\",\"jnews\":\"0\",\"jnews_checkboxes\":\"hidden|hidden\",\"jnews_auto_checked\":\"0\",\"othernewsletters\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(98,74,'brands','','<div class=\"brands\">\r\n<img src=\"images/logos_teapigs.png\" alt=\"\" />\r\n<img src=\"images/logos_whittard_small.png\" alt=\"\" />\r\n<img class=\"bigger\" src=\"images/logos_spoon_small.png\" alt=\"\" />\r\n  <img src=\"images/logos_acre.png\" alt=\"\" />\r\n  <img src=\"images/logos_freedom.png\" alt=\"\" />\r\n  <img src=\"images/logos_stoats.png\" alt=\"\" />\r\n  <a href=\"https://www.facebook.com/pages/Muffin-Cakes-Tea-Room/195613330459131\" target=\"_blank\"><img class=\"bigger\" src=\"images/logos_facebook_small.png\" alt=\"\" /></a>\r\n</div>',3,'below',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(99,75,'ruler','','<hr/>',2,'below',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(100,76,'footer strip','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" footer_strip\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(101,79,'left-menu','','<img src=\"images/the_menu.png\" alt=\"\" />',2,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" side_bottone\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(102,80,'credits','','<p id=\"credits\">Copyright &copy; Muffin&amp;Cakes sas - P.I. 01654770096 - Designed by  <a target=\"_blank\" href=\"http://www.teddynet.net\" title=\"Teddynet\">Teddynet snc</a> - Graphics by <a href=\"http://marcogarofalo.net/\" target=\"_blank\">Marco Garofalo</a></p>',3,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(103,81,'right','','<img src=\"images/twirl.png\" alt=\"\" />',1,'right',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(104,82,'left','','<img src=\"images/twirl-L.png\" alt=\"\" />',1,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
/*!40000 ALTER TABLE `reob7_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_modules_menu`
--

DROP TABLE IF EXISTS `reob7_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_modules_menu`
--

LOCK TABLES `reob7_modules_menu` WRITE;
/*!40000 ALTER TABLE `reob7_modules_menu` DISABLE KEYS */;
INSERT INTO `reob7_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0),(87,0),(88,0),(89,101),(90,101),(91,101),(92,0),(93,103),(95,105),(96,104),(97,106),(98,0),(99,0),(100,0),(101,109),(102,0),(103,-101),(104,-101);
/*!40000 ALTER TABLE `reob7_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_newsfeeds`
--

DROP TABLE IF EXISTS `reob7_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_newsfeeds`
--

LOCK TABLES `reob7_newsfeeds` WRITE;
/*!40000 ALTER TABLE `reob7_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_overrider`
--

DROP TABLE IF EXISTS `reob7_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_overrider`
--

LOCK TABLES `reob7_overrider` WRITE;
/*!40000 ALTER TABLE `reob7_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_postinstall_messages`
--

DROP TABLE IF EXISTS `reob7_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_postinstall_messages`
--

LOCK TABLES `reob7_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `reob7_postinstall_messages` DISABLE KEYS */;
INSERT INTO `reob7_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,700,'COM_CPANEL_MSG_EACCELERATOR_TITLE','COM_CPANEL_MSG_EACCELERATOR_BODY','COM_CPANEL_MSG_EACCELERATOR_BUTTON','com_cpanel',1,'action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_condition','3.2.0',1),(3,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),(4,700,'COM_CPANEL_MSG_PHPVERSION_TITLE','COM_CPANEL_MSG_PHPVERSION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/phpversion.php','admin_postinstall_phpversion_condition','3.2.2',1);
/*!40000 ALTER TABLE `reob7_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_redirect_links`
--

DROP TABLE IF EXISTS `reob7_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_redirect_links`
--

LOCK TABLES `reob7_redirect_links` WRITE;
/*!40000 ALTER TABLE `reob7_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_schemas`
--

DROP TABLE IF EXISTS `reob7_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_schemas`
--

LOCK TABLES `reob7_schemas` WRITE;
/*!40000 ALTER TABLE `reob7_schemas` DISABLE KEYS */;
INSERT INTO `reob7_schemas` VALUES (700,'3.2.3-2014-02-20'),(10004,'3.2.2');
/*!40000 ALTER TABLE `reob7_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_session`
--

DROP TABLE IF EXISTS `reob7_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_session`
--

LOCK TABLES `reob7_session` WRITE;
/*!40000 ALTER TABLE `reob7_session` DISABLE KEYS */;
INSERT INTO `reob7_session` VALUES ('oi1vt0r7np9qck8rs6ui2da5b2',0,1,'1409232775','__default|a:7:{s:15:\"session.counter\";i:23;s:19:\"session.timer.start\";i:1409229115;s:18:\"session.timer.last\";i:1409232718;s:17:\"session.timer.now\";i:1409232775;s:22:\"session.client.browser\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.94 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":24:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\\0\\0\\0_params\";O:9:\"JRegistry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
/*!40000 ALTER TABLE `reob7_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_tags`
--

DROP TABLE IF EXISTS `reob7_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_tags`
--

LOCK TABLES `reob7_tags` WRITE;
/*!40000 ALTER TABLE `reob7_tags` DISABLE KEYS */;
INSERT INTO `reob7_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `reob7_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_template_styles`
--

DROP TABLE IF EXISTS `reob7_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_template_styles`
--

LOCK TABLES `reob7_template_styles` WRITE;
/*!40000 ALTER TABLE `reob7_template_styles` DISABLE KEYS */;
INSERT INTO `reob7_template_styles` VALUES (4,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(7,'protostar',0,'0','protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}'),(9,'siegeengine2',0,'1','SiegeEngine2 - Default','{\"loadMoo\":\"0\",\"jQuery\":\"1\",\"jQueryOff\":\"0\",\"setWidth\":\"1000\",\"setGeneratorTag\":\"\",\"analytics\":\"UA-XXXXX-X\",\"topbarTitle\":\"SiegeEngine2\",\"customCSS\":\"\",\"rightwidth\":\"4\",\"leftwidth\":\"4\"}'),(10,'siegeengine2',0,'0','SiegeEngine2 - Menu','{\"loadMoo\":\"0\",\"jQuery\":\"1\",\"jQueryOff\":\"0\",\"setWidth\":\"1000\",\"setGeneratorTag\":\"\",\"analytics\":\"UA-XXXXX-X\",\"topbarTitle\":\"SiegeEngine2\",\"customCSS\":\"\",\"rightwidth\":\"3\",\"leftwidth\":\"3\"}');
/*!40000 ALTER TABLE `reob7_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_ucm_base`
--

DROP TABLE IF EXISTS `reob7_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_ucm_base`
--

LOCK TABLES `reob7_ucm_base` WRITE;
/*!40000 ALTER TABLE `reob7_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_ucm_content`
--

DROP TABLE IF EXISTS `reob7_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_ucm_content`
--

LOCK TABLES `reob7_ucm_content` WRITE;
/*!40000 ALTER TABLE `reob7_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_ucm_history`
--

DROP TABLE IF EXISTS `reob7_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_ucm_history`
--

LOCK TABLES `reob7_ucm_history` WRITE;
/*!40000 ALTER TABLE `reob7_ucm_history` DISABLE KEYS */;
INSERT INTO `reob7_ucm_history` VALUES (1,1,1,'','2014-05-06 21:52:02',847,1637,'424b97b3684972340af8ace792275dfc1107a6b6','{\"id\":1,\"asset_id\":54,\"title\":\"Homepage\",\"alias\":\"homepage\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-06 21:52:02\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-05-06 21:52:02\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(2,1,1,'','2014-05-06 21:55:52',847,1676,'b4ed67f835e871979b1f471bf90ab2ca1c93bcda','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Homepage\",\"alias\":\"homepage\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-06 21:52:02\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-05-06 21:55:52\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-05-06 21:55:44\",\"publish_up\":\"2014-05-06 21:52:02\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"6\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(3,1,1,'','2014-05-06 23:02:28',847,1843,'1b35c910ce3034c899ee88d8a3222d15c95b247e','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Homepage\",\"alias\":\"homepage\",\"introtext\":\"<center>\\r\\n<p id=\\\"slogan\\\">\\r\\n  \\u00e9 l\'ora del t\\u00e9, <strong>si accomodi<\\/strong>\\r\\n  <\\/p>\\r\\n<img src=\\\"images\\/poltrona2.png\\\" alt=\\\"\\\" \\/>\\r\\n<\\/center>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-06 21:52:02\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-05-06 23:02:28\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-05-06 23:00:45\",\"publish_up\":\"2014-05-06 21:52:02\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"58\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(4,1,1,'','2014-05-07 01:39:13',847,1844,'a96933de6b00d6ac3ca129a7fadc65b173c41009','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Homepage\",\"alias\":\"homepage\",\"introtext\":\"<center>\\r\\n<p id=\\\"slogan\\\">\\r\\n  \\u00e9 l\'ora del t\\u00e9, <strong>si accomodi.<\\/strong>\\r\\n  <\\/p>\\r\\n<img src=\\\"images\\/poltrona2.png\\\" alt=\\\"\\\" \\/>\\r\\n<\\/center>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-06 21:52:02\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-05-07 01:39:13\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-05-07 01:39:04\",\"publish_up\":\"2014-05-06 21:52:02\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"89\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(10,2,1,'','2014-05-07 10:17:43',847,2311,'2ea93299c340f52952e6a15f0ba5ee3d0bc16a50','{\"id\":2,\"asset_id\":\"61\",\"title\":\"SUNDAY BRUNCH\",\"alias\":\"sunday-brunch\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<h6>\\r\\n  La colazione incotra il pranzo,<br \\/>\\r\\n  ogni prima domenica del mese.\\r\\n<\\/h6>\\r\\n<p>\\r\\nIl brunch e\\u0300 un pasto che consiste\\r\\nin una commistione di prima colazione e pranzo. Lo stesso termine riflette questa commistione: si tratta, infatti di una forma sincopata tra\\r\\n\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffcgli equivalenti termini inglesi, breakfast e lunch.\\r\\n<\\/p>\\r\\n<img src=\\\"images\\/sunday_brunch.jpeg\\\" alt=\\\"\\\" \\/>\\r\\n<p>\\r\\nPuoi scegliere tra 3 menu: Vegetariano, di Carne o di pesce.  \\r\\n<\\/p>\\r\\n<a href=\\\"#\\\" class=\\\"tiny button\\\">Prenota<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-07 10:06:48\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-05-07 10:17:43\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-05-07 10:15:32\",\"publish_up\":\"2014-05-07 10:06:48\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"7\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(11,2,1,'','2014-05-07 10:18:01',847,2321,'261689d9c86b2c0c115f962c5f10aad25761142b','{\"id\":2,\"asset_id\":\"61\",\"title\":\"SUNDAY BRUNCH\",\"alias\":\"sunday-brunch\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<h6>\\r\\n  La colazione incotra il pranzo,<br \\/>\\r\\n  ogni prima domenica del mese.\\r\\n<\\/h6>\\r\\n<p>\\r\\nIl brunch e\\u0300 un pasto che consiste\\r\\nin una commistione di prima colazione e pranzo. Lo stesso termine riflette questa commistione: si tratta, infatti di una forma sincopata tra\\r\\n\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffcgli equivalenti termini inglesi, breakfast e lunch.\\r\\n<\\/p>\\r\\n<img src=\\\"images\\/sunday_brunch.jpeg\\\" alt=\\\"\\\" \\/>\\r\\n<p>\\r\\nPuoi scegliere tra 3 menu: Vegetariano, di Carne o di pesce.  \\r\\n<\\/p>\\r\\n<a href=\\\"#\\\" class=\\\"tiny button secondary\\\">Prenota<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-07 10:06:48\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-05-07 10:18:01\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-05-07 10:17:43\",\"publish_up\":\"2014-05-07 10:06:48\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"8\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(12,2,1,'','2014-05-07 10:18:17',847,2346,'75f7404a8f07cad3f6ded43bbadf239f5e618fd0','{\"id\":2,\"asset_id\":\"61\",\"title\":\"SUNDAY BRUNCH\",\"alias\":\"sunday-brunch\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<h6>\\r\\n  La colazione incotra il pranzo,<br \\/>\\r\\n  ogni prima domenica del mese.\\r\\n<\\/h6>\\r\\n<p>\\r\\nIl brunch e\\u0300 un pasto che consiste\\r\\nin una commistione di prima colazione e pranzo. Lo stesso termine riflette questa commistione: si tratta, infatti di una forma sincopata tra\\r\\n\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffcgli equivalenti termini inglesi, breakfast e lunch.\\r\\n<\\/p>\\r\\n<img src=\\\"images\\/sunday_brunch.jpeg\\\" alt=\\\"\\\" \\/>\\r\\n<p>\\r\\nPuoi scegliere tra 3 menu: Vegetariano, di Carne o di pesce.  \\r\\n<\\/p>\\r\\n  <a style=\\\"float:right;\\\" href=\\\"#\\\" class=\\\"tiny button secondary\\\">Prenota<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-07 10:06:48\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-05-07 10:18:17\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-05-07 10:18:01\",\"publish_up\":\"2014-05-07 10:06:48\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"9\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(13,2,1,'','2014-05-07 10:47:32',847,2393,'f787f158ce7b392b33f79711005843910a3f9b46','{\"id\":2,\"asset_id\":\"61\",\"title\":\"SUNDAY BRUNCH\",\"alias\":\"sunday-brunch\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<h6>\\r\\n  La colazione incotra il pranzo,<br \\/>\\r\\n  ogni prima domenica del mese.\\r\\n<\\/h6>\\r\\n<p>\\r\\nIl brunch e\\u0300 un pasto che consiste\\r\\nin una commistione di prima colazione e pranzo. Lo stesso termine riflette questa commistione: si tratta, infatti di una forma sincopata tra\\r\\n\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffcgli equivalenti termini inglesi, breakfast e lunch.\\r\\n<\\/p>\\r\\n<img src=\\\"images\\/sunday_brunch.jpeg\\\" alt=\\\"\\\" \\/>\\r\\n<p>\\r\\nPuoi scegliere tra 3 menu: Vegetariano, di Carne o di pesce.  \\r\\n<\\/p>\\r\\n  <a style=\\\"float:right;\\\" href=\\\"index.php?option=com_foxcontact&view=foxcontact\\\" class=\\\"tiny button secondary\\\">Prenota<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-07 10:06:48\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-05-07 10:47:32\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-05-07 10:47:26\",\"publish_up\":\"2014-05-07 10:06:48\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":9,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"22\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(14,2,1,'','2014-05-07 10:49:38',847,2380,'cebd49a3efe7875d927cf5cff5319eb7e4de5c46','{\"id\":2,\"asset_id\":\"61\",\"title\":\"SUNDAY BRUNCH\",\"alias\":\"sunday-brunch\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<h6>\\r\\n  La colazione incotra il pranzo,<br \\/>\\r\\n  ogni prima domenica del mese.\\r\\n<\\/h6>\\r\\n<p>\\r\\nIl brunch e\\u0300 un pasto che consiste\\r\\nin una commistione di prima colazione e pranzo. Lo stesso termine riflette questa commistione: si tratta, infatti di una forma sincopata tra\\r\\n\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffcgli equivalenti termini inglesi, breakfast e lunch.\\r\\n<\\/p>\\r\\n<img src=\\\"images\\/sunday_brunch.jpeg\\\" alt=\\\"\\\" \\/>\\r\\n<p>\\r\\nPuoi scegliere tra 3 menu: Vegetariano, di Carne o di pesce.  \\r\\n<\\/p>\\r\\n  <a style=\\\"float:right;\\\" href=\\\"index.php\\/sunday-brunch\\/prenota\\\" class=\\\"tiny button secondary\\\">Prenota<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-07 10:06:48\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-05-07 10:49:38\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-05-07 10:49:26\",\"publish_up\":\"2014-05-07 10:06:48\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":10,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"23\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(15,8,6,'','2014-05-07 10:57:03',847,531,'8a2e111798c199e266be4a221e0926c96fcf931c','{\"id\":8,\"asset_id\":65,\"parent_id\":\"1\",\"lft\":\"13\",\"rgt\":14,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"appena sfornati\",\"alias\":\"appena-sfornati\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"847\",\"created_time\":\"2014-05-07 10:57:03\",\"modified_user_id\":null,\"modified_time\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(16,3,1,'','2014-05-07 11:00:15',847,1647,'b86f231c68fad91010e75363ce57695fd2d25112','{\"id\":3,\"asset_id\":68,\"title\":\"AFTERNOON TEA\",\"alias\":\"afternoon-tea\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-07 11:00:15\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-05-07 11:00:15\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(17,4,1,'','2014-05-07 11:04:40',847,1933,'c1745bcb9c3702479e312e93b62d5e6a49b71470','{\"id\":4,\"asset_id\":69,\"title\":\"Muffin mandorle e pistacchio\",\"alias\":\"muffin-mandorle-e-pistacchio\",\"introtext\":\"<img src=\\\"images\\/muffin_sfornati.png\\\" alt=\\\"\\\" \\/>\\r\\n<p>\\r\\n  Testo breve che racconti\\r\\nla particolarita\\u0300 del giorno o semplicemente informi su uno dei tanti prodotti. La stessa cosa, se possibile dovrebbe essere pubblicata su Facebook.\\r\\n<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2014-05-07 11:04:40\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-05-07 11:04:40\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(18,5,1,'','2014-08-12 08:59:39',847,1660,'8fd8f805f110a873c5432b2079ffc2ca6dc5fb0f','{\"id\":5,\"asset_id\":71,\"title\":\"contatto\",\"alias\":\"contatto\",\"introtext\":\"{loadposition contatto}\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-12 08:59:39\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-08-12 08:59:39\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(19,5,1,'','2014-08-12 09:01:07',847,1708,'6ab4e1c8204ee3813cffb707733963dc3449f728','{\"id\":5,\"asset_id\":\"71\",\"title\":\"contatto\",\"alias\":\"contatto\",\"introtext\":\"{loadposition contatto}\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-12 08:59:39\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-12 09:01:07\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-12 08:59:39\",\"publish_up\":\"2014-08-12 08:59:39\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(20,6,1,'','2014-08-13 10:54:53',847,2346,'d66fd98e1b609b21507cbb4972553f8627e22580','{\"id\":6,\"asset_id\":72,\"title\":\"SUNDAY BRUNCH (2)\",\"alias\":\"sunday-brunch-2\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<h6>\\r\\n  La colazione incotra il pranzo,<br \\/>\\r\\n  ogni prima domenica del mese.\\r\\n<\\/h6>\\r\\n<p>\\r\\nIl brunch e\\u0300 un pasto che consiste\\r\\nin una commistione di prima colazione e pranzo. Lo stesso termine riflette questa commistione: si tratta, infatti di una forma sincopata tra\\r\\n\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffcgli equivalenti termini inglesi, breakfast e lunch.\\r\\n<\\/p>\\r\\n<img src=\\\"images\\/sunday_brunch.jpeg\\\" alt=\\\"\\\" \\/>\\r\\n<p>\\r\\nPuoi scegliere tra 3 menu: Vegetariano, di Carne o di pesce.  \\r\\n<\\/p>\\r\\n  <a style=\\\"float:right;\\\" href=\\\"index.php\\/sunday-brunch\\/prenota\\\" class=\\\"tiny button secondary\\\">Prenota<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"2\",\"created\":\"2014-05-07 10:06:48\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-05-07 10:49:38\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-05-07 10:06:48\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(21,6,1,'','2014-08-13 10:55:52',847,2380,'f54cdd63124b22ef8a0f41ad9fa014b06b5c834c','{\"id\":6,\"asset_id\":\"72\",\"title\":\"AFTERNOON TEA1\",\"alias\":\"afternoon-tea1\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<h6>\\r\\n  La colazione incotra il pranzo,<br \\/>\\r\\n  ogni prima domenica del mese.\\r\\n<\\/h6>\\r\\n<p>\\r\\nIl brunch e\\u0300 un pasto che consiste\\r\\nin una commistione di prima colazione e pranzo. Lo stesso termine riflette questa commistione: si tratta, infatti di una forma sincopata tra\\r\\n\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffcgli equivalenti termini inglesi, breakfast e lunch.\\r\\n<\\/p>\\r\\n<img src=\\\"images\\/sunday_brunch.jpeg\\\" alt=\\\"\\\" \\/>\\r\\n<p>\\r\\nPuoi scegliere tra 3 menu: Vegetariano, di Carne o di pesce.  \\r\\n<\\/p>\\r\\n  <a style=\\\"float:right;\\\" href=\\\"index.php\\/sunday-brunch\\/prenota\\\" class=\\\"tiny button secondary\\\">Prenota<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-07 10:06:48\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-13 10:55:52\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-13 10:54:53\",\"publish_up\":\"2014-05-07 10:06:48\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(22,3,1,'','2014-08-13 10:56:43',847,2379,'42e306f76c97961e34a51b1b7b519b2a344b9979','{\"id\":3,\"asset_id\":\"68\",\"title\":\"AFTERNOON TEA\",\"alias\":\"afternoon-tea\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<h6>\\r\\n  La colazione incotra il pranzo,<br \\/>\\r\\n  ogni prima domenica del mese.\\r\\n<\\/h6>\\r\\n<p>\\r\\nIl brunch e\\u0300 un pasto che consiste\\r\\nin una commistione di prima colazione e pranzo. Lo stesso termine riflette questa commistione: si tratta, infatti di una forma sincopata tra\\r\\n\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffcgli equivalenti termini inglesi, breakfast e lunch.\\r\\n<\\/p>\\r\\n<img src=\\\"images\\/sunday_brunch.jpeg\\\" alt=\\\"\\\" \\/>\\r\\n<p>\\r\\nPuoi scegliere tra 3 menu: Vegetariano, di Carne o di pesce.  \\r\\n<\\/p>\\r\\n  <a style=\\\"float:right;\\\" href=\\\"index.php\\/sunday-brunch\\/prenota\\\" class=\\\"tiny button secondary\\\">Prenota<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-07 11:00:15\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-13 10:56:43\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-13 10:56:38\",\"publish_up\":\"2014-05-07 11:00:15\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"23\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(23,7,1,'','2014-08-13 10:57:59',847,2330,'a031f2bdca6ad210c2f02da4736a4b9edd42ca1a','{\"id\":7,\"asset_id\":73,\"title\":\"TEA ROOM\",\"alias\":\"tea-room\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<h6>\\r\\n  La colazione incotra il pranzo,<br \\/>\\r\\n  ogni prima domenica del mese.\\r\\n<\\/h6>\\r\\n<p>\\r\\nIl brunch e\\u0300 un pasto che consiste\\r\\nin una commistione di prima colazione e pranzo. Lo stesso termine riflette questa commistione: si tratta, infatti di una forma sincopata tra\\r\\n\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffcgli equivalenti termini inglesi, breakfast e lunch.\\r\\n<\\/p>\\r\\n<img src=\\\"images\\/sunday_brunch.jpeg\\\" alt=\\\"\\\" \\/>\\r\\n<p>\\r\\nPuoi scegliere tra 3 menu: Vegetariano, di Carne o di pesce.  \\r\\n<\\/p>\\r\\n  <a style=\\\"float:right;\\\" href=\\\"index.php\\/sunday-brunch\\/prenota\\\" class=\\\"tiny button secondary\\\">Prenota<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-13 10:57:59\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-08-13 10:57:59\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(24,1,1,'','2014-08-22 22:39:21',847,1856,'051af987aa1586ced5a1002df6ae32de76a7fb62','{\"id\":1,\"asset_id\":\"54\",\"title\":\"Homepage\",\"alias\":\"homepage\",\"introtext\":\"<center>\\r\\n<p id=\\\"slogan\\\">\\r\\n  \\u00e9 l\'ora del t\\u00e9, <strong>si accomodi.<\\/strong>\\r\\n  <\\/p>\\r\\n<img src=\\\"images\\/poltrona_trasparente.png\\\" alt=\\\"\\\" \\/>\\r\\n<\\/center>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-06 21:52:02\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-22 22:39:21\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-22 22:38:18\",\"publish_up\":\"2014-05-06 21:52:02\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"4\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"231\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(25,7,1,'','2014-08-23 00:51:04',847,2327,'1453595e7b82d2f5b8e5f497440c330ef648f27b','{\"id\":7,\"asset_id\":\"73\",\"title\":\"TEA ROOM\",\"alias\":\"tea-room\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<p>\\r\\n  Muffin&amp;Cakes&reg; nasce come una \\r\\npiccola bottega di dolci anglosassoni sviluppando in seguito il progetto anche come Tearoom. Vuole essere un posto accogliente dove poter sostare per la colazione o la merenda, passando anche per un \\\"light lunch\\\" oppure semplicemente afferrare  al volo uno dei nostri tantissimi dolci.\\r\\n<\\/p>\\r\\n<img src=\\\"images\\/tea_room_and_more_foto.jpeg\\\" alt=\\\"\\\" \\/>\\r\\n<p>\\r\\nPuoi scegliere tra 3 menu: Vegetariano, di Carne o di pesce.  \\r\\n<\\/p>\\r\\n  <a style=\\\"float:right;\\\" href=\\\"index.php\\/sunday-brunch\\/prenota\\\" class=\\\"\\\">Guarda l\\u2019ultimo men\\u00f9<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-13 10:57:59\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 00:51:04\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 00:46:59\",\"publish_up\":\"2014-08-13 10:57:59\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"63\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(26,7,1,'','2014-08-23 00:51:21',847,2326,'f724c899fa77fb2d27f2975815e963096066c93f','{\"id\":7,\"asset_id\":\"73\",\"title\":\"TEA ROOM\",\"alias\":\"tea-room\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<p>\\r\\n  Muffin&amp;Cakes&reg; nasce come una \\r\\npiccola bottega di dolci anglosassoni sviluppando in seguito il progetto anche come Tearoom. Vuole essere un posto accogliente dove poter sostare per la colazione o la merenda, passando anche per un \\\"light lunch\\\" oppure semplicemente afferrare  al volo uno dei nostri tantissimi dolci.\\r\\n<\\/p>\\r\\n<img src=\\\"images\\/tea_room_and_more_foto.png\\\" alt=\\\"\\\" \\/>\\r\\n<p>\\r\\nPuoi scegliere tra 3 menu: Vegetariano, di Carne o di pesce.  \\r\\n<\\/p>\\r\\n  <a style=\\\"float:right;\\\" href=\\\"index.php\\/sunday-brunch\\/prenota\\\" class=\\\"\\\">Guarda l\\u2019ultimo men\\u00f9<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-13 10:57:59\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 00:51:21\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 00:51:04\",\"publish_up\":\"2014-08-13 10:57:59\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"63\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(27,7,1,'','2014-08-23 00:52:22',847,2241,'b1cfe89ce0bd758ef0b19ff609e227b214becf99','{\"id\":7,\"asset_id\":\"73\",\"title\":\"TEA ROOM\",\"alias\":\"tea-room\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<p>\\r\\n  Muffin&amp;Cakes&reg; nasce come una \\r\\n<b>piccola bottega di dolci anglosassoni<\\/b> sviluppando in seguito il progetto anche come Tearoom. Vuole essere un posto accogliente dove poter sostare per la colazione o la merenda, passando anche per un \\\"light lunch\\\" oppure semplicemente afferrare  al volo uno dei nostri tantissimi dolci.\\r\\n<\\/p>\\r\\n<img src=\\\"images\\/tea_room_and_more_foto.png\\\" alt=\\\"\\\" \\/>\\r\\n  <a style=\\\"float:right;\\\" href=\\\"index.php\\/sunday-brunch\\/prenota\\\" class=\\\"\\\">Guarda il men\\u00f9<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-13 10:57:59\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 00:52:22\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 00:51:21\",\"publish_up\":\"2014-08-13 10:57:59\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"64\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(28,7,1,'','2014-08-23 00:52:47',847,2269,'c6a484a8b04b55e11247e7455323e11b819b1d61','{\"id\":7,\"asset_id\":\"73\",\"title\":\"TEA ROOM\",\"alias\":\"tea-room\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<p>\\r\\n  Muffin&amp;Cakes&reg; nasce come una \\r\\n<b>piccola bottega di dolci anglosassoni<\\/b> sviluppando in seguito il progetto anche come Tearoom. Vuole essere un posto accogliente dove poter sostare per la colazione o la merenda, passando anche per un \\\"light lunch\\\" oppure semplicemente afferrare  al volo uno dei nostri tantissimi dolci.\\r\\n<\\/p>\\r\\n  <p>\\r\\n    \\r\\n  <\\/p>\\r\\n<img src=\\\"images\\/tea_room_and_more_foto.png\\\" alt=\\\"\\\" \\/>\\r\\n  <a style=\\\"float:right;\\\" href=\\\"index.php\\/sunday-brunch\\/prenota\\\" class=\\\"\\\">Guarda il men\\u00f9<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-13 10:57:59\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 00:52:47\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 00:52:22\",\"publish_up\":\"2014-08-13 10:57:59\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"65\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(29,7,1,'','2014-08-23 00:53:05',847,2275,'3947996b01103395576b2084910a6d0de0948e6a','{\"id\":7,\"asset_id\":\"73\",\"title\":\"TEA ROOM\",\"alias\":\"tea-room\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<p>\\r\\n  Muffin&amp;Cakes&reg; nasce come una \\r\\n<b>piccola bottega di dolci anglosassoni<\\/b> sviluppando in seguito il progetto anche come Tearoom. Vuole essere un posto accogliente dove poter sostare per la colazione o la merenda, passando anche per un \\\"light lunch\\\" oppure semplicemente afferrare  al volo uno dei nostri tantissimi dolci.\\r\\n<\\/p>\\r\\n\\r\\n<img src=\\\"images\\/tea_room_and_more_foto.png\\\" alt=\\\"\\\" \\/>\\r\\n    <p>\\r\\n    \\r\\n  <\\/p>\\r\\n  <a style=\\\"float:right;\\\" href=\\\"index.php\\/sunday-brunch\\/prenota\\\" class=\\\"\\\">Guarda il men\\u00f9<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-13 10:57:59\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 00:53:05\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 00:52:47\",\"publish_up\":\"2014-08-13 10:57:59\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"66\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(30,7,1,'','2014-08-23 00:53:24',847,2252,'af8bd81e909c9b5508a32370c1cfb54f4b586879','{\"id\":7,\"asset_id\":\"73\",\"title\":\"TEA ROOM\",\"alias\":\"tea-room\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<p>\\r\\n  Muffin&amp;Cakes&reg; nasce come una \\r\\n<b>piccola bottega di dolci anglosassoni<\\/b> sviluppando in seguito il progetto anche come Tearoom. Vuole essere un posto accogliente dove poter sostare per la colazione o la merenda, passando anche per un \\\"light lunch\\\" oppure semplicemente afferrare  al volo uno dei nostri tantissimi dolci.\\r\\n<\\/p>\\r\\n\\r\\n<img src=\\\"images\\/tea_room_and_more_foto.png\\\" alt=\\\"\\\" \\/>\\r\\n    <p>\\r\\n    \\r\\n  <\\/p>\\r\\n  <a href=\\\"index.php\\/sunday-brunch\\/prenota\\\" class=\\\"\\\">Guarda il men\\u00f9<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-13 10:57:59\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 00:53:24\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 00:53:05\",\"publish_up\":\"2014-08-13 10:57:59\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"67\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(31,2,1,'','2014-08-23 00:58:55',847,2441,'5baa18e0d48f5030573c0907f6e128aadf3c0396','{\"id\":2,\"asset_id\":\"61\",\"title\":\"SUNDAY BRUNCH\",\"alias\":\"sunday-brunch\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<h6>\\r\\n  La colazione incotra il pranzo,<br \\/>\\r\\n  ogni prima domenica del mese.\\r\\n<\\/h6>\\r\\n<p>\\r\\nIl brunch e\\u0300 un pasto che consiste\\r\\nin una commistione di prima colazione e pranzo. Lo stesso termine riflette questa commistione: si tratta, infatti di una forma sincopata tra\\r\\n\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffcgli equivalenti termini inglesi, breakfast e lunch.\\r\\n<\\/p>\\r\\n<img src=\\\"images\\/brunch_foto.png\\\" alt=\\\"\\\" \\/>\\r\\n<p>\\r\\nPuoi scegliere tra 3 menu: Vegetariano, di Carne o di pesce.  \\r\\n<\\/p>\\r\\n  <a href=\\\"index.php\\/menu\\\">Guarda l\'ultimo men\\u00fa<\\/a>\\r\\n  <a style=\\\"float:right;\\\" href=\\\"index.php\\/sunday-brunch\\/prenota\\\" class=\\\"tiny button secondary\\\">Prenota<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-07 10:06:48\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 00:58:55\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 00:54:19\",\"publish_up\":\"2014-05-07 10:06:48\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":11,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"88\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(32,2,1,'','2014-08-23 00:59:22',847,2469,'966998038dfd82afa6cb48bcf2526d9202af6435','{\"id\":2,\"asset_id\":\"61\",\"title\":\"SUNDAY BRUNCH\",\"alias\":\"sunday-brunch\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<h6>\\r\\n  La colazione incotra il pranzo,<br \\/>\\r\\n  ogni prima domenica del mese.\\r\\n<\\/h6>\\r\\n<p>\\r\\nIl brunch e\\u0300 un pasto che consiste\\r\\nin una commistione di prima colazione e pranzo. Lo stesso termine riflette questa commistione: si tratta, infatti di una forma sincopata tra\\r\\n\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffcgli equivalenti termini inglesi, breakfast e lunch.\\r\\n<\\/p>\\r\\n<img src=\\\"images\\/brunch_foto.png\\\" alt=\\\"\\\" \\/>\\r\\n<p>\\r\\nPuoi scegliere tra 3 menu: Vegetariano, di Carne o di pesce.  \\r\\n<\\/p>\\r\\n  <a href=\\\"index.php\\/menu\\\">Guarda l\'ultimo men\\u00fa<\\/a>\\r\\n  <p>\\r\\n    \\r\\n  <\\/p>\\r\\n  <a style=\\\"float:right;\\\" href=\\\"index.php\\/sunday-brunch\\/prenota\\\" class=\\\"tiny button secondary\\\">Prenota<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-07 10:06:48\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 00:59:22\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 00:58:55\",\"publish_up\":\"2014-05-07 10:06:48\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":12,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"89\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(33,3,1,'','2014-08-23 01:03:29',847,2176,'d4a6ed0a3e56c68e49613250c4bd3eca0f8a8b0c','{\"id\":3,\"asset_id\":\"68\",\"title\":\"AFTERNOON TEA\",\"alias\":\"afternoon-tea\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<h6>Un tipico appuntamento British<\\/h6>\\r\\n<p>\\r\\ndove poter apprezzare al meglio il t\\u00e9 accompagnato da piccoli bocconcini salati che incontrano dolcetti deliziosi il tutto seguito da un buon bicchiere di bollicine. Un rito imperdibile!\\r\\n<\\/p>\\r\\n<img src=\\\"images\\/afeternoon_tea_foto.png\\\" alt=\\\"\\\" \\/>\\r\\n<p>\\r\\n  \\r\\n<\\/p>\\r\\n  <a style=\\\"float:right;\\\" href=\\\"index.php\\/sunday-brunch\\/prenota\\\" class=\\\"tiny button secondary\\\">Prenota<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-07 11:00:15\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 01:03:29\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 01:01:30\",\"publish_up\":\"2014-05-07 11:00:15\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"56\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(34,8,1,'','2014-08-23 01:07:11',847,1643,'a17b9a4474e3778168ed6c4fdd20d34166b1dd91','{\"id\":8,\"asset_id\":77,\"title\":\"GLUTEN FREE\",\"alias\":\"gluten-free\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-23 01:07:11\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-08-23 01:07:11\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(35,8,1,'','2014-08-23 01:09:59',847,2180,'51616fccbf2bf61159d8e3ddaf12db73838f8f7f','{\"id\":8,\"asset_id\":\"77\",\"title\":\"GLUTEN FREE\",\"alias\":\"gluten-free\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<p><b>Il mercoled\\u00ec potrai trovare muffin e torte Gluten Free<\\/b>  e senza lattosio. Provale e non potrai pi\\u00f9 farne a meno! Inoltre, altri prodotti prodotti direttamente da UK come le patatine Creeps Ten Acre, senza glutine!\\r\\n<\\/p>\\r\\n\\r\\n<img src=\\\"images\\/tea_room_and_more_foto.png\\\" alt=\\\"\\\" \\/>\\r\\n    <p>\\r\\n  Alcuni prodotti li potrai trovare anche giovedi e venerdi,\\r\\nma il mercoledi li gustarai appena sfornati, ti aspettiamo!  \\r\\n  <\\/p>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-23 01:07:11\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 01:09:59\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 01:07:44\",\"publish_up\":\"2014-08-23 01:07:11\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(43,9,1,'','2014-08-23 02:23:22',847,5950,'ce833fd81b45c5dc2b7b0569dc9a65a6a1c9f905','{\"id\":9,\"asset_id\":\"78\",\"title\":\"THE MENU\",\"alias\":\"the-menu\",\"introtext\":\"<div class=\\\"row menu\\\">\\r\\n  <div class=\\\"large-6 columns\\\">\\r\\n    <h4 class=\\\"subheader\\\">DOLCI<\\/h4>\\r\\n    <ul>\\r\\n    <li>Cupcake<\\/li>\\r\\n\\t<li>Mini Cheesecake<\\/li>\\r\\n    <li>Brownie<\\/li>\\r\\n    <li>Brownie Cheesecake<\\/li>\\r\\n    <li>Cookie<\\/li>\\r\\n    <li>Frollini<\\/li>\\r\\n    <li>Scone<\\/li>\\r\\n    <li>Scone con marmellata<\\/li>\\r\\n    <li>Fetta di torta<\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n\\r\\n    \\r\\n    <h4 class=\\\"subheader\\\">T\\u00c9<\\/h4>\\r\\n    <ul>\\r\\n    <li><b>NERI<\\/b><\\/li>\\r\\n    <li>English breakfast<\\/li>\\r\\n    <li>Darjeling Classico<\\/li>\\r\\n    <li>Darjeling earl grey<\\/li>\\r\\n    <li>Fiocchi di cioccolato<\\/li>\\r\\n    <li>Chai<\\/li>\\r\\n    <li>Chilli Chai <\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li><b>ROSSI - senza caffeina<\\/b><\\/li>\\r\\n    <li>Rooibos classico<\\/li>\\r\\n    <li>Rooibos cannella<\\/li>\\r\\n    <li>Rooibos caramello<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n    <li><b>VERDI<\\/b><\\/li>\\r\\n    <li>Mao Feng classico<\\/li>\\r\\n    <li>Alla Menta<\\/li>\\r\\n    <li>Fiori di gelsomino<\\/li>\\r\\n    <li>Pop corn &#40; con riso tostato &#41;<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li><b>BIANCO<\\/b><\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n      <li><b>BLU<\\/b><\\/li>\\r\\n    <li>Oolong ting tung <\\/li>\\r\\n    <\\/ul>\\r\\n    <li><b>TISANE<\\/b><\\/li>\\r\\n      <ul>\\r\\n        <li>Menta<\\/li>\\r\\n        <li>Liquirizia &amp; menta<\\/li>\\r\\n        <li>Limone &amp; zenzero<\\/li>\\r\\n        <li>Erba limoncella<\\/li>\\r\\n        <li>Frutti rossi<\\/li>\\r\\n        <li>Yerba mate<\\/li>\\r\\n        <li>Camomilla<\\/li>\\r\\n      <\\/ul>\\r\\n    <h4 class=\\\"subheader\\\">SANDWICHES 3 STRATI<\\/h4>\\r\\n    <ul>\\r\\n      <li>Pane Integrale, Cereali, Curry <\\/li>\\r\\n      <li>Spalmato con burro<\\/li>\\r\\n    <\\/ul>\\r\\n         <h4 class=\\\"subheader\\\">TRAMEZZINI 3 STRATI<\\/h4>\\r\\n    <ul>\\r\\n      <li>Insalatona<\\/li>\\r\\n      <li>Misticanze, verdure di stagione,<\\/li>\\r\\n      <li>mozzarella e tonno<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li>Extra: Insalate, piatto del giorno<\\/li>\\r\\n      <li>e zuppe del giorno<\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n<\\/div>\\r\\n  \\r\\n      <div class=\\\"large-6 columns\\\">\\r\\n        <h4 class=\\\"subheader\\\">CIOCCOLATE<\\/h4>\\r\\n    <ul>\\r\\n    <li>FONDENTE  70% cacao<\\/li>\\r\\n\\t<li>al LATTE<\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Menta<\\/li>\\r\\n    <li>Peperoncino<\\/li>\\r\\n    <li>Lime e peperoncino<\\/li>\\r\\n    <li>Caramello<\\/li>\\r\\n    <li>Cannella<\\/li>\\r\\n    <li>Zenzero<\\/li>\\r\\n    <li>Rocky Road - biscottino &amp; marshmallows<\\/li>\\r\\n    <li>Arancia<\\/li>\\r\\n    <li>Banana &amp; toffee<\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li>BIANCHE<\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Fragola<\\/li>\\r\\n    <li>Limone &amp; Meringa<\\/li>\\r\\n    <li>Nocciola<\\/li>\\r\\n    <li>Creme brul\\u00e9e<\\/li>      \\r\\n    <\\/ul>\\r\\n        \\r\\n    <h4 class=\\\"subheader\\\">CENTRIFUGHE DI FRUTTA FRESCA DI STAGIONE<\\/h4>\\r\\n    <ul>\\r\\n      <li>Arancia, carote e mela<\\/li>\\r\\n      <li>Mela, carote e zenzero<\\/li>\\r\\n      <li>Pompelmo rosa e mela<\\/li>\\r\\n      <li>Mela, ananas e Fragola<\\/li>\\r\\n      <li>Mela e pera<\\/li>\\r\\n      <li>Pesca, mela e kiwi<\\/li>\\r\\n      <li>Melone, uva e mela<\\/li>\\r\\n      <li>Frullati di frutta fresca<\\/li>\\r\\n    <\\/ul>\\r\\n    <h4 class=\\\"subheader\\\">CAFFETTERIA<\\/h4>\\r\\n        <ul>\\r\\n          <li>Caffe, capuccino, marocchino, etc.<\\/li>\\r\\n        <\\/ul>\\r\\n    <h4 class=\\\"subheader\\\">YOGURT FROZEN<\\/h4>\\r\\n        <ul>\\r\\n          <li>Al naturale<\\/li>\\r\\n          <li>Con frutta<\\/li>\\r\\n          <li>Con nutella<\\/li>\\r\\n          <li>Con muesli<\\/li>\\r\\n          <li>Con Brownie a strati<\\/li>\\r\\n        <\\/ul>\\r\\n            <h4 class=\\\"subheader\\\">COOKIE ICE COFFEE<\\/h4>\\r\\n        <ul>\\r\\n          <li>Gelato al fior di latte con cookie<\\/li>\\r\\n\\t\\t  <li>spezzettato e innaffiato di caff\\u00e8 <\\/li>\\r\\n        <\\/ul>\\r\\n\\r\\n  \\r\\n\\r\\n    <h4 class=\\\"subheader\\\">BIRRE ARTIGIANALI BRITISH\\r\\nFREEDOM<\\/h4>\\r\\n    <ul>\\r\\n      <li>PIONEER<\\/li>\\r\\n      <li>STOUT<\\/li>\\r\\n      <li>ORGANIC LAGER &#40; Bio &#41;<\\/li>\\r\\n      <li>ORGANIC DARK LAGER &#40; Bio &#40;<\\/li>\\r\\n     <\\/ul>\\r\\n   \\t    \\r\\n  <\\/div>\\r\\n  \\r\\n  <div class=\\\"large-1 columns\\\"><\\/div>\\r\\n  \\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-23 01:15:32\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 02:23:22\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 02:18:11\",\"publish_up\":\"2014-08-23 01:15:32\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":9,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"34\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(44,9,1,'','2014-08-23 02:25:48',847,5956,'213a183e6b2a8baa0a40edbbc716bdabbd70aca6','{\"id\":9,\"asset_id\":\"78\",\"title\":\"THE MENU\",\"alias\":\"the-menu\",\"introtext\":\"<div class=\\\"row menu\\\">\\r\\n  <div class=\\\"large-6 columns\\\">\\r\\n    <h4 class=\\\"subheader\\\">DOLCI<\\/h4>\\r\\n    <ul>\\r\\n    <li>Cupcake<\\/li>\\r\\n\\t<li>Mini Cheesecake<\\/li>\\r\\n    <li>Brownie<\\/li>\\r\\n    <li>Brownie Cheesecake<\\/li>\\r\\n    <li>Cookie<\\/li>\\r\\n    <li>Frollini<\\/li>\\r\\n    <li>Scone<\\/li>\\r\\n    <li>Scone con marmellata<\\/li>\\r\\n    <li>Fetta di torta<\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n\\r\\n    \\r\\n    <h4 class=\\\"subheader\\\">T\\u00c9<\\/h4>\\r\\n    <ul>\\r\\n    <li><b>NERI<\\/b><\\/li>\\r\\n    <li>English breakfast<\\/li>\\r\\n    <li>Darjeling Classico<\\/li>\\r\\n    <li>Darjeling earl grey<\\/li>\\r\\n    <li>Fiocchi di cioccolato<\\/li>\\r\\n    <li>Chai<\\/li>\\r\\n    <li>Chilli Chai <\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li><b>ROSSI - senza caffeina<\\/b><\\/li>\\r\\n    <li>Rooibos classico<\\/li>\\r\\n    <li>Rooibos cannella<\\/li>\\r\\n    <li>Rooibos caramello<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n    <li><b>VERDI<\\/b><\\/li>\\r\\n    <li>Mao Feng classico<\\/li>\\r\\n    <li>Alla Menta<\\/li>\\r\\n    <li>Fiori di gelsomino<\\/li>\\r\\n    <li>Pop corn &#40; con riso tostato &#41;<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li><b>BIANCO<\\/b><\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n      <li><b>BLU<\\/b><\\/li>\\r\\n    <li>Oolong ting tung <\\/li>\\r\\n    <\\/ul>\\r\\n    <li><b>TISANE<\\/b><\\/li>\\r\\n      <ul>\\r\\n        <li>Menta<\\/li>\\r\\n        <li>Liquirizia &amp; menta<\\/li>\\r\\n        <li>Limone &amp; zenzero<\\/li>\\r\\n        <li>Erba limoncella<\\/li>\\r\\n        <li>Frutti rossi<\\/li>\\r\\n        <li>Yerba mate<\\/li>\\r\\n        <li>Camomilla<\\/li>\\r\\n      <\\/ul>\\r\\n    <h4 class=\\\"subheader\\\">LIGHT LUNCH<\\/h4>\\r\\n    <ul>\\r\\n      <li><b>SANDWICHES 3 STRATI<\\/b><\\/li>\\r\\n      <li><b>Pane Integrale, Cereali, Curry<\\/b><\\/li>\\r\\n      <li><b>Spalmato con burro<\\/b><\\/li>\\r\\n    <\\/ul>\\r\\n         \\r\\n    <ul>\\r\\n      <li>Insalatona<\\/li>\\r\\n      <li>Misticanze, verdure di stagione,<\\/li>\\r\\n      <li>mozzarella e tonno<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li>Extra: Insalate, piatto del giorno<\\/li>\\r\\n      <li>e zuppe del giorno<\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n<\\/div>\\r\\n  \\r\\n      <div class=\\\"large-6 columns\\\">\\r\\n        <h4 class=\\\"subheader\\\">CIOCCOLATE<\\/h4>\\r\\n    <ul>\\r\\n    <li>FONDENTE  70% cacao<\\/li>\\r\\n\\t<li>al LATTE<\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Menta<\\/li>\\r\\n    <li>Peperoncino<\\/li>\\r\\n    <li>Lime e peperoncino<\\/li>\\r\\n    <li>Caramello<\\/li>\\r\\n    <li>Cannella<\\/li>\\r\\n    <li>Zenzero<\\/li>\\r\\n    <li>Rocky Road - biscottino &amp; marshmallows<\\/li>\\r\\n    <li>Arancia<\\/li>\\r\\n    <li>Banana &amp; toffee<\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li>BIANCHE<\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Fragola<\\/li>\\r\\n    <li>Limone &amp; Meringa<\\/li>\\r\\n    <li>Nocciola<\\/li>\\r\\n    <li>Creme brul\\u00e9e<\\/li>      \\r\\n    <\\/ul>\\r\\n        \\r\\n    <h4 class=\\\"subheader\\\">CENTRIFUGHE DI FRUTTA FRESCA DI STAGIONE<\\/h4>\\r\\n    <ul>\\r\\n      <li>Arancia, carote e mela<\\/li>\\r\\n      <li>Mela, carote e zenzero<\\/li>\\r\\n      <li>Pompelmo rosa e mela<\\/li>\\r\\n      <li>Mela, ananas e Fragola<\\/li>\\r\\n      <li>Mela e pera<\\/li>\\r\\n      <li>Pesca, mela e kiwi<\\/li>\\r\\n      <li>Melone, uva e mela<\\/li>\\r\\n      <li>Frullati di frutta fresca<\\/li>\\r\\n    <\\/ul>\\r\\n    <h4 class=\\\"subheader\\\">CAFFETTERIA<\\/h4>\\r\\n        <ul>\\r\\n          <li>Caffe, capuccino, marocchino, etc.<\\/li>\\r\\n        <\\/ul>\\r\\n    <h4 class=\\\"subheader\\\">YOGURT FROZEN<\\/h4>\\r\\n        <ul>\\r\\n          <li>Al naturale<\\/li>\\r\\n          <li>Con frutta<\\/li>\\r\\n          <li>Con nutella<\\/li>\\r\\n          <li>Con muesli<\\/li>\\r\\n          <li>Con Brownie a strati<\\/li>\\r\\n        <\\/ul>\\r\\n            <h4 class=\\\"subheader\\\">COOKIE ICE COFFEE<\\/h4>\\r\\n        <ul>\\r\\n          <li>Gelato al fior di latte con cookie<\\/li>\\r\\n\\t\\t  <li>spezzettato e innaffiato di caff\\u00e8 <\\/li>\\r\\n        <\\/ul>\\r\\n\\r\\n  \\r\\n\\r\\n    <h4 class=\\\"subheader\\\">BIRRE ARTIGIANALI BRITISH\\r\\nFREEDOM<\\/h4>\\r\\n    <ul>\\r\\n      <li>PIONEER<\\/li>\\r\\n      <li>STOUT<\\/li>\\r\\n      <li>ORGANIC LAGER &#40; Bio &#41;<\\/li>\\r\\n      <li>ORGANIC DARK LAGER &#40; Bio &#40;<\\/li>\\r\\n     <\\/ul>\\r\\n   \\t    \\r\\n  <\\/div>\\r\\n  \\r\\n  <div class=\\\"large-1 columns\\\"><\\/div>\\r\\n  \\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-23 01:15:32\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 02:25:48\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 02:23:22\",\"publish_up\":\"2014-08-23 01:15:32\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":10,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"35\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(45,9,1,'','2014-08-23 02:35:09',847,7162,'1c51ae805b49eca09a25e09943590bd575a39ab9','{\"id\":9,\"asset_id\":\"78\",\"title\":\"THE MENU\",\"alias\":\"the-menu\",\"introtext\":\"<div class=\\\"row menu\\\">\\r\\n  <div class=\\\"large-6 columns\\\">\\r\\n    <h4 class=\\\"subheader\\\">DOLCI<\\/h4>\\r\\n    <ul>\\r\\n    <li>Cupcake<\\/li>\\r\\n\\t<li>Mini Cheesecake<\\/li>\\r\\n    <li>Brownie<\\/li>\\r\\n    <li>Brownie Cheesecake<\\/li>\\r\\n    <li>Cookie<\\/li>\\r\\n    <li>Frollini<\\/li>\\r\\n    <li>Scone<\\/li>\\r\\n    <li>Scone con marmellata<\\/li>\\r\\n    <li>Fetta di torta<\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n\\r\\n    \\r\\n    <h4 class=\\\"subheader\\\">T\\u00c9<\\/h4>\\r\\n    <ul>\\r\\n    <li><b>NERI<\\/b><\\/li>\\r\\n    <li>English breakfast<\\/li>\\r\\n    <li>Darjeling Classico<\\/li>\\r\\n    <li>Darjeling earl grey<\\/li>\\r\\n    <li>Fiocchi di cioccolato<\\/li>\\r\\n    <li>Chai<\\/li>\\r\\n    <li>Chilli Chai <\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li><b>ROSSI - senza caffeina<\\/b><\\/li>\\r\\n    <li>Rooibos classico<\\/li>\\r\\n    <li>Rooibos cannella<\\/li>\\r\\n    <li>Rooibos caramello<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n    <li><b>VERDI<\\/b><\\/li>\\r\\n    <li>Mao Feng classico<\\/li>\\r\\n    <li>Alla Menta<\\/li>\\r\\n    <li>Fiori di gelsomino<\\/li>\\r\\n    <li>Pop corn &#40; con riso tostato &#41;<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li><b>BIANCO<\\/b><\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n      <li><b>BLU<\\/b><\\/li>\\r\\n    <li>Oolong ting tung <\\/li>\\r\\n    <\\/ul>\\r\\n    <li><b>TISANE<\\/b><\\/li>\\r\\n      <ul>\\r\\n        <li>Menta<\\/li>\\r\\n        <li>Liquirizia &amp; menta<\\/li>\\r\\n        <li>Limone &amp; zenzero<\\/li>\\r\\n        <li>Erba limoncella<\\/li>\\r\\n        <li>Frutti rossi<\\/li>\\r\\n        <li>Yerba mate<\\/li>\\r\\n        <li>Camomilla<\\/li>\\r\\n      <\\/ul>\\r\\n    <h4 class=\\\"subheader\\\">LIGHT LUNCH<\\/h4>\\r\\n    <ul>\\r\\n      <li><b>SANDWICHES 3 STRATI<\\/b><\\/li>\\r\\n      <li><b>Pane Integrale, Cereali, Curry<\\/b><\\/li>\\r\\n      <li><b>Spalmato con burro<\\/b><\\/li>\\r\\n      <p>     \\r\\n      <\\/p>\\r\\n       <li><b>CAMDEN LOCK MARKET<\\/b><\\/li>\\r\\n      <li>Open sandwich 2 strati<\\/li>\\r\\n      <li>Fontina, bacon, pomodoro e uovo<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>BOROUGH MARKET<\\/b><\\/li>\\r\\n      <li>Salmone, Philadelphia e insalata<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>OLD SPITAFIELDS MARKET<\\/b><\\/li>\\r\\n      <li>Pollo grigliato, insalata, pomodoro,<\\/li>\\r\\n      <li>salsa yogurt al curry<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>PORTOBELLO ROAD MARKET<\\/b><\\/li>\\r\\n      <li>Tacchino, Philadelphia, pomodoro,<\\/li>\\r\\n      <li>insalata e maionese<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>GREENWICH MARKET<\\/b><\\/li>\\r\\n      <li>Cotto, mozzarella, pomodoro e insalata<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>BRIXTON MARKET<\\/b><\\/li>\\r\\n      <li>Tonno, uovo sodo, pomodoro cetriolo<\\/li>\\r\\n     \\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>COVENT GARDEN<\\/b><\\/li>\\r\\n      <li>Pollo grigliato, bacon, fontina,<\\/li>\\r\\n      <li>pomodoro, insalata e salsa a piacere<\\/li>\\r\\n        <p>     \\r\\n      <\\/p>\\r\\n       <li><b>TRAMEZZINI<\\/b> 3 STRATI<\\/li>\\r\\n    <\\/ul>\\r\\n         \\r\\n    <ul>\\r\\n      <li>Insalatona<\\/li>\\r\\n      <li>Misticanze, verdure di stagione,<\\/li>\\r\\n      <li>mozzarella e tonno<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li>Extra: Insalate, piatto del giorno<\\/li>\\r\\n      <li>e zuppe del giorno<\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n<\\/div>\\r\\n  \\r\\n      <div class=\\\"large-6 columns\\\">\\r\\n        <h4 class=\\\"subheader\\\">CIOCCOLATE<\\/h4>\\r\\n    <ul>\\r\\n    <li>FONDENTE  70% cacao<\\/li>\\r\\n\\t<li>al LATTE<\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Menta<\\/li>\\r\\n    <li>Peperoncino<\\/li>\\r\\n    <li>Lime e peperoncino<\\/li>\\r\\n    <li>Caramello<\\/li>\\r\\n    <li>Cannella<\\/li>\\r\\n    <li>Zenzero<\\/li>\\r\\n    <li>Rocky Road - biscottino &amp; marshmallows<\\/li>\\r\\n    <li>Arancia<\\/li>\\r\\n    <li>Banana &amp; toffee<\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li>BIANCHE<\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Fragola<\\/li>\\r\\n    <li>Limone &amp; Meringa<\\/li>\\r\\n    <li>Nocciola<\\/li>\\r\\n    <li>Creme brul\\u00e9e<\\/li>      \\r\\n    <\\/ul>\\r\\n        \\r\\n    <h4 class=\\\"subheader\\\">CENTRIFUGHE DI FRUTTA FRESCA DI STAGIONE<\\/h4>\\r\\n    <ul>\\r\\n      <li>Arancia, carote e mela<\\/li>\\r\\n      <li>Mela, carote e zenzero<\\/li>\\r\\n      <li>Pompelmo rosa e mela<\\/li>\\r\\n      <li>Mela, ananas e Fragola<\\/li>\\r\\n      <li>Mela e pera<\\/li>\\r\\n      <li>Pesca, mela e kiwi<\\/li>\\r\\n      <li>Melone, uva e mela<\\/li>\\r\\n      <li>Frullati di frutta fresca<\\/li>\\r\\n    <\\/ul>\\r\\n    <h4 class=\\\"subheader\\\">CAFFETTERIA<\\/h4>\\r\\n        <ul>\\r\\n          <li>Caffe, capuccino, marocchino, etc.<\\/li>\\r\\n        <\\/ul>\\r\\n    <h4 class=\\\"subheader\\\">YOGURT FROZEN<\\/h4>\\r\\n        <ul>\\r\\n          <li>Al naturale<\\/li>\\r\\n          <li>Con frutta<\\/li>\\r\\n          <li>Con nutella<\\/li>\\r\\n          <li>Con muesli<\\/li>\\r\\n          <li>Con Brownie a strati<\\/li>\\r\\n        <\\/ul>\\r\\n            <h4 class=\\\"subheader\\\">COOKIE ICE COFFEE<\\/h4>\\r\\n        <ul>\\r\\n          <li>Gelato al fior di latte con cookie<\\/li>\\r\\n\\t\\t  <li>spezzettato e innaffiato di caff\\u00e8 <\\/li>\\r\\n        <\\/ul>\\r\\n\\r\\n  \\r\\n\\r\\n    <h4 class=\\\"subheader\\\">BIRRE ARTIGIANALI BRITISH\\r\\nFREEDOM<\\/h4>\\r\\n    <ul>\\r\\n      <li>PIONEER<\\/li>\\r\\n      <li>STOUT<\\/li>\\r\\n      <li>ORGANIC LAGER &#40; Bio &#41;<\\/li>\\r\\n      <li>ORGANIC DARK LAGER &#40; Bio &#40;<\\/li>\\r\\n     <\\/ul>\\r\\n   \\t    \\r\\n  <\\/div>\\r\\n  \\r\\n  <div class=\\\"large-1 columns\\\"><\\/div>\\r\\n  \\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-23 01:15:32\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 02:35:09\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 02:25:48\",\"publish_up\":\"2014-08-23 01:15:32\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":11,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"36\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(46,9,1,'','2014-08-23 02:36:45',847,7178,'b0115dc9eea8477ce696eac190de77dbf079378e','{\"id\":9,\"asset_id\":\"78\",\"title\":\"THE MENU\",\"alias\":\"the-menu\",\"introtext\":\"<div class=\\\"row menu\\\">\\r\\n  <div class=\\\"large-6 columns\\\">\\r\\n    <h4 class=\\\"subheader\\\">DOLCI<\\/h4>\\r\\n    <ul>\\r\\n    <li>Cupcake<\\/li>\\r\\n\\t<li>Mini Cheesecake<\\/li>\\r\\n    <li>Brownie<\\/li>\\r\\n    <li>Brownie Cheesecake<\\/li>\\r\\n    <li>Cookie<\\/li>\\r\\n    <li>Frollini<\\/li>\\r\\n    <li>Scone<\\/li>\\r\\n    <li>Scone con marmellata<\\/li>\\r\\n    <li>Fetta di torta<\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n\\r\\n    \\r\\n    <h4 class=\\\"subheader\\\">T\\u00c9<\\/h4>\\r\\n    <ul>\\r\\n    <li><b>NERI<\\/b><\\/li>\\r\\n    <li>English breakfast<\\/li>\\r\\n    <li>Darjeling Classico<\\/li>\\r\\n    <li>Darjeling earl grey<\\/li>\\r\\n    <li>Fiocchi di cioccolato<\\/li>\\r\\n    <li>Chai<\\/li>\\r\\n    <li>Chilli Chai <\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li><b>ROSSI - senza caffeina<\\/b><\\/li>\\r\\n    <li>Rooibos classico<\\/li>\\r\\n    <li>Rooibos cannella<\\/li>\\r\\n    <li>Rooibos caramello<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n    <li><b>VERDI<\\/b><\\/li>\\r\\n    <li>Mao Feng classico<\\/li>\\r\\n    <li>Alla Menta<\\/li>\\r\\n    <li>Fiori di gelsomino<\\/li>\\r\\n    <li>Pop corn &#40; con riso tostato &#41;<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li><b>BIANCO<\\/b><\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n      <li><b>BLU<\\/b><\\/li>\\r\\n    <li>Oolong ting tung <\\/li>\\r\\n    <\\/ul>\\r\\n    <li><b>TISANE<\\/b><\\/li>\\r\\n      <ul>\\r\\n        <li>Menta<\\/li>\\r\\n        <li>Liquirizia &amp; menta<\\/li>\\r\\n        <li>Limone &amp; zenzero<\\/li>\\r\\n        <li>Erba limoncella<\\/li>\\r\\n        <li>Frutti rossi<\\/li>\\r\\n        <li>Yerba mate<\\/li>\\r\\n        <li>Camomilla<\\/li>\\r\\n      <\\/ul>\\r\\n    <h4 class=\\\"subheader\\\">LIGHT LUNCH<\\/h4>\\r\\n    <ul>\\r\\n      <li><b>SANDWICHES 3 STRATI<\\/b><\\/li>\\r\\n      <li><b>Pane Integrale, Cereali, Curry<\\/b><\\/li>\\r\\n      <li><b>Spalmato con burro<\\/b><\\/li>\\r\\n      <p>     \\r\\n      <\\/p>\\r\\n       <li><b>CAMDEN LOCK MARKET<\\/b><\\/li>\\r\\n      <li>Open sandwich 2 strati<\\/li>\\r\\n      <li>Fontina, bacon, pomodoro e uovo<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>BOROUGH MARKET<\\/b><\\/li>\\r\\n      <li>Salmone, Philadelphia e insalata<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>OLD SPITAFIELDS MARKET<\\/b><\\/li>\\r\\n      <li>Pollo grigliato, insalata, pomodoro,<\\/li>\\r\\n      <li>salsa yogurt al curry<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>PORTOBELLO ROAD MARKET<\\/b><\\/li>\\r\\n      <li>Tacchino, Philadelphia, pomodoro,<\\/li>\\r\\n      <li>insalata e maionese<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>GREENWICH MARKET<\\/b><\\/li>\\r\\n      <li>Cotto, mozzarella, pomodoro e insalata<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>BRIXTON MARKET<\\/b><\\/li>\\r\\n      <li>Tonno, uovo sodo, pomodoro cetriolo<\\/li>\\r\\n     \\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>COVENT GARDEN<\\/b><\\/li>\\r\\n      <li>Pollo grigliato, bacon, fontina,<\\/li>\\r\\n      <li>pomodoro, insalata e salsa a piacere<\\/li>\\r\\n        <p>     \\r\\n      <\\/p>\\r\\n       <li><b>TRAMEZZINI<\\/b> 3 STRATI<\\/li>\\r\\n    <\\/ul>\\r\\n         \\r\\n    <ul>\\r\\n      <li>INSALATONA<\\/li>\\r\\n      <li>Misticanze, verdure di stagione,<\\/li>\\r\\n      <li>mozzarella e tonno<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li><b>EXTRA: INSALATE, PIATTO DEL GIORNO<\\/b><\\/li>\\r\\n      <li><b>E ZUPPE DEL GIORNO<\\/b><\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n<\\/div>\\r\\n  \\r\\n      <div class=\\\"large-6 columns\\\">\\r\\n        <h4 class=\\\"subheader\\\">CIOCCOLATE<\\/h4>\\r\\n    <ul>\\r\\n    <li>FONDENTE  70% cacao<\\/li>\\r\\n\\t<li>al LATTE<\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Menta<\\/li>\\r\\n    <li>Peperoncino<\\/li>\\r\\n    <li>Lime e peperoncino<\\/li>\\r\\n    <li>Caramello<\\/li>\\r\\n    <li>Cannella<\\/li>\\r\\n    <li>Zenzero<\\/li>\\r\\n    <li>Rocky Road - biscottino &amp; marshmallows<\\/li>\\r\\n    <li>Arancia<\\/li>\\r\\n    <li>Banana &amp; toffee<\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li>BIANCHE<\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Fragola<\\/li>\\r\\n    <li>Limone &amp; Meringa<\\/li>\\r\\n    <li>Nocciola<\\/li>\\r\\n    <li>Creme brul\\u00e9e<\\/li>      \\r\\n    <\\/ul>\\r\\n        \\r\\n    <h4 class=\\\"subheader\\\">CENTRIFUGHE DI FRUTTA FRESCA DI STAGIONE<\\/h4>\\r\\n    <ul>\\r\\n      <li>Arancia, carote e mela<\\/li>\\r\\n      <li>Mela, carote e zenzero<\\/li>\\r\\n      <li>Pompelmo rosa e mela<\\/li>\\r\\n      <li>Mela, ananas e Fragola<\\/li>\\r\\n      <li>Mela e pera<\\/li>\\r\\n      <li>Pesca, mela e kiwi<\\/li>\\r\\n      <li>Melone, uva e mela<\\/li>\\r\\n      <li>Frullati di frutta fresca<\\/li>\\r\\n    <\\/ul>\\r\\n    <h4 class=\\\"subheader\\\">CAFFETTERIA<\\/h4>\\r\\n        <ul>\\r\\n          <li>Caffe, capuccino, marocchino, etc.<\\/li>\\r\\n        <\\/ul>\\r\\n    <h4 class=\\\"subheader\\\">YOGURT FROZEN<\\/h4>\\r\\n        <ul>\\r\\n          <li>Al naturale<\\/li>\\r\\n          <li>Con frutta<\\/li>\\r\\n          <li>Con nutella<\\/li>\\r\\n          <li>Con muesli<\\/li>\\r\\n          <li>Con Brownie a strati<\\/li>\\r\\n        <\\/ul>\\r\\n            <h4 class=\\\"subheader\\\">COOKIE ICE COFFEE<\\/h4>\\r\\n        <ul>\\r\\n          <li>Gelato al fior di latte con cookie<\\/li>\\r\\n\\t\\t  <li>spezzettato e innaffiato di caff\\u00e8 <\\/li>\\r\\n        <\\/ul>\\r\\n\\r\\n  \\r\\n\\r\\n    <h4 class=\\\"subheader\\\">BIRRE ARTIGIANALI BRITISH\\r\\nFREEDOM<\\/h4>\\r\\n    <ul>\\r\\n      <li>PIONEER<\\/li>\\r\\n      <li>STOUT<\\/li>\\r\\n      <li>ORGANIC LAGER &#40; Bio &#41;<\\/li>\\r\\n      <li>ORGANIC DARK LAGER &#40; Bio &#40;<\\/li>\\r\\n     <\\/ul>\\r\\n   \\t    \\r\\n  <\\/div>\\r\\n  \\r\\n  <div class=\\\"large-1 columns\\\"><\\/div>\\r\\n  \\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-23 01:15:32\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 02:36:45\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 02:35:09\",\"publish_up\":\"2014-08-23 01:15:32\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":12,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"37\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(47,9,1,'','2014-08-23 02:37:08',847,7186,'991d133cfcd8c6f63ba7ae5b783ce04b61a3f068','{\"id\":9,\"asset_id\":\"78\",\"title\":\"THE MENU\",\"alias\":\"the-menu\",\"introtext\":\"<div class=\\\"row menu\\\">\\r\\n  <div class=\\\"large-6 columns\\\">\\r\\n    <h4 class=\\\"subheader\\\">DOLCI<\\/h4>\\r\\n    <ul>\\r\\n    <li>Cupcake<\\/li>\\r\\n\\t<li>Mini Cheesecake<\\/li>\\r\\n    <li>Brownie<\\/li>\\r\\n    <li>Brownie Cheesecake<\\/li>\\r\\n    <li>Cookie<\\/li>\\r\\n    <li>Frollini<\\/li>\\r\\n    <li>Scone<\\/li>\\r\\n    <li>Scone con marmellata<\\/li>\\r\\n    <li>Fetta di torta<\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n\\r\\n    \\r\\n    <h4 class=\\\"subheader\\\">T\\u00c9<\\/h4>\\r\\n    <ul>\\r\\n    <li><b>NERI<\\/b><\\/li>\\r\\n    <li>English breakfast<\\/li>\\r\\n    <li>Darjeling Classico<\\/li>\\r\\n    <li>Darjeling earl grey<\\/li>\\r\\n    <li>Fiocchi di cioccolato<\\/li>\\r\\n    <li>Chai<\\/li>\\r\\n    <li>Chilli Chai <\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li><b>ROSSI - senza caffeina<\\/b><\\/li>\\r\\n    <li>Rooibos classico<\\/li>\\r\\n    <li>Rooibos cannella<\\/li>\\r\\n    <li>Rooibos caramello<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n    <li><b>VERDI<\\/b><\\/li>\\r\\n    <li>Mao Feng classico<\\/li>\\r\\n    <li>Alla Menta<\\/li>\\r\\n    <li>Fiori di gelsomino<\\/li>\\r\\n    <li>Pop corn &#40; con riso tostato &#41;<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li><b>BIANCO<\\/b><\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n      <li><b>BLU<\\/b><\\/li>\\r\\n    <li>Oolong ting tung <\\/li>\\r\\n    <\\/ul>\\r\\n    <li><b>TISANE<\\/b><\\/li>\\r\\n      <ul>\\r\\n        <li>Menta<\\/li>\\r\\n        <li>Liquirizia &amp; menta<\\/li>\\r\\n        <li>Limone &amp; zenzero<\\/li>\\r\\n        <li>Erba limoncella<\\/li>\\r\\n        <li>Frutti rossi<\\/li>\\r\\n        <li>Yerba mate<\\/li>\\r\\n        <li>Camomilla<\\/li>\\r\\n      <\\/ul>\\r\\n    <h4 class=\\\"subheader\\\">LIGHT LUNCH<\\/h4>\\r\\n    <ul>\\r\\n      <li><b>SANDWICHES 3 STRATI<\\/b><\\/li>\\r\\n      <li><b>Pane Integrale, Cereali, Curry<\\/b><\\/li>\\r\\n      <li><b>Spalmato con burro<\\/b><\\/li>\\r\\n      <p>     \\r\\n      <\\/p>\\r\\n       <li><b>CAMDEN LOCK MARKET<\\/b><\\/li>\\r\\n      <li>Open sandwich 2 strati<\\/li>\\r\\n      <li>Fontina, bacon, pomodoro e uovo<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>BOROUGH MARKET<\\/b><\\/li>\\r\\n      <li>Salmone, Philadelphia e insalata<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>OLD SPITAFIELDS MARKET<\\/b><\\/li>\\r\\n      <li>Pollo grigliato, insalata, pomodoro,<\\/li>\\r\\n      <li>salsa yogurt al curry<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>PORTOBELLO ROAD MARKET<\\/b><\\/li>\\r\\n      <li>Tacchino, Philadelphia, pomodoro,<\\/li>\\r\\n      <li>insalata e maionese<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>GREENWICH MARKET<\\/b><\\/li>\\r\\n      <li>Cotto, mozzarella, pomodoro e insalata<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>BRIXTON MARKET<\\/b><\\/li>\\r\\n      <li>Tonno, uovo sodo, pomodoro cetriolo<\\/li>\\r\\n     \\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>COVENT GARDEN<\\/b><\\/li>\\r\\n      <li>Pollo grigliato, bacon, fontina,<\\/li>\\r\\n      <li>pomodoro, insalata e salsa a piacere<\\/li>\\r\\n        <p>     \\r\\n      <\\/p>\\r\\n       <li><b>TRAMEZZINI<\\/b> 3 STRATI<\\/li>\\r\\n    <\\/ul>\\r\\n         \\r\\n    <ul>\\r\\n      <li><b>INSALATONA<\\/b><\\/li>\\r\\n      <li>Misticanze, verdure di stagione,<\\/li>\\r\\n      <li>mozzarella e tonno<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li><b>EXTRA: INSALATE, PIATTO DEL GIORNO<\\/b><\\/li>\\r\\n      <li><b>E ZUPPE DEL GIORNO<\\/b><\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n<\\/div>\\r\\n  \\r\\n      <div class=\\\"large-6 columns\\\">\\r\\n        <h4 class=\\\"subheader\\\">CIOCCOLATE<\\/h4>\\r\\n    <ul>\\r\\n    <li>FONDENTE  70% cacao<\\/li>\\r\\n\\t<li>al LATTE<\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Menta<\\/li>\\r\\n    <li>Peperoncino<\\/li>\\r\\n    <li>Lime e peperoncino<\\/li>\\r\\n    <li>Caramello<\\/li>\\r\\n    <li>Cannella<\\/li>\\r\\n    <li>Zenzero<\\/li>\\r\\n    <li>Rocky Road - biscottino &amp; marshmallows<\\/li>\\r\\n    <li>Arancia<\\/li>\\r\\n    <li>Banana &amp; toffee<\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li>BIANCHE<\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Fragola<\\/li>\\r\\n    <li>Limone &amp; Meringa<\\/li>\\r\\n    <li>Nocciola<\\/li>\\r\\n    <li>Creme brul\\u00e9e<\\/li>      \\r\\n    <\\/ul>\\r\\n        \\r\\n    <h4 class=\\\"subheader\\\">CENTRIFUGHE DI FRUTTA FRESCA DI STAGIONE<\\/h4>\\r\\n    <ul>\\r\\n      <li>Arancia, carote e mela<\\/li>\\r\\n      <li>Mela, carote e zenzero<\\/li>\\r\\n      <li>Pompelmo rosa e mela<\\/li>\\r\\n      <li>Mela, ananas e Fragola<\\/li>\\r\\n      <li>Mela e pera<\\/li>\\r\\n      <li>Pesca, mela e kiwi<\\/li>\\r\\n      <li>Melone, uva e mela<\\/li>\\r\\n      <li>Frullati di frutta fresca<\\/li>\\r\\n    <\\/ul>\\r\\n    <h4 class=\\\"subheader\\\">CAFFETTERIA<\\/h4>\\r\\n        <ul>\\r\\n          <li>Caffe, capuccino, marocchino, etc.<\\/li>\\r\\n        <\\/ul>\\r\\n    <h4 class=\\\"subheader\\\">YOGURT FROZEN<\\/h4>\\r\\n        <ul>\\r\\n          <li>Al naturale<\\/li>\\r\\n          <li>Con frutta<\\/li>\\r\\n          <li>Con nutella<\\/li>\\r\\n          <li>Con muesli<\\/li>\\r\\n          <li>Con Brownie a strati<\\/li>\\r\\n        <\\/ul>\\r\\n            <h4 class=\\\"subheader\\\">COOKIE ICE COFFEE<\\/h4>\\r\\n        <ul>\\r\\n          <li>Gelato al fior di latte con cookie<\\/li>\\r\\n\\t\\t  <li>spezzettato e innaffiato di caff\\u00e8 <\\/li>\\r\\n        <\\/ul>\\r\\n\\r\\n  \\r\\n\\r\\n    <h4 class=\\\"subheader\\\">BIRRE ARTIGIANALI BRITISH\\r\\nFREEDOM<\\/h4>\\r\\n    <ul>\\r\\n      <li>PIONEER<\\/li>\\r\\n      <li>STOUT<\\/li>\\r\\n      <li>ORGANIC LAGER &#40; Bio &#41;<\\/li>\\r\\n      <li>ORGANIC DARK LAGER &#40; Bio &#40;<\\/li>\\r\\n     <\\/ul>\\r\\n   \\t    \\r\\n  <\\/div>\\r\\n  \\r\\n  <div class=\\\"large-1 columns\\\"><\\/div>\\r\\n  \\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-23 01:15:32\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 02:37:08\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 02:36:45\",\"publish_up\":\"2014-08-23 01:15:32\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":13,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"38\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(48,9,1,'','2014-08-23 02:48:19',847,7821,'4f861cd92da163fa28495941a5aacd5c86ed40d0','{\"id\":9,\"asset_id\":\"78\",\"title\":\"THE MENU\",\"alias\":\"the-menu\",\"introtext\":\"<div class=\\\"row menu\\\">\\r\\n  <div class=\\\"large-6 columns\\\">\\r\\n    <h4 class=\\\"subheader\\\">Dolci<\\/h4>\\r\\n    <ul>\\r\\n    <li>Cupcake<\\/li>\\r\\n\\t<li>Mini Cheesecake<\\/li>\\r\\n    <li>Brownie<\\/li>\\r\\n    <li>Brownie Cheesecake<\\/li>\\r\\n    <li>Cookie<\\/li>\\r\\n    <li>Frollini<\\/li>\\r\\n    <li>Scone<\\/li>\\r\\n    <li>Scone con marmellata<\\/li>\\r\\n    <li>Fetta di torta<\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n\\r\\n    \\r\\n    <h4 class=\\\"subheader\\\">T\\u00e9<\\/h4>\\r\\n    <ul>\\r\\n    <li><b>NERI<\\/b><\\/li>\\r\\n    <li>English breakfast<\\/li>\\r\\n    <li>Darjeling Classico<\\/li>\\r\\n    <li>Darjeling earl grey<\\/li>\\r\\n    <li>Fiocchi di cioccolato<\\/li>\\r\\n    <li>Chai<\\/li>\\r\\n    <li>Chilli Chai <\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li><b>ROSSI - senza caffeina<\\/b><\\/li>\\r\\n    <li>Rooibos classico<\\/li>\\r\\n    <li>Rooibos cannella<\\/li>\\r\\n    <li>Rooibos caramello<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n    <li><b>VERDI<\\/b><\\/li>\\r\\n    <li>Mao Feng classico<\\/li>\\r\\n    <li>Alla Menta<\\/li>\\r\\n    <li>Fiori di gelsomino<\\/li>\\r\\n    <li>Pop corn &#40; con riso tostato &#41;<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li><b>BIANCO<\\/b><\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n      <li><b>BLU<\\/b><\\/li>\\r\\n    <li>Oolong ting tung <\\/li>\\r\\n    <\\/ul>\\r\\n    <li><b>TISANE<\\/b><\\/li>\\r\\n      <ul>\\r\\n        <li>Menta<\\/li>\\r\\n        <li>Liquirizia &amp; menta<\\/li>\\r\\n        <li>Limone &amp; zenzero<\\/li>\\r\\n        <li>Erba limoncella<\\/li>\\r\\n        <li>Frutti rossi<\\/li>\\r\\n        <li>Yerba mate<\\/li>\\r\\n        <li>Camomilla<\\/li>\\r\\n      <\\/ul>\\r\\n    <h4 class=\\\"subheader\\\">Light Lunch<\\/h4>\\r\\n    <ul>\\r\\n      <li><b>SANDWICHES 3 STRATI<\\/b><\\/li>\\r\\n      <li><b>Pane Integrale, Cereali, Curry<\\/b><\\/li>\\r\\n      <li><b>Spalmato con burro<\\/b><\\/li>\\r\\n      <p>     \\r\\n      <\\/p>\\r\\n       <li><b>CAMDEN LOCK MARKET<\\/b><\\/li>\\r\\n      <li>Open sandwich 2 strati<\\/li>\\r\\n      <li>Fontina, bacon, pomodoro e uovo<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>BOROUGH MARKET<\\/b><\\/li>\\r\\n      <li>Salmone, Philadelphia e insalata<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>OLD SPITAFIELDS MARKET<\\/b><\\/li>\\r\\n      <li>Pollo grigliato, insalata, pomodoro,<\\/li>\\r\\n      <li>salsa yogurt al curry<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>PORTOBELLO ROAD MARKET<\\/b><\\/li>\\r\\n      <li>Tacchino, Philadelphia, pomodoro,<\\/li>\\r\\n      <li>insalata e maionese<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>GREENWICH MARKET<\\/b><\\/li>\\r\\n      <li>Cotto, mozzarella, pomodoro e insalata<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>BRIXTON MARKET<\\/b><\\/li>\\r\\n      <li>Tonno, uovo sodo, pomodoro cetriolo<\\/li>\\r\\n     \\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>COVENT GARDEN<\\/b><\\/li>\\r\\n      <li>Pollo grigliato, bacon, fontina,<\\/li>\\r\\n      <li>pomodoro, insalata e salsa a piacere<\\/li>\\r\\n        <p>     \\r\\n      <\\/p>\\r\\n       <li><b>TRAMEZZINI<\\/b> 3 STRATI<\\/li>\\r\\n    <\\/ul>\\r\\n         \\r\\n    <ul>\\r\\n      <li><b>INSALATONA<\\/b><\\/li>\\r\\n      <li>Misticanze, verdure di stagione,<\\/li>\\r\\n      <li>mozzarella e tonno<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li><b>EXTRA: INSALATE, PIATTO DEL GIORNO<\\/b><\\/li>\\r\\n      <li><b>E ZUPPE DEL GIORNO<\\/b><\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n<\\/div>\\r\\n  \\r\\n      <div class=\\\"large-6 columns\\\">\\r\\n        <h4 class=\\\"subheader\\\">Cioccolate<\\/h4>\\r\\n    <ul>\\r\\n    <li><b>FONDENTE  70% cacao<\\/b><\\/li>\\r\\n      <p><\\/p>\\r\\n\\t<li><b>al LATTE<\\/b><\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Menta<\\/li>\\r\\n    <li>Peperoncino<\\/li>\\r\\n    <li>Lime e peperoncino<\\/li>\\r\\n    <li>Caramello<\\/li>\\r\\n    <li>Cannella<\\/li>\\r\\n    <li>Zenzero<\\/li>\\r\\n    <li>Rocky Road - biscottino &amp; marshmallows<\\/li>\\r\\n    <li>Arancia<\\/li>\\r\\n    <li>Banana &amp; toffee<\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li><b>BIANCHE<\\/b><\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Fragola<\\/li>\\r\\n    <li>Limone &amp; Meringa<\\/li>\\r\\n    <li>Nocciola<\\/li>\\r\\n    <li>Creme brul\\u00e9e<\\/li>      \\r\\n    <\\/ul>\\r\\n        \\r\\n    <h4 class=\\\"subheader\\\">Bevande<\\/h4>\\r\\n    <ul>\\r\\n      <li><b>CENTRIFUGHE DI FRUTTA FRESCA DI STAGIONE<\\/b><\\/li>\\r\\n      <li>Arancia, carote e mela<\\/li>\\r\\n      <li>Mela, carote e zenzero<\\/li>\\r\\n      <li>Pompelmo rosa e mela<\\/li>\\r\\n      <li>Mela, ananas e Fragola<\\/li>\\r\\n      <li>Mela e pera<\\/li>\\r\\n      <li>Pesca, mela e kiwi<\\/li>\\r\\n      <li>Melone, uva e mela<\\/li>\\r\\n      <li>Frullati di frutta fresca di stagione<\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n        <ul>\\r\\n          <li><b>CAFFETTERIA TRADIZIONALE<\\/b><\\/li>\\r\\n          <li>Caffe<\\/li>\\r\\n          <li>Dek<\\/li>\\r\\n          <li>Orzo<\\/li>\\r\\n          <li>Ginseng<\\/li>\\r\\n          <li>Cappuccino<\\/li>\\r\\n          <li>Cappuccino latte soya<\\/li>\\r\\n          <li>Marocchino <\\/li>\\r\\n          <li>Marocchino latte soya<\\/li>\\r\\n          <li>Marocchino con nutella<\\/li>\\r\\n          <li>Latte bianco<\\/li>\\r\\n          <li>Latte macchiato<\\/li>\\r\\n          <li>Marocchino freddo...<\\/li>\\r\\n          <li>non la solita crema caff\\u00e8!<\\/li>\\r\\n          <li>&#40; crema di latte con caff\\u00e8 vero &#41;<\\/li>\\r\\n        <\\/ul>\\r\\n   \\r\\n        <ul>\\r\\n           <li><b>YOGURT FROZEN<\\/b><\\/li>\\r\\n          <li>Al naturale<\\/li>\\r\\n          <li>Con frutta<\\/li>\\r\\n          <li>Con nutella<\\/li>\\r\\n          <li>Con muesli<\\/li>\\r\\n          <li>Con Brownie a strati<\\/li>\\r\\n        <\\/ul>\\r\\n            \\r\\n        <ul>\\r\\n          <li><b>COOKIE ICE COFFEE<\\/b><\\/li>\\r\\n          <li>Gelato al fior di latte con cookie<\\/li>\\r\\n\\t\\t  <li>spezzettato e innaffiato di caff\\u00e8 <\\/li>\\r\\n        <\\/ul>\\r\\n\\r\\n    <ul>\\r\\n       <li><b>BIRRE ARTIGIANALI BRITISH<\\/b><\\/li>\\r\\n      <li>FREEDOM<\\/li>\\r\\n      <li>PIONEER - Bionda<\\/li>\\r\\n      <li>STOUT - Scura<\\/li>\\r\\n      <li>ORGANIC LAGER - Bionda biologica<\\/li>\\r\\n      <li>ORGANIC DARK LAGER - Biologica ambrata<\\/li>\\r\\n     <\\/ul>\\r\\n   \\t    \\r\\n  <\\/div>\\r\\n  \\r\\n  <div class=\\\"large-1 columns\\\"><\\/div>\\r\\n  \\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-23 01:15:32\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 02:48:19\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 02:37:08\",\"publish_up\":\"2014-08-23 01:15:32\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":14,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"39\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(49,9,1,'','2014-08-23 02:48:50',847,7819,'d57b8cf6d2069d016d9f0d017d295f0d9edafdf6','{\"id\":9,\"asset_id\":\"78\",\"title\":\"THE MENU\",\"alias\":\"the-menu\",\"introtext\":\"<div class=\\\"row menu\\\">\\r\\n  <div class=\\\"large-6 columns\\\">\\r\\n    <h4 class=\\\"subheader\\\">Dolci<\\/h4>\\r\\n    <ul>\\r\\n    <li>Cupcake<\\/li>\\r\\n\\t<li>Mini Cheesecake<\\/li>\\r\\n    <li>Brownie<\\/li>\\r\\n    <li>Brownie Cheesecake<\\/li>\\r\\n    <li>Cookie<\\/li>\\r\\n    <li>Frollini<\\/li>\\r\\n    <li>Scone<\\/li>\\r\\n    <li>Scone con marmellata<\\/li>\\r\\n    <li>Fetta di torta<\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n\\r\\n    \\r\\n    <h4 class=\\\"subheader\\\">T\\u00e9<\\/h4>\\r\\n    <ul>\\r\\n    <li><b>NERI<\\/b><\\/li>\\r\\n    <li>English breakfast<\\/li>\\r\\n    <li>Darjeling Classico<\\/li>\\r\\n    <li>Darjeling earl grey<\\/li>\\r\\n    <li>Fiocchi di cioccolato<\\/li>\\r\\n    <li>Chai<\\/li>\\r\\n    <li>Chilli Chai <\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li><b>ROSSI - senza caffeina<\\/b><\\/li>\\r\\n    <li>Rooibos classico<\\/li>\\r\\n    <li>Rooibos cannella<\\/li>\\r\\n    <li>Rooibos caramello<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n    <li><b>VERDI<\\/b><\\/li>\\r\\n    <li>Mao Feng classico<\\/li>\\r\\n    <li>Alla Menta<\\/li>\\r\\n    <li>Fiori di gelsomino<\\/li>\\r\\n    <li>Pop corn &#40; con riso tostato &#41;<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li><b>BIANCO<\\/b><\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n      <li><b>BLU<\\/b><\\/li>\\r\\n    <li>Oolong ting tung <\\/li>\\r\\n    <\\/ul>\\r\\n    <li><b>TISANE<\\/b><\\/li>\\r\\n      <ul>\\r\\n        <li>Menta<\\/li>\\r\\n        <li>Liquirizia &amp; menta<\\/li>\\r\\n        <li>Limone &amp; zenzero<\\/li>\\r\\n        <li>Erba limoncella<\\/li>\\r\\n        <li>Frutti rossi<\\/li>\\r\\n        <li>Yerba mate<\\/li>\\r\\n        <li>Camomilla<\\/li>\\r\\n      <\\/ul>\\r\\n    <h4 class=\\\"subheader\\\">Light Lunch<\\/h4>\\r\\n    <ul>\\r\\n      <li><b>SANDWICHES 3 STRATI<\\/b><\\/li>\\r\\n      <li><b>Pane Integrale, Cereali, Curry<\\/b><\\/li>\\r\\n      <li><b>Spalmato con burro<\\/b><\\/li>\\r\\n      <p>     \\r\\n      <\\/p>\\r\\n       <li><b>CAMDEN LOCK MARKET<\\/b><\\/li>\\r\\n      <li>Open sandwich 2 strati<\\/li>\\r\\n      <li>Fontina, bacon, pomodoro e uovo<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>BOROUGH MARKET<\\/b><\\/li>\\r\\n      <li>Salmone, Philadelphia e insalata<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>OLD SPITAFIELDS MARKET<\\/b><\\/li>\\r\\n      <li>Pollo grigliato, insalata, pomodoro,<\\/li>\\r\\n      <li>salsa yogurt al curry<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>PORTOBELLO ROAD MARKET<\\/b><\\/li>\\r\\n      <li>Tacchino, Philadelphia, pomodoro,<\\/li>\\r\\n      <li>insalata e maionese<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>GREENWICH MARKET<\\/b><\\/li>\\r\\n      <li>Cotto, mozzarella, pomodoro e insalata<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>BRIXTON MARKET<\\/b><\\/li>\\r\\n      <li>Tonno, uovo sodo, pomodoro cetriolo<\\/li>\\r\\n     \\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>COVENT GARDEN<\\/b><\\/li>\\r\\n      <li>Pollo grigliato, bacon, fontina,<\\/li>\\r\\n      <li>pomodoro, insalata e salsa a piacere<\\/li>\\r\\n        <p>     \\r\\n      <\\/p>\\r\\n       <li><b>TRAMEZZINI<\\/b> 3 STRATI<\\/li>\\r\\n    <\\/ul>\\r\\n         \\r\\n    <ul>\\r\\n      <li><b>INSALATONA<\\/b><\\/li>\\r\\n      <li>Misticanze, verdure di stagione,<\\/li>\\r\\n      <li>mozzarella e tonno<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li><b>EXTRA: INSALATE, PIATTO DEL GIORNO<\\/b><\\/li>\\r\\n      <li><b>E ZUPPE DEL GIORNO<\\/b><\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n<\\/div>\\r\\n  \\r\\n      <div class=\\\"large-6 columns\\\">\\r\\n        <h4 class=\\\"subheader\\\">Cioccolate<\\/h4>\\r\\n    <ul>\\r\\n    <li><b>FONDENTE  70% cacao<\\/b><\\/li>\\r\\n      <p><\\/p>\\r\\n\\t<li><b>al LATTE<\\/b><\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Menta<\\/li>\\r\\n    <li>Peperoncino<\\/li>\\r\\n    <li>Lime e peperoncino<\\/li>\\r\\n    <li>Caramello<\\/li>\\r\\n    <li>Cannella<\\/li>\\r\\n    <li>Zenzero<\\/li>\\r\\n    <li>Rocky Road - biscottino &amp; marshmallows<\\/li>\\r\\n    <li>Arancia<\\/li>\\r\\n    <li>Banana &amp; toffee<\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li><b>BIANCHE<\\/b><\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Fragola<\\/li>\\r\\n    <li>Limone &amp; Meringa<\\/li>\\r\\n    <li>Nocciola<\\/li>\\r\\n    <li>Creme brul\\u00e9e<\\/li>      \\r\\n    <\\/ul>\\r\\n        \\r\\n    <h4 class=\\\"subheader\\\">Bevande<\\/h4>\\r\\n    <ul>\\r\\n      <li><b>CENTRIFUGHE DI FRUTTA FRESCA DI STAGIONE<\\/b><\\/li>\\r\\n      <li>Arancia, carote e mela<\\/li>\\r\\n      <li>Mela, carote e zenzero<\\/li>\\r\\n      <li>Pompelmo rosa e mela<\\/li>\\r\\n      <li>Mela, ananas e Fragola<\\/li>\\r\\n      <li>Mela e pera<\\/li>\\r\\n      <li>Pesca, mela e kiwi<\\/li>\\r\\n      <li>Melone, uva e mela<\\/li>\\r\\n      <li>Frullati di frutta fresca di stagione<\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n        <ul>\\r\\n          <li><b>CAFFETTERIA TRADIZIONALE<\\/b><\\/li>\\r\\n          <li>Caffe<\\/li>\\r\\n          <li>Dek<\\/li>\\r\\n          <li>Orzo<\\/li>\\r\\n          <li>Ginseng<\\/li>\\r\\n          <li>Cappuccino<\\/li>\\r\\n          <li>Cappuccino latte soya<\\/li>\\r\\n          <li>Marocchino <\\/li>\\r\\n          <li>Marocchino latte soya<\\/li>\\r\\n          <li>Marocchino con nutella<\\/li>\\r\\n          <li>Latte bianco<\\/li>\\r\\n          <li>Latte macchiato<\\/li>\\r\\n          <li>Marocchino freddo...<\\/li>\\r\\n          <li>non la solita crema caff\\u00e8!<\\/li>\\r\\n          <li>&#40;crema di latte con caff\\u00e8 vero&#41;<\\/li>\\r\\n        <\\/ul>\\r\\n   \\r\\n        <ul>\\r\\n           <li><b>YOGURT FROZEN<\\/b><\\/li>\\r\\n          <li>Al naturale<\\/li>\\r\\n          <li>Con frutta<\\/li>\\r\\n          <li>Con nutella<\\/li>\\r\\n          <li>Con muesli<\\/li>\\r\\n          <li>Con Brownie a strati<\\/li>\\r\\n        <\\/ul>\\r\\n            \\r\\n        <ul>\\r\\n          <li><b>COOKIE ICE COFFEE<\\/b><\\/li>\\r\\n          <li>Gelato al fior di latte con cookie<\\/li>\\r\\n\\t\\t  <li>spezzettato e innaffiato di caff\\u00e8 <\\/li>\\r\\n        <\\/ul>\\r\\n\\r\\n    <ul>\\r\\n       <li><b>BIRRE ARTIGIANALI BRITISH<\\/b><\\/li>\\r\\n      <li>FREEDOM<\\/li>\\r\\n      <li>PIONEER - Bionda<\\/li>\\r\\n      <li>STOUT - Scura<\\/li>\\r\\n      <li>ORGANIC LAGER - Bionda biologica<\\/li>\\r\\n      <li>ORGANIC DARK LAGER - Biologica ambrata<\\/li>\\r\\n     <\\/ul>\\r\\n   \\t    \\r\\n  <\\/div>\\r\\n  \\r\\n  <div class=\\\"large-1 columns\\\"><\\/div>\\r\\n  \\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-23 01:15:32\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 02:48:50\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 02:48:19\",\"publish_up\":\"2014-08-23 01:15:32\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":15,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"40\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(50,5,1,'','2014-08-23 02:59:27',847,1816,'d8a1c7c8aed4d291023c6444809bbed9bf67cf17','{\"id\":5,\"asset_id\":\"71\",\"title\":\"contatto\",\"alias\":\"contatto\",\"introtext\":\"<iframe src=\\\"https:\\/\\/mapsengine.google.com\\/map\\/embed?mid=zqJKKIIR0Ig8.kMR-aXnTvmls\\\" width=\\\"100%\\\" height=\\\"480\\\"><\\/iframe>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-12 08:59:39\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 02:59:27\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 02:59:12\",\"publish_up\":\"2014-08-12 08:59:39\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"67\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(51,5,1,'','2014-08-23 03:01:36',847,2055,'93ead42ca2308b9a3e9f66d6b038095a5cddcec3','{\"id\":5,\"asset_id\":\"71\",\"title\":\"contatto\",\"alias\":\"contatto\",\"introtext\":\"<p>\\r\\n  <b>Muffin &amp; Cakes<\\/b> Tea Room &amp; more\\r\\n<\\/p>\\r\\n<p>\\r\\n  Piazza San Francesco 11 - 17031 Albenga &#40;SV&#41; <br \\/>\\r\\n  Telefono +39 0182 020622\\r\\n<\\/p>\\r\\n<p>\\r\\n  email: marianna.muffincakes@gmail.com\\r\\n<\\/p>\\r\\n<iframe src=\\\"https:\\/\\/mapsengine.google.com\\/map\\/embed?mid=zqJKKIIR0Ig8.kMR-aXnTvmls\\\" width=\\\"100%\\\" height=\\\"480\\\"><\\/iframe>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-12 08:59:39\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 03:01:36\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 02:59:27\",\"publish_up\":\"2014-08-12 08:59:39\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"68\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(52,2,1,'','2014-08-23 03:13:01',847,2474,'702dfa6967959e332452e9fbc7bb4c698336cec8','{\"id\":2,\"asset_id\":\"61\",\"title\":\"SUNDAY BRUNCH\",\"alias\":\"sunday-brunch\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<h6>\\r\\n  La colazione incotra il pranzo,<br \\/>\\r\\n  ogni prima domenica del mese.\\r\\n<\\/h6>\\r\\n<p>\\r\\nIl brunch e\\u0300 un pasto che consiste\\r\\nin una commistione di prima colazione e pranzo. Lo stesso termine riflette questa commistione: si tratta, infatti di una forma sincopata tra\\r\\n\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffcgli equivalenti termini inglesi, breakfast e lunch.\\r\\n<\\/p>\\r\\n<img src=\\\"images\\/brunch_foto.png\\\" alt=\\\"\\\" \\/>\\r\\n<p>\\r\\nPuoi scegliere tra 3 menu: Vegetariano, di Carne o di pesce.  \\r\\n<\\/p>\\r\\n  <a href=\\\"index.php\\/the-menu\\\">Guarda l\'ultimo men\\u00fa<\\/a>\\r\\n  <p>\\r\\n    \\r\\n  <\\/p>\\r\\n  <a style=\\\"float:right;\\\" href=\\\"index.php\\/sunday-brunch\\/prenota\\\" class=\\\"tiny button secondary\\\">Prenota<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-07 10:06:48\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 03:13:01\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 03:12:45\",\"publish_up\":\"2014-05-07 10:06:48\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":13,\"ordering\":\"5\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"107\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(53,7,1,'','2014-08-23 03:14:08',847,2238,'bfe1a25fee8cca6c56c47b048a580a147075d881','{\"id\":7,\"asset_id\":\"73\",\"title\":\"TEA ROOM\",\"alias\":\"tea-room\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<p>\\r\\n  Muffin&amp;Cakes&reg; nasce come una \\r\\n<b>piccola bottega di dolci anglosassoni<\\/b> sviluppando in seguito il progetto anche come Tearoom. Vuole essere un posto accogliente dove poter sostare per la colazione o la merenda, passando anche per un \\\"light lunch\\\" oppure semplicemente afferrare  al volo uno dei nostri tantissimi dolci.\\r\\n<\\/p>\\r\\n\\r\\n<img src=\\\"images\\/tea_room_and_more_foto.png\\\" alt=\\\"\\\" \\/>\\r\\n    <p>\\r\\n    \\r\\n  <\\/p>\\r\\n  <a href=\\\"index.php\\/the-menu\\\" class=\\\"\\\">Guarda il men\\u00f9<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-13 10:57:59\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 03:14:08\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 03:13:38\",\"publish_up\":\"2014-08-13 10:57:59\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"91\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(54,9,1,'','2014-08-23 03:44:57',847,7853,'2cb0f217c32187dcafc9cd47691b91379aba1337','{\"id\":9,\"asset_id\":\"78\",\"title\":\"THE MENU\",\"alias\":\"the-menu\",\"introtext\":\"<div class=\\\"row menu\\\">\\r\\n  <div class=\\\"large-6 columns\\\">\\r\\n    <h4 class=\\\"subheader dolci\\\">Dolci<\\/h4>\\r\\n    <ul>\\r\\n    <li>Cupcake<\\/li>\\r\\n\\t<li>Mini Cheesecake<\\/li>\\r\\n    <li>Brownie<\\/li>\\r\\n    <li>Brownie Cheesecake<\\/li>\\r\\n    <li>Cookie<\\/li>\\r\\n    <li>Frollini<\\/li>\\r\\n    <li>Scone<\\/li>\\r\\n    <li>Scone con marmellata<\\/li>\\r\\n    <li>Fetta di torta<\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n\\r\\n    \\r\\n    <h4 class=\\\"subheader te\\\">T\\u00e9<\\/h4>\\r\\n    <ul>\\r\\n    <li><b>NERI<\\/b><\\/li>\\r\\n    <li>English breakfast<\\/li>\\r\\n    <li>Darjeling Classico<\\/li>\\r\\n    <li>Darjeling earl grey<\\/li>\\r\\n    <li>Fiocchi di cioccolato<\\/li>\\r\\n    <li>Chai<\\/li>\\r\\n    <li>Chilli Chai <\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li><b>ROSSI - senza caffeina<\\/b><\\/li>\\r\\n    <li>Rooibos classico<\\/li>\\r\\n    <li>Rooibos cannella<\\/li>\\r\\n    <li>Rooibos caramello<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n    <li><b>VERDI<\\/b><\\/li>\\r\\n    <li>Mao Feng classico<\\/li>\\r\\n    <li>Alla Menta<\\/li>\\r\\n    <li>Fiori di gelsomino<\\/li>\\r\\n    <li>Pop corn &#40; con riso tostato &#41;<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li><b>BIANCO<\\/b><\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n      <li><b>BLU<\\/b><\\/li>\\r\\n    <li>Oolong ting tung <\\/li>\\r\\n    <\\/ul>\\r\\n    <li><b>TISANE<\\/b><\\/li>\\r\\n      <ul>\\r\\n        <li>Menta<\\/li>\\r\\n        <li>Liquirizia &amp; menta<\\/li>\\r\\n        <li>Limone &amp; zenzero<\\/li>\\r\\n        <li>Erba limoncella<\\/li>\\r\\n        <li>Frutti rossi<\\/li>\\r\\n        <li>Yerba mate<\\/li>\\r\\n        <li>Camomilla<\\/li>\\r\\n      <\\/ul>\\r\\n    <h4 class=\\\"subheader lunch\\\">Light Lunch<\\/h4>\\r\\n    <ul>\\r\\n      <li><b>SANDWICHES 3 STRATI<\\/b><\\/li>\\r\\n      <li><b>Pane Integrale, Cereali, Curry<\\/b><\\/li>\\r\\n      <li><b>Spalmato con burro<\\/b><\\/li>\\r\\n      <p>     \\r\\n      <\\/p>\\r\\n       <li><b>CAMDEN LOCK MARKET<\\/b><\\/li>\\r\\n      <li>Open sandwich 2 strati<\\/li>\\r\\n      <li>Fontina, bacon, pomodoro e uovo<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>BOROUGH MARKET<\\/b><\\/li>\\r\\n      <li>Salmone, Philadelphia e insalata<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>OLD SPITAFIELDS MARKET<\\/b><\\/li>\\r\\n      <li>Pollo grigliato, insalata, pomodoro,<\\/li>\\r\\n      <li>salsa yogurt al curry<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>PORTOBELLO ROAD MARKET<\\/b><\\/li>\\r\\n      <li>Tacchino, Philadelphia, pomodoro,<\\/li>\\r\\n      <li>insalata e maionese<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>GREENWICH MARKET<\\/b><\\/li>\\r\\n      <li>Cotto, mozzarella, pomodoro e insalata<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>BRIXTON MARKET<\\/b><\\/li>\\r\\n      <li>Tonno, uovo sodo, pomodoro cetriolo<\\/li>\\r\\n     \\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>COVENT GARDEN<\\/b><\\/li>\\r\\n      <li>Pollo grigliato, bacon, fontina,<\\/li>\\r\\n      <li>pomodoro, insalata e salsa a piacere<\\/li>\\r\\n        <p>     \\r\\n      <\\/p>\\r\\n       <li><b>TRAMEZZINI<\\/b> 3 STRATI<\\/li>\\r\\n    <\\/ul>\\r\\n         \\r\\n    <ul>\\r\\n      <li><b>INSALATONA<\\/b><\\/li>\\r\\n      <li>Misticanze, verdure di stagione,<\\/li>\\r\\n      <li>mozzarella e tonno<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li><b>EXTRA: INSALATE, PIATTO DEL GIORNO<\\/b><\\/li>\\r\\n      <li><b>E ZUPPE DEL GIORNO<\\/b><\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n<\\/div>\\r\\n  \\r\\n      <div class=\\\"large-6 columns\\\">\\r\\n        <h4 class=\\\"subheader cioccolate\\\">Cioccolate<\\/h4>\\r\\n    <ul>\\r\\n    <li><b>FONDENTE  70% cacao<\\/b><\\/li>\\r\\n      <p><\\/p>\\r\\n\\t<li><b>al LATTE<\\/b><\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Menta<\\/li>\\r\\n    <li>Peperoncino<\\/li>\\r\\n    <li>Lime e peperoncino<\\/li>\\r\\n    <li>Caramello<\\/li>\\r\\n    <li>Cannella<\\/li>\\r\\n    <li>Zenzero<\\/li>\\r\\n    <li>Rocky Road - biscottino &amp; marshmallows<\\/li>\\r\\n    <li>Arancia<\\/li>\\r\\n    <li>Banana &amp; toffee<\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li><b>BIANCHE<\\/b><\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Fragola<\\/li>\\r\\n    <li>Limone &amp; Meringa<\\/li>\\r\\n    <li>Nocciola<\\/li>\\r\\n    <li>Creme brul\\u00e9e<\\/li>      \\r\\n    <\\/ul>\\r\\n        \\r\\n    <h4 class=\\\"subheader bevande\\\">Bevande<\\/h4>\\r\\n    <ul>\\r\\n      <li><b>CENTRIFUGHE DI FRUTTA FRESCA DI STAGIONE<\\/b><\\/li>\\r\\n      <li>Arancia, carote e mela<\\/li>\\r\\n      <li>Mela, carote e zenzero<\\/li>\\r\\n      <li>Pompelmo rosa e mela<\\/li>\\r\\n      <li>Mela, ananas e Fragola<\\/li>\\r\\n      <li>Mela e pera<\\/li>\\r\\n      <li>Pesca, mela e kiwi<\\/li>\\r\\n      <li>Melone, uva e mela<\\/li>\\r\\n      <li>Frullati di frutta fresca di stagione<\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n        <ul>\\r\\n          <li><b>CAFFETTERIA TRADIZIONALE<\\/b><\\/li>\\r\\n          <li>Caffe<\\/li>\\r\\n          <li>Dek<\\/li>\\r\\n          <li>Orzo<\\/li>\\r\\n          <li>Ginseng<\\/li>\\r\\n          <li>Cappuccino<\\/li>\\r\\n          <li>Cappuccino latte soya<\\/li>\\r\\n          <li>Marocchino <\\/li>\\r\\n          <li>Marocchino latte soya<\\/li>\\r\\n          <li>Marocchino con nutella<\\/li>\\r\\n          <li>Latte bianco<\\/li>\\r\\n          <li>Latte macchiato<\\/li>\\r\\n          <li>Marocchino freddo...<\\/li>\\r\\n          <li>non la solita crema caff\\u00e8!<\\/li>\\r\\n          <li>&#40;crema di latte con caff\\u00e8 vero&#41;<\\/li>\\r\\n        <\\/ul>\\r\\n   \\r\\n        <ul>\\r\\n           <li><b>YOGURT FROZEN<\\/b><\\/li>\\r\\n          <li>Al naturale<\\/li>\\r\\n          <li>Con frutta<\\/li>\\r\\n          <li>Con nutella<\\/li>\\r\\n          <li>Con muesli<\\/li>\\r\\n          <li>Con Brownie a strati<\\/li>\\r\\n        <\\/ul>\\r\\n            \\r\\n        <ul>\\r\\n          <li><b>COOKIE ICE COFFEE<\\/b><\\/li>\\r\\n          <li>Gelato al fior di latte con cookie<\\/li>\\r\\n\\t\\t  <li>spezzettato e innaffiato di caff\\u00e8 <\\/li>\\r\\n        <\\/ul>\\r\\n\\r\\n    <ul>\\r\\n       <li><b>BIRRE ARTIGIANALI BRITISH<\\/b><\\/li>\\r\\n      <li>FREEDOM<\\/li>\\r\\n      <li>PIONEER - Bionda<\\/li>\\r\\n      <li>STOUT - Scura<\\/li>\\r\\n      <li>ORGANIC LAGER - Bionda biologica<\\/li>\\r\\n      <li>ORGANIC DARK LAGER - Biologica ambrata<\\/li>\\r\\n     <\\/ul>\\r\\n   \\t    \\r\\n  <\\/div>\\r\\n  \\r\\n  <div class=\\\"large-1 columns\\\"><\\/div>\\r\\n  \\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-23 01:15:32\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 03:44:57\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 03:44:11\",\"publish_up\":\"2014-08-23 01:15:32\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":16,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"57\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(55,9,1,'','2014-08-23 03:49:12',847,7861,'196ae204d2f787110f327d9eaad6a422c7e3ed34','{\"id\":9,\"asset_id\":\"78\",\"title\":\"THE MENU\",\"alias\":\"the-menu\",\"introtext\":\"<div class=\\\"row menu\\\">\\r\\n  <div class=\\\"large-6 columns\\\">\\r\\n    <h4 class=\\\"subheader dolci\\\">Dolci<\\/h4>\\r\\n    <ul>\\r\\n    <li>Cupcake<\\/li>\\r\\n\\t<li>Mini Cheesecake<\\/li>\\r\\n    <li>Brownie<\\/li>\\r\\n    <li>Brownie Cheesecake<\\/li>\\r\\n    <li>Cookie<\\/li>\\r\\n    <li>Frollini<\\/li>\\r\\n    <li>Scone<\\/li>\\r\\n    <li>Scone con marmellata<\\/li>\\r\\n    <li>Fetta di torta<\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n\\r\\n    \\r\\n    <h4 class=\\\"subheader te\\\">T\\u00e9<\\/h4>\\r\\n    <ul>\\r\\n    <li><b>NERI<\\/b><\\/li>\\r\\n    <li>English breakfast<\\/li>\\r\\n    <li>Darjeling Classico<\\/li>\\r\\n    <li>Darjeling earl grey<\\/li>\\r\\n    <li>Fiocchi di cioccolato<\\/li>\\r\\n    <li>Chai<\\/li>\\r\\n    <li>Chilli Chai <\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li><b>ROSSI - senza caffeina<\\/b><\\/li>\\r\\n    <li>Rooibos classico<\\/li>\\r\\n    <li>Rooibos cannella<\\/li>\\r\\n    <li>Rooibos caramello<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n    <li><b>VERDI<\\/b><\\/li>\\r\\n    <li>Mao Feng classico<\\/li>\\r\\n    <li>Alla Menta<\\/li>\\r\\n    <li>Fiori di gelsomino<\\/li>\\r\\n    <li>Pop corn &#40; con riso tostato &#41;<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li><b>BIANCO<\\/b><\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n      <li><b>BLU<\\/b><\\/li>\\r\\n    <li>Oolong ting tung <\\/li>\\r\\n    <\\/ul>\\r\\n    <li><b>TISANE<\\/b><\\/li>\\r\\n      <ul>\\r\\n        <li>Menta<\\/li>\\r\\n        <li>Liquirizia &amp; menta<\\/li>\\r\\n        <li>Limone &amp; zenzero<\\/li>\\r\\n        <li>Erba limoncella<\\/li>\\r\\n        <li>Frutti rossi<\\/li>\\r\\n        <li>Yerba mate<\\/li>\\r\\n        <li>Camomilla<\\/li>\\r\\n      <\\/ul>\\r\\n    <h4 class=\\\"subheader lunch\\\"><i>Light<\\/i> Lunch<\\/h4>\\r\\n    <ul>\\r\\n      <li><b>SANDWICHES 3 STRATI<\\/b><\\/li>\\r\\n      <li><b>Pane Integrale, Cereali, Curry<\\/b><\\/li>\\r\\n      <li><b>Spalmato con burro<\\/b><\\/li>\\r\\n      <p>     \\r\\n      <\\/p>\\r\\n       <li><b>CAMDEN LOCK MARKET<\\/b><\\/li>\\r\\n      <li>Open sandwich 2 strati<\\/li>\\r\\n      <li>Fontina, bacon, pomodoro e uovo<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>BOROUGH MARKET<\\/b><\\/li>\\r\\n      <li>Salmone, Philadelphia e insalata<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>OLD SPITAFIELDS MARKET<\\/b><\\/li>\\r\\n      <li>Pollo grigliato, insalata, pomodoro,<\\/li>\\r\\n      <li>salsa yogurt al curry<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>PORTOBELLO ROAD MARKET<\\/b><\\/li>\\r\\n      <li>Tacchino, Philadelphia, pomodoro,<\\/li>\\r\\n      <li>insalata e maionese<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>GREENWICH MARKET<\\/b><\\/li>\\r\\n      <li>Cotto, mozzarella, pomodoro e insalata<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>BRIXTON MARKET<\\/b><\\/li>\\r\\n      <li>Tonno, uovo sodo, pomodoro cetriolo<\\/li>\\r\\n     \\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>COVENT GARDEN<\\/b><\\/li>\\r\\n      <li>Pollo grigliato, bacon, fontina,<\\/li>\\r\\n      <li>pomodoro, insalata e salsa a piacere<\\/li>\\r\\n        <p>     \\r\\n      <\\/p>\\r\\n       <li><b>TRAMEZZINI<\\/b> 3 STRATI<\\/li>\\r\\n    <\\/ul>\\r\\n         \\r\\n    <ul>\\r\\n      <li><b>INSALATONA<\\/b><\\/li>\\r\\n      <li>Misticanze, verdure di stagione,<\\/li>\\r\\n      <li>mozzarella e tonno<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li><b>EXTRA: INSALATE, PIATTO DEL GIORNO<\\/b><\\/li>\\r\\n      <li><b>E ZUPPE DEL GIORNO<\\/b><\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n<\\/div>\\r\\n  \\r\\n      <div class=\\\"large-6 columns\\\">\\r\\n        <h4 class=\\\"subheader cioccolate\\\">Cioccolate<\\/h4>\\r\\n    <ul>\\r\\n    <li><b>FONDENTE  70% cacao<\\/b><\\/li>\\r\\n      <p><\\/p>\\r\\n\\t<li><b>al LATTE<\\/b><\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Menta<\\/li>\\r\\n    <li>Peperoncino<\\/li>\\r\\n    <li>Lime e peperoncino<\\/li>\\r\\n    <li>Caramello<\\/li>\\r\\n    <li>Cannella<\\/li>\\r\\n    <li>Zenzero<\\/li>\\r\\n    <li>Rocky Road - biscottino &amp; marshmallows<\\/li>\\r\\n    <li>Arancia<\\/li>\\r\\n    <li>Banana &amp; toffee<\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li><b>BIANCHE<\\/b><\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Fragola<\\/li>\\r\\n    <li>Limone &amp; Meringa<\\/li>\\r\\n    <li>Nocciola<\\/li>\\r\\n    <li>Creme brul\\u00e9e<\\/li>      \\r\\n    <\\/ul>\\r\\n        \\r\\n    <h4 class=\\\"subheader bevande\\\">Bevande<\\/h4>\\r\\n    <ul>\\r\\n      <li><b>CENTRIFUGHE DI FRUTTA FRESCA DI STAGIONE<\\/b><\\/li>\\r\\n      <li>Arancia, carote e mela<\\/li>\\r\\n      <li>Mela, carote e zenzero<\\/li>\\r\\n      <li>Pompelmo rosa e mela<\\/li>\\r\\n      <li>Mela, ananas e Fragola<\\/li>\\r\\n      <li>Mela e pera<\\/li>\\r\\n      <li>Pesca, mela e kiwi<\\/li>\\r\\n      <li>Melone, uva e mela<\\/li>\\r\\n      <li>Frullati di frutta fresca di stagione<\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n        <ul>\\r\\n          <li><b>CAFFETTERIA TRADIZIONALE<\\/b><\\/li>\\r\\n          <li>Caffe<\\/li>\\r\\n          <li>Dek<\\/li>\\r\\n          <li>Orzo<\\/li>\\r\\n          <li>Ginseng<\\/li>\\r\\n          <li>Cappuccino<\\/li>\\r\\n          <li>Cappuccino latte soya<\\/li>\\r\\n          <li>Marocchino <\\/li>\\r\\n          <li>Marocchino latte soya<\\/li>\\r\\n          <li>Marocchino con nutella<\\/li>\\r\\n          <li>Latte bianco<\\/li>\\r\\n          <li>Latte macchiato<\\/li>\\r\\n          <li>Marocchino freddo...<\\/li>\\r\\n          <li>non la solita crema caff\\u00e8!<\\/li>\\r\\n          <li>&#40;crema di latte con caff\\u00e8 vero&#41;<\\/li>\\r\\n        <\\/ul>\\r\\n   \\r\\n        <ul>\\r\\n           <li><b>YOGURT FROZEN<\\/b><\\/li>\\r\\n          <li>Al naturale<\\/li>\\r\\n          <li>Con frutta<\\/li>\\r\\n          <li>Con nutella<\\/li>\\r\\n          <li>Con muesli<\\/li>\\r\\n          <li>Con Brownie a strati<\\/li>\\r\\n        <\\/ul>\\r\\n            \\r\\n        <ul>\\r\\n          <li><b>COOKIE ICE COFFEE<\\/b><\\/li>\\r\\n          <li>Gelato al fior di latte con cookie<\\/li>\\r\\n\\t\\t  <li>spezzettato e innaffiato di caff\\u00e8 <\\/li>\\r\\n        <\\/ul>\\r\\n\\r\\n    <ul>\\r\\n       <li><b>BIRRE ARTIGIANALI BRITISH<\\/b><\\/li>\\r\\n      <li>FREEDOM<\\/li>\\r\\n      <li>PIONEER - Bionda<\\/li>\\r\\n      <li>STOUT - Scura<\\/li>\\r\\n      <li>ORGANIC LAGER - Bionda biologica<\\/li>\\r\\n      <li>ORGANIC DARK LAGER - Biologica ambrata<\\/li>\\r\\n     <\\/ul>\\r\\n   \\t    \\r\\n  <\\/div>\\r\\n  \\r\\n  <div class=\\\"large-1 columns\\\"><\\/div>\\r\\n  \\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-23 01:15:32\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-23 03:49:12\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-23 03:44:57\",\"publish_up\":\"2014-08-23 01:15:32\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":17,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"58\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(56,9,1,'','2014-08-24 22:08:58',847,7893,'596dc1756a950061952a73a38fac63d6664eb5eb','{\"id\":9,\"asset_id\":\"78\",\"title\":\"THE MENU\",\"alias\":\"the-menu\",\"introtext\":\"<div class=\\\"row menu\\\">\\r\\n  <div class=\\\"large-6 columns\\\">\\r\\n    <h4 class=\\\"subheader dolci\\\">Dolci<\\/h4>\\r\\n    <ul>\\r\\n    <li>Cupcake<\\/li>\\r\\n\\t<li>Mini Cheesecake<\\/li>\\r\\n    <li>Brownie<\\/li>\\r\\n    <li>Brownie Cheesecake<\\/li>\\r\\n    <li>Cookie<\\/li>\\r\\n    <li>Frollini<\\/li>\\r\\n    <li>Scone<\\/li>\\r\\n    <li>Scone con marmellata<\\/li>\\r\\n    <li>Fetta di torta<\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n\\r\\n    \\r\\n    <h4 class=\\\"subheader te\\\">T\\u00e9<\\/h4>\\r\\n    <ul>\\r\\n    <li><b>NERI<\\/b><\\/li>\\r\\n    <li>English breakfast<\\/li>\\r\\n    <li>Darjeling Classico<\\/li>\\r\\n    <li>Darjeling earl grey<\\/li>\\r\\n    <li>Fiocchi di cioccolato<\\/li>\\r\\n    <li>Chai<\\/li>\\r\\n    <li>Chilli Chai <\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li><b>ROSSI - senza caffeina<\\/b><\\/li>\\r\\n    <li>Rooibos classico<\\/li>\\r\\n    <li>Rooibos cannella<\\/li>\\r\\n    <li>Rooibos caramello<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n    <li><b>VERDI<\\/b><\\/li>\\r\\n    <li>Mao Feng classico<\\/li>\\r\\n    <li>Alla Menta<\\/li>\\r\\n    <li>Fiori di gelsomino<\\/li>\\r\\n    <li>Pop corn &#40; con riso tostato &#41;<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li><b>BIANCO<\\/b><\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n      <li><b>BLU<\\/b><\\/li>\\r\\n    <li>Oolong ting tung <\\/li>\\r\\n    <\\/ul>\\r\\n    <li><b>TISANE<\\/b><\\/li>\\r\\n      <ul>\\r\\n        <li>Menta<\\/li>\\r\\n        <li>Liquirizia &amp; menta<\\/li>\\r\\n        <li>Limone &amp; zenzero<\\/li>\\r\\n        <li>Erba limoncella<\\/li>\\r\\n        <li>Frutti rossi<\\/li>\\r\\n        <li>Yerba mate<\\/li>\\r\\n        <li>Camomilla<\\/li>\\r\\n      <\\/ul>\\r\\n    <h4 class=\\\"subheader lunch\\\"><i style=\\\"font-weight: normal;\\\">Light<\\/i> Lunch<\\/h4>\\r\\n    <ul>\\r\\n      <li><b>SANDWICHES 3 STRATI<\\/b><\\/li>\\r\\n      <li><b>Pane Integrale, Cereali, Curry<\\/b><\\/li>\\r\\n      <li><b>Spalmato con burro<\\/b><\\/li>\\r\\n      <p>     \\r\\n      <\\/p>\\r\\n       <li><b>CAMDEN LOCK MARKET<\\/b><\\/li>\\r\\n      <li>Open sandwich 2 strati<\\/li>\\r\\n      <li>Fontina, bacon, pomodoro e uovo<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>BOROUGH MARKET<\\/b><\\/li>\\r\\n      <li>Salmone, Philadelphia e insalata<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>OLD SPITAFIELDS MARKET<\\/b><\\/li>\\r\\n      <li>Pollo grigliato, insalata, pomodoro,<\\/li>\\r\\n      <li>salsa yogurt al curry<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>PORTOBELLO ROAD MARKET<\\/b><\\/li>\\r\\n      <li>Tacchino, Philadelphia, pomodoro,<\\/li>\\r\\n      <li>insalata e maionese<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>GREENWICH MARKET<\\/b><\\/li>\\r\\n      <li>Cotto, mozzarella, pomodoro e insalata<\\/li>\\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>BRIXTON MARKET<\\/b><\\/li>\\r\\n      <li>Tonno, uovo sodo, pomodoro cetriolo<\\/li>\\r\\n     \\r\\n       <p>     \\r\\n      <\\/p>\\r\\n       <li><b>COVENT GARDEN<\\/b><\\/li>\\r\\n      <li>Pollo grigliato, bacon, fontina,<\\/li>\\r\\n      <li>pomodoro, insalata e salsa a piacere<\\/li>\\r\\n        <p>     \\r\\n      <\\/p>\\r\\n       <li><b>TRAMEZZINI<\\/b> 3 STRATI<\\/li>\\r\\n    <\\/ul>\\r\\n         \\r\\n    <ul>\\r\\n      <li><b>INSALATONA<\\/b><\\/li>\\r\\n      <li>Misticanze, verdure di stagione,<\\/li>\\r\\n      <li>mozzarella e tonno<\\/li>\\r\\n      <p>\\r\\n        \\r\\n      <\\/p>\\r\\n      <li><b>EXTRA: INSALATE, PIATTO DEL GIORNO<\\/b><\\/li>\\r\\n      <li><b>E ZUPPE DEL GIORNO<\\/b><\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n<\\/div>\\r\\n  \\r\\n      <div class=\\\"large-6 columns\\\">\\r\\n        <h4 class=\\\"subheader cioccolate\\\">Cioccolate<\\/h4>\\r\\n    <ul>\\r\\n    <li><b>FONDENTE  70% cacao<\\/b><\\/li>\\r\\n      <p><\\/p>\\r\\n\\t<li><b>al LATTE<\\/b><\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Menta<\\/li>\\r\\n    <li>Peperoncino<\\/li>\\r\\n    <li>Lime e peperoncino<\\/li>\\r\\n    <li>Caramello<\\/li>\\r\\n    <li>Cannella<\\/li>\\r\\n    <li>Zenzero<\\/li>\\r\\n    <li>Rocky Road - biscottino &amp; marshmallows<\\/li>\\r\\n    <li>Arancia<\\/li>\\r\\n    <li>Banana &amp; toffee<\\/li>\\r\\n    <p>\\r\\n      \\r\\n      <\\/p>\\r\\n    <li><b>BIANCHE<\\/b><\\/li>\\r\\n    <li>Classica<\\/li>\\r\\n    <li>Fragola<\\/li>\\r\\n    <li>Limone &amp; Meringa<\\/li>\\r\\n    <li>Nocciola<\\/li>\\r\\n    <li>Creme brul\\u00e9e<\\/li>      \\r\\n    <\\/ul>\\r\\n        \\r\\n    <h4 class=\\\"subheader bevande\\\">Bevande<\\/h4>\\r\\n    <ul>\\r\\n      <li><b>CENTRIFUGHE DI FRUTTA FRESCA DI STAGIONE<\\/b><\\/li>\\r\\n      <li>Arancia, carote e mela<\\/li>\\r\\n      <li>Mela, carote e zenzero<\\/li>\\r\\n      <li>Pompelmo rosa e mela<\\/li>\\r\\n      <li>Mela, ananas e Fragola<\\/li>\\r\\n      <li>Mela e pera<\\/li>\\r\\n      <li>Pesca, mela e kiwi<\\/li>\\r\\n      <li>Melone, uva e mela<\\/li>\\r\\n      <li>Frullati di frutta fresca di stagione<\\/li>\\r\\n    <\\/ul>\\r\\n    \\r\\n        <ul>\\r\\n          <li><b>CAFFETTERIA TRADIZIONALE<\\/b><\\/li>\\r\\n          <li>Caffe<\\/li>\\r\\n          <li>Dek<\\/li>\\r\\n          <li>Orzo<\\/li>\\r\\n          <li>Ginseng<\\/li>\\r\\n          <li>Cappuccino<\\/li>\\r\\n          <li>Cappuccino latte soya<\\/li>\\r\\n          <li>Marocchino <\\/li>\\r\\n          <li>Marocchino latte soya<\\/li>\\r\\n          <li>Marocchino con nutella<\\/li>\\r\\n          <li>Latte bianco<\\/li>\\r\\n          <li>Latte macchiato<\\/li>\\r\\n          <li>Marocchino freddo...<\\/li>\\r\\n          <li>non la solita crema caff\\u00e8!<\\/li>\\r\\n          <li>&#40;crema di latte con caff\\u00e8 vero&#41;<\\/li>\\r\\n        <\\/ul>\\r\\n   \\r\\n        <ul>\\r\\n           <li><b>YOGURT FROZEN<\\/b><\\/li>\\r\\n          <li>Al naturale<\\/li>\\r\\n          <li>Con frutta<\\/li>\\r\\n          <li>Con nutella<\\/li>\\r\\n          <li>Con muesli<\\/li>\\r\\n          <li>Con Brownie a strati<\\/li>\\r\\n        <\\/ul>\\r\\n            \\r\\n        <ul>\\r\\n          <li><b>COOKIE ICE COFFEE<\\/b><\\/li>\\r\\n          <li>Gelato al fior di latte con cookie<\\/li>\\r\\n\\t\\t  <li>spezzettato e innaffiato di caff\\u00e8 <\\/li>\\r\\n        <\\/ul>\\r\\n\\r\\n    <ul>\\r\\n       <li><b>BIRRE ARTIGIANALI BRITISH<\\/b><\\/li>\\r\\n      <li>FREEDOM<\\/li>\\r\\n      <li>PIONEER - Bionda<\\/li>\\r\\n      <li>STOUT - Scura<\\/li>\\r\\n      <li>ORGANIC LAGER - Bionda biologica<\\/li>\\r\\n      <li>ORGANIC DARK LAGER - Biologica ambrata<\\/li>\\r\\n     <\\/ul>\\r\\n   \\t    \\r\\n  <\\/div>\\r\\n  \\r\\n  <div class=\\\"large-1 columns\\\"><\\/div>\\r\\n  \\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-23 01:15:32\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-24 22:08:58\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-24 22:08:17\",\"publish_up\":\"2014-08-23 01:15:32\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":18,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"108\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(57,8,1,'','2014-08-27 14:07:41',847,2199,'b78cf269a2d336c37bf3b4e5b84ade6d2a7b5a54','{\"id\":8,\"asset_id\":\"77\",\"title\":\"GLUTEN FREE\",\"alias\":\"gluten-free\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<p><b>Il mercoled\\u00ec e il venerd\\u00ec potrai trovare muffin e torte Gluten Free<\\/b>  e senza lattosio. Provale e non potrai pi\\u00f9 farne a meno! Inoltre, altri prodotti prodotti direttamente da UK come le patatine Creeps Ten Acre, senza glutine!\\r\\n<\\/p>\\r\\n\\r\\n<img src=\\\"images\\/tea_room_and_more_foto.png\\\" alt=\\\"\\\" \\/>\\r\\n    <p>\\r\\n  Alcuni prodotti li potrai trovare anche giovedi e venerdi,\\r\\nma il mercoledi li gustarai appena sfornati, ti aspettiamo!  \\r\\n  <\\/p>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-23 01:07:11\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-27 14:07:41\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-27 14:06:15\",\"publish_up\":\"2014-08-23 01:07:11\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"48\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(58,8,1,'','2014-08-27 14:08:44',847,2199,'6df3e2ba61ca6725cb616073a1369a3348907b86','{\"id\":8,\"asset_id\":\"77\",\"title\":\"GLUTEN FREE\",\"alias\":\"gluten-free\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<p><b>Il mercoled\\u00ec e il venerd\\u00ec potrai trovare muffin e torte Gluten Free<\\/b>  e senza lattosio. Provale e non potrai pi\\u00f9 farne a meno! Inoltre, altri prodotti prodotti direttamente da UK come le patatine Crisps Ten Acre, senza glutine!\\r\\n<\\/p>\\r\\n\\r\\n<img src=\\\"images\\/tea_room_and_more_foto.png\\\" alt=\\\"\\\" \\/>\\r\\n    <p>\\r\\n  Alcuni prodotti li potrai trovare anche giovedi e venerdi,\\r\\nma il mercoledi li gustarai appena sfornati, ti aspettiamo!  \\r\\n  <\\/p>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-08-23 01:07:11\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-27 14:08:44\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-27 14:07:57\",\"publish_up\":\"2014-08-23 01:07:11\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"48\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(59,2,1,'','2014-08-27 14:17:41',847,2466,'631f714190c6c69dba3c555990a166cd47b3be7a','{\"id\":2,\"asset_id\":\"61\",\"title\":\"SUNDAY BRUNCH\",\"alias\":\"sunday-brunch\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<h6>\\r\\n  La colazione incotra il pranzo,<br \\/>\\r\\n  ogni prima domenica del mese.\\r\\n<\\/h6>\\r\\n<p>\\r\\nIl brunch e\' un pasto che consiste\\r\\nin una commistione di prima colazione e pranzo. Lo stesso termine riflette questa commistione: si tratta, infatti di una forma sincopata tra \\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffc\\ufffcgli equivalenti termini inglesi, breakfast e lunch.\\r\\n<\\/p>\\r\\n<img src=\\\"images\\/brunch_foto.png\\\" alt=\\\"\\\" \\/>\\r\\n<p>\\r\\nPuoi scegliere tra 3 menu: Vegetariano, di Carne o di pesce.  \\r\\n<\\/p>\\r\\n  <a href=\\\"index.php\\/the-menu\\\">Guarda l\'ultimo men\\u00fa<\\/a>\\r\\n  <p>\\r\\n    \\r\\n  <\\/p>\\r\\n  <a style=\\\"float:right;\\\" href=\\\"index.php\\/sunday-brunch\\/prenota\\\" class=\\\"tiny button secondary\\\">Prenota<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-07 10:06:48\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-27 14:17:41\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-27 14:17:24\",\"publish_up\":\"2014-05-07 10:06:48\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":14,\"ordering\":\"5\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"157\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(60,2,1,'','2014-08-27 15:04:51',847,2415,'98fffcc1a1d8c45fb8ccf59e472613ebbbcd691b','{\"id\":2,\"asset_id\":\"61\",\"title\":\"SUNDAY BRUNCH\",\"alias\":\"sunday-brunch\",\"introtext\":\"<div class=\\\"brunch\\\">\\r\\n<h6>\\r\\n  La colazione incotra il pranzo,<br \\/>\\r\\n  ogni prima domenica del mese.\\r\\n<\\/h6>\\r\\n<p>\\r\\nIl brunch e\' un pasto che consiste in una commistione di prima colazione e pranzo. Lo stesso termine riflette questa commistione: si tratta, infatti di una forma sincopata tra gli equivalenti termini inglesi, breakfast e lunch.\\r\\n<\\/p>\\r\\n<img src=\\\"images\\/brunch_foto.png\\\" alt=\\\"\\\" \\/>\\r\\n<p>\\r\\nPuoi scegliere tra 3 menu: Vegetariano, di Carne o di pesce.  \\r\\n<\\/p>\\r\\n  <a href=\\\"index.php\\/the-menu\\\">Guarda l\'ultimo men\\u00fa<\\/a>\\r\\n  <p>\\r\\n    \\r\\n  <\\/p>\\r\\n  <a style=\\\"float:right;\\\" href=\\\"index.php\\/sunday-brunch\\/prenota\\\" class=\\\"tiny button secondary\\\">Prenota<\\/a>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-05-07 10:06:48\",\"created_by\":\"847\",\"created_by_alias\":\"\",\"modified\":\"2014-08-27 15:04:51\",\"modified_by\":\"847\",\"checked_out\":\"847\",\"checked_out_time\":\"2014-08-27 15:04:25\",\"publish_up\":\"2014-05-07 10:06:48\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":15,\"ordering\":\"5\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"163\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
/*!40000 ALTER TABLE `reob7_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_update_sites`
--

DROP TABLE IF EXISTS `reob7_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_update_sites`
--

LOCK TABLES `reob7_update_sites` WRITE;
/*!40000 ALTER TABLE `reob7_update_sites` DISABLE KEYS */;
INSERT INTO `reob7_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',1,1409229457,''),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1409229457,''),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',1,1409229457,''),(4,'Foxcontact update site','extension','http://www.fox.ra.it/phocadownload/foxcontact.xml',1,1409229457,'');
/*!40000 ALTER TABLE `reob7_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_update_sites_extensions`
--

DROP TABLE IF EXISTS `reob7_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_update_sites_extensions`
--

LOCK TABLES `reob7_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `reob7_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `reob7_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(4,10004);
/*!40000 ALTER TABLE `reob7_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_updates`
--

DROP TABLE IF EXISTS `reob7_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_updates`
--

LOCK TABLES `reob7_updates` WRITE;
/*!40000 ALTER TABLE `reob7_updates` DISABLE KEYS */;
INSERT INTO `reob7_updates` VALUES (1,1,700,'Joomla','','joomla','file','',0,'3.3.3','','http://update.joomla.org/core/sts/extension_sts.xml','',''),(2,3,0,'Malay','','pkg_ms-MY','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/ms-MY_details.xml','',''),(3,3,0,'Romanian','','pkg_ro-RO','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/ro-RO_details.xml','',''),(4,3,0,'Flemish','','pkg_nl-BE','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/nl-BE_details.xml','',''),(5,3,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/zh-TW_details.xml','',''),(6,3,0,'French','','pkg_fr-FR','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/fr-FR_details.xml','',''),(7,3,0,'Galician','','pkg_gl-ES','package','',0,'3.3.1.2','','http://update.joomla.org/language/details3/gl-ES_details.xml','',''),(8,3,0,'German','','pkg_de-DE','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/de-DE_details.xml','',''),(9,3,0,'Greek','','pkg_el-GR','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/el-GR_details.xml','',''),(10,3,0,'Japanese','','pkg_ja-JP','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/ja-JP_details.xml','',''),(11,3,0,'Hebrew','','pkg_he-IL','package','',0,'3.1.1.1','','http://update.joomla.org/language/details3/he-IL_details.xml','',''),(12,3,0,'EnglishAU','','pkg_en-AU','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/en-AU_details.xml','',''),(13,3,0,'EnglishUS','','pkg_en-US','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/en-US_details.xml','',''),(14,3,0,'Hungarian','','pkg_hu-HU','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/hu-HU_details.xml','',''),(15,3,0,'Afrikaans','','pkg_af-ZA','package','',0,'3.2.0.1','','http://update.joomla.org/language/details3/af-ZA_details.xml','',''),(16,3,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'3.3.2.1','','http://update.joomla.org/language/details3/ar-AA_details.xml','',''),(17,3,0,'Belarusian','','pkg_be-BY','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/be-BY_details.xml','',''),(18,3,0,'Bulgarian','','pkg_bg-BG','package','',0,'3.3.0.1','','http://update.joomla.org/language/details3/bg-BG_details.xml','',''),(19,3,0,'Catalan','','pkg_ca-ES','package','',0,'3.3.2.1','','http://update.joomla.org/language/details3/ca-ES_details.xml','',''),(20,3,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/zh-CN_details.xml','',''),(21,3,0,'Croatian','','pkg_hr-HR','package','',0,'3.1.5.1','','http://update.joomla.org/language/details3/hr-HR_details.xml','',''),(22,3,0,'Czech','','pkg_cs-CZ','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/cs-CZ_details.xml','',''),(23,3,0,'Danish','','pkg_da-DK','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/da-DK_details.xml','',''),(24,3,0,'Dutch','','pkg_nl-NL','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/nl-NL_details.xml','',''),(25,3,0,'Estonian','','pkg_et-EE','package','',0,'3.3.1.2','','http://update.joomla.org/language/details3/et-EE_details.xml','',''),(26,3,0,'Italian','','pkg_it-IT','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/it-IT_details.xml','',''),(27,3,0,'Korean','','pkg_ko-KR','package','',0,'3.2.3.1','','http://update.joomla.org/language/details3/ko-KR_details.xml','',''),(28,3,0,'Latvian','','pkg_lv-LV','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/lv-LV_details.xml','',''),(29,3,0,'Macedonian','','pkg_mk-MK','package','',0,'3.3.2.1','','http://update.joomla.org/language/details3/mk-MK_details.xml','',''),(30,3,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'3.2.2.1','','http://update.joomla.org/language/details3/nb-NO_details.xml','',''),(31,3,0,'Persian','','pkg_fa-IR','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/fa-IR_details.xml','',''),(32,3,0,'Polish','','pkg_pl-PL','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/pl-PL_details.xml','',''),(33,3,0,'Portuguese','','pkg_pt-PT','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/pt-PT_details.xml','',''),(34,3,0,'Russian','','pkg_ru-RU','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/ru-RU_details.xml','',''),(35,3,0,'Slovak','','pkg_sk-SK','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/sk-SK_details.xml','',''),(36,3,0,'Swedish','','pkg_sv-SE','package','',0,'3.3.3.3','','http://update.joomla.org/language/details3/sv-SE_details.xml','',''),(37,3,0,'Syriac','','pkg_sy-IQ','package','',0,'3.3.2.1','','http://update.joomla.org/language/details3/sy-IQ_details.xml','',''),(38,3,0,'Tamil','','pkg_ta-IN','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/ta-IN_details.xml','',''),(39,3,0,'Thai','','pkg_th-TH','package','',0,'3.3.2.1','','http://update.joomla.org/language/details3/th-TH_details.xml','',''),(40,3,0,'Turkish','','pkg_tr-TR','package','',0,'3.3.2.1','','http://update.joomla.org/language/details3/tr-TR_details.xml','',''),(41,3,0,'Ukrainian','','pkg_uk-UA','package','',0,'3.3.3.15','','http://update.joomla.org/language/details3/uk-UA_details.xml','',''),(42,3,0,'Uyghur','','pkg_ug-CN','package','',0,'3.3.0.1','','http://update.joomla.org/language/details3/ug-CN_details.xml','',''),(43,3,0,'Albanian','','pkg_sq-AL','package','',0,'3.1.1.1','','http://update.joomla.org/language/details3/sq-AL_details.xml','',''),(44,3,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'3.0.2.1','','http://update.joomla.org/language/details3/pt-BR_details.xml','',''),(45,3,0,'Serbian Latin','','pkg_sr-YU','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/sr-YU_details.xml','',''),(46,3,0,'Spanish','','pkg_es-ES','package','',0,'3.3.1.3','','http://update.joomla.org/language/details3/es-ES_details.xml','',''),(47,3,0,'Bosnian','','pkg_bs-BA','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/bs-BA_details.xml','',''),(48,3,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/sr-RS_details.xml','',''),(49,3,0,'Vietnamese','','pkg_vi-VN','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/vi-VN_details.xml','',''),(50,3,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'3.3.0.2','','http://update.joomla.org/language/details3/id-ID_details.xml','',''),(51,3,0,'Finnish','','pkg_fi-FI','package','',0,'3.3.2.1','','http://update.joomla.org/language/details3/fi-FI_details.xml','',''),(52,3,0,'Swahili','','pkg_sw-KE','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/sw-KE_details.xml','',''),(53,3,0,'Montenegrin','','pkg_srp-ME','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/srp-ME_details.xml','',''),(54,3,0,'EnglishCA','','pkg_en-CA','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/en-CA_details.xml','',''),(55,3,0,'FrenchCA','','pkg_fr-CA','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/fr-CA_details.xml','',''),(56,3,0,'Welsh','','pkg_cy-GB','package','',0,'3.3.0.1','','http://update.joomla.org/language/details3/cy-GB_details.xml','',''),(57,3,0,'Sinhala','','pkg_si-LK','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/si-LK_details.xml','','');
/*!40000 ALTER TABLE `reob7_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_user_keys`
--

DROP TABLE IF EXISTS `reob7_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_user_keys`
--

LOCK TABLES `reob7_user_keys` WRITE;
/*!40000 ALTER TABLE `reob7_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_user_notes`
--

DROP TABLE IF EXISTS `reob7_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_user_notes`
--

LOCK TABLES `reob7_user_notes` WRITE;
/*!40000 ALTER TABLE `reob7_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_user_profiles`
--

DROP TABLE IF EXISTS `reob7_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_user_profiles`
--

LOCK TABLES `reob7_user_profiles` WRITE;
/*!40000 ALTER TABLE `reob7_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_user_usergroup_map`
--

DROP TABLE IF EXISTS `reob7_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_user_usergroup_map`
--

LOCK TABLES `reob7_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `reob7_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `reob7_user_usergroup_map` VALUES (847,8);
/*!40000 ALTER TABLE `reob7_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_usergroups`
--

DROP TABLE IF EXISTS `reob7_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_usergroups`
--

LOCK TABLES `reob7_usergroups` WRITE;
/*!40000 ALTER TABLE `reob7_usergroups` DISABLE KEYS */;
INSERT INTO `reob7_usergroups` VALUES (1,0,1,18,'Public'),(2,1,8,15,'Registered'),(3,2,9,14,'Author'),(4,3,10,13,'Editor'),(5,4,11,12,'Publisher'),(6,1,4,7,'Manager'),(7,6,5,6,'Administrator'),(8,1,16,17,'Super Users'),(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `reob7_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_users`
--

DROP TABLE IF EXISTS `reob7_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=848 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_users`
--

LOCK TABLES `reob7_users` WRITE;
/*!40000 ALTER TABLE `reob7_users` DISABLE KEYS */;
INSERT INTO `reob7_users` VALUES (847,'Super User','admin','alexrah@gmail.com','$P$D85BaiX5LNF7ZpHzpRJNGNVuc5d.J61',0,1,'2014-05-06 20:12:37','2014-08-28 13:06:52','0','','0000-00-00 00:00:00',0,'','');
/*!40000 ALTER TABLE `reob7_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_viewlevels`
--

DROP TABLE IF EXISTS `reob7_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_viewlevels`
--

LOCK TABLES `reob7_viewlevels` WRITE;
/*!40000 ALTER TABLE `reob7_viewlevels` DISABLE KEYS */;
INSERT INTO `reob7_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]'),(5,'Guest',0,'[9]'),(6,'Super Users',0,'[8]');
/*!40000 ALTER TABLE `reob7_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reob7_weblinks`
--

DROP TABLE IF EXISTS `reob7_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reob7_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reob7_weblinks`
--

LOCK TABLES `reob7_weblinks` WRITE;
/*!40000 ALTER TABLE `reob7_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `reob7_weblinks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-28 15:35:23
