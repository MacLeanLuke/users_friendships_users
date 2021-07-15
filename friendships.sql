-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema friendshipdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema friendshipdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `friendshipdb` DEFAULT CHARACTER SET utf8 ;
USE `friendshipdb` ;

-- -----------------------------------------------------
-- Table `friendshipdb`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `friendshipdb`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `updated_at` DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `friendshipdb`.`friendships`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `friendshipdb`.`friendships` (
  `user_id` INT NOT NULL,
  `user_id1` INT NOT NULL,
  `created_at` DATETIME NULL DEFAULT NOW(),
  `updated_at` DATETIME NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`user_id`, `user_id1`),
  INDEX `fk_users_has_users_users1_idx` (`user_id1` ASC) VISIBLE,
  INDEX `fk_users_has_users_users_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_users_has_users_users`
    FOREIGN KEY (`user_id`)
    REFERENCES `friendshipdb`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_has_users_users1`
    FOREIGN KEY (`user_id1`)
    REFERENCES `friendshipdb`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
