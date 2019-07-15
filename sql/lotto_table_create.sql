-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema connection_test_hybernate
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema connection_test_hybernate
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `connection_test_hybernate` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci ;
USE `connection_test_hybernate` ;

-- -----------------------------------------------------
-- Table `connection_test_hybernate`.`lottoszamok`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `connection_test_hybernate`.`lottoszamok` ;

CREATE TABLE IF NOT EXISTS `connection_test_hybernate`.`lottoszamok` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `year` INT(4) NULL,
  `week` INT(2) NULL,
  `pick_date` VARCHAR(12) NULL,
  `seven_match_count` INT(2) NULL,
  `seven_prize` VARCHAR(20) NULL,
  `six_match_count` INT(4) NULL,
  `six_prize` VARCHAR(20) NULL,
  `five_match_count` INT(4) NULL,
  `five_prize` VARCHAR(20) NULL,
  `four_match_count` INT(4) NULL,
  `four_prize` VARCHAR(20) NULL,
  `m1` INT(2) NULL,
  `m2` INT(2) NULL,
  `m3` INT(2) NULL,
  `m4` INT(2) NULL,
  `m5` INT(2) NULL,
  `m6` INT(2) NULL,
  `m7` INT(2) NULL,
  `h1` INT(2) NULL,
  `h2` INT(2) NULL,
  `h3` INT(2) NULL,
  `h4` INT(2) NULL,
  `h5` INT(2) NULL,
  `h6` INT(2) NULL,
  `h7` INT(2) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
