-- new schema for lottery 
CREATE SCHEMA `lottery_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci ;

-- create tables for lottery
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema lottery_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lottery_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lottery_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci ;
USE `lottery_db` ;

-- -----------------------------------------------------
-- Table `lottery_db`.`lottery_draw`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lottery_db`.`lottery_draw` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `year` INT(4) NOT NULL,
  `week` INT(2) NOT NULL,
  `draw_date` VARCHAR(12) NOT NULL,
  `seven_match_count` INT(2) NOT NULL,
  `seven_prize` VARCHAR(20) NOT NULL,
  `six_match_count` INT(4) NOT NULL,
  `six_prize` VARCHAR(20) NOT NULL,
  `five_match_count` INT(4) NOT NULL,
  `five_prize` VARCHAR(20) NOT NULL,
  `four_match_count` INT(4) NOT NULL,
  `four_prize` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lottery_db`.`machine_draw`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lottery_db`.`machine_draw` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `num1` INT(2) NULL,
  `num2` INT(2) NULL,
  `num3` INT(2) NULL,
  `num4` INT(2) NULL,
  `num5` INT(2) NULL,
  `num6` INT(2) NULL,
  `num7` INT(2) NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_m`
    FOREIGN KEY (`id`)
    REFERENCES `lottery_db`.`lottery_draw` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lottery_db`.`hand_draw`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lottery_db`.`hand_draw` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `num1` INT(2) NULL,
  `num2` INT(2) NULL,
  `num3` INT(2) NULL,
  `num4` INT(2) NULL,
  `num5` INT(2) NULL,
  `num6` INT(2) NULL,
  `num7` INT(2) NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_hand`
    FOREIGN KEY (`id`)
    REFERENCES `lottery_db`.`lottery_draw` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- extend the lottery_draw table
ALTER TABLE `lottery_db`.`lottery_draw` 
ADD COLUMN `id_by_hand` INT NOT NULL AFTER `four_prize`,
ADD COLUMN `id_by_machine` INT NOT NULL AFTER `id_by_hand`;


