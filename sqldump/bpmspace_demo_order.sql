	DROP DATABASE IF EXISTS `bpmspace_DemoOrder`;
	CREATE DATABASE `bpmspace_DemoOrder` /*!40100 DEFAULT CHARACTER SET UTF8 */;

	CREATE TABLE `bpmspace_DemoOrder`.`DemoOrder_person` (
	  `DemoOrder_person_ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	  `DemoOrder_person_name` VARCHAR(45) NULL,
	  PRIMARY KEY (`DemoOrder_person_ID`));
	  
	 
	 CREATE TABLE `bpmspace_DemoOrder`.`DemoOrder_order` (
	  `DemoOrder_order_ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	  `DemoOrder_order_name` VARCHAR(45) NULL,
	  `DemoOrder_order_budget` INT NULL,
	  PRIMARY KEY (`DemoOrder_order_ID`));
	  
	CREATE TABLE `bpmspace_DemoOrder`.`DemoOrder_order_person` (
	  `DemoOrder_order_person_ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	  `DemoOrder_order_ID` BIGINT(20) UNSIGNED,
	  `DemoOrder_person_ID` BIGINT(20) UNSIGNED,
	  PRIMARY KEY (`DemoOrder_order_person_ID`));
	  
	  CREATE TABLE `bpmspace_DemoOrder`.`DemoOrder_person_person` (
	  `DemoOrder_person_person_ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	  `DemoOrder_person_supervisor_ID` BIGINT(20) UNSIGNED,
	  `DemoOrder_person_ID` BIGINT(20) UNSIGNED,
	  PRIMARY KEY (`DemoOrder_person_person_ID`));
	  
	  ALTER TABLE `bpmspace_DemoOrder`.`DemoOrder_order_person` 
	ADD INDEX `DemoOrder_order_id_fk_1856_idx` (`DemoOrder_order_ID` ASC);
	ALTER TABLE `bpmspace_DemoOrder`.`DemoOrder_order_person` 
	ADD CONSTRAINT `DemoOrder_order_id_fk_1856`
	  FOREIGN KEY (`DemoOrder_order_ID`)
	  REFERENCES `bpmspace_DemoOrder`.`DemoOrder_order` (`DemoOrder_order_ID`)
	  ON DELETE NO ACTION
	  ON UPDATE NO ACTION;
	  
	  ALTER TABLE `bpmspace_DemoOrder`.`DemoOrder_order_person` 
	ADD INDEX `DemoOrder_person_id_fk_3645_idx` (`DemoOrder_person_ID` ASC);
	ALTER TABLE `bpmspace_DemoOrder`.`DemoOrder_order_person` 
	ADD CONSTRAINT `DemoOrder_person_id_fk_3645`
	  FOREIGN KEY (`DemoOrder_person_ID`)
	  REFERENCES `bpmspace_DemoOrder`.`DemoOrder_person` (`DemoOrder_person_ID`)
	  ON DELETE NO ACTION
	  ON UPDATE NO ACTION;

	  ALTER TABLE `bpmspace_DemoOrder`.`DemoOrder_person_person` 
	ADD INDEX `DemoOrder_person_supervisor_id_fk_4656_idx` (`DemoOrder_person_ID` ASC);
	ALTER TABLE `bpmspace_DemoOrder`.`DemoOrder_person_person` 
	ADD CONSTRAINT `DemoOrder_person_supervisor_id_fk_4656`
	  FOREIGN KEY (`DemoOrder_person_ID`)
	  REFERENCES `bpmspace_DemoOrder`.`DemoOrder_person` (`DemoOrder_person_ID`)
	  ON DELETE NO ACTION
	  ON UPDATE NO ACTION;

ALTER TABLE `bpmspace_DemoOrder`.`DemoOrder_person_person` 
ADD CONSTRAINT `DemoOrder_person_id_fk_3097`
  FOREIGN KEY (`DemoOrder_person_ID`)
  REFERENCES `bpmspace_DemoOrder`.`DemoOrder_person` (`DemoOrder_person_ID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
