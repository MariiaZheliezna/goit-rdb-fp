-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema pandemic
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema pandemic
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pandemic` DEFAULT CHARACTER SET utf8 ;
USE `pandemic` ;

-- -----------------------------------------------------
-- Table `pandemic`.`infectious_cases`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pandemic`.`infectious_cases` (
  `Entity` VARCHAR(50) NOT NULL,
  `Code` VARCHAR(30) NULL DEFAULT NULL,
  `Year` INT NULL DEFAULT NULL,
  `Number_yaws` INT NULL DEFAULT NULL,
  `polio_cases` INT NULL DEFAULT NULL,
  `cases_guinea_worm` INT NULL DEFAULT NULL,
  `Number_rabies` FLOAT NULL DEFAULT NULL,
  `Number_malaria` FLOAT NULL DEFAULT NULL,
  `Number_hiv` FLOAT NULL DEFAULT NULL,
  `Number_tuberculosis` FLOAT NULL DEFAULT NULL,
  `Number_smallpox` INT NULL DEFAULT NULL,
  `Number_cholera_cases` INT NULL DEFAULT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pandemic`.`Entities`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pandemic`.`Entities` (
  `Entity_id` INT NOT NULL AUTO_INCREMENT,
  `Entity` VARCHAR(50) NOT NULL,
  `Code` VARCHAR(30) NULL,
  PRIMARY KEY (`Entity_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pandemic`.`infectious_cases_norm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pandemic`.`infectious_cases_norm` (
  `Case_id` INT NOT NULL AUTO_INCREMENT,
  `Entity_id` INT NOT NULL,
  `Year` INT NULL DEFAULT NULL,
  `Number_yaws` INT NULL DEFAULT NULL,
  `polio_cases` INT NULL DEFAULT NULL,
  `cases_guinea_worm` INT NULL DEFAULT NULL,
  `Number_rabies` FLOAT NULL DEFAULT NULL,
  `Number_malaria` FLOAT NULL DEFAULT NULL,
  `Number_hiv` FLOAT NULL DEFAULT NULL,
  `Number_tuberculosis` FLOAT NULL DEFAULT NULL,
  `Number_smallpox` INT NULL DEFAULT NULL,
  `Number_cholera_cases` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Case_id`),
  INDEX `entity_fk_idx` (`Entity_id` ASC) VISIBLE,
  CONSTRAINT `entity_fk`
    FOREIGN KEY (`Entity_id`)
    REFERENCES `pandemic`.`Entities` (`Entity_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
