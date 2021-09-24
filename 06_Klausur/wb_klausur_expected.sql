SHOW DATABASES;

DROP DATABASE IF EXISTS klausurDB;
CREATE DATABASE IF NOT EXISTS klausurDB;

USE klausurDB;

SHOW TABLES;

DROP TABLE IF EXISTS klausurDB.user;
DROP TABLE IF EXISTS klausurDB.posts;


CREATE TABLE IF NOT EXISTS `klausurDB`.`user` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(45) NOT NULL,
  `user_mail` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

DESCRIBE klausurDB.user;

CREATE TABLE IF NOT EXISTS `klausurDB`.`posts` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `place` VARCHAR(45) NOT NULL,
  `likes` INT NOT NULL,
  `user_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_posts_user_idx` (`user_ID` ASC) VISIBLE,
  CONSTRAINT `fk_posts_user`
    FOREIGN KEY (`user_ID`)
    REFERENCES `klausurDB`.`user` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

DESCRIBE klausurDB.posts;