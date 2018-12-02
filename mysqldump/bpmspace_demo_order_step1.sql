CREATE DATABASE  IF NOT EXISTS `bpmspace_demo_order` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bpmspace_demo_order`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bpmspace_demo_order
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.7-MariaDB-1:10.3.7+maria~jessie-log

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
-- Table structure for table `demo_order_order`
--

DROP TABLE IF EXISTS `demo_order_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo_order_order` (
  `demo_order_order_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `demo_order_order_name` varchar(45) DEFAULT NULL,
  `demo_order_order_budget` int(11) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT 1,
  PRIMARY KEY (`demo_order_order_ID`),
  KEY `state_id_a0c4fbe5` (`state_id`),
  CONSTRAINT `state_id_a0c4fbe5` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo_order_order`
--

LOCK TABLES `demo_order_order` WRITE;
/*!40000 ALTER TABLE `demo_order_order` DISABLE KEYS */;
INSERT INTO `demo_order_order` VALUES (1,'IPAD',3433,1),(2,'Pad ZU',NULL,1);
/*!40000 ALTER TABLE `demo_order_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo_order_order_person`
--

DROP TABLE IF EXISTS `demo_order_order_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo_order_order_person` (
  `demo_order_order_person_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `demo_order_order_ID` bigint(20) unsigned DEFAULT NULL,
  `demo_order_person_ID` bigint(20) unsigned DEFAULT NULL,
  `state_id` bigint(20) DEFAULT 5,
  PRIMARY KEY (`demo_order_order_person_ID`),
  KEY `demo_order_order_id_fk_1856_idx` (`demo_order_order_ID`),
  KEY `demo_order_person_id_fk_3645_idx` (`demo_order_person_ID`),
  KEY `state_id_b79edb9f` (`state_id`),
  CONSTRAINT `demo_order_order_id_fk_1856` FOREIGN KEY (`demo_order_order_ID`) REFERENCES `demo_order_order` (`demo_order_order_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `demo_order_person_id_fk_3645` FOREIGN KEY (`demo_order_person_ID`) REFERENCES `demo_order_person` (`demo_order_person_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `state_id_b79edb9f` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo_order_order_person`
--

LOCK TABLES `demo_order_order_person` WRITE;
/*!40000 ALTER TABLE `demo_order_order_person` DISABLE KEYS */;
INSERT INTO `demo_order_order_person` VALUES (1,1,1,5),(2,2,1,5),(3,2,2,5);
/*!40000 ALTER TABLE `demo_order_order_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo_order_person`
--

DROP TABLE IF EXISTS `demo_order_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo_order_person` (
  `demo_order_person_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `demo_order_person_name` varchar(45) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT 9,
  PRIMARY KEY (`demo_order_person_ID`),
  KEY `state_id_76d2d74e` (`state_id`),
  CONSTRAINT `state_id_76d2d74e` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo_order_person`
--

LOCK TABLES `demo_order_person` WRITE;
/*!40000 ALTER TABLE `demo_order_person` DISABLE KEYS */;
INSERT INTO `demo_order_person` VALUES (1,'rob',9),(2,'daniel',9);
/*!40000 ALTER TABLE `demo_order_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo_order_person_person`
--

DROP TABLE IF EXISTS `demo_order_person_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo_order_person_person` (
  `demo_order_person_person_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `demo_order_person_supervisor_ID` bigint(20) unsigned DEFAULT NULL,
  `demo_order_person_ID` bigint(20) unsigned DEFAULT NULL,
  `state_id` bigint(20) DEFAULT 13,
  PRIMARY KEY (`demo_order_person_person_ID`),
  KEY `demo_order_person_supervisor_id_fk_4656_idx` (`demo_order_person_ID`),
  KEY `state_id_0ef75391` (`state_id`),
  CONSTRAINT `demo_order_person_id_fk_3097` FOREIGN KEY (`demo_order_person_ID`) REFERENCES `demo_order_person` (`demo_order_person_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `demo_order_person_supervisor_id_fk_4656` FOREIGN KEY (`demo_order_person_ID`) REFERENCES `demo_order_person` (`demo_order_person_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `state_id_0ef75391` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo_order_person_person`
--

LOCK TABLES `demo_order_person_person` WRITE;
/*!40000 ALTER TABLE `demo_order_person_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `demo_order_person_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `state_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `form_data` longtext DEFAULT NULL,
  `entrypoint` tinyint(1) NOT NULL DEFAULT 0,
  `statemachine_id` bigint(20) NOT NULL DEFAULT 1,
  `script_IN` longtext DEFAULT NULL,
  `script_OUT` longtext DEFAULT NULL,
  PRIMARY KEY (`state_id`),
  KEY `state_machine_id_fk` (`statemachine_id`),
  CONSTRAINT `state_machine_id_fk` FOREIGN KEY (`statemachine_id`) REFERENCES `state_machines` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'new (demo_order_order)','<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_name</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_order_name\" value=\"\">\n	</div>\n</div>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_budget</label>\n	<div class=\"col-sm-9\">\n		<input type=\"number\" class=\"form-control\" name=\"demo_order_order_budget\">\n	</div>\n</div>\n    <hr>\n    <div class=\"col-12\">\n        <p>Person:</p>\n        <div class=\"tbl_connections\"></div>\n    </div>\n</form>\n\n<script>\n    // Wait for element to exist.\n    function elLoaded(el, cb) {if ($(el).length) {cb($(el));} else {setTimeout(function(){ elLoaded(el, cb) }, 100);}};\n\n    (function(){\n        elLoaded(\'input[name=demo_order_order_ID]\', function(el) {\n           let PrimID = $(\'input[name=demo_order_order_ID]\').val();\n\n           let x = new Table(\'demo_order_order_person\', \'.tbl_connections\', 0, function(){\n               x.Where = \'a.demo_order_order_ID = \' + PrimID;\n               x.loadRows(function(){\n                  x.renderHTML();\n               })\n           });\n      });\n    })();\n</script>',1,1,'',''),(2,'active','<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_name</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_order_name\" value=\"\">\n	</div>\n</div>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_budget</label>\n	<div class=\"col-sm-9\">\n		<input type=\"number\" class=\"form-control\" name=\"demo_order_order_budget\">\n	</div>\n</div>\n</form>',0,1,NULL,NULL),(3,'update','<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_name</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_order_name\" value=\"\">\n	</div>\n</div>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_budget</label>\n	<div class=\"col-sm-9\">\n		<input type=\"number\" class=\"form-control\" name=\"demo_order_order_budget\">\n	</div>\n</div>\n</form>',0,1,NULL,NULL),(4,'inactive','<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_name</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_order_name\" value=\"\">\n	</div>\n</div>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_budget</label>\n	<div class=\"col-sm-9\">\n		<input type=\"number\" class=\"form-control\" name=\"demo_order_order_budget\">\n	</div>\n</div>\n</form>',0,1,NULL,NULL),(5,'new (demo_order_order_person)','<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_ID</label>\n	<div class=\"col-sm-9\">\n		<div class=\"input-group\">\n          <div class=\"input-group-prepend\">\n            <input type=\"hidden\" name=\"demo_order_order_ID\" value=\"\" class=\"inputFK\"/>\n            <button class=\"btn btn-outline-secondary fKey\" type=\"button\" onclick=\"selectForeignKey(this)\">Select...</button>\n          </div>\n          <input class=\"form-control fkval\" placeholder=\"\" teype=\"text\" readonly>\n        </div>\n	</div>\n</div>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_ID</label>\n	<div class=\"col-sm-9\">\n		<div class=\"input-group\">\n          <div class=\"input-group-prepend\">\n            <input type=\"hidden\" name=\"demo_order_person_ID\" value=\"\" class=\"inputFK\"/>\n            <button class=\"btn btn-outline-secondary fKey\" type=\"button\" onclick=\"selectForeignKey(this)\">Select...</button>\n          </div>\n          <input class=\"form-control fkval\" placeholder=\"\" teype=\"text\" readonly>\n        </div>\n	</div>\n</div>\n</form>',1,2,NULL,NULL),(6,'active','<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_ID</label>\n	<div class=\"col-sm-9\">\n		<div class=\"input-group\">\n          <div class=\"input-group-prepend\">\n            <input type=\"hidden\" name=\"demo_order_order_ID\" value=\"\" class=\"inputFK\"/>\n            <button class=\"btn btn-outline-secondary fKey\" type=\"button\" onclick=\"selectForeignKey(this)\">Select...</button>\n          </div>\n          <input class=\"form-control fkval\" placeholder=\"\" teype=\"text\" readonly>\n        </div>\n	</div>\n</div>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_ID</label>\n	<div class=\"col-sm-9\">\n		<div class=\"input-group\">\n          <div class=\"input-group-prepend\">\n            <input type=\"hidden\" name=\"demo_order_person_ID\" value=\"\" class=\"inputFK\"/>\n            <button class=\"btn btn-outline-secondary fKey\" type=\"button\" onclick=\"selectForeignKey(this)\">Select...</button>\n          </div>\n          <input class=\"form-control fkval\" placeholder=\"\" teype=\"text\" readonly>\n        </div>\n	</div>\n</div>\n</form>',0,2,NULL,NULL),(7,'update','<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_ID</label>\n	<div class=\"col-sm-9\">\n		<div class=\"input-group\">\n          <div class=\"input-group-prepend\">\n            <input type=\"hidden\" name=\"demo_order_order_ID\" value=\"\" class=\"inputFK\"/>\n            <button class=\"btn btn-outline-secondary fKey\" type=\"button\" onclick=\"selectForeignKey(this)\">Select...</button>\n          </div>\n          <input class=\"form-control fkval\" placeholder=\"\" teype=\"text\" readonly>\n        </div>\n	</div>\n</div>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_ID</label>\n	<div class=\"col-sm-9\">\n		<div class=\"input-group\">\n          <div class=\"input-group-prepend\">\n            <input type=\"hidden\" name=\"demo_order_person_ID\" value=\"\" class=\"inputFK\"/>\n            <button class=\"btn btn-outline-secondary fKey\" type=\"button\" onclick=\"selectForeignKey(this)\">Select...</button>\n          </div>\n          <input class=\"form-control fkval\" placeholder=\"\" teype=\"text\" readonly>\n        </div>\n	</div>\n</div>\n</form>',0,2,NULL,NULL),(8,'inactive','<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_ID</label>\n	<div class=\"col-sm-9\">\n		<div class=\"input-group\">\n          <div class=\"input-group-prepend\">\n            <input type=\"hidden\" name=\"demo_order_order_ID\" value=\"\" class=\"inputFK\"/>\n            <button class=\"btn btn-outline-secondary fKey\" type=\"button\" onclick=\"selectForeignKey(this)\">Select...</button>\n          </div>\n          <input class=\"form-control fkval\" placeholder=\"\" teype=\"text\" readonly>\n        </div>\n	</div>\n</div>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_ID</label>\n	<div class=\"col-sm-9\">\n		<div class=\"input-group\">\n          <div class=\"input-group-prepend\">\n            <input type=\"hidden\" name=\"demo_order_person_ID\" value=\"\" class=\"inputFK\"/>\n            <button class=\"btn btn-outline-secondary fKey\" type=\"button\" onclick=\"selectForeignKey(this)\">Select...</button>\n          </div>\n          <input class=\"form-control fkval\" placeholder=\"\" teype=\"text\" readonly>\n        </div>\n	</div>\n</div>\n</form>',0,2,NULL,NULL),(9,'new (demo_order_person)','<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_name</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_person_name\" value=\"\">\n	</div>\n</div>\n  <hr>\n    <div class=\"col-12\">\n        <p>Order:</p>\n        <div class=\"tbl_connections\"></div>\n    </div>\n</form>\n\n<script>\n    // Wait for element to exist.\n    function elLoaded(el, cb) {if ($(el).length) {cb($(el));} else {setTimeout(function(){ elLoaded(el, cb) }, 100);}};\n\n    (function(){\n        elLoaded(\'input[name=demo_order_person_ID]\', function(el) {\n           let PrimID = $(\'input[name=demo_order_person_ID]\').val();\n\n           let x = new Table(\'demo_order_order_person\', \'.tbl_connections\', 0, function(){\n               x.Where = \'a.demo_order_person_ID = \' + PrimID;\n               x.loadRows(function(){\n                  x.renderHTML();\n               })\n           });\n      });\n    })();\n</script>',1,3,'',''),(10,'active','<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_name</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_person_name\" value=\"\">\n	</div>\n</div>\n</form>',0,3,NULL,NULL),(11,'update','<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_name</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_person_name\" value=\"\">\n	</div>\n</div>\n</form>',0,3,NULL,NULL),(12,'inactive','<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_name</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_person_name\" value=\"\">\n	</div>\n</div>\n</form>',0,3,NULL,NULL),(13,'new (demo_order_person_person)','<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_supervisor_ID</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_person_supervisor_ID\" value=\"\">\n	</div>\n</div>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_ID</label>\n	<div class=\"col-sm-9\">\n		<div class=\"input-group\">\n          <div class=\"input-group-prepend\">\n            <input type=\"hidden\" name=\"demo_order_person_ID\" value=\"\" class=\"inputFK\"/>\n            <button class=\"btn btn-outline-secondary fKey\" type=\"button\" onclick=\"selectForeignKey(this)\">Select...</button>\n          </div>\n          <input class=\"form-control fkval\" placeholder=\"\" teype=\"text\" readonly>\n        </div>\n	</div>\n</div>\n</form>',1,4,NULL,NULL),(14,'active','<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_supervisor_ID</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_person_supervisor_ID\" value=\"\">\n	</div>\n</div>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_ID</label>\n	<div class=\"col-sm-9\">\n		<div class=\"input-group\">\n          <div class=\"input-group-prepend\">\n            <input type=\"hidden\" name=\"demo_order_person_ID\" value=\"\" class=\"inputFK\"/>\n            <button class=\"btn btn-outline-secondary fKey\" type=\"button\" onclick=\"selectForeignKey(this)\">Select...</button>\n          </div>\n          <input class=\"form-control fkval\" placeholder=\"\" teype=\"text\" readonly>\n        </div>\n	</div>\n</div>\n</form>',0,4,NULL,NULL),(15,'update','<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_supervisor_ID</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_person_supervisor_ID\" value=\"\">\n	</div>\n</div>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_ID</label>\n	<div class=\"col-sm-9\">\n		<div class=\"input-group\">\n          <div class=\"input-group-prepend\">\n            <input type=\"hidden\" name=\"demo_order_person_ID\" value=\"\" class=\"inputFK\"/>\n            <button class=\"btn btn-outline-secondary fKey\" type=\"button\" onclick=\"selectForeignKey(this)\">Select...</button>\n          </div>\n          <input class=\"form-control fkval\" placeholder=\"\" teype=\"text\" readonly>\n        </div>\n	</div>\n</div>\n</form>',0,4,NULL,NULL),(16,'inactive','<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_supervisor_ID</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_person_supervisor_ID\" value=\"\">\n	</div>\n</div>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_ID</label>\n	<div class=\"col-sm-9\">\n		<div class=\"input-group\">\n          <div class=\"input-group-prepend\">\n            <input type=\"hidden\" name=\"demo_order_person_ID\" value=\"\" class=\"inputFK\"/>\n            <button class=\"btn btn-outline-secondary fKey\" type=\"button\" onclick=\"selectForeignKey(this)\">Select...</button>\n          </div>\n          <input class=\"form-control fkval\" placeholder=\"\" teype=\"text\" readonly>\n        </div>\n	</div>\n</div>\n</form>',0,4,NULL,NULL);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_machines`
--

DROP TABLE IF EXISTS `state_machines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state_machines` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tablename` varchar(45) DEFAULT NULL,
  `transition_script` longtext DEFAULT NULL,
  `form_data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_machines`
--

LOCK TABLES `state_machines` WRITE;
/*!40000 ALTER TABLE `state_machines` DISABLE KEYS */;
INSERT INTO `state_machines` VALUES (1,'demo_order_order',NULL,'<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_name</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_order_name\" value=\"\">\n	</div>\n</div>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_budget</label>\n	<div class=\"col-sm-9\">\n		<input type=\"number\" class=\"form-control\" name=\"demo_order_order_budget\">\n	</div>\n</div>\n</form>'),(2,'demo_order_order_person',NULL,'<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_ID</label>\n	<div class=\"col-sm-9\">\n		<div class=\"input-group\">\n          <div class=\"input-group-prepend\">\n            <input type=\"hidden\" name=\"demo_order_order_ID\" value=\"\" class=\"inputFK\"/>\n            <button class=\"btn btn-outline-secondary fKey\" type=\"button\" onclick=\"selectForeignKey(this)\">Select...</button>\n          </div>\n          <input class=\"form-control fkval\" placeholder=\"\" teype=\"text\" readonly>\n        </div>\n	</div>\n</div>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_ID</label>\n	<div class=\"col-sm-9\">\n		<div class=\"input-group\">\n          <div class=\"input-group-prepend\">\n            <input type=\"hidden\" name=\"demo_order_person_ID\" value=\"\" class=\"inputFK\"/>\n            <button class=\"btn btn-outline-secondary fKey\" type=\"button\" onclick=\"selectForeignKey(this)\">Select...</button>\n          </div>\n          <input class=\"form-control fkval\" placeholder=\"\" teype=\"text\" readonly>\n        </div>\n	</div>\n</div>\n</form>'),(3,'demo_order_person',NULL,'<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_name</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_person_name\" value=\"\">\n	</div>\n</div>\n</form>'),(4,'demo_order_person_person',NULL,'<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_supervisor_ID</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_person_supervisor_ID\" value=\"\">\n	</div>\n</div>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_ID</label>\n	<div class=\"col-sm-9\">\n		<div class=\"input-group\">\n          <div class=\"input-group-prepend\">\n            <input type=\"hidden\" name=\"demo_order_person_ID\" value=\"\" class=\"inputFK\"/>\n            <button class=\"btn btn-outline-secondary fKey\" type=\"button\" onclick=\"selectForeignKey(this)\">Select...</button>\n          </div>\n          <input class=\"form-control fkval\" placeholder=\"\" teype=\"text\" readonly>\n        </div>\n	</div>\n</div>\n</form>');
/*!40000 ALTER TABLE `state_machines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_rules`
--

DROP TABLE IF EXISTS `state_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state_rules` (
  `state_rules_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state_id_FROM` bigint(20) NOT NULL,
  `state_id_TO` bigint(20) NOT NULL,
  `transition_script` longtext DEFAULT NULL,
  PRIMARY KEY (`state_rules_id`),
  KEY `state_id_fk1_idx` (`state_id_FROM`),
  KEY `state_id_fk_to_idx` (`state_id_TO`),
  CONSTRAINT `state_id_fk_from` FOREIGN KEY (`state_id_FROM`) REFERENCES `state` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `state_id_fk_to` FOREIGN KEY (`state_id_TO`) REFERENCES `state` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_rules`
--

LOCK TABLES `state_rules` WRITE;
/*!40000 ALTER TABLE `state_rules` DISABLE KEYS */;
INSERT INTO `state_rules` VALUES (1,1,1,NULL),(2,2,2,NULL),(3,3,3,NULL),(4,1,2,NULL),(5,2,3,NULL),(6,3,2,NULL),(7,2,4,NULL),(8,5,5,NULL),(9,6,6,NULL),(10,7,7,NULL),(11,5,6,NULL),(12,6,7,NULL),(13,7,6,NULL),(14,6,8,NULL),(15,9,9,NULL),(16,10,10,NULL),(17,11,11,NULL),(18,9,10,NULL),(19,10,11,NULL),(20,11,10,NULL),(21,10,12,NULL),(22,13,13,NULL),(23,14,14,NULL),(24,15,15,NULL),(25,13,14,NULL),(26,14,15,NULL),(27,15,14,NULL),(28,14,16,NULL);
/*!40000 ALTER TABLE `state_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bpmspace_demo_order'
--

--
-- Dumping routines for database 'bpmspace_demo_order'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-20 11:58:54

^
UPDATE `bpmspace_demo_order`.`state` SET `form_data`='<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_name</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_order_name\" value=\"\">\n	</div>\n</div>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_budget</label>\n	<div class=\"col-sm-9\">\n		<input type=\"number\" class=\"form-control\" name=\"demo_order_order_budget\">\n	</div>\n</div>\n    <hr>\n    <div class=\"col-12\">\n        <p>Person:</p>\n        <div class=\"tbl_connections\"></div>\n    </div>\n</form>\n\n<script>\n    // Wait for element to exist.\n    function elLoaded(el, cb) {if ($(el).length) {cb($(el));} else {setTimeout(function(){ elLoaded(el, cb) }, 100);}};\n\n    (function(){\n        elLoaded(\'input[name=demo_order_order_ID]\', function(el) {\n           let PrimID = $(\'input[name=demo_order_order_ID]\').val();\n\n           let x = new Table(\'demo_order_order_person\', \'.tbl_connections\', 0, function(){\n               x.Where = \'a.demo_order_order_ID = \' + PrimID;\n               x.loadRows(function(){\n                  x.renderHTML();\n               })\n           });\n      });\n    })();\n</script>' WHERE `state_id`='2';
UPDATE `bpmspace_demo_order`.`state` SET `form_data`='<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_name</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_order_name\" value=\"\">\n	</div>\n</div>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_budget</label>\n	<div class=\"col-sm-9\">\n		<input type=\"number\" class=\"form-control\" name=\"demo_order_order_budget\">\n	</div>\n</div>\n    <hr>\n    <div class=\"col-12\">\n        <p>Person:</p>\n        <div class=\"tbl_connections\"></div>\n    </div>\n</form>\n\n<script>\n    // Wait for element to exist.\n    function elLoaded(el, cb) {if ($(el).length) {cb($(el));} else {setTimeout(function(){ elLoaded(el, cb) }, 100);}};\n\n    (function(){\n        elLoaded(\'input[name=demo_order_order_ID]\', function(el) {\n           let PrimID = $(\'input[name=demo_order_order_ID]\').val();\n\n           let x = new Table(\'demo_order_order_person\', \'.tbl_connections\', 0, function(){\n               x.Where = \'a.demo_order_order_ID = \' + PrimID;\n               x.loadRows(function(){\n                  x.renderHTML();\n               })\n           });\n      });\n    })();\n</script>' WHERE `state_id`='3';
UPDATE `bpmspace_demo_order`.`state` SET `form_data`='<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_name</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_order_name\" value=\"\">\n	</div>\n</div>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_order_budget</label>\n	<div class=\"col-sm-9\">\n		<input type=\"number\" class=\"form-control\" name=\"demo_order_order_budget\">\n	</div>\n</div>\n    <hr>\n    <div class=\"col-12\">\n        <p>Person:</p>\n        <div class=\"tbl_connections\"></div>\n    </div>\n</form>\n\n<script>\n    // Wait for element to exist.\n    function elLoaded(el, cb) {if ($(el).length) {cb($(el));} else {setTimeout(function(){ elLoaded(el, cb) }, 100);}};\n\n    (function(){\n        elLoaded(\'input[name=demo_order_order_ID]\', function(el) {\n           let PrimID = $(\'input[name=demo_order_order_ID]\').val();\n\n           let x = new Table(\'demo_order_order_person\', \'.tbl_connections\', 0, function(){\n               x.Where = \'a.demo_order_order_ID = \' + PrimID;\n               x.loadRows(function(){\n                  x.renderHTML();\n               })\n           });\n      });\n    })();\n</script>' WHERE `state_id`='4';
UPDATE `bpmspace_demo_order`.`state` SET `form_data`='<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_name</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_person_name\" value=\"\">\n	</div>\n</div>\n  <hr>\n    <div class=\"col-12\">\n        <p>Order:</p>\n        <div class=\"tbl_connections\"></div>\n    </div>\n</form>\n\n<script>\n    // Wait for element to exist.\n    function elLoaded(el, cb) {if ($(el).length) {cb($(el));} else {setTimeout(function(){ elLoaded(el, cb) }, 100);}};\n\n    (function(){\n        elLoaded(\'input[name=demo_order_person_ID]\', function(el) {\n           let PrimID = $(\'input[name=demo_order_person_ID]\').val();\n\n           let x = new Table(\'demo_order_order_person\', \'.tbl_connections\', 0, function(){\n               x.Where = \'a.demo_order_person_ID = \' + PrimID;\n               x.loadRows(function(){\n                  x.renderHTML();\n               })\n           });\n      });\n    })();\n</script>' WHERE `state_id`='10';
UPDATE `bpmspace_demo_order`.`state` SET `form_data`='<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_name</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_person_name\" value=\"\">\n	</div>\n</div>\n  <hr>\n    <div class=\"col-12\">\n        <p>Order:</p>\n        <div class=\"tbl_connections\"></div>\n    </div>\n</form>\n\n<script>\n    // Wait for element to exist.\n    function elLoaded(el, cb) {if ($(el).length) {cb($(el));} else {setTimeout(function(){ elLoaded(el, cb) }, 100);}};\n\n    (function(){\n        elLoaded(\'input[name=demo_order_person_ID]\', function(el) {\n           let PrimID = $(\'input[name=demo_order_person_ID]\').val();\n\n           let x = new Table(\'demo_order_order_person\', \'.tbl_connections\', 0, function(){\n               x.Where = \'a.demo_order_person_ID = \' + PrimID;\n               x.loadRows(function(){\n                  x.renderHTML();\n               })\n           });\n      });\n    })();\n</script>' WHERE `state_id`='11';
UPDATE `bpmspace_demo_order`.`state` SET `form_data`='<form>\n<div class=\"form-group row\">\n	<label class=\"col-sm-3 col-form-label\">Demo_order_person_name</label>\n	<div class=\"col-sm-9\">\n		<input type=\"text\" class=\"form-control\" name=\"demo_order_person_name\" value=\"\">\n	</div>\n</div>\n  <hr>\n    <div class=\"col-12\">\n        <p>Order:</p>\n        <div class=\"tbl_connections\"></div>\n    </div>\n</form>\n\n<script>\n    // Wait for element to exist.\n    function elLoaded(el, cb) {if ($(el).length) {cb($(el));} else {setTimeout(function(){ elLoaded(el, cb) }, 100);}};\n\n    (function(){\n        elLoaded(\'input[name=demo_order_person_ID]\', function(el) {\n           let PrimID = $(\'input[name=demo_order_person_ID]\').val();\n\n           let x = new Table(\'demo_order_order_person\', \'.tbl_connections\', 0, function(){\n               x.Where = \'a.demo_order_person_ID = \' + PrimID;\n               x.loadRows(function(){\n                  x.renderHTML();\n               })\n           });\n      });\n    })();\n</script>' WHERE `state_id`='12';
