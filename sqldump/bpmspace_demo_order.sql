	DROP DATABASE IF EXISTS `bpmspace_DemoOrder`;
	CREATE DATABASE `bpmspace_DemoOrder` /*!40100 DEFAULT CHARACTER SET UTF8 */;

	CREATE TABLE `bpmspace_DemoOrder`.`demo_order_person` (
	  `demo_order_person_ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	  `demo_order_person_name` VARCHAR(45) NULL,
	  PRIMARY KEY (`demo_order_person_ID`));
	  
	 
	 CREATE TABLE `bpmspace_DemoOrder`.`demo_order_order` (
	  `demo_order_order_ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	  `demo_order_order_name` VARCHAR(45) NULL,
	  `demo_order_order_budget` INT NULL,
	  PRIMARY KEY (`demo_order_order_ID`));
	  
	CREATE TABLE `bpmspace_DemoOrder`.`demo_order_order_person` (
	  `demo_order_order_person_ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	  `demo_order_order_ID` BIGINT(20) UNSIGNED,
	  `demo_order_person_ID` BIGINT(20) UNSIGNED,
	  PRIMARY KEY (`demo_order_order_person_ID`));
	  
	  CREATE TABLE `bpmspace_DemoOrder`.`demo_order_person_person` (
	  `demo_order_person_person_ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	  `demo_order_person_supervisor_ID` BIGINT(20) UNSIGNED,
	  `demo_order_person_ID` BIGINT(20) UNSIGNED,
	  PRIMARY KEY (`demo_order_person_person_ID`));
	  
	  ALTER TABLE `bpmspace_DemoOrder`.`demo_order_order_person` 
	ADD INDEX `demo_order_order_id_fk_1856_idx` (`demo_order_order_ID` ASC);
	ALTER TABLE `bpmspace_DemoOrder`.`demo_order_order_person` 
	ADD CONSTRAINT `demo_order_order_id_fk_1856`
	  FOREIGN KEY (`demo_order_order_ID`)
	  REFERENCES `bpmspace_DemoOrder`.`demo_order_order` (`demo_order_order_ID`)
	  ON DELETE NO ACTION
	  ON UPDATE NO ACTION;
	  
	  ALTER TABLE `bpmspace_DemoOrder`.`demo_order_order_person` 
	ADD INDEX `demo_order_person_id_fk_3645_idx` (`demo_order_person_ID` ASC);
	ALTER TABLE `bpmspace_DemoOrder`.`demo_order_order_person` 
	ADD CONSTRAINT `demo_order_person_id_fk_3645`
	  FOREIGN KEY (`demo_order_person_ID`)
	  REFERENCES `bpmspace_DemoOrder`.`demo_order_person` (`demo_order_person_ID`)
	  ON DELETE NO ACTION
	  ON UPDATE NO ACTION;

	  ALTER TABLE `bpmspace_DemoOrder`.`demo_order_person_person` 
	ADD INDEX `demo_order_person_supervisor_id_fk_4656_idx` (`demo_order_person_ID` ASC);
	ALTER TABLE `bpmspace_DemoOrder`.`demo_order_person_person` 
	ADD CONSTRAINT `demo_order_person_supervisor_id_fk_4656`
	  FOREIGN KEY (`demo_order_person_ID`)
	  REFERENCES `bpmspace_DemoOrder`.`demo_order_person` (`demo_order_person_ID`)
	  ON DELETE NO ACTION
	  ON UPDATE NO ACTION;

ALTER TABLE `bpmspace_DemoOrder`.`demo_order_person_person` 
ADD CONSTRAINT `demo_order_person_id_fk_3097`
  FOREIGN KEY (`demo_order_person_ID`)
  REFERENCES `bpmspace_DemoOrder`.`demo_order_person` (`demo_order_person_ID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
