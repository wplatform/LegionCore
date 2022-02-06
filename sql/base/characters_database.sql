-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: characters
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
-- Table structure for table `account_data`
--

DROP TABLE IF EXISTS `account_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_data` (
  `accountId` int unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  `time` int unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`accountId`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_data`
--

LOCK TABLES `account_data` WRITE;
/*!40000 ALTER TABLE `account_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_instance_times`
--

DROP TABLE IF EXISTS `account_instance_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_instance_times` (
  `accountId` int unsigned NOT NULL,
  `instanceId` int unsigned NOT NULL DEFAULT '0',
  `releaseTime` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`,`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_instance_times`
--

LOCK TABLES `account_instance_times` WRITE;
/*!40000 ALTER TABLE `account_instance_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_instance_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_tutorial`
--

DROP TABLE IF EXISTS `account_tutorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_tutorial` (
  `accountId` int unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `tut0` int unsigned NOT NULL DEFAULT '0',
  `tut1` int unsigned NOT NULL DEFAULT '0',
  `tut2` int unsigned NOT NULL DEFAULT '0',
  `tut3` int unsigned NOT NULL DEFAULT '0',
  `tut4` int unsigned NOT NULL DEFAULT '0',
  `tut5` int unsigned NOT NULL DEFAULT '0',
  `tut6` int unsigned NOT NULL DEFAULT '0',
  `tut7` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_tutorial`
--

LOCK TABLES `account_tutorial` WRITE;
/*!40000 ALTER TABLE `account_tutorial` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_tutorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arena_team`
--

DROP TABLE IF EXISTS `arena_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arena_team` (
  `arenaTeamId` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `captainGuid` bigint unsigned NOT NULL DEFAULT '0',
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  `rating` smallint unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint unsigned NOT NULL DEFAULT '0',
  `rank` int unsigned NOT NULL DEFAULT '0',
  `backgroundColor` int unsigned NOT NULL DEFAULT '0',
  `emblemStyle` tinyint unsigned NOT NULL DEFAULT '0',
  `emblemColor` int unsigned NOT NULL DEFAULT '0',
  `borderStyle` tinyint unsigned NOT NULL DEFAULT '0',
  `borderColor` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arena_team`
--

LOCK TABLES `arena_team` WRITE;
/*!40000 ALTER TABLE `arena_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arena_team_member`
--

DROP TABLE IF EXISTS `arena_team_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arena_team_member` (
  `arenaTeamId` int unsigned NOT NULL DEFAULT '0',
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint unsigned NOT NULL DEFAULT '0',
  `personalRating` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arena_team_member`
--

LOCK TABLES `arena_team_member` WRITE;
/*!40000 ALTER TABLE `arena_team_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_team_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auctionhouse`
--

DROP TABLE IF EXISTS `auctionhouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auctionhouse` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `auctioneerguid` bigint unsigned NOT NULL DEFAULT '0',
  `itemguid` bigint unsigned NOT NULL DEFAULT '0',
  `itemowner` bigint unsigned NOT NULL DEFAULT '0',
  `buyoutprice` bigint unsigned NOT NULL DEFAULT '0',
  `time` int unsigned NOT NULL DEFAULT '0',
  `buyguid` bigint unsigned NOT NULL DEFAULT '0',
  `lastbid` bigint unsigned NOT NULL DEFAULT '0',
  `startbid` bigint unsigned NOT NULL DEFAULT '0',
  `deposit` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_guid` (`itemguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auctionhouse`
--

LOCK TABLES `auctionhouse` WRITE;
/*!40000 ALTER TABLE `auctionhouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `auctionhouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blackmarket_auctions`
--

DROP TABLE IF EXISTS `blackmarket_auctions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blackmarket_auctions` (
  `marketId` int NOT NULL DEFAULT '0',
  `currentBid` bigint unsigned NOT NULL DEFAULT '0',
  `time` int NOT NULL DEFAULT '0',
  `numBids` int NOT NULL DEFAULT '0',
  `bidder` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`marketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blackmarket_auctions`
--

LOCK TABLES `blackmarket_auctions` WRITE;
/*!40000 ALTER TABLE `blackmarket_auctions` DISABLE KEYS */;
/*!40000 ALTER TABLE `blackmarket_auctions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugreport`
--

DROP TABLE IF EXISTS `bugreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bugreport` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` longtext NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Debug System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugreport`
--

LOCK TABLES `bugreport` WRITE;
/*!40000 ALTER TABLE `bugreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar_events`
--

DROP TABLE IF EXISTS `calendar_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendar_events` (
  `EventID` bigint unsigned NOT NULL DEFAULT '0',
  `Owner` bigint unsigned NOT NULL DEFAULT '0',
  `Title` varchar(255) NOT NULL DEFAULT '',
  `Description` varchar(255) NOT NULL DEFAULT '',
  `EventType` tinyint unsigned NOT NULL DEFAULT '4',
  `TextureID` int NOT NULL DEFAULT '-1',
  `Date` int unsigned NOT NULL DEFAULT '0',
  `Flags` int unsigned NOT NULL DEFAULT '0',
  `LockDate` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar_events`
--

LOCK TABLES `calendar_events` WRITE;
/*!40000 ALTER TABLE `calendar_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar_invites`
--

DROP TABLE IF EXISTS `calendar_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendar_invites` (
  `InviteID` bigint unsigned NOT NULL DEFAULT '0',
  `EventID` bigint unsigned NOT NULL DEFAULT '0',
  `Invitee` bigint unsigned NOT NULL DEFAULT '0',
  `Sender` bigint unsigned NOT NULL DEFAULT '0',
  `Status` tinyint unsigned NOT NULL DEFAULT '0',
  `ResponseTime` int unsigned NOT NULL DEFAULT '0',
  `ModerationRank` tinyint unsigned NOT NULL DEFAULT '0',
  `Note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`InviteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar_invites`
--

LOCK TABLES `calendar_invites` WRITE;
/*!40000 ALTER TABLE `calendar_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channels`
--

DROP TABLE IF EXISTS `channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `channels` (
  `name` varchar(128) NOT NULL,
  `team` int unsigned NOT NULL,
  `announce` tinyint unsigned NOT NULL DEFAULT '1',
  `ownership` tinyint unsigned NOT NULL DEFAULT '1',
  `password` varchar(32) DEFAULT NULL,
  `bannedList` text,
  `lastUsed` int unsigned NOT NULL,
  PRIMARY KEY (`name`,`team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Channel System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channels`
--

LOCK TABLES `channels` WRITE;
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_account_data`
--

DROP TABLE IF EXISTS `character_account_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_account_data` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  `time` int unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_account_data`
--

LOCK TABLES `character_account_data` WRITE;
/*!40000 ALTER TABLE `character_account_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_account_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_achievement`
--

DROP TABLE IF EXISTS `character_achievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_achievement` (
  `guid` bigint unsigned NOT NULL,
  `achievement` int unsigned NOT NULL,
  `date` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_achievement`
--

LOCK TABLES `character_achievement` WRITE;
/*!40000 ALTER TABLE `character_achievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_achievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_achievement_progress`
--

DROP TABLE IF EXISTS `character_achievement_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_achievement_progress` (
  `guid` bigint unsigned NOT NULL,
  `criteria` int unsigned NOT NULL,
  `counter` bigint unsigned NOT NULL,
  `date` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_achievement_progress`
--

LOCK TABLES `character_achievement_progress` WRITE;
/*!40000 ALTER TABLE `character_achievement_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_achievement_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_action`
--

DROP TABLE IF EXISTS `character_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_action` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `spec` tinyint unsigned NOT NULL DEFAULT '0',
  `button` tinyint unsigned NOT NULL DEFAULT '0',
  `action` int unsigned NOT NULL DEFAULT '0',
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`,`button`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_action`
--

LOCK TABLES `character_action` WRITE;
/*!40000 ALTER TABLE `character_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_archaeology_branchs`
--

DROP TABLE IF EXISTS `character_archaeology_branchs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_archaeology_branchs` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `projectId` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_archaeology_branchs`
--

LOCK TABLES `character_archaeology_branchs` WRITE;
/*!40000 ALTER TABLE `character_archaeology_branchs` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_archaeology_branchs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_archaeology_digsites`
--

DROP TABLE IF EXISTS `character_archaeology_digsites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_archaeology_digsites` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `digsiteId` smallint unsigned NOT NULL DEFAULT '0',
  `point_x` float DEFAULT '0',
  `point_y` float DEFAULT '0',
  `count` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`digsiteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_archaeology_digsites`
--

LOCK TABLES `character_archaeology_digsites` WRITE;
/*!40000 ALTER TABLE `character_archaeology_digsites` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_archaeology_digsites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_archaeology_history`
--

DROP TABLE IF EXISTS `character_archaeology_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_archaeology_history` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `time` smallint unsigned NOT NULL DEFAULT '0',
  `projectId` int unsigned NOT NULL DEFAULT '0',
  `count` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_archaeology_history`
--

LOCK TABLES `character_archaeology_history` WRITE;
/*!40000 ALTER TABLE `character_archaeology_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_archaeology_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_arena_data`
--

DROP TABLE IF EXISTS `character_arena_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_arena_data` (
  `guid` bigint unsigned NOT NULL,
  `slot` tinyint unsigned NOT NULL,
  `rating` int unsigned NOT NULL DEFAULT '0',
  `bestRatingOfWeek` int unsigned NOT NULL DEFAULT '0',
  `bestRatingOfSeason` int unsigned NOT NULL DEFAULT '0',
  `matchMakerRating` int unsigned NOT NULL DEFAULT '0',
  `weekGames` int unsigned NOT NULL DEFAULT '0',
  `weekWins` int unsigned NOT NULL DEFAULT '0',
  `prevWeekGames` int unsigned NOT NULL DEFAULT '0',
  `prevWeekWins` int unsigned NOT NULL DEFAULT '0',
  `seasonGames` int unsigned NOT NULL DEFAULT '0',
  `seasonWins` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_arena_data`
--

LOCK TABLES `character_arena_data` WRITE;
/*!40000 ALTER TABLE `character_arena_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_arena_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_aura`
--

DROP TABLE IF EXISTS `character_aura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_aura` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `itemGuid` binary(16) NOT NULL,
  `spell` int unsigned NOT NULL,
  `effectMask` int unsigned NOT NULL,
  `recalculateMask` int unsigned NOT NULL DEFAULT '0',
  `stackCount` tinyint unsigned NOT NULL DEFAULT '1',
  `maxDuration` int NOT NULL DEFAULT '0',
  `remainTime` int NOT NULL DEFAULT '0',
  `remainCharges` tinyint unsigned NOT NULL DEFAULT '0',
  `castItemLevel` int NOT NULL DEFAULT '-1',
  PRIMARY KEY (`guid`,`casterGuid`,`itemGuid`,`spell`,`effectMask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_aura`
--

LOCK TABLES `character_aura` WRITE;
/*!40000 ALTER TABLE `character_aura` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_aura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_aura_effect`
--

DROP TABLE IF EXISTS `character_aura_effect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_aura_effect` (
  `guid` bigint unsigned NOT NULL,
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `itemGuid` binary(16) NOT NULL,
  `spell` int unsigned NOT NULL,
  `effectMask` int unsigned NOT NULL,
  `effectIndex` tinyint unsigned NOT NULL,
  `amount` int NOT NULL DEFAULT '0',
  `baseAmount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`casterGuid`,`itemGuid`,`spell`,`effectMask`,`effectIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_aura_effect`
--

LOCK TABLES `character_aura_effect` WRITE;
/*!40000 ALTER TABLE `character_aura_effect` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_aura_effect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_banned`
--

DROP TABLE IF EXISTS `character_banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_banned` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bandate` int unsigned NOT NULL DEFAULT '0',
  `unbandate` int unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Ban List';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_banned`
--

LOCK TABLES `character_banned` WRITE;
/*!40000 ALTER TABLE `character_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_battleground_data`
--

DROP TABLE IF EXISTS `character_battleground_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_battleground_data` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `instanceId` int unsigned NOT NULL COMMENT 'Instance Identifier',
  `team` smallint unsigned NOT NULL,
  `joinX` float NOT NULL DEFAULT '0',
  `joinY` float NOT NULL DEFAULT '0',
  `joinZ` float NOT NULL DEFAULT '0',
  `joinO` float NOT NULL DEFAULT '0',
  `joinMapId` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `taxiStart` int unsigned NOT NULL DEFAULT '0',
  `taxiEnd` int unsigned NOT NULL DEFAULT '0',
  `mountSpell` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_battleground_data`
--

LOCK TABLES `character_battleground_data` WRITE;
/*!40000 ALTER TABLE `character_battleground_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_battleground_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_battleground_random`
--

DROP TABLE IF EXISTS `character_battleground_random`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_battleground_random` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_battleground_random`
--

LOCK TABLES `character_battleground_random` WRITE;
/*!40000 ALTER TABLE `character_battleground_random` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_battleground_random` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_cuf_profiles`
--

DROP TABLE IF EXISTS `character_cuf_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_cuf_profiles` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Character Guid',
  `id` tinyint unsigned NOT NULL COMMENT 'Profile Id (0-4)',
  `name` varchar(12) NOT NULL COMMENT 'Profile Name',
  `frameHeight` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Height',
  `frameWidth` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Width',
  `sortBy` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Sort By',
  `healthText` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Health Text',
  `boolOptions` int unsigned NOT NULL DEFAULT '0' COMMENT 'Many Configurable Bool Options',
  `topPoint` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Frame top alignment',
  `bottomPoint` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Frame bottom alignment',
  `leftPoint` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Frame left alignment',
  `topOffset` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Frame position offset from top',
  `bottomOffset` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Frame position offset from bottom',
  `leftOffset` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Frame position offset from left',
  PRIMARY KEY (`guid`,`id`),
  KEY `index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_cuf_profiles`
--

LOCK TABLES `character_cuf_profiles` WRITE;
/*!40000 ALTER TABLE `character_cuf_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_cuf_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_currency`
--

DROP TABLE IF EXISTS `character_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_currency` (
  `CharacterGuid` bigint unsigned NOT NULL DEFAULT '0',
  `Currency` smallint unsigned NOT NULL,
  `Quantity` int unsigned NOT NULL,
  `WeeklyQuantity` int unsigned NOT NULL,
  `TrackedQuantity` int unsigned NOT NULL,
  `Flags` tinyint unsigned NOT NULL,
  `WeekCap` int unsigned NOT NULL,
  PRIMARY KEY (`CharacterGuid`,`Currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_currency`
--

LOCK TABLES `character_currency` WRITE;
/*!40000 ALTER TABLE `character_currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_declinedname`
--

DROP TABLE IF EXISTS `character_declinedname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_declinedname` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `genitive` varchar(15) NOT NULL DEFAULT '',
  `dative` varchar(15) NOT NULL DEFAULT '',
  `accusative` varchar(15) NOT NULL DEFAULT '',
  `instrumental` varchar(15) NOT NULL DEFAULT '',
  `prepositional` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_declinedname`
--

LOCK TABLES `character_declinedname` WRITE;
/*!40000 ALTER TABLE `character_declinedname` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_declinedname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_equipmentsets`
--

DROP TABLE IF EXISTS `character_equipmentsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_equipmentsets` (
  `guid` bigint NOT NULL DEFAULT '0',
  `setguid` bigint NOT NULL AUTO_INCREMENT,
  `setindex` tinyint unsigned NOT NULL DEFAULT '0',
  `name` varchar(31) NOT NULL,
  `iconname` varchar(100) NOT NULL,
  `ignore_mask` int unsigned NOT NULL DEFAULT '0',
  `AssignedSpecIndex` int NOT NULL DEFAULT '-1',
  `item0` bigint unsigned NOT NULL DEFAULT '0',
  `item1` bigint unsigned NOT NULL DEFAULT '0',
  `item2` bigint unsigned NOT NULL DEFAULT '0',
  `item3` bigint unsigned NOT NULL DEFAULT '0',
  `item4` bigint unsigned NOT NULL DEFAULT '0',
  `item5` bigint unsigned NOT NULL DEFAULT '0',
  `item6` bigint unsigned NOT NULL DEFAULT '0',
  `item7` bigint unsigned NOT NULL DEFAULT '0',
  `item8` bigint unsigned NOT NULL DEFAULT '0',
  `item9` bigint unsigned NOT NULL DEFAULT '0',
  `item10` bigint unsigned NOT NULL DEFAULT '0',
  `item11` bigint unsigned NOT NULL DEFAULT '0',
  `item12` bigint unsigned NOT NULL DEFAULT '0',
  `item13` bigint unsigned NOT NULL DEFAULT '0',
  `item14` bigint unsigned NOT NULL DEFAULT '0',
  `item15` bigint unsigned NOT NULL DEFAULT '0',
  `item16` bigint unsigned NOT NULL DEFAULT '0',
  `item17` bigint unsigned NOT NULL DEFAULT '0',
  `item18` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_equipmentsets`
--

LOCK TABLES `character_equipmentsets` WRITE;
/*!40000 ALTER TABLE `character_equipmentsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_equipmentsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_fishingsteps`
--

DROP TABLE IF EXISTS `character_fishingsteps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_fishingsteps` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `fishingSteps` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_fishingsteps`
--

LOCK TABLES `character_fishingsteps` WRITE;
/*!40000 ALTER TABLE `character_fishingsteps` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_fishingsteps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_garrison`
--

DROP TABLE IF EXISTS `character_garrison`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_garrison` (
  `guid` bigint unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL,
  `siteLevelId` int unsigned NOT NULL DEFAULT '0',
  `followerActivationsRemainingToday` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_garrison`
--

LOCK TABLES `character_garrison` WRITE;
/*!40000 ALTER TABLE `character_garrison` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_garrison_blueprints`
--

DROP TABLE IF EXISTS `character_garrison_blueprints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_garrison_blueprints` (
  `guid` bigint unsigned NOT NULL,
  `garrison_type` tinyint unsigned NOT NULL,
  `buildingId` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`garrison_type`,`buildingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_garrison_blueprints`
--

LOCK TABLES `character_garrison_blueprints` WRITE;
/*!40000 ALTER TABLE `character_garrison_blueprints` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison_blueprints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_garrison_buildings`
--

DROP TABLE IF EXISTS `character_garrison_buildings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_garrison_buildings` (
  `guid` bigint unsigned NOT NULL,
  `garrison_type` tinyint unsigned NOT NULL,
  `plotInstanceId` int unsigned NOT NULL DEFAULT '0',
  `buildingId` int unsigned NOT NULL DEFAULT '0',
  `timeBuilt` bigint unsigned NOT NULL,
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`garrison_type`,`plotInstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_garrison_buildings`
--

LOCK TABLES `character_garrison_buildings` WRITE;
/*!40000 ALTER TABLE `character_garrison_buildings` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison_buildings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_garrison_follower_abilities`
--

DROP TABLE IF EXISTS `character_garrison_follower_abilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_garrison_follower_abilities` (
  `dbId` bigint unsigned NOT NULL,
  `abilityId` int unsigned NOT NULL,
  `slot` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dbId`,`abilityId`,`slot`),
  CONSTRAINT `fk_foll_dbid` FOREIGN KEY (`dbId`) REFERENCES `character_garrison_followers` (`dbId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_garrison_follower_abilities`
--

LOCK TABLES `character_garrison_follower_abilities` WRITE;
/*!40000 ALTER TABLE `character_garrison_follower_abilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison_follower_abilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_garrison_followers`
--

DROP TABLE IF EXISTS `character_garrison_followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_garrison_followers` (
  `dbId` bigint unsigned NOT NULL,
  `guid` bigint unsigned NOT NULL,
  `garrison_type` tinyint unsigned NOT NULL,
  `followerId` int unsigned NOT NULL,
  `quality` int unsigned NOT NULL DEFAULT '2',
  `level` int unsigned NOT NULL DEFAULT '90',
  `itemLevelWeapon` int unsigned NOT NULL DEFAULT '600',
  `itemLevelArmor` int unsigned NOT NULL DEFAULT '600',
  `xp` int unsigned NOT NULL DEFAULT '0',
  `currentBuilding` int unsigned NOT NULL DEFAULT '0',
  `currentMission` int unsigned NOT NULL DEFAULT '0',
  `status` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dbId`),
  UNIQUE KEY `idx_guid_id` (`guid`,`followerId`),
  CONSTRAINT `fk_foll_owner` FOREIGN KEY (`guid`) REFERENCES `characters` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_garrison_followers`
--

LOCK TABLES `character_garrison_followers` WRITE;
/*!40000 ALTER TABLE `character_garrison_followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison_followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_garrison_mission_rewards`
--

DROP TABLE IF EXISTS `character_garrison_mission_rewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_garrison_mission_rewards` (
  `dbId` int unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL,
  `itemId` int NOT NULL DEFAULT '0',
  `itemQuantity` int unsigned NOT NULL DEFAULT '0',
  `currencyId` int NOT NULL DEFAULT '0',
  `currencyQuantity` int unsigned NOT NULL DEFAULT '0',
  `FollowerXP` int unsigned NOT NULL DEFAULT '0',
  `BonusAbilityId` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_garrison_mission_rewards`
--

LOCK TABLES `character_garrison_mission_rewards` WRITE;
/*!40000 ALTER TABLE `character_garrison_mission_rewards` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison_mission_rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_garrison_missions`
--

DROP TABLE IF EXISTS `character_garrison_missions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_garrison_missions` (
  `dbId` bigint unsigned NOT NULL,
  `guid` bigint unsigned NOT NULL,
  `garrison_type` tinyint unsigned NOT NULL,
  `missionId` int unsigned NOT NULL,
  `offerTime` int NOT NULL,
  `startTime` int NOT NULL,
  `status` tinyint unsigned NOT NULL,
  PRIMARY KEY (`dbId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_garrison_missions`
--

LOCK TABLES `character_garrison_missions` WRITE;
/*!40000 ALTER TABLE `character_garrison_missions` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison_missions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_gifts`
--

DROP TABLE IF EXISTS `character_gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_gifts` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `item_guid` bigint unsigned NOT NULL DEFAULT '0',
  `entry` int unsigned NOT NULL DEFAULT '0',
  `flags` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_gifts`
--

LOCK TABLES `character_gifts` WRITE;
/*!40000 ALTER TABLE `character_gifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_gifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_glyphs`
--

DROP TABLE IF EXISTS `character_glyphs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_glyphs` (
  `guid` bigint unsigned NOT NULL,
  `talentGroup` tinyint unsigned NOT NULL DEFAULT '0',
  `glyphId` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`talentGroup`,`glyphId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_glyphs`
--

LOCK TABLES `character_glyphs` WRITE;
/*!40000 ALTER TABLE `character_glyphs` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_glyphs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_homebind`
--

DROP TABLE IF EXISTS `character_homebind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_homebind` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `mapId` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `zoneId` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Zone Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_homebind`
--

LOCK TABLES `character_homebind` WRITE;
/*!40000 ALTER TABLE `character_homebind` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_homebind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_instance`
--

DROP TABLE IF EXISTS `character_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_instance` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `instance` int unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint unsigned NOT NULL DEFAULT '0',
  `extendState` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_instance`
--

LOCK TABLES `character_instance` WRITE;
/*!40000 ALTER TABLE `character_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_inventory`
--

DROP TABLE IF EXISTS `character_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_inventory` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bag` bigint unsigned NOT NULL DEFAULT '0',
  `slot` tinyint unsigned NOT NULL DEFAULT '0',
  `item` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Item Global Unique Identifier',
  PRIMARY KEY (`item`),
  UNIQUE KEY `guid` (`guid`,`bag`,`slot`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_inventory`
--

LOCK TABLES `character_inventory` WRITE;
/*!40000 ALTER TABLE `character_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_pet`
--

DROP TABLE IF EXISTS `character_pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_pet` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `entry` int unsigned NOT NULL DEFAULT '0',
  `owner` bigint unsigned NOT NULL DEFAULT '0',
  `modelid` int unsigned DEFAULT '0',
  `CreatedBySpell` mediumint unsigned NOT NULL DEFAULT '0',
  `PetType` tinyint unsigned NOT NULL DEFAULT '0',
  `level` smallint unsigned NOT NULL DEFAULT '1',
  `exp` int unsigned NOT NULL DEFAULT '0',
  `Reactstate` tinyint unsigned NOT NULL DEFAULT '0',
  `name` varchar(21) NOT NULL DEFAULT 'Pet',
  `renamed` tinyint unsigned NOT NULL DEFAULT '0',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `slot` tinyint unsigned NOT NULL DEFAULT '0',
  `curhealth` int unsigned NOT NULL DEFAULT '1',
  `curmana` int unsigned NOT NULL DEFAULT '0',
  `savetime` int unsigned NOT NULL DEFAULT '0',
  `abdata` text,
  `specialization` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `idx_slot` (`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Pet System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_pet`
--

LOCK TABLES `character_pet` WRITE;
/*!40000 ALTER TABLE `character_pet` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_pet_declinedname`
--

DROP TABLE IF EXISTS `character_pet_declinedname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_pet_declinedname` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `owner` int unsigned NOT NULL DEFAULT '0',
  `genitive` varchar(12) NOT NULL DEFAULT '',
  `dative` varchar(12) NOT NULL DEFAULT '',
  `accusative` varchar(12) NOT NULL DEFAULT '',
  `instrumental` varchar(12) NOT NULL DEFAULT '',
  `prepositional` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `owner_key` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_pet_declinedname`
--

LOCK TABLES `character_pet_declinedname` WRITE;
/*!40000 ALTER TABLE `character_pet_declinedname` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pet_declinedname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_pvp_talent`
--

DROP TABLE IF EXISTS `character_pvp_talent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_pvp_talent` (
  `Guid` bigint unsigned NOT NULL,
  `TalentID` mediumint unsigned NOT NULL,
  `TalentGroup` tinyint unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_pvp_talent`
--

LOCK TABLES `character_pvp_talent` WRITE;
/*!40000 ALTER TABLE `character_pvp_talent` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pvp_talent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_queststatus`
--

DROP TABLE IF EXISTS `character_queststatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_queststatus` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `quest` int unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  `timer` int unsigned NOT NULL DEFAULT '0',
  `explored` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_queststatus`
--

LOCK TABLES `character_queststatus` WRITE;
/*!40000 ALTER TABLE `character_queststatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_queststatus_daily`
--

DROP TABLE IF EXISTS `character_queststatus_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_queststatus_daily` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `time` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_queststatus_daily`
--

LOCK TABLES `character_queststatus_daily` WRITE;
/*!40000 ALTER TABLE `character_queststatus_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_queststatus_monthly`
--

DROP TABLE IF EXISTS `character_queststatus_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_queststatus_monthly` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_queststatus_monthly`
--

LOCK TABLES `character_queststatus_monthly` WRITE;
/*!40000 ALTER TABLE `character_queststatus_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_monthly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_queststatus_objectives`
--

DROP TABLE IF EXISTS `character_queststatus_objectives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_queststatus_objectives` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `quest` int unsigned NOT NULL DEFAULT '0',
  `objective` tinyint unsigned NOT NULL DEFAULT '0',
  `data` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`,`objective`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_queststatus_objectives`
--

LOCK TABLES `character_queststatus_objectives` WRITE;
/*!40000 ALTER TABLE `character_queststatus_objectives` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_objectives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_queststatus_objectives_criteria`
--

DROP TABLE IF EXISTS `character_queststatus_objectives_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_queststatus_objectives_criteria` (
  `guid` bigint unsigned NOT NULL,
  `questObjectiveId` int unsigned NOT NULL,
  PRIMARY KEY (`guid`,`questObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_queststatus_objectives_criteria`
--

LOCK TABLES `character_queststatus_objectives_criteria` WRITE;
/*!40000 ALTER TABLE `character_queststatus_objectives_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_objectives_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_queststatus_objectives_criteria_progress`
--

DROP TABLE IF EXISTS `character_queststatus_objectives_criteria_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_queststatus_objectives_criteria_progress` (
  `guid` bigint unsigned NOT NULL,
  `criteriaId` int unsigned NOT NULL,
  `counter` bigint unsigned NOT NULL,
  `date` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteriaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_queststatus_objectives_criteria_progress`
--

LOCK TABLES `character_queststatus_objectives_criteria_progress` WRITE;
/*!40000 ALTER TABLE `character_queststatus_objectives_criteria_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_objectives_criteria_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_queststatus_rewarded`
--

DROP TABLE IF EXISTS `character_queststatus_rewarded`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_queststatus_rewarded` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `active` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_queststatus_rewarded`
--

LOCK TABLES `character_queststatus_rewarded` WRITE;
/*!40000 ALTER TABLE `character_queststatus_rewarded` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_rewarded` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_queststatus_seasonal`
--

DROP TABLE IF EXISTS `character_queststatus_seasonal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_queststatus_seasonal` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `event` int unsigned NOT NULL DEFAULT '0' COMMENT 'Event Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_queststatus_seasonal`
--

LOCK TABLES `character_queststatus_seasonal` WRITE;
/*!40000 ALTER TABLE `character_queststatus_seasonal` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_seasonal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_queststatus_weekly`
--

DROP TABLE IF EXISTS `character_queststatus_weekly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_queststatus_weekly` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_queststatus_weekly`
--

LOCK TABLES `character_queststatus_weekly` WRITE;
/*!40000 ALTER TABLE `character_queststatus_weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_weekly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_recovery`
--

DROP TABLE IF EXISTS `character_recovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_recovery` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `delivered` tinyint(1) DEFAULT '0',
  `account` int unsigned NOT NULL,
  `race` int unsigned NOT NULL,
  `class` int unsigned NOT NULL,
  `level` int unsigned NOT NULL,
  `skill1` int NOT NULL DEFAULT '0',
  `skill1_value` int NOT NULL DEFAULT '0',
  `skill2` int NOT NULL DEFAULT '0',
  `skill2_value` int NOT NULL DEFAULT '0',
  `items` text NOT NULL,
  `spells` text NOT NULL,
  `at_login` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_recovery`
--

LOCK TABLES `character_recovery` WRITE;
/*!40000 ALTER TABLE `character_recovery` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_recovery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_reputation`
--

DROP TABLE IF EXISTS `character_reputation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_reputation` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `faction` smallint unsigned NOT NULL DEFAULT '0',
  `standing` int NOT NULL DEFAULT '0',
  `flags` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`faction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_reputation`
--

LOCK TABLES `character_reputation` WRITE;
/*!40000 ALTER TABLE `character_reputation` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_reputation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_shop`
--

DROP TABLE IF EXISTS `character_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_shop` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `guid` bigint NOT NULL,
  `type` tinyint NOT NULL,
  `itemId` int NOT NULL DEFAULT '0',
  `itemCount` int NOT NULL DEFAULT '0',
  `delivered` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_shop`
--

LOCK TABLES `character_shop` WRITE;
/*!40000 ALTER TABLE `character_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_skills`
--

DROP TABLE IF EXISTS `character_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_skills` (
  `guid` bigint unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` smallint unsigned NOT NULL,
  `value` smallint unsigned NOT NULL,
  `max` smallint unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_skills`
--

LOCK TABLES `character_skills` WRITE;
/*!40000 ALTER TABLE `character_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_social`
--

DROP TABLE IF EXISTS `character_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_social` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `friend` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Flags',
  `note` varchar(48) NOT NULL DEFAULT '' COMMENT 'Friend Note',
  PRIMARY KEY (`guid`,`friend`,`flags`),
  KEY `friend` (`friend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_social`
--

LOCK TABLES `character_social` WRITE;
/*!40000 ALTER TABLE `character_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_spell`
--

DROP TABLE IF EXISTS `character_spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_spell` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_spell`
--

LOCK TABLES `character_spell` WRITE;
/*!40000 ALTER TABLE `character_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_spell_charges`
--

DROP TABLE IF EXISTS `character_spell_charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_spell_charges` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `categoryId` int unsigned NOT NULL DEFAULT '0' COMMENT 'SpellCategory.dbc Identifier',
  `rechargeStart` int unsigned NOT NULL DEFAULT '0',
  `rechargeEnd` int unsigned NOT NULL DEFAULT '0',
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_spell_charges`
--

LOCK TABLES `character_spell_charges` WRITE;
/*!40000 ALTER TABLE `character_spell_charges` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell_charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_spell_cooldown`
--

DROP TABLE IF EXISTS `character_spell_cooldown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_spell_cooldown` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` int unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `item` int unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `time` int unsigned NOT NULL DEFAULT '0',
  `categoryId` int unsigned NOT NULL DEFAULT '0' COMMENT 'Spell category Id',
  `categoryEnd` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_spell_cooldown`
--

LOCK TABLES `character_spell_cooldown` WRITE;
/*!40000 ALTER TABLE `character_spell_cooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell_cooldown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_stats`
--

DROP TABLE IF EXISTS `character_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_stats` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int unsigned NOT NULL DEFAULT '0',
  `maxpower1` int unsigned NOT NULL DEFAULT '0',
  `maxpower2` int unsigned NOT NULL DEFAULT '0',
  `maxpower3` int unsigned NOT NULL DEFAULT '0',
  `maxpower4` int unsigned NOT NULL DEFAULT '0',
  `maxpower5` int unsigned NOT NULL DEFAULT '0',
  `maxpower6` int unsigned NOT NULL DEFAULT '0',
  `strength` int unsigned NOT NULL DEFAULT '0',
  `agility` int unsigned NOT NULL DEFAULT '0',
  `stamina` int unsigned NOT NULL DEFAULT '0',
  `intellect` int unsigned NOT NULL DEFAULT '0',
  `armor` int unsigned NOT NULL DEFAULT '0',
  `resHoly` int unsigned NOT NULL DEFAULT '0',
  `resFire` int unsigned NOT NULL DEFAULT '0',
  `resNature` int unsigned NOT NULL DEFAULT '0',
  `resFrost` int unsigned NOT NULL DEFAULT '0',
  `resShadow` int unsigned NOT NULL DEFAULT '0',
  `resArcane` int unsigned NOT NULL DEFAULT '0',
  `blockPct` float unsigned NOT NULL DEFAULT '0',
  `dodgePct` float unsigned NOT NULL DEFAULT '0',
  `parryPct` float unsigned NOT NULL DEFAULT '0',
  `critPct` float unsigned NOT NULL DEFAULT '0',
  `rangedCritPct` float unsigned NOT NULL DEFAULT '0',
  `spellCritPct` float unsigned NOT NULL DEFAULT '0',
  `attackPower` int unsigned NOT NULL DEFAULT '0',
  `rangedAttackPower` int unsigned NOT NULL DEFAULT '0',
  `spellPower` int unsigned NOT NULL DEFAULT '0',
  `resilience` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_stats`
--

LOCK TABLES `character_stats` WRITE;
/*!40000 ALTER TABLE `character_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_talent`
--

DROP TABLE IF EXISTS `character_talent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_talent` (
  `guid` bigint unsigned NOT NULL,
  `talentId` mediumint unsigned NOT NULL,
  `talentGroup` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`talentId`,`talentGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_talent`
--

LOCK TABLES `character_talent` WRITE;
/*!40000 ALTER TABLE `character_talent` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_talent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_transmog_outfits`
--

DROP TABLE IF EXISTS `character_transmog_outfits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_transmog_outfits` (
  `guid` bigint NOT NULL DEFAULT '0',
  `setguid` bigint NOT NULL AUTO_INCREMENT,
  `setindex` tinyint unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  `iconname` varchar(256) NOT NULL,
  `ignore_mask` int NOT NULL DEFAULT '0',
  `appearance0` int NOT NULL DEFAULT '0',
  `appearance1` int NOT NULL DEFAULT '0',
  `appearance2` int NOT NULL DEFAULT '0',
  `appearance3` int NOT NULL DEFAULT '0',
  `appearance4` int NOT NULL DEFAULT '0',
  `appearance5` int NOT NULL DEFAULT '0',
  `appearance6` int NOT NULL DEFAULT '0',
  `appearance7` int NOT NULL DEFAULT '0',
  `appearance8` int NOT NULL DEFAULT '0',
  `appearance9` int NOT NULL DEFAULT '0',
  `appearance10` int NOT NULL DEFAULT '0',
  `appearance11` int NOT NULL DEFAULT '0',
  `appearance12` int NOT NULL DEFAULT '0',
  `appearance13` int NOT NULL DEFAULT '0',
  `appearance14` int NOT NULL DEFAULT '0',
  `appearance15` int NOT NULL DEFAULT '0',
  `appearance16` int NOT NULL DEFAULT '0',
  `appearance17` int NOT NULL DEFAULT '0',
  `appearance18` int NOT NULL DEFAULT '0',
  `mainHandEnchant` int NOT NULL DEFAULT '0',
  `offHandEnchant` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_transmog_outfits`
--

LOCK TABLES `character_transmog_outfits` WRITE;
/*!40000 ALTER TABLE `character_transmog_outfits` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_transmog_outfits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_void_storage`
--

DROP TABLE IF EXISTS `character_void_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_void_storage` (
  `itemId` bigint unsigned NOT NULL,
  `playerGuid` bigint unsigned NOT NULL,
  `itemEntry` mediumint unsigned NOT NULL,
  `slot` tinyint unsigned NOT NULL,
  `creatorGuid` bigint unsigned NOT NULL DEFAULT '0',
  `randomPropertyType` tinyint unsigned NOT NULL DEFAULT '0',
  `randomProperty` int unsigned NOT NULL DEFAULT '0',
  `suffixFactor` int unsigned NOT NULL DEFAULT '0',
  `upgradeId` int unsigned NOT NULL DEFAULT '0',
  `fixedScalingLevel` int unsigned DEFAULT '0',
  `artifactKnowledgeLevel` int unsigned DEFAULT '0',
  `challengeId` int unsigned NOT NULL DEFAULT '0',
  `challengeLevel` int unsigned NOT NULL DEFAULT '0',
  `challengeAffix1` int unsigned NOT NULL DEFAULT '0',
  `challengeAffix2` int unsigned NOT NULL DEFAULT '0',
  `challengeAffix3` int unsigned NOT NULL DEFAULT '0',
  `challengeIsCharged` int unsigned NOT NULL DEFAULT '0',
  `context` tinyint unsigned NOT NULL DEFAULT '0',
  `bonusListIDs` text,
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `idx_player_slot` (`playerGuid`,`slot`),
  KEY `idx_player` (`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_void_storage`
--

LOCK TABLES `character_void_storage` WRITE;
/*!40000 ALTER TABLE `character_void_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_void_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_world_quest`
--

DROP TABLE IF EXISTS `character_world_quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_world_quest` (
  `guid` bigint unsigned NOT NULL,
  `questId` int unsigned NOT NULL,
  `lastupdate` int unsigned NOT NULL,
  `timer` int unsigned NOT NULL,
  `variableID` int unsigned NOT NULL,
  `value` int NOT NULL,
  PRIMARY KEY (`guid`,`questId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_world_quest`
--

LOCK TABLES `character_world_quest` WRITE;
/*!40000 ALTER TABLE `character_world_quest` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_world_quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `slot` tinyint unsigned NOT NULL DEFAULT '0',
  `race` tinyint unsigned NOT NULL DEFAULT '0',
  `class` tinyint unsigned NOT NULL DEFAULT '0',
  `gender` tinyint unsigned NOT NULL DEFAULT '0',
  `level` tinyint unsigned NOT NULL DEFAULT '0',
  `xp` int unsigned NOT NULL DEFAULT '0',
  `money` bigint unsigned NOT NULL DEFAULT '0',
  `skin` tinyint unsigned NOT NULL DEFAULT '0',
  `face` tinyint unsigned NOT NULL DEFAULT '0',
  `hairStyle` tinyint unsigned NOT NULL DEFAULT '0',
  `hairColor` tinyint unsigned NOT NULL DEFAULT '0',
  `facialStyle` tinyint unsigned NOT NULL DEFAULT '0',
  `customDisplay1` tinyint unsigned NOT NULL DEFAULT '0',
  `customDisplay2` tinyint unsigned NOT NULL DEFAULT '0',
  `customDisplay3` tinyint unsigned NOT NULL DEFAULT '0',
  `inventorySlots` tinyint unsigned NOT NULL DEFAULT '20',
  `bankSlots` tinyint unsigned NOT NULL DEFAULT '0',
  `restState` tinyint unsigned NOT NULL DEFAULT '0',
  `playerFlags` int unsigned NOT NULL DEFAULT '0',
  `playerFlagsEx` int unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `map` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `instance_id` int unsigned NOT NULL DEFAULT '0',
  `dungeonDifficulty` tinyint unsigned NOT NULL DEFAULT '1',
  `raidDifficulty` tinyint unsigned NOT NULL DEFAULT '14',
  `legacyRaidDifficulty` tinyint unsigned NOT NULL DEFAULT '3',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` text NOT NULL,
  `online` tinyint unsigned NOT NULL DEFAULT '0',
  `cinematic` tinyint unsigned NOT NULL DEFAULT '0',
  `totaltime` int unsigned NOT NULL DEFAULT '0',
  `leveltime` int unsigned NOT NULL DEFAULT '0',
  `logout_time` int unsigned NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `resettalents_cost` int unsigned NOT NULL DEFAULT '0',
  `resettalents_time` int unsigned NOT NULL DEFAULT '0',
  `primarySpecialization` int unsigned NOT NULL DEFAULT '0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` bigint unsigned NOT NULL DEFAULT '0',
  `extra_flags` smallint unsigned NOT NULL DEFAULT '0',
  `stable_slots` tinyint unsigned NOT NULL DEFAULT '0',
  `at_login` smallint unsigned NOT NULL DEFAULT '0',
  `zone` smallint unsigned NOT NULL DEFAULT '0',
  `death_expire_time` int unsigned NOT NULL DEFAULT '0',
  `taxi_path` text,
  `totalKills` int unsigned NOT NULL DEFAULT '0',
  `todayKills` smallint unsigned NOT NULL DEFAULT '0',
  `yesterdayKills` smallint unsigned NOT NULL DEFAULT '0',
  `chosenTitle` int unsigned NOT NULL DEFAULT '0',
  `watchedFaction` int unsigned NOT NULL DEFAULT '0',
  `drunk` tinyint unsigned NOT NULL DEFAULT '0',
  `health` int unsigned NOT NULL DEFAULT '0',
  `power1` int unsigned NOT NULL DEFAULT '0',
  `power2` int unsigned NOT NULL DEFAULT '0',
  `power3` int unsigned NOT NULL DEFAULT '0',
  `power4` int unsigned NOT NULL DEFAULT '0',
  `power5` int unsigned NOT NULL DEFAULT '0',
  `power6` int unsigned NOT NULL DEFAULT '0',
  `latency` mediumint unsigned NOT NULL DEFAULT '0',
  `activeTalentGroup` tinyint unsigned NOT NULL DEFAULT '0',
  `lootSpecId` int unsigned NOT NULL DEFAULT '0',
  `exploredZones` longtext,
  `equipmentCache` longtext,
  `knownTitles` longtext,
  `actionBars` tinyint unsigned NOT NULL DEFAULT '0',
  `grantableLevels` tinyint unsigned NOT NULL DEFAULT '0',
  `xpRate` tinyint unsigned NOT NULL DEFAULT '1',
  `deleteInfos_Account` int unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` int unsigned DEFAULT NULL,
  `honor` int unsigned NOT NULL DEFAULT '0',
  `honorLevel` int unsigned NOT NULL DEFAULT '1',
  `prestigeLevel` int unsigned NOT NULL DEFAULT '0',
  `honorRestState` tinyint unsigned NOT NULL DEFAULT '2',
  `honorRestBonus` float NOT NULL DEFAULT '0',
  `lastLoginBuild` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corpse`
--

DROP TABLE IF EXISTS `corpse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corpse` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `mapId` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `displayId` int unsigned NOT NULL DEFAULT '0',
  `itemCache` text NOT NULL,
  `bytes1` int unsigned NOT NULL DEFAULT '0',
  `bytes2` int unsigned NOT NULL DEFAULT '0',
  `flags` tinyint unsigned NOT NULL DEFAULT '0',
  `dynFlags` tinyint unsigned NOT NULL DEFAULT '0',
  `time` int unsigned NOT NULL DEFAULT '0',
  `corpseType` tinyint unsigned NOT NULL DEFAULT '0',
  `instanceId` int unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`),
  KEY `idx_type` (`corpseType`),
  KEY `idx_instance` (`instanceId`),
  KEY `idx_time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Death System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corpse`
--

LOCK TABLES `corpse` WRITE;
/*!40000 ALTER TABLE `corpse` DISABLE KEYS */;
/*!40000 ALTER TABLE `corpse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corpse_phases`
--

DROP TABLE IF EXISTS `corpse_phases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corpse_phases` (
  `OwnerGuid` bigint unsigned NOT NULL DEFAULT '0',
  `PhaseId` int unsigned NOT NULL,
  PRIMARY KEY (`OwnerGuid`,`PhaseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corpse_phases`
--

LOCK TABLES `corpse_phases` WRITE;
/*!40000 ALTER TABLE `corpse_phases` DISABLE KEYS */;
/*!40000 ALTER TABLE `corpse_phases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_respawn`
--

DROP TABLE IF EXISTS `creature_respawn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creature_respawn` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int unsigned NOT NULL DEFAULT '0',
  `mapId` smallint unsigned NOT NULL DEFAULT '0',
  `instanceId` int unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Grid Loading System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_respawn`
--

LOCK TABLES `creature_respawn` WRITE;
/*!40000 ALTER TABLE `creature_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_respawn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_condition_save`
--

DROP TABLE IF EXISTS `game_event_condition_save`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_event_condition_save` (
  `eventEntry` tinyint unsigned NOT NULL,
  `condition_id` int unsigned NOT NULL DEFAULT '0',
  `done` float DEFAULT '0',
  PRIMARY KEY (`eventEntry`,`condition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_event_condition_save`
--

LOCK TABLES `game_event_condition_save` WRITE;
/*!40000 ALTER TABLE `game_event_condition_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_condition_save` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_event_save`
--

DROP TABLE IF EXISTS `game_event_save`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_event_save` (
  `eventEntry` tinyint unsigned NOT NULL,
  `state` tinyint unsigned NOT NULL DEFAULT '1',
  `next_start` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_event_save`
--

LOCK TABLES `game_event_save` WRITE;
/*!40000 ALTER TABLE `game_event_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_save` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_respawn`
--

DROP TABLE IF EXISTS `gameobject_respawn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gameobject_respawn` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int unsigned NOT NULL DEFAULT '0',
  `mapId` smallint unsigned NOT NULL DEFAULT '0',
  `instanceId` int unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Grid Loading System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_respawn`
--

LOCK TABLES `gameobject_respawn` WRITE;
/*!40000 ALTER TABLE `gameobject_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_respawn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gm_bug`
--

DROP TABLE IF EXISTS `gm_bug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gm_bug` (
  `id` int unsigned NOT NULL,
  `playerGuid` bigint unsigned NOT NULL,
  `note` text NOT NULL,
  `createTime` int unsigned NOT NULL DEFAULT '0',
  `mapId` smallint unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `facing` float NOT NULL DEFAULT '0',
  `closedBy` bigint NOT NULL DEFAULT '0',
  `assignedTo` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gm_bug`
--

LOCK TABLES `gm_bug` WRITE;
/*!40000 ALTER TABLE `gm_bug` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_bug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gm_complaint`
--

DROP TABLE IF EXISTS `gm_complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gm_complaint` (
  `id` int unsigned NOT NULL,
  `playerGuid` bigint unsigned NOT NULL,
  `note` text NOT NULL,
  `createTime` int unsigned NOT NULL DEFAULT '0',
  `mapId` smallint unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `facing` float NOT NULL DEFAULT '0',
  `targetCharacterGuid` bigint unsigned NOT NULL,
  `complaintType` smallint unsigned NOT NULL,
  `reportLineIndex` int NOT NULL,
  `closedBy` bigint NOT NULL DEFAULT '0',
  `assignedTo` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gm_complaint`
--

LOCK TABLES `gm_complaint` WRITE;
/*!40000 ALTER TABLE `gm_complaint` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gm_complaint_chatlog`
--

DROP TABLE IF EXISTS `gm_complaint_chatlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gm_complaint_chatlog` (
  `complaintId` int unsigned NOT NULL,
  `lineId` int unsigned NOT NULL,
  `timestamp` int unsigned NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`complaintId`,`lineId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gm_complaint_chatlog`
--

LOCK TABLES `gm_complaint_chatlog` WRITE;
/*!40000 ALTER TABLE `gm_complaint_chatlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_complaint_chatlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gm_suggestion`
--

DROP TABLE IF EXISTS `gm_suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gm_suggestion` (
  `id` int unsigned NOT NULL,
  `playerGuid` bigint unsigned NOT NULL,
  `note` text NOT NULL,
  `createTime` int unsigned NOT NULL DEFAULT '0',
  `mapId` smallint unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `facing` float NOT NULL DEFAULT '0',
  `closedBy` bigint NOT NULL DEFAULT '0',
  `assignedTo` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gm_suggestion`
--

LOCK TABLES `gm_suggestion` WRITE;
/*!40000 ALTER TABLE `gm_suggestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_suggestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_instance`
--

DROP TABLE IF EXISTS `group_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_instance` (
  `guid` int unsigned NOT NULL DEFAULT '0',
  `instance` int unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_instance`
--

LOCK TABLES `group_instance` WRITE;
/*!40000 ALTER TABLE `group_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_member`
--

DROP TABLE IF EXISTS `group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_member` (
  `guid` int unsigned NOT NULL,
  `memberGuid` bigint unsigned NOT NULL,
  `memberFlags` tinyint unsigned NOT NULL DEFAULT '0',
  `subgroup` tinyint unsigned NOT NULL DEFAULT '0',
  `roles` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`memberGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_member`
--

LOCK TABLES `group_member` WRITE;
/*!40000 ALTER TABLE `group_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `guid` int unsigned NOT NULL,
  `leaderGuid` bigint unsigned NOT NULL,
  `lootMethod` tinyint unsigned NOT NULL,
  `looterGuid` bigint unsigned NOT NULL,
  `lootThreshold` tinyint unsigned NOT NULL,
  `icon1` binary(16) NOT NULL,
  `icon2` binary(16) NOT NULL,
  `icon3` binary(16) NOT NULL,
  `icon4` binary(16) NOT NULL,
  `icon5` binary(16) NOT NULL,
  `icon6` binary(16) NOT NULL,
  `icon7` binary(16) NOT NULL,
  `icon8` binary(16) NOT NULL,
  `groupType` tinyint unsigned NOT NULL,
  `difficulty` tinyint unsigned NOT NULL DEFAULT '1',
  `raidDifficulty` tinyint unsigned NOT NULL DEFAULT '14',
  `legacyRaidDifficulty` tinyint unsigned NOT NULL DEFAULT '3',
  `masterLooterGuid` bigint unsigned NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `leaderGuid` (`leaderGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild`
--

DROP TABLE IF EXISTS `guild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild` (
  `guildid` bigint unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `leaderguid` bigint unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` tinyint unsigned NOT NULL DEFAULT '0',
  `EmblemColor` tinyint unsigned NOT NULL DEFAULT '0',
  `BorderStyle` tinyint unsigned NOT NULL DEFAULT '0',
  `BorderColor` tinyint unsigned NOT NULL DEFAULT '0',
  `BackgroundColor` tinyint unsigned NOT NULL DEFAULT '0',
  `info` varchar(500) NOT NULL DEFAULT '',
  `motd` varchar(128) NOT NULL DEFAULT '',
  `createdate` int unsigned NOT NULL DEFAULT '0',
  `BankMoney` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Guild System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild`
--

LOCK TABLES `guild` WRITE;
/*!40000 ALTER TABLE `guild` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_achievement`
--

DROP TABLE IF EXISTS `guild_achievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_achievement` (
  `guildId` bigint unsigned NOT NULL,
  `achievement` int unsigned NOT NULL,
  `date` int unsigned NOT NULL DEFAULT '0',
  `guids` text NOT NULL,
  PRIMARY KEY (`guildId`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_achievement`
--

LOCK TABLES `guild_achievement` WRITE;
/*!40000 ALTER TABLE `guild_achievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_achievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_achievement_progress`
--

DROP TABLE IF EXISTS `guild_achievement_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_achievement_progress` (
  `guildId` bigint unsigned NOT NULL,
  `criteria` int unsigned NOT NULL,
  `counter` bigint unsigned NOT NULL,
  `date` int unsigned NOT NULL DEFAULT '0',
  `completedGuid` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildId`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_achievement_progress`
--

LOCK TABLES `guild_achievement_progress` WRITE;
/*!40000 ALTER TABLE `guild_achievement_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_achievement_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_bank_eventlog`
--

DROP TABLE IF EXISTS `guild_bank_eventlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_bank_eventlog` (
  `guildid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `TabId` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Guild bank TabId',
  `EventType` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` bigint unsigned NOT NULL DEFAULT '0',
  `ItemOrMoney` bigint unsigned NOT NULL DEFAULT '0',
  `ItemStackCount` smallint unsigned NOT NULL DEFAULT '0',
  `DestTabId` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Destination Tab Id',
  `TimeStamp` int unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_bank_eventlog`
--

LOCK TABLES `guild_bank_eventlog` WRITE;
/*!40000 ALTER TABLE `guild_bank_eventlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_eventlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_bank_item`
--

DROP TABLE IF EXISTS `guild_bank_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_bank_item` (
  `guildid` bigint unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint unsigned NOT NULL DEFAULT '0',
  `SlotId` tinyint unsigned NOT NULL DEFAULT '0',
  `item_guid` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`SlotId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_item_guid` (`item_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_bank_item`
--

LOCK TABLES `guild_bank_item` WRITE;
/*!40000 ALTER TABLE `guild_bank_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_bank_right`
--

DROP TABLE IF EXISTS `guild_bank_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_bank_right` (
  `guildid` bigint unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint unsigned NOT NULL DEFAULT '0',
  `rid` tinyint unsigned NOT NULL DEFAULT '0',
  `gbright` tinyint NOT NULL DEFAULT '0',
  `SlotPerDay` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`rid`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_bank_right`
--

LOCK TABLES `guild_bank_right` WRITE;
/*!40000 ALTER TABLE `guild_bank_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_bank_tab`
--

DROP TABLE IF EXISTS `guild_bank_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_bank_tab` (
  `guildid` bigint unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint unsigned NOT NULL DEFAULT '0',
  `TabName` varchar(16) NOT NULL DEFAULT '',
  `TabIcon` varchar(100) NOT NULL DEFAULT '',
  `TabText` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`guildid`,`TabId`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_bank_tab`
--

LOCK TABLES `guild_bank_tab` WRITE;
/*!40000 ALTER TABLE `guild_bank_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_eventlog`
--

DROP TABLE IF EXISTS `guild_eventlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_eventlog` (
  `guildid` bigint unsigned NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int unsigned NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint unsigned NOT NULL COMMENT 'Event type',
  `PlayerGuid1` bigint unsigned NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` bigint unsigned NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint unsigned NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` int unsigned NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `Idx_PlayerGuid1` (`PlayerGuid1`),
  KEY `Idx_PlayerGuid2` (`PlayerGuid2`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Guild Eventlog';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_eventlog`
--

LOCK TABLES `guild_eventlog` WRITE;
/*!40000 ALTER TABLE `guild_eventlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_eventlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_finder_applicant`
--

DROP TABLE IF EXISTS `guild_finder_applicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_finder_applicant` (
  `guildId` bigint unsigned NOT NULL DEFAULT '0',
  `playerGuid` bigint unsigned NOT NULL DEFAULT '0',
  `availability` tinyint unsigned DEFAULT '0',
  `classRole` tinyint unsigned DEFAULT '0',
  `interests` tinyint unsigned DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `submitTime` int unsigned DEFAULT NULL,
  PRIMARY KEY (`guildId`,`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_finder_applicant`
--

LOCK TABLES `guild_finder_applicant` WRITE;
/*!40000 ALTER TABLE `guild_finder_applicant` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_finder_applicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_finder_guild_settings`
--

DROP TABLE IF EXISTS `guild_finder_guild_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_finder_guild_settings` (
  `guildId` bigint unsigned NOT NULL,
  `availability` tinyint unsigned NOT NULL DEFAULT '0',
  `classRoles` tinyint unsigned NOT NULL DEFAULT '0',
  `interests` tinyint unsigned NOT NULL DEFAULT '0',
  `level` tinyint unsigned NOT NULL DEFAULT '1',
  `listed` tinyint unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guildId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_finder_guild_settings`
--

LOCK TABLES `guild_finder_guild_settings` WRITE;
/*!40000 ALTER TABLE `guild_finder_guild_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_finder_guild_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_member`
--

DROP TABLE IF EXISTS `guild_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_member` (
  `guildid` bigint unsigned NOT NULL COMMENT 'Guild Identificator',
  `guid` bigint unsigned NOT NULL,
  `rank` tinyint unsigned NOT NULL,
  `pnote` varchar(31) NOT NULL DEFAULT '',
  `offnote` varchar(31) NOT NULL DEFAULT '',
  UNIQUE KEY `guid_key` (`guid`),
  KEY `guildid_key` (`guildid`),
  KEY `guildid_rank_key` (`guildid`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Guild System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_member`
--

LOCK TABLES `guild_member` WRITE;
/*!40000 ALTER TABLE `guild_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_member_withdraw`
--

DROP TABLE IF EXISTS `guild_member_withdraw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_member_withdraw` (
  `guid` bigint unsigned NOT NULL,
  `tab0` int unsigned NOT NULL DEFAULT '0',
  `tab1` int unsigned NOT NULL DEFAULT '0',
  `tab2` int unsigned NOT NULL DEFAULT '0',
  `tab3` int unsigned NOT NULL DEFAULT '0',
  `tab4` int unsigned NOT NULL DEFAULT '0',
  `tab5` int unsigned NOT NULL DEFAULT '0',
  `tab6` int unsigned NOT NULL DEFAULT '0',
  `tab7` int unsigned NOT NULL DEFAULT '0',
  `money` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Guild Member Daily Withdraws';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_member_withdraw`
--

LOCK TABLES `guild_member_withdraw` WRITE;
/*!40000 ALTER TABLE `guild_member_withdraw` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_member_withdraw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_newslog`
--

DROP TABLE IF EXISTS `guild_newslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_newslog` (
  `guildid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` bigint unsigned NOT NULL DEFAULT '0',
  `Flags` int unsigned NOT NULL DEFAULT '0',
  `Value` int unsigned NOT NULL DEFAULT '0',
  `TimeStamp` int unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_newslog`
--

LOCK TABLES `guild_newslog` WRITE;
/*!40000 ALTER TABLE `guild_newslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_newslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild_rank`
--

DROP TABLE IF EXISTS `guild_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild_rank` (
  `guildid` bigint unsigned NOT NULL DEFAULT '0',
  `rid` tinyint unsigned NOT NULL,
  `rname` varchar(20) NOT NULL DEFAULT '',
  `rights` mediumint unsigned NOT NULL DEFAULT '0',
  `BankMoneyPerDay` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`rid`),
  KEY `Idx_rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Guild System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_rank`
--

LOCK TABLES `guild_rank` WRITE;
/*!40000 ALTER TABLE `guild_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instance`
--

DROP TABLE IF EXISTS `instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instance` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `map` smallint unsigned NOT NULL DEFAULT '0',
  `resettime` int unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint unsigned NOT NULL DEFAULT '0',
  `completedEncounters` int unsigned NOT NULL DEFAULT '0',
  `data` tinytext NOT NULL,
  `entranceId` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `map` (`map`),
  KEY `resettime` (`resettime`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance`
--

LOCK TABLES `instance` WRITE;
/*!40000 ALTER TABLE `instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instance_reset`
--

DROP TABLE IF EXISTS `instance_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instance_reset` (
  `mapid` smallint unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint unsigned NOT NULL DEFAULT '0',
  `resettime` bigint NOT NULL,
  PRIMARY KEY (`mapid`,`difficulty`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance_reset`
--

LOCK TABLES `instance_reset` WRITE;
/*!40000 ALTER TABLE `instance_reset` DISABLE KEYS */;
INSERT INTO `instance_reset` (`mapid`, `difficulty`, `resettime`) VALUES (33,2,1644120000),(36,2,1644120000),(249,3,1644638400),(249,4,1644638400),(269,2,1644120000),(409,9,1644638400),(469,9,1644638400),(509,3,1644120000),(531,9,1644638400),(532,3,1644638400),(533,3,1644638400),(533,4,1644638400),(534,4,1644638400),(540,2,1644120000),(542,2,1644120000),(543,2,1644120000),(544,4,1644638400),(545,2,1644120000),(546,2,1644120000),(547,2,1644120000),(548,4,1644638400),(550,4,1644638400),(552,2,1644120000),(553,2,1644120000),(554,2,1644120000),(555,2,1644120000),(556,2,1644120000),(557,2,1644120000),(558,2,1644120000),(560,2,1644120000),(564,14,1644379200),(564,33,1644379200),(565,4,1644638400),(568,2,1644120000),(574,2,1644120000),(575,2,1644120000),(576,2,1644120000),(578,2,1644120000),(580,4,1644638400),(585,2,1644120000),(595,2,1644120000),(598,2,1644120000),(599,2,1644120000),(600,2,1644120000),(601,2,1644120000),(602,2,1644120000),(603,14,1644379200),(603,33,1644379200),(604,2,1644120000),(608,2,1644120000),(615,3,1644638400),(615,4,1644638400),(616,3,1644638400),(616,4,1644638400),(619,2,1644120000),(624,3,1644638400),(624,4,1644638400),(631,3,1644638400),(631,4,1644638400),(631,5,1644638400),(631,6,1644638400),(632,2,1644120000),(643,2,1644120000),(644,2,1644120000),(645,2,1644120000),(649,3,1644638400),(649,4,1644638400),(649,5,1644638400),(649,6,1644638400),(650,2,1644120000),(657,2,1644120000),(658,2,1644120000),(668,2,1644120000),(669,3,1644638400),(669,4,1644638400),(669,5,1644638400),(669,6,1644638400),(670,2,1644120000),(671,3,1644638400),(671,4,1644638400),(671,5,1644638400),(671,6,1644638400),(720,3,1644638400),(720,4,1644638400),(720,5,1644638400),(720,6,1644638400),(724,3,1644638400),(724,4,1644638400),(724,5,1644638400),(724,6,1644638400),(725,2,1644120000),(754,3,1644638400),(754,4,1644638400),(754,5,1644638400),(754,6,1644638400),(755,2,1644120000),(757,3,1644638400),(757,4,1644638400),(757,5,1644638400),(757,6,1644638400),(859,2,1644120000),(938,2,1644120000),(939,2,1644120000),(940,2,1644120000),(959,2,1644120000),(960,2,1644120000),(961,2,1644120000),(962,2,1644120000),(967,3,1644638400),(967,4,1644638400),(967,5,1644638400),(967,6,1644638400),(967,7,1644379200),(994,2,1644120000),(996,3,1644638400),(996,4,1644638400),(996,5,1644638400),(996,6,1644638400),(996,7,1644379200),(1001,2,1644120000),(1004,2,1644120000),(1007,2,1644120000),(1008,3,1644638400),(1008,4,1644638400),(1008,5,1644638400),(1008,6,1644638400),(1008,7,1644379200),(1009,3,1644638400),(1009,4,1644638400),(1009,5,1644638400),(1009,6,1644638400),(1009,7,1644379200),(1011,2,1644120000),(1098,3,1644638400),(1098,4,1644638400),(1098,5,1644638400),(1098,6,1644638400),(1098,7,1644379200),(1136,14,1644638400),(1136,15,1644638400),(1136,16,1644638400),(1136,17,1644379200),(1175,2,1644120000),(1175,23,1644379200),(1176,2,1644120000),(1176,23,1644379200),(1182,2,1644120000),(1182,23,1644379200),(1195,2,1644120000),(1195,23,1644379200),(1205,14,1644638400),(1205,15,1644638400),(1205,16,1644638400),(1205,17,1644379200),(1208,2,1644120000),(1208,23,1644379200),(1209,2,1644120000),(1209,23,1644379200),(1228,14,1644638400),(1228,15,1644638400),(1228,16,1644638400),(1228,17,1644379200),(1279,2,1644120000),(1279,23,1644379200),(1358,2,1644120000),(1358,23,1644379200),(1448,14,1644379200),(1448,15,1644379200),(1448,16,1644379200),(1448,17,1644379200),(1456,2,1644120000),(1456,23,1644379200),(1458,2,1644120000),(1458,23,1644379200),(1466,2,1644120000),(1466,23,1644379200),(1477,2,1644120000),(1477,23,1644379200),(1492,2,1644120000),(1492,23,1644379200),(1493,2,1644120000),(1493,23,1644379200),(1501,2,1644120000),(1501,23,1644379200),(1516,23,1644379200),(1520,14,1644379200),(1520,15,1644379200),(1520,16,1644379200),(1520,17,1644379200),(1530,14,1644379200),(1530,15,1644379200),(1530,16,1644379200),(1530,17,1644379200),(1544,2,1644120000),(1544,23,1644379200),(1571,23,1644379200),(1648,14,1644379200),(1648,15,1644379200),(1648,16,1644379200),(1648,17,1644379200),(1651,23,1644379200),(1676,14,1644379200),(1676,15,1644379200),(1676,16,1644379200),(1676,17,1644379200),(1677,2,1644120000),(1677,23,1644379200),(1712,14,1644379200),(1712,15,1644379200),(1712,16,1644379200),(1712,17,1644379200),(1753,2,1644120000),(1753,23,1644379200);
/*!40000 ALTER TABLE `instance_reset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instance_scenario_progress`
--

DROP TABLE IF EXISTS `instance_scenario_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instance_scenario_progress` (
  `id` int unsigned NOT NULL,
  `criteria` int unsigned NOT NULL,
  `counter` bigint unsigned NOT NULL,
  `date` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance_scenario_progress`
--

LOCK TABLES `instance_scenario_progress` WRITE;
/*!40000 ALTER TABLE `instance_scenario_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance_scenario_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_instance`
--

DROP TABLE IF EXISTS `item_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_instance` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `itemEntry` mediumint unsigned NOT NULL DEFAULT '0',
  `owner_guid` bigint unsigned NOT NULL DEFAULT '0',
  `creatorGuid` bigint unsigned NOT NULL DEFAULT '0',
  `giftCreatorGuid` bigint unsigned NOT NULL DEFAULT '0',
  `count` int unsigned NOT NULL DEFAULT '1',
  `duration` int NOT NULL DEFAULT '0',
  `charges` tinytext,
  `flags` mediumint unsigned NOT NULL DEFAULT '0',
  `enchantments` text NOT NULL,
  `randomPropertyType` tinyint unsigned NOT NULL DEFAULT '0',
  `randomPropertyId` int unsigned NOT NULL DEFAULT '0',
  `durability` smallint unsigned NOT NULL DEFAULT '0',
  `playedTime` int unsigned NOT NULL DEFAULT '0',
  `text` text,
  `transmogrification` int unsigned NOT NULL DEFAULT '0',
  `upgradeId` int unsigned NOT NULL DEFAULT '0',
  `enchantIllusion` int unsigned NOT NULL DEFAULT '0',
  `battlePetSpeciesId` int unsigned NOT NULL DEFAULT '0',
  `battlePetBreedData` int unsigned NOT NULL DEFAULT '0',
  `battlePetLevel` smallint unsigned NOT NULL DEFAULT '0',
  `battlePetDisplayId` int unsigned NOT NULL DEFAULT '0',
  `context` tinyint unsigned NOT NULL DEFAULT '0',
  `bonusListIDs` text,
  PRIMARY KEY (`guid`),
  KEY `idx_owner_guid` (`owner_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Item System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_instance`
--

LOCK TABLES `item_instance` WRITE;
/*!40000 ALTER TABLE `item_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_instance_artifact`
--

DROP TABLE IF EXISTS `item_instance_artifact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_instance_artifact` (
  `itemGuid` bigint unsigned NOT NULL,
  `xp` bigint unsigned NOT NULL DEFAULT '0',
  `artifactAppearanceId` int unsigned NOT NULL DEFAULT '0',
  `artifactTierId` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_instance_artifact`
--

LOCK TABLES `item_instance_artifact` WRITE;
/*!40000 ALTER TABLE `item_instance_artifact` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance_artifact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_instance_artifact_powers`
--

DROP TABLE IF EXISTS `item_instance_artifact_powers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_instance_artifact_powers` (
  `itemGuid` bigint unsigned NOT NULL,
  `artifactPowerId` int unsigned NOT NULL,
  `purchasedRank` tinyint unsigned DEFAULT '0',
  PRIMARY KEY (`itemGuid`,`artifactPowerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_instance_artifact_powers`
--

LOCK TABLES `item_instance_artifact_powers` WRITE;
/*!40000 ALTER TABLE `item_instance_artifact_powers` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance_artifact_powers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_instance_gems`
--

DROP TABLE IF EXISTS `item_instance_gems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_instance_gems` (
  `itemGuid` bigint unsigned NOT NULL,
  `gemItemId1` int unsigned NOT NULL DEFAULT '0',
  `gemBonuses1` text,
  `gemContext1` tinyint unsigned NOT NULL DEFAULT '0',
  `gemScalingLevel1` int unsigned NOT NULL DEFAULT '0',
  `gemItemId2` int unsigned NOT NULL DEFAULT '0',
  `gemBonuses2` text,
  `gemContext2` tinyint unsigned NOT NULL DEFAULT '0',
  `gemScalingLevel2` int unsigned NOT NULL DEFAULT '0',
  `gemItemId3` int unsigned NOT NULL DEFAULT '0',
  `gemBonuses3` text,
  `gemContext3` tinyint unsigned NOT NULL DEFAULT '0',
  `gemScalingLevel3` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_instance_gems`
--

LOCK TABLES `item_instance_gems` WRITE;
/*!40000 ALTER TABLE `item_instance_gems` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance_gems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_instance_modifiers`
--

DROP TABLE IF EXISTS `item_instance_modifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_instance_modifiers` (
  `itemGuid` bigint unsigned NOT NULL,
  `fixedScalingLevel` int unsigned DEFAULT '0',
  `artifactKnowledgeLevel` int unsigned DEFAULT '0',
  `challengeId` int unsigned NOT NULL DEFAULT '0',
  `challengeLevel` int unsigned NOT NULL DEFAULT '0',
  `challengeAffix1` int unsigned NOT NULL DEFAULT '0',
  `challengeAffix2` int unsigned NOT NULL DEFAULT '0',
  `challengeAffix3` int unsigned NOT NULL DEFAULT '0',
  `challengeIsCharged` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_instance_modifiers`
--

LOCK TABLES `item_instance_modifiers` WRITE;
/*!40000 ALTER TABLE `item_instance_modifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance_modifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_instance_transmog`
--

DROP TABLE IF EXISTS `item_instance_transmog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_instance_transmog` (
  `itemGuid` bigint unsigned NOT NULL,
  `itemModifiedAppearanceAllSpecs` int NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec1` int NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec2` int NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec3` int NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec4` int NOT NULL DEFAULT '0',
  `spellItemEnchantmentAllSpecs` int NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec1` int NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec2` int NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec3` int NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec4` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_instance_transmog`
--

LOCK TABLES `item_instance_transmog` WRITE;
/*!40000 ALTER TABLE `item_instance_transmog` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance_transmog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_loot_items`
--

DROP TABLE IF EXISTS `item_loot_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_loot_items` (
  `container_id` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `item_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'loot item entry (item_instance.itemEntry)',
  `item_count` int NOT NULL DEFAULT '0' COMMENT 'stack size',
  `follow_rules` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'follow loot rules',
  `ffa` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'free-for-all',
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  `counted` tinyint(1) NOT NULL DEFAULT '0',
  `under_threshold` tinyint(1) NOT NULL DEFAULT '0',
  `needs_quest` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'quest drop',
  `rnd_type` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'random enchantment type',
  `rnd_prop` int unsigned NOT NULL DEFAULT '0' COMMENT 'random enchantment added when originally rolled',
  `rnd_suffix` int NOT NULL DEFAULT '0' COMMENT 'random suffix added when originally rolled',
  `context` tinyint unsigned NOT NULL DEFAULT '0',
  `bonus_list_ids` text COMMENT 'Space separated list of bonus list ids',
  PRIMARY KEY (`container_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_loot_items`
--

LOCK TABLES `item_loot_items` WRITE;
/*!40000 ALTER TABLE `item_loot_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_loot_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_loot_money`
--

DROP TABLE IF EXISTS `item_loot_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_loot_money` (
  `container_id` bigint NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `money` int NOT NULL DEFAULT '0' COMMENT 'money loot (in copper)',
  PRIMARY KEY (`container_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_loot_money`
--

LOCK TABLES `item_loot_money` WRITE;
/*!40000 ALTER TABLE `item_loot_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_loot_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_refund_instance`
--

DROP TABLE IF EXISTS `item_refund_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_refund_instance` (
  `item_guid` bigint unsigned NOT NULL COMMENT 'Item GUID',
  `player_guid` bigint unsigned NOT NULL COMMENT 'Player GUID',
  `paidMoney` bigint unsigned NOT NULL DEFAULT '0',
  `paidExtendedCost` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`,`player_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Item Refund System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_refund_instance`
--

LOCK TABLES `item_refund_instance` WRITE;
/*!40000 ALTER TABLE `item_refund_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_refund_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_soulbound_trade_data`
--

DROP TABLE IF EXISTS `item_soulbound_trade_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_soulbound_trade_data` (
  `itemGuid` bigint unsigned NOT NULL COMMENT 'Item GUID',
  `allowedPlayers` text NOT NULL COMMENT 'Space separated GUID list of players who can receive this item in trade',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Item Refund System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_soulbound_trade_data`
--

LOCK TABLES `item_soulbound_trade_data` WRITE;
/*!40000 ALTER TABLE `item_soulbound_trade_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_soulbound_trade_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lfg_data`
--

DROP TABLE IF EXISTS `lfg_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lfg_data` (
  `guid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `dungeon` int unsigned NOT NULL DEFAULT '0',
  `state` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='LFG Data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lfg_data`
--

LOCK TABLES `lfg_data` WRITE;
/*!40000 ALTER TABLE `lfg_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `lfg_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_gm`
--

DROP TABLE IF EXISTS `log_gm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_gm` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `gm_account_id` bigint DEFAULT NULL,
  `gm_account_name` blob,
  `gm_character_id` bigint DEFAULT NULL,
  `gm_character_name` blob,
  `gm_ip` text,
  `target_account_id` bigint DEFAULT NULL,
  `target_account_name` blob,
  `target_character_id` bigint DEFAULT NULL,
  `target_character_name` blob,
  `target_ip` text,
  `command` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_gm`
--

LOCK TABLES `log_gm` WRITE;
/*!40000 ALTER TABLE `log_gm` DISABLE KEYS */;
INSERT INTO `log_gm` (`id`, `date`, `gm_account_id`, `gm_account_name`, `gm_character_id`, `gm_character_name`, `gm_ip`, `target_account_id`, `target_account_name`, `target_character_id`, `target_character_name`, `target_ip`, `command`) VALUES (1,'2018-08-05 17:51:10',1,_binary 'ADMIN@ADMIN',1,_binary 'Fs','127.0.0.1',0,'',0,'','',_binary 'Command: .lookup item  传送 [X: -8865.487305 Y: -129.907394 Z: 80.733185 Map: 0 (Eastern Kingdoms) Area: 9 (Northshire Valley) Zone: Northshire Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(2,'2018-08-05 17:51:36',1,_binary 'ADMIN@ADMIN',1,_binary 'Fs','127.0.0.1',1,_binary 'ADMIN@ADMIN',1,_binary 'Fs','127.0.0.1',_binary 'Command: .lookup creature 传送 [X: -8865.487305 Y: -129.907394 Z: 80.733185 Map: 0 (Eastern Kingdoms) Area: 9 (Northshire Valley) Zone: Northshire Selected: Fs (GUID Full: 0x08000400000000000000000000000001 Type: Player Entry: 0 Low: 1)]'),(3,'2018-08-05 18:27:57',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',0,'',0,'','',_binary 'Command: .go 3498.27 -5349.45 144.967 533 [X: 832.574951 Y: 2470.308594 Z: -55.139214 Map: 1481 (Mardum) Area: 7740 (Molten Shore) Zone: Mardum, the Shattered Abyss Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(4,'2018-08-05 18:32:45',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',0,'',0,'','',_binary 'Command: .go 3498.27 -5349.45 144.967 533 [X: 2647.550049 Y: -4014.389893 Z: 105.938004 Map: 0 (Eastern Kingdoms) Area: 2624 (Blackwood Lake) Zone: Eastern Plaguelands Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(5,'2018-08-05 19:03:47',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',0,'',0,'','',_binary 'Command: .go 3498.27 -5349.45 144.967 533 [X: 2650.065186 Y: -4011.675293 Z: 105.827484 Map: 0 (Eastern Kingdoms) Area: 2624 (Blackwood Lake) Zone: Eastern Plaguelands Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(6,'2018-08-05 19:05:08',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',_binary 'Command: .modify hp 999999999999999999 [X: 3724.662842 Y: -5109.250977 Z: 141.289566 Map: 533 (Naxxramas) Area: 3456 (Naxxramas) Zone: Unknown Selected: 依利达瑞 (GUID Full: 0x08000400000000000000000000000002 Type: Player Entry: 0 Low: 2)]'),(7,'2018-08-05 19:06:23',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',0,'',0,'','',_binary 'Command: .add 140192 [X: 3719.391602 Y: -5108.389160 Z: 141.288818 Map: 533 (Naxxramas) Area: 3456 (Naxxramas) Zone: Unknown Selected: Soldier of the Frozen Wastes (GUID Full: 0x20000442A0170240000000000000063B Type: Creature Entry: 23561 Low: 1595)]'),(8,'2018-08-05 19:06:44',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',0,'',0,'','',_binary 'Command: .add 127829  [X: 3716.314697 Y: -5106.409668 Z: 141.290070 Map: 533 (Naxxramas) Area: 3456 (Naxxramas) Zone: Unknown Selected: Unstoppable Abomination (GUID Full: 0x20000442A0100B0000000000000006A5 Type: Creature Entry: 16428 Low: 1701)]'),(9,'2018-08-05 19:06:48',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',0,'',0,'','',_binary 'Command: .add 128832 [X: 3716.314697 Y: -5106.409668 Z: 141.290070 Map: 533 (Naxxramas) Area: 3456 (Naxxramas) Zone: Unknown Selected: Unstoppable Abomination (GUID Full: 0x20000442A0100B0000000000000006A5 Type: Creature Entry: 16428 Low: 1701)]'),(10,'2018-08-05 19:09:30',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',0,'',0,'','',_binary 'Command: .learn 44140  [X: -828.719971 Y: 4371.779785 Z: 738.636414 Map: 1220 (Broken Isles) Area: 7506 (Krasus\' Landing) Zone: Dalaran Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(11,'2018-08-05 19:09:38',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',0,'',0,'','',_binary 'Command: .learn 42002  [X: -828.719971 Y: 4371.779785 Z: 738.636414 Map: 1220 (Broken Isles) Area: 7506 (Krasus\' Landing) Zone: Dalaran Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(12,'2018-08-05 19:09:45',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',0,'',0,'','',_binary 'Command: .learn 40733  [X: -828.719971 Y: 4371.779785 Z: 738.636414 Map: 1220 (Broken Isles) Area: 7506 (Krasus\' Landing) Zone: Dalaran Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(13,'2018-08-05 19:11:09',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',0,'',0,'','',_binary 'Command: .go 3498.27 -5349.45 144.967 533 [X: -832.155151 Y: 4375.898926 Z: 738.640381 Map: 1220 (Broken Isles) Area: 7505 (Krasus\' Landing) Zone: Dalaran Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(14,'2018-08-05 19:11:40',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',0,'',0,'','',_binary 'Command: .modify speed 5 [X: 3503.313721 Y: -5327.924316 Z: 141.565582 Map: 533 (Naxxramas) Area: 3456 (Naxxramas) Zone: Unknown Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(15,'2018-08-05 19:14:19',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',0,'',0,'','',_binary 'Command: .learn 40496 [X: 3715.616211 Y: -5108.494629 Z: 141.289291 Map: 533 (Naxxramas) Area: 3456 (Naxxramas) Zone: Unknown Selected: Soul Weaver (GUID Full: 0x20000442A0100B400000000000000830 Type: Creature Entry: 16429 Low: 2096)]'),(16,'2018-08-05 19:14:40',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',0,'',0,'','',_binary 'Command: .learn 23452 [X: 3712.430420 Y: -5107.693359 Z: 141.289291 Map: 533 (Naxxramas) Area: 3456 (Naxxramas) Zone: Unknown Selected: Soul Weaver (GUID Full: 0x20000442A0100B400000000000000830 Type: Creature Entry: 16429 Low: 2096)]'),(17,'2018-08-05 19:14:59',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',0,'',0,'','',_binary 'Command: .learn 25049 [X: 3712.430420 Y: -5107.693359 Z: 141.289291 Map: 533 (Naxxramas) Area: 3456 (Naxxramas) Zone: Unknown Selected: Unstoppable Abomination (GUID Full: 0x20000442A0100B00000000000000088C Type: Creature Entry: 16428 Low: 2188)]'),(18,'2018-08-05 19:16:50',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',0,'',0,'','',_binary 'Command: .learn 40859  [X: 3674.554199 Y: -5099.361816 Z: 142.030792 Map: 533 (Naxxramas) Area: 3456 (Naxxramas) Zone: Unknown Selected: Kel\'Thuzad (GUID Full: 0x20000442A00F9D800000000000000781 Type: Creature Entry: 15990 Low: 1921)]'),(19,'2018-08-05 19:18:58',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',0,'',0,'','',_binary 'Command: .learn 54197 [X: 3673.877197 Y: -5099.116211 Z: 142.030930 Map: 533 (Naxxramas) Area: 3456 (Naxxramas) Zone: Unknown Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(20,'2018-08-05 19:19:22',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',_binary 'Command: .learn 142553 [X: 3685.064941 Y: -5103.171387 Z: 142.029388 Map: 533 (Naxxramas) Area: 3456 (Naxxramas) Zone: Unknown Selected: 依利达瑞 (GUID Full: 0x08000400000000000000000000000002 Type: Player Entry: 0 Low: 2)]'),(21,'2018-08-05 19:19:27',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',_binary 'Command: .learn 142552 [X: 3685.064941 Y: -5103.171387 Z: 142.029388 Map: 533 (Naxxramas) Area: 3456 (Naxxramas) Zone: Unknown Selected: 依利达瑞 (GUID Full: 0x08000400000000000000000000000002 Type: Player Entry: 0 Low: 2)]'),(22,'2018-08-05 19:19:44',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',_binary 'Command: .add 142552 [X: 3685.064941 Y: -5103.171387 Z: 142.029388 Map: 533 (Naxxramas) Area: 3456 (Naxxramas) Zone: Unknown Selected: 依利达瑞 (GUID Full: 0x08000400000000000000000000000002 Type: Player Entry: 0 Low: 2)]'),(23,'2018-08-05 19:20:05',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',_binary 'Command: .add 138380 [X: 3685.064941 Y: -5103.171387 Z: 142.029388 Map: 533 (Naxxramas) Area: 3456 (Naxxramas) Zone: Unknown Selected: 依利达瑞 (GUID Full: 0x08000400000000000000000000000002 Type: Player Entry: 0 Low: 2)]'),(24,'2018-08-05 22:07:59',1,_binary 'ADMIN@ADMIN',2,_binary '依利达瑞','127.0.0.1',0,'',0,'','',_binary 'Command: .modify speed 5 [X: 985.700806 Y: 2888.288330 Z: -1.055636 Map: 1481 (Mardum) Area: 7741 (Despair Ridge) Zone: Mardum, the Shattered Abyss Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(25,'2019-08-17 00:43:19',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',_binary 'Command: .modify speed 5 [X: 1272.811035 Y: 3488.380859 Z: 102.537956 Map: 860 (The Wandering Isle) Area: 5825 (The Dawning Valley) Zone: The Wandering Isle Selected: Fstest (GUID Full: 0x08000400000000000000000000000003 Type: Player Entry: 0 Low: 3)]'),(26,'2019-08-17 00:45:58',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .lookup creature 麦迪文 [X: 1387.299316 Y: 3648.634521 Z: 87.341019 Map: 860 (The Wandering Isle) Area: 5835 (Wu-Song Village) Zone: The Wandering Isle Selected: Wu-Song Villager (GUID Full: 0x2000046B803FF00000000000000000D8 Type: Creature Entry: 65472 Low: 216)]'),(27,'2019-08-17 00:46:58',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .gm on [X: 1390.021606 Y: 3646.418945 Z: 86.525932 Map: 860 (The Wandering Isle) Area: 5835 (Wu-Song Village) Zone: The Wandering Isle Selected: Fe-Feng Hozen (GUID Full: 0x2000046B8037DD4000000000000001A4 Type: Creature Entry: 57205 Low: 420)]'),(28,'2019-08-17 00:47:08',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .go creature 61616 [X: 1390.021606 Y: 3646.418945 Z: 86.525932 Map: 860 (The Wandering Isle) Area: 5835 (Wu-Song Village) Zone: The Wandering Isle Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(29,'2019-08-17 00:47:26',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .gm off [X: -11094.500000 Y: -1852.810059 Z: 221.070007 Map: 532 (Karazhan) Area: 3457 (Karazhan) Zone: Unknown Selected: Chess Chest Bunny (GUID Full: 0x2000044280189F4000000000000000EF Type: Creature Entry: 25213 Low: 239)]'),(30,'2019-08-18 12:54:14',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',_binary 'Command: .modify speed 5 [X: 1438.353516 Y: 3369.817627 Z: 173.296051 Map: 860 (The Wandering Isle) Area: 5834 (Shang Xi Training Grounds) Zone: The Wandering Isle Selected: Fstest (GUID Full: 0x08000400000000000000000000000003 Type: Player Entry: 0 Low: 3)]'),(31,'2019-08-18 13:01:29',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .die [X: 1350.692261 Y: 3952.288330 Z: 109.418785 Map: 860 (The Wandering Isle) Area: 5849 (Shrine of Inner-Light) Zone: The Wandering Isle Selected: Master Li Fei (GUID Full: 0x2000046B803573800000000000000254 Type: Creature Entry: 54734 Low: 596)]'),(32,'2019-08-18 13:01:34',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .respawn [X: 1350.692261 Y: 3952.288330 Z: 109.418785 Map: 860 (The Wandering Isle) Area: 5849 (Shrine of Inner-Light) Zone: The Wandering Isle Selected: Master Li Fei (GUID Full: 0x2000046B803573800000000000000254 Type: Creature Entry: 54734 Low: 596)]'),(33,'2019-08-18 13:01:52',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 9999 [X: 1352.099854 Y: 3953.808350 Z: 110.333260 Map: 860 (The Wandering Isle) Area: 5849 (Shrine of Inner-Light) Zone: The Wandering Isle Selected: Master Li Fei (GUID Full: 0x2000046B803573800000000000000254 Type: Creature Entry: 54734 Low: 596)]'),(34,'2019-08-18 13:03:16',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',_binary 'Command: .modify speed 5 [X: 1305.857788 Y: 3844.273926 Z: 90.961380 Map: 860 (The Wandering Isle) Area: 5825 (The Dawning Valley) Zone: The Wandering Isle Selected: Fstest (GUID Full: 0x08000400000000000000000000000003 Type: Player Entry: 0 Low: 3)]'),(35,'2019-08-18 13:04:19',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',_binary 'Command: .modify speed 5 [X: 1002.498779 Y: 3603.303467 Z: 192.210190 Map: 860 (The Wandering Isle) Area: 5820 (Temple of Five Dawns) Zone: The Wandering Isle Selected: Fstest (GUID Full: 0x08000400000000000000000000000003 Type: Player Entry: 0 Low: 3)]'),(36,'2019-08-18 13:09:55',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',_binary 'Command: .modify speed 5 [X: 997.583374 Y: 3280.271973 Z: 131.028488 Map: 860 (The Wandering Isle) Area: 5826 (The Singing Pools) Zone: The Wandering Isle Selected: Fstest (GUID Full: 0x08000400000000000000000000000003 Type: Player Entry: 0 Low: 3)]'),(37,'2019-08-18 13:14:31',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .die [X: 956.783813 Y: 2948.263916 Z: 78.492134 Map: 860 (The Wandering Isle) Area: 5826 (The Singing Pools) Zone: The Wandering Isle Selected: Fang-she (GUID Full: 0x2000046B8035FF0000000000000007F2 Type: Creature Entry: 55292 Low: 2034)]'),(38,'2019-08-18 13:14:35',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .die [X: 956.783813 Y: 2948.263916 Z: 78.492134 Map: 860 (The Wandering Isle) Area: 5826 (The Singing Pools) Zone: The Wandering Isle Selected: Barbed Ray (GUID Full: 0x2000046B8035B00000000000000007F0 Type: Creature Entry: 54976 Low: 2032)]'),(39,'2019-08-18 13:15:15',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .gm fly on [X: 964.689392 Y: 2933.239014 Z: 84.403160 Map: 860 (The Wandering Isle) Area: 5826 (The Singing Pools) Zone: The Wandering Isle Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(40,'2019-08-18 13:16:23',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .gm fly off [X: 1102.246948 Y: 2860.646729 Z: 92.189072 Map: 860 (The Wandering Isle) Area: 5862 (Pool of Reflection) Zone: The Wandering Isle Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(41,'2019-08-18 13:21:11',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',_binary 'Command: .modify speed 10 [X: 599.855347 Y: 3154.530273 Z: 87.789085 Map: 860 (The Wandering Isle) Area: 5881 (The Dai-Lo Farmstead) Zone: The Wandering Isle Selected: Fstest (GUID Full: 0x08000400000000000000000000000003 Type: Player Entry: 0 Low: 3)]'),(42,'2019-08-18 13:21:16',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .die [X: 555.126038 Y: 3140.881592 Z: 81.926758 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000B19 Type: Creature Entry: 55483 Low: 2841)]'),(43,'2019-08-18 13:21:21',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 1000 [X: 543.961975 Y: 3130.329346 Z: 80.006477 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000B18 Type: Creature Entry: 55483 Low: 2840)]'),(44,'2019-08-18 13:22:06',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 508.798340 Y: 3131.815186 Z: 79.543839 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000B14 Type: Creature Entry: 55483 Low: 2836)]'),(45,'2019-08-18 13:22:11',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 518.178284 Y: 3110.792236 Z: 79.343338 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000B11 Type: Creature Entry: 55483 Low: 2833)]'),(46,'2019-08-18 13:22:21',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 553.929016 Y: 3050.002930 Z: 81.174019 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000752 Type: Creature Entry: 55483 Low: 1874)]'),(47,'2019-08-18 13:22:30',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 523.463074 Y: 2984.258301 Z: 75.290833 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000B01 Type: Creature Entry: 55483 Low: 2817)]'),(48,'2019-08-18 13:22:33',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 519.461487 Y: 2978.316162 Z: 75.478516 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000B0D Type: Creature Entry: 55483 Low: 2829)]'),(49,'2019-08-18 13:22:37',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 519.461487 Y: 2978.316162 Z: 75.478516 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC0000000000000074F Type: Creature Entry: 55483 Low: 1871)]'),(50,'2019-08-18 13:22:48',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 513.362305 Y: 2976.738281 Z: 75.517525 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000AF8 Type: Creature Entry: 55483 Low: 2808)]'),(51,'2019-08-18 13:23:02',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 535.612366 Y: 2960.820557 Z: 76.026505 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000749 Type: Creature Entry: 55483 Low: 1865)]'),(52,'2019-08-18 13:23:12',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 571.657715 Y: 2975.200195 Z: 76.322624 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000748 Type: Creature Entry: 55483 Low: 1864)]'),(53,'2019-08-18 13:23:26',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 526.314392 Y: 2907.937988 Z: 76.008827 Map: 860 (The Wandering Isle) Area: 5882 (Virmen Grotto) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000AF6 Type: Creature Entry: 55483 Low: 2806)]'),(54,'2019-08-18 13:23:46',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 573.067566 Y: 2999.833984 Z: 75.931442 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000746 Type: Creature Entry: 55483 Low: 1862)]'),(55,'2019-08-18 13:23:54',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 513.609558 Y: 2979.931152 Z: 52.763092 Map: 860 (The Wandering Isle) Area: 5883 (Teeming Burrow) Zone: The Wandering Isle Selected: Plump Carrotcruncher (GUID Full: 0x2000046B803634000000000000000B03 Type: Creature Entry: 55504 Low: 2819)]'),(56,'2019-08-18 13:24:01',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 485.699341 Y: 2982.161621 Z: 50.772392 Map: 860 (The Wandering Isle) Area: 5883 (Teeming Burrow) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000AFF Type: Creature Entry: 55483 Low: 2815)]'),(57,'2019-08-18 13:24:02',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 459.196808 Y: 2984.436768 Z: 42.250366 Map: 860 (The Wandering Isle) Area: 5883 (Teeming Burrow) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000AD9 Type: Creature Entry: 55483 Low: 2777)]'),(58,'2019-08-18 13:24:19',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 518.697205 Y: 3001.389893 Z: 51.349918 Map: 860 (The Wandering Isle) Area: 5883 (Teeming Burrow) Zone: The Wandering Isle Selected: Plump Carrotcruncher (GUID Full: 0x2000046B803634000000000000000B06 Type: Creature Entry: 55504 Low: 2822)]'),(59,'2019-08-18 13:24:32',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',_binary 'Command: .damage 999 [X: 398.807251 Y: 3163.728271 Z: 69.598915 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Fstest (GUID Full: 0x08000400000000000000000000000003 Type: Player Entry: 0 Low: 3)]'),(60,'2019-08-18 13:24:40',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',_binary 'Command: .revive [X: 398.807251 Y: 3163.728271 Z: 69.598915 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Fstest (GUID Full: 0x08000400000000000000000000000003 Type: Player Entry: 0 Low: 3)]'),(61,'2019-08-18 13:24:47',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 371.648132 Y: 3161.745605 Z: 69.797531 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000AD3 Type: Creature Entry: 55483 Low: 2771)]'),(62,'2019-08-18 13:24:50',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 371.648132 Y: 3161.745605 Z: 69.797531 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000AD4 Type: Creature Entry: 55483 Low: 2772)]'),(63,'2019-08-18 13:25:02',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 370.096405 Y: 3142.223877 Z: 69.332962 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000AD0 Type: Creature Entry: 55483 Low: 2768)]'),(64,'2019-08-18 13:25:18',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 404.818817 Y: 3099.404297 Z: 75.579185 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000AEC Type: Creature Entry: 55483 Low: 2796)]'),(65,'2019-08-18 13:25:32',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 385.033783 Y: 3076.703857 Z: 70.492073 Map: 860 (The Wandering Isle) Area: 5827 (The Rows) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000ACD Type: Creature Entry: 55483 Low: 2765)]'),(66,'2019-08-18 13:27:10',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 427.955750 Y: 3305.883789 Z: 73.171295 Map: 860 (The Wandering Isle) Area: 5884 (Ki-Han Brewery) Zone: The Wandering Isle Selected: Raggis (GUID Full: 0x2000046B803634800000000000000B93 Type: Creature Entry: 55506 Low: 2963)]'),(67,'2019-08-18 13:27:25',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 410.350616 Y: 3280.725342 Z: 73.457069 Map: 860 (The Wandering Isle) Area: 5884 (Ki-Han Brewery) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000B92 Type: Creature Entry: 55483 Low: 2962)]'),(68,'2019-08-18 13:27:41',1,_binary 'ADMIN@ADMIN',3,_binary 'Fstest','127.0.0.1',0,'',0,'','',_binary 'Command: .damage 999 [X: 364.527710 Y: 3279.843018 Z: 76.737389 Map: 860 (The Wandering Isle) Area: 5884 (Ki-Han Brewery) Zone: The Wandering Isle Selected: Plump Virmen (GUID Full: 0x2000046B80362EC00000000000000B6E Type: Creature Entry: 55483 Low: 2926)]'),(69,'2022-02-01 21:09:14',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .levelup 69 [X: 1935.949585 Y: -4424.786621 Z: 23.610884 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(70,'2022-02-01 21:09:40',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .modify money 1000000000 [X: 1937.561035 Y: -4400.593750 Z: 23.420273 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(71,'2022-02-01 21:17:59',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .add 77067 [X: 1760.311768 Y: -4363.923828 Z: 101.138763 Map: 1 (卡利姆多) Area: 1637 (奥格瑞玛) Zone: Unknown Selected: 玛奇萨 (GUID Full: 0x20000400202BDDC00000000000000094 Type: Creature Entry: 44919 Low: 148)]'),(72,'2022-02-01 21:18:20',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .levelup 5 [X: 1760.311768 Y: -4363.923828 Z: 101.138763 Map: 1 (卡利姆多) Area: 1637 (奥格瑞玛) Zone: Unknown Selected: 玛奇萨 (GUID Full: 0x20000400202BDDC00000000000000094 Type: Creature Entry: 44919 Low: 148)]'),(73,'2022-02-01 21:21:58',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',_binary 'Command: .levelup 25 [X: 1735.305054 Y: -4461.729492 Z: 37.012844 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: Beast (GUID Full: 0x08000400000000000000000000000004 Type: Player Entry: 0 Low: 4)]'),(74,'2022-02-01 21:41:01',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',_binary 'Command: .additem 152181 [X: 1847.257080 Y: -4521.996582 Z: 24.082407 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: Beast (GUID Full: 0x08000400000000000000000000000004 Type: Player Entry: 0 Low: 4)]'),(75,'2022-02-01 21:41:27',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',_binary 'Command: .additem 39197 [X: 1847.257080 Y: -4521.996582 Z: 24.082407 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: Beast (GUID Full: 0x08000400000000000000000000000004 Type: Player Entry: 0 Low: 4)]'),(76,'2022-02-01 21:42:32',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',_binary 'Command: .additem 152180 [X: 1847.257080 Y: -4521.996582 Z: 24.082407 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: Beast (GUID Full: 0x08000400000000000000000000000004 Type: Player Entry: 0 Low: 4)]'),(77,'2022-02-01 21:42:57',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',_binary 'Command: .additem 152179 [X: 1847.257080 Y: -4521.996582 Z: 24.082407 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: Beast (GUID Full: 0x08000400000000000000000000000004 Type: Player Entry: 0 Low: 4)]'),(78,'2022-02-01 21:43:22',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',_binary 'Command: .additem 152183 [X: 1847.257080 Y: -4521.996582 Z: 24.082407 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: Beast (GUID Full: 0x08000400000000000000000000000004 Type: Player Entry: 0 Low: 4)]'),(79,'2022-02-01 21:43:42',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',_binary 'Command: .additem 152178 [X: 1847.257080 Y: -4521.996582 Z: 24.082407 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: Beast (GUID Full: 0x08000400000000000000000000000004 Type: Player Entry: 0 Low: 4)]'),(80,'2022-02-01 21:44:04',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',_binary 'Command: .additem 152182 [X: 1847.257080 Y: -4521.996582 Z: 24.082407 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: Beast (GUID Full: 0x08000400000000000000000000000004 Type: Player Entry: 0 Low: 4)]'),(81,'2022-02-01 21:45:42',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',_binary 'Command: .additem 150511 [X: 1863.482300 Y: -4521.818359 Z: 24.467260 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: Beast (GUID Full: 0x08000400000000000000000000000004 Type: Player Entry: 0 Low: 4)]'),(82,'2022-02-01 22:01:30',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .additem 151997 [X: -838.309998 Y: 4317.459961 Z: 744.799988 Map: 1220 (破碎群岛) Area: 7505 (克拉苏斯平台) Zone: 达拉然 Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(83,'2022-02-01 22:03:54',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .additem 140885 [X: -838.309998 Y: 4317.459961 Z: 744.799988 Map: 1220 (破碎群岛) Area: 7505 (克拉苏斯平台) Zone: 达拉然 Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(84,'2022-02-01 22:07:22',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .additem 148753 [X: -838.309998 Y: 4317.459961 Z: 744.799988 Map: 1220 (破碎群岛) Area: 7505 (克拉苏斯平台) Zone: 达拉然 Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(85,'2022-02-01 22:42:13',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',_binary 'Command: .additem 147059 [X: 1738.654663 Y: -4437.800781 Z: 38.811314 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: Beast (GUID Full: 0x08000400000000000000000000000004 Type: Player Entry: 0 Low: 4)]'),(86,'2022-02-01 22:49:44',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',_binary 'Command: .additem 72814 [X: 1717.290894 Y: -4345.903809 Z: 31.329634 Map: 1 (卡利姆多) Area: 5170 (力量谷) Zone: 奥格瑞玛 Selected: Beast (GUID Full: 0x08000400000000000000000000000004 Type: Player Entry: 0 Low: 4)]'),(87,'2022-02-01 22:51:10',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',_binary 'Command: .additem 49623 [X: 1721.238770 Y: -4365.004883 Z: 31.444870 Map: 1 (卡利姆多) Area: 5170 (力量谷) Zone: 奥格瑞玛 Selected: Beast (GUID Full: 0x08000400000000000000000000000004 Type: Player Entry: 0 Low: 4)]'),(88,'2022-02-02 22:35:35',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .reload all [X: 1725.428101 Y: -4518.753906 Z: 30.689785 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: 织幻者杜沙尔 (GUID Full: 0x20000400203532400000000000000053 Type: Creature Entry: 54473 Low: 83)]'),(89,'2022-02-03 20:03:14',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .reload gossip [X: 1881.527466 Y: -4487.506348 Z: 23.180521 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(90,'2022-02-03 20:06:19',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .reload all [X: 1726.890137 Y: -4517.198242 Z: 30.687817 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: 织幻者杜沙尔 (GUID Full: 0x20000400203532400000000000001532 Type: Creature Entry: 54473 Low: 5426)]'),(91,'2022-02-03 22:18:58',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .reload creature_template all [X: 1726.548462 Y: -4517.792480 Z: 30.688704 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: 织幻者杜沙尔 (GUID Full: 0x20000400203532400000000000000053 Type: Creature Entry: 54473 Low: 83)]'),(92,'2022-02-03 22:19:51',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .reload creature_template 54473 [X: 1726.548462 Y: -4517.792480 Z: 30.688704 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: 织幻者杜沙尔 (GUID Full: 0x20000400203532400000000000000053 Type: Creature Entry: 54473 Low: 83)]'),(93,'2022-02-03 23:22:00',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .additem 118367 [X: 1726.548462 Y: -4517.792480 Z: 30.688704 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: 织幻者杜沙尔 (GUID Full: 0x20000400203532400000000000000053 Type: Creature Entry: 54473 Low: 83)]'),(94,'2022-02-03 23:23:18',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .additem 48467 [X: 1726.548462 Y: -4517.792480 Z: 30.688704 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: 织幻者杜沙尔 (GUID Full: 0x20000400203532400000000000000053 Type: Creature Entry: 54473 Low: 83)]'),(95,'2022-02-03 23:25:08',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .additem 48047 [X: 1726.548462 Y: -4517.792480 Z: 30.688704 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: 织幻者杜沙尔 (GUID Full: 0x20000400203532400000000000000053 Type: Creature Entry: 54473 Low: 83)]'),(96,'2022-02-03 23:30:52',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .additem 47473 [X: 1738.634399 Y: -4503.297852 Z: 30.481991 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: 织幻者杜沙尔 (GUID Full: 0x20000400203532400000000000000053 Type: Creature Entry: 54473 Low: 83)]'),(97,'2022-02-03 23:37:11',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .additem 105393 [X: 1728.379028 Y: -4518.001953 Z: 30.687719 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: 织幻者杜沙尔 (GUID Full: 0x20000400203532400000000000000053 Type: Creature Entry: 54473 Low: 83)]'),(98,'2022-02-03 23:56:41',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .additem 47998 [X: 1615.986572 Y: -4297.146973 Z: 20.496691 Map: 1 (卡利姆多) Area: 5170 (力量谷) Zone: 奥格瑞玛 Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(99,'2022-02-04 00:13:35',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .additem 113886 [X: 1663.117676 Y: -4368.516113 Z: 63.585835 Map: 1 (卡利姆多) Area: 5356 (格罗玛什要塞) Zone: 奥格瑞玛 Selected: 奥格瑞玛步兵 (GUID Full: 0x20000400200338000000000000000047 Type: Creature Entry: 3296 Low: 71)]'),(100,'2022-02-04 00:25:00',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .additem 139156 [X: 1660.565674 Y: -4372.895020 Z: 63.585503 Map: 1 (卡利姆多) Area: 5356 (格罗玛什要塞) Zone: 奥格瑞玛 Selected: 奥格瑞玛步兵 (GUID Full: 0x20000400200338000000000000000047 Type: Creature Entry: 3296 Low: 71)]'),(101,'2022-02-04 00:57:16',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .modify money 5000000000 [X: -840.290955 Y: 4302.477051 Z: 746.282471 Map: 1220 (破碎群岛) Area: 7505 (克拉苏斯平台) Zone: 达拉然 Selected: 希拉·雪晨 (GUID Full: 0x20000498801E818000000000000006CD Type: Creature Entry: 31238 Low: 1741)]'),(102,'2022-02-04 14:02:15',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .reload all [X: 1724.057495 Y: -4511.772949 Z: 30.688114 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: 魔术师扎吉尔 (GUID Full: 0x20000400203531C0000000000000349E Type: Creature Entry: 54471 Low: 13470)]'),(103,'2022-02-04 14:03:50',4,_binary 'ADM@ADM',4,_binary 'Beast','127.0.0.1',0,'',0,'','',_binary 'Command: .reload all [X: 1739.421509 Y: -4505.358398 Z: 30.269199 Map: 1 (卡利姆多) Area: 5167 (暗巷区) Zone: 奥格瑞玛 Selected: 魔术师扎吉尔 (GUID Full: 0x20000400203531C0000000000000349E Type: Creature Entry: 54471 Low: 13470)]'),(104,'2022-02-04 17:41:11',4,_binary 'ADM@ADM',5,_binary '长发飘飘','127.0.0.1',0,'',0,'','',_binary 'Command: .levelup 30 [X: -10336.592773 Y: -110.068199 Z: 42.227821 Map: 0 (东部王国) Area: 10 (暮色森林) Zone: Unknown Selected: 黑寡妇蜘蛛 (GUID Full: 0x20000400002C83800000000000005507 Type: Creature Entry: 45582 Low: 21767)]'),(105,'2022-02-04 21:08:35',4,_binary 'ADM@ADM',5,_binary '长发飘飘','127.0.0.1',0,'',0,'','',_binary 'Command: .modify money 1000000000 [X: -8844.881836 Y: 499.757355 Z: 109.612900 Map: 0 (东部王国) Area: 1519 (暴风城) Zone: Unknown Selected: 杜加尔·朗德瑞克 (GUID Full: 0x20000400000058000000000000000214 Type: Creature Entry: 352 Low: 532)]'),(106,'2022-02-04 22:15:35',4,_binary 'ADM@ADM',5,_binary '长发飘飘','127.0.0.1',0,'',0,'','',_binary 'Command: .additem 22589 [X: -11771.776367 Y: -3175.129639 Z: -28.335772 Map: 0 (东部王国) Area: 72 (黑暗之门) Zone: 诅咒之地 Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(107,'2022-02-05 11:52:22',4,_binary 'ADM@ADM',5,_binary '长发飘飘','127.0.0.1',0,'',0,'','',_binary 'Command: .levelup 20 [X: 5768.892090 Y: 686.137634 Z: 642.714233 Map: 571 (诺森德) Area: 4395 (达拉然) Zone: Unknown Selected:  (GUID Full: 0x00000000000000000000000000000000 Type: None Entry: 0 Low: 0)]'),(108,'2022-02-05 11:53:21',4,_binary 'ADM@ADM',5,_binary '长发飘飘','127.0.0.1',4,_binary 'ADM@ADM',5,_binary '长发飘飘','127.0.0.1',_binary 'Command: .levelup 6 [X: 5776.952148 Y: 695.566467 Z: 642.456909 Map: 571 (诺森德) Area: 4395 (达拉然) Zone: Unknown Selected: 长发飘飘 (GUID Full: 0x08000400000000000000000000000005 Type: Player Entry: 0 Low: 5)]'),(109,'2022-02-05 11:56:57',4,_binary 'ADM@ADM',5,_binary '长发飘飘','127.0.0.1',4,_binary 'ADM@ADM',5,_binary '长发飘飘','127.0.0.1',_binary 'Command: .levelup 10 [X: -8851.139648 Y: 504.359222 Z: 109.607857 Map: 0 (东部王国) Area: 1519 (暴风城) Zone: Unknown Selected: 长发飘飘 (GUID Full: 0x08000400000000000000000000000005 Type: Player Entry: 0 Low: 5)]');
/*!40000 ALTER TABLE `log_gm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail` (
  `id` int unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `messageType` tinyint unsigned NOT NULL DEFAULT '0',
  `stationery` tinyint NOT NULL DEFAULT '41',
  `mailTemplateId` smallint unsigned NOT NULL DEFAULT '0',
  `sender` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `receiver` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `subject` longtext,
  `body` longtext,
  `has_items` tinyint unsigned NOT NULL DEFAULT '0',
  `expire_time` int unsigned NOT NULL DEFAULT '0',
  `deliver_time` int unsigned NOT NULL DEFAULT '0',
  `money` bigint unsigned NOT NULL DEFAULT '0',
  `cod` bigint unsigned NOT NULL DEFAULT '0',
  `checked` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_receiver` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Mail System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail`
--

LOCK TABLES `mail` WRITE;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_items`
--

DROP TABLE IF EXISTS `mail_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail_items` (
  `mail_id` int unsigned NOT NULL DEFAULT '0',
  `item_guid` bigint unsigned NOT NULL DEFAULT '0',
  `receiver` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`item_guid`),
  KEY `idx_receiver` (`receiver`),
  KEY `idx_mail_id` (`mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_items`
--

LOCK TABLES `mail_items` WRITE;
/*!40000 ALTER TABLE `mail_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_aura`
--

DROP TABLE IF EXISTS `pet_aura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet_aura` (
  `guid` int unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `spell` int unsigned NOT NULL,
  `effectMask` int unsigned NOT NULL,
  `recalculateMask` int unsigned NOT NULL DEFAULT '0',
  `stackCount` tinyint unsigned NOT NULL DEFAULT '1',
  `maxDuration` int NOT NULL DEFAULT '0',
  `remainTime` int NOT NULL DEFAULT '0',
  `remainCharges` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`effectMask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Pet System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_aura`
--

LOCK TABLES `pet_aura` WRITE;
/*!40000 ALTER TABLE `pet_aura` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_aura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_aura_effect`
--

DROP TABLE IF EXISTS `pet_aura_effect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet_aura_effect` (
  `guid` int unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `spell` int unsigned NOT NULL,
  `effectMask` int unsigned NOT NULL,
  `effectIndex` tinyint unsigned NOT NULL,
  `amount` int NOT NULL DEFAULT '0',
  `baseAmount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`casterGuid`,`spell`,`effectMask`,`effectIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Pet System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_aura_effect`
--

LOCK TABLES `pet_aura_effect` WRITE;
/*!40000 ALTER TABLE `pet_aura_effect` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_aura_effect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_spell`
--

DROP TABLE IF EXISTS `pet_spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet_spell` (
  `guid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Pet System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_spell`
--

LOCK TABLES `pet_spell` WRITE;
/*!40000 ALTER TABLE `pet_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_spell_charges`
--

DROP TABLE IF EXISTS `pet_spell_charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet_spell_charges` (
  `guid` int unsigned NOT NULL,
  `categoryId` int unsigned NOT NULL DEFAULT '0' COMMENT 'SpellCategory.dbc Identifier',
  `rechargeStart` int unsigned NOT NULL DEFAULT '0',
  `rechargeEnd` int unsigned NOT NULL DEFAULT '0',
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_spell_charges`
--

LOCK TABLES `pet_spell_charges` WRITE;
/*!40000 ALTER TABLE `pet_spell_charges` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell_charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_spell_cooldown`
--

DROP TABLE IF EXISTS `pet_spell_cooldown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet_spell_cooldown` (
  `guid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` int unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `time` int unsigned NOT NULL DEFAULT '0',
  `categoryId` int unsigned NOT NULL DEFAULT '0' COMMENT 'Spell category Id',
  `categoryEnd` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_spell_cooldown`
--

LOCK TABLES `pet_spell_cooldown` WRITE;
/*!40000 ALTER TABLE `pet_spell_cooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell_cooldown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petition`
--

DROP TABLE IF EXISTS `petition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `petition` (
  `ownerguid` bigint unsigned NOT NULL,
  `petitionguid` bigint unsigned DEFAULT '0',
  `name` varchar(24) NOT NULL,
  PRIMARY KEY (`ownerguid`),
  UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Guild System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petition`
--

LOCK TABLES `petition` WRITE;
/*!40000 ALTER TABLE `petition` DISABLE KEYS */;
/*!40000 ALTER TABLE `petition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petition_sign`
--

DROP TABLE IF EXISTS `petition_sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `petition_sign` (
  `ownerguid` bigint unsigned NOT NULL,
  `petitionguid` bigint unsigned NOT NULL DEFAULT '0',
  `playerguid` bigint unsigned NOT NULL DEFAULT '0',
  `player_account` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petitionguid`,`playerguid`),
  KEY `Idx_playerguid` (`playerguid`),
  KEY `Idx_ownerguid` (`ownerguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Guild System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petition_sign`
--

LOCK TABLES `petition_sign` WRITE;
/*!40000 ALTER TABLE `petition_sign` DISABLE KEYS */;
/*!40000 ALTER TABLE `petition_sign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pool_quest_save`
--

DROP TABLE IF EXISTS `pool_quest_save`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pool_quest_save` (
  `pool_id` int unsigned NOT NULL DEFAULT '0',
  `quest_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pool_id`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pool_quest_save`
--

LOCK TABLES `pool_quest_save` WRITE;
/*!40000 ALTER TABLE `pool_quest_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `pool_quest_save` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pvpstats_battlegrounds`
--

DROP TABLE IF EXISTS `pvpstats_battlegrounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pvpstats_battlegrounds` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `winner_faction` tinyint NOT NULL,
  `bracket_id` tinyint unsigned NOT NULL,
  `type` tinyint unsigned NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pvpstats_battlegrounds`
--

LOCK TABLES `pvpstats_battlegrounds` WRITE;
/*!40000 ALTER TABLE `pvpstats_battlegrounds` DISABLE KEYS */;
/*!40000 ALTER TABLE `pvpstats_battlegrounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pvpstats_players`
--

DROP TABLE IF EXISTS `pvpstats_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pvpstats_players` (
  `battleground_id` bigint unsigned NOT NULL,
  `character_guid` bigint unsigned NOT NULL,
  `winner` bit(1) NOT NULL,
  `score_killing_blows` int unsigned NOT NULL,
  `score_deaths` int unsigned NOT NULL,
  `score_honorable_kills` int unsigned NOT NULL,
  `score_bonus_honor` int unsigned NOT NULL,
  `score_damage_done` int unsigned NOT NULL,
  `score_healing_done` int unsigned NOT NULL,
  `attr_1` int unsigned NOT NULL,
  `attr_2` int unsigned NOT NULL,
  `attr_3` int unsigned NOT NULL,
  `attr_4` int unsigned NOT NULL,
  `attr_5` int unsigned NOT NULL,
  PRIMARY KEY (`battleground_id`,`character_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pvpstats_players`
--

LOCK TABLES `pvpstats_players` WRITE;
/*!40000 ALTER TABLE `pvpstats_players` DISABLE KEYS */;
/*!40000 ALTER TABLE `pvpstats_players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_tracker`
--

DROP TABLE IF EXISTS `quest_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest_tracker` (
  `id` mediumint unsigned NOT NULL DEFAULT '0',
  `character_guid` bigint unsigned NOT NULL DEFAULT '0',
  `quest_accept_time` datetime NOT NULL,
  `quest_complete_time` datetime DEFAULT NULL,
  `quest_abandon_time` datetime DEFAULT NULL,
  `completed_by_gm` tinyint(1) NOT NULL DEFAULT '0',
  `core_hash` varchar(120) NOT NULL DEFAULT '0',
  `core_revision` varchar(120) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`character_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_tracker`
--

LOCK TABLES `quest_tracker` WRITE;
/*!40000 ALTER TABLE `quest_tracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserved_name`
--

DROP TABLE IF EXISTS `reserved_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserved_name` (
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Player Reserved Names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserved_name`
--

LOCK TABLES `reserved_name` WRITE;
/*!40000 ALTER TABLE `reserved_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserved_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updates`
--

DROP TABLE IF EXISTS `updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `updates` (
  `name` varchar(200) NOT NULL COMMENT 'filename with extension of the update.',
  `hash` char(40) DEFAULT '' COMMENT 'sha1 hash of the sql file.',
  `state` enum('RELEASED','ARCHIVED') NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if an update is released or archived.',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'timestamp when the query was applied.',
  `speed` int unsigned NOT NULL DEFAULT '0' COMMENT 'time the query takes to apply in ms.',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='List of all applied updates in this database.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updates`
--

LOCK TABLES `updates` WRITE;
/*!40000 ALTER TABLE `updates` DISABLE KEYS */;
INSERT INTO `updates` (`name`, `hash`, `state`, `timestamp`, `speed`) VALUES ('2017_05_03_class_hall_garrison_1.sql','73712F2945EFD1A135F3583E99DCF7F51B4E0E4C','RELEASED','2018-06-27 14:43:08',529),('2017_05_03_class_hall_garrison_2.sql','2E93F5D7077E252621583C40E24A212FF1D7B3E2','RELEASED','2018-06-27 14:43:08',70),('2017_05_15_char_world_quest.sql','6BC41287EB825C2E6A6316130775DB1EACDC931C','RELEASED','2018-06-27 14:43:08',71),('2017_11_17_01_characters_xprate.sql','5F11FB10CA0ECBB526D73ED2FCC3494C708415DA','RELEASED','2018-06-27 14:43:09',296),('2017_12_20_01_characters_log_gm.sql','8857548FA4F5D5E073F08470B0998F3E9368F271','RELEASED','2018-06-27 14:43:09',70),('2018_01_07_00_charactes_pvp_talents.sql','F7A184C8058C1988B5D55035D44D1EEC4D809D9E','RELEASED','2018-06-27 14:43:09',70),('2018_01_13_01_charactes_pets.sql','7437B6243B3CB6FA08F6A37BB39E38930B0DCFD3','RELEASED','2018-06-27 14:43:09',145),('2018_02_02_01_character_shop.sql','0A8138A4B8459BE49E4BCEF9934EEC1508FD301C','RELEASED','2018-06-27 14:43:09',62),('2018_02_16_01_character_recovery.sql','C4FE2037526CD4D446F5F87FE05FAAFFD707C53D','RELEASED','2018-06-27 14:43:09',82),('2018_02_18_01_characters.sql','B7EC9FD75FE2E565BD0335D78069D3C62CA98F5A','RELEASED','2018-06-27 14:43:09',162),('2018_02_18_02_characters.sql','75FA162A9B85D678B26F972371265F1EC2C75187','RELEASED','2018-06-27 14:43:09',154),('2018_03_11_01_characters.sql','E7DF312A7FB429E77F7B5680B9BDA1A2096BA8A5','RELEASED','2018-06-27 14:43:10',153),('2018_04_04_01_characters.sql','53CFC4735CD7202D176FFD0528F85CA9AE042D17','RELEASED','2018-06-27 14:43:10',179),('2018_04_24_01_characters.sql','052AB4D9B121B3C08F949BE5812E0D15C6C00648','RELEASED','2018-06-27 14:43:10',38),('2018_05_18_00_charactes_world_quest.sql','67EFD0D1364A95B81623F1FF406F422311AD1E42','RELEASED','2018-06-27 14:43:10',84),('2018_06_13_01_characters.sql','9C3B4EA34EFA599723C39DC427C6C6D317CA1B9D','RELEASED','2018-06-27 14:43:10',470),('2018_06_25_01_characters_archaeology.sql','C508912C269419EDD442748BE3DC3ECE69470A16','RELEASED','2018-06-27 14:43:11',270);
/*!40000 ALTER TABLE `updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updates_include`
--

DROP TABLE IF EXISTS `updates_include`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `updates_include` (
  `path` varchar(200) NOT NULL COMMENT 'directory to include. $ means relative to the source directory.',
  `state` enum('RELEASED','ARCHIVED') NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if the directory contains released or archived updates.',
  PRIMARY KEY (`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='List of directories where we want to include sql updates.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updates_include`
--

LOCK TABLES `updates_include` WRITE;
/*!40000 ALTER TABLE `updates_include` DISABLE KEYS */;
INSERT INTO `updates_include` (`path`, `state`) VALUES ('$/sql/ashamane/characters','RELEASED');
/*!40000 ALTER TABLE `updates_include` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warden_action`
--

DROP TABLE IF EXISTS `warden_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warden_action` (
  `wardenId` smallint unsigned NOT NULL,
  `action` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`wardenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warden_action`
--

LOCK TABLES `warden_action` WRITE;
/*!40000 ALTER TABLE `warden_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `warden_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_quest`
--

DROP TABLE IF EXISTS `world_quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_quest` (
  `id` int unsigned NOT NULL,
  `rewardid` int unsigned NOT NULL,
  `starttime` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_quest`
--

LOCK TABLES `world_quest` WRITE;
/*!40000 ALTER TABLE `world_quest` DISABLE KEYS */;
INSERT INTO `world_quest` (`id`, `rewardid`, `starttime`) VALUES (40168,0,1643680737),(40173,0,1643680737),(40337,45,1643975497),(40786,0,1643680737),(40787,0,1643680737),(41057,40,1643966644),(41122,51,1644022729),(41144,71,1643975497),(41145,10,1644032193),(41177,0,1643680737),(41293,71,1643966644),(41416,53,1644034020),(41427,15,1644022729),(41451,18,1643987940),(41554,55,1644033540),(41597,41,1644034319),(41641,0,1643989979),(41699,5,1643975497),(41700,0,1644032193),(41857,13,1643940633),(41944,45,1644032193),(41949,16,1644022729),(41950,69,1644026793),(41964,64,1643966644),(41990,36,1643982721),(41995,71,1643966644),(42019,31,1643966644),(42062,45,1643966644),(42087,10,1644039419),(42108,49,1643966644),(42111,15,1643994476),(42150,10,1644034020),(42183,46,1643966644),(42275,16,1643975497),(42276,40,1644034020),(42420,0,1643940665),(42422,0,1643940633),(42713,13,1644033600),(42798,0,1644032193),(43079,0,1643955065),(43179,0,1643941546),(43248,78,1643966644),(43283,0,1644039419),(43289,0,1644034020),(43292,0,1644034319),(43327,16,1643947865),(43328,49,1643879866),(43332,76,1644034020),(43344,0,1643947865),(43476,0,1644026793),(43512,54,1643712727),(43601,79,1644026793),(43616,25,1643975497),(43629,68,1643975497),(43630,60,1643982721),(43710,69,1644034020),(43712,13,1643804488),(43714,13,1644032193),(43751,10,1643982721),(43753,35,1643947865),(43769,63,1644026793),(43774,49,1643940633),(43807,1,1644035219),(43985,70,1643680737),(44013,31,1644033480),(44050,0,1643966644),(44189,0,1643966644),(44303,60,1643966644),(44769,26,1644034799),(44801,25,1643966644),(44816,81,1643966644),(44867,29,1643966644),(44893,3,1643947145),(44894,30,1643966644),(44932,67,1643702338),(44933,67,1643702338),(44943,53,1643972144),(45069,82,1643966644),(45070,40,1644039419),(45563,0,1643680737);
/*!40000 ALTER TABLE `world_quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worldstates`
--

DROP TABLE IF EXISTS `worldstates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worldstates` (
  `entry` int unsigned NOT NULL DEFAULT '0',
  `value` int unsigned NOT NULL DEFAULT '0',
  `comment` tinytext,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Variable Saves';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worldstates`
--

LOCK TABLES `worldstates` WRITE;
/*!40000 ALTER TABLE `worldstates` DISABLE KEYS */;
INSERT INTO `worldstates` (`entry`, `value`, `comment`) VALUES (1,0,NULL),(2,0,NULL),(3,0,NULL),(4,0,NULL),(5,0,NULL),(6,0,NULL),(7,0,NULL),(8,0,NULL),(9,0,NULL),(10,0,NULL),(11,0,NULL),(12,0,NULL),(13,0,NULL),(14,0,NULL),(15,0,NULL),(16,0,NULL),(17,0,NULL),(18,0,NULL),(19,0,NULL),(20,0,NULL),(21,0,NULL),(22,0,NULL),(23,0,NULL),(24,0,NULL),(25,0,NULL),(26,0,NULL),(27,0,NULL),(28,0,NULL),(29,0,NULL),(30,0,NULL),(31,0,NULL),(32,0,NULL),(33,0,NULL),(34,0,NULL),(35,0,NULL),(36,0,NULL),(37,0,NULL),(38,0,NULL),(39,0,NULL),(40,0,NULL),(41,0,NULL),(42,0,NULL),(43,0,NULL),(44,0,NULL),(45,0,NULL),(46,0,NULL),(47,0,NULL),(48,0,NULL),(49,0,NULL),(50,0,NULL),(51,0,NULL),(52,0,NULL),(53,0,NULL),(54,0,NULL),(55,0,NULL),(56,0,NULL),(57,0,NULL),(58,0,NULL),(59,0,NULL),(60,0,NULL),(61,0,NULL),(62,0,NULL),(63,0,NULL),(64,0,NULL),(65,0,NULL),(66,0,NULL),(67,0,NULL),(68,0,NULL),(69,0,NULL),(70,0,NULL),(71,0,NULL),(72,0,NULL),(73,0,NULL),(74,0,NULL),(75,0,NULL),(76,0,NULL),(77,0,NULL),(78,0,NULL),(79,0,NULL),(80,0,NULL),(81,0,NULL),(82,0,NULL),(83,0,NULL),(84,0,NULL),(85,0,NULL),(86,0,NULL),(87,0,NULL),(88,0,NULL),(89,0,NULL),(90,0,NULL),(91,0,NULL),(92,0,NULL),(93,0,NULL),(94,0,NULL),(95,0,NULL),(96,0,NULL),(97,0,NULL),(98,0,NULL),(99,0,NULL),(100,1643979898,NULL),(101,1643979898,NULL),(102,1643979898,NULL),(103,1643979898,NULL),(3781,9000000,NULL),(3801,0,NULL),(3802,1,NULL),(5332,600000,NULL),(5334,1,NULL),(5344,0,NULL),(5384,0,NULL),(5385,1,NULL),(5387,1,NULL),(5546,0,NULL),(5547,0,NULL),(20001,1644271200,'NextArenaPointDistributionTime'),(20002,1644285477,'NextWeeklyQuestResetTime'),(20003,1644098400,'NextBGRandomDailyResetTime'),(20004,0,'cleaning_flags'),(20006,1644098400,NULL),(20007,1646064000,NULL),(20050,6,NULL);
/*!40000 ALTER TABLE `worldstates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-05 13:44:11
