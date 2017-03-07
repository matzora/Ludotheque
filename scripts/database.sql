
CREATE DATABASE IF NOT EXISTS `Ludotheque` DEFAULT CHARACTER SET utf8 ;
USE `Ludotheque` ;

CREATE TABLE IF NOT EXISTS `Ludotheque`.`Site` (
  `idSite` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  PRIMARY KEY (`idSite`));

CREATE TABLE IF NOT EXISTS `Ludotheque`.`User` (
  `idUser` INT NOT NULL,
  `FirstName` VARCHAR(45) NULL,
  `LastName` VARCHAR(45) NULL,
  `Login` VARCHAR(45) NULL,
  `Password` VARCHAR(45) NULL,
  PRIMARY KEY (`idUser`));

CREATE TABLE IF NOT EXISTS `Ludotheque`.`Game` (
  `idGame` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Quantity` INT NULL,
  `Image` VARCHAR(45) NULL,
  `Site_idSite` INT NOT NULL,
  PRIMARY KEY (`idGame`),
  INDEX `fk_Game_Site1_idx` (`Site_idSite` ASC),
  CONSTRAINT `fk_Game_Site1`
    FOREIGN KEY (`Site_idSite`)
    REFERENCES `Ludotheque`.`Site` (`idSite`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS `Ludotheque`.`Lend` (
  `User_idUser` INT NOT NULL,
  `Game_idGame` INT NOT NULL,
  `DateStart` DATE NULL,
  `DateEnd` DATE NULL,
  `DateEndReal` DATE NULL,
  INDEX `fk_Lend_User_idx` (`User_idUser` ASC),
  INDEX `fk_Lend_Game1_idx` (`Game_idGame` ASC),
  CONSTRAINT `fk_Lend_User`
    FOREIGN KEY (`User_idUser`)
    REFERENCES `Ludotheque`.`User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Lend_Game1`
    FOREIGN KEY (`Game_idGame`)
    REFERENCES `Ludotheque`.`Game` (`idGame`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

USE `Ludotheque` ;

CREATE TABLE IF NOT EXISTS `Ludotheque`.`GameView` (`Name` INT, `Image` INT);

DROP TABLE IF EXISTS `Ludotheque`.`GameView`;
USE `Ludotheque`;
CREATE  OR REPLACE VIEW `GameView` AS SELECT Game.Name, Game.Image FROM Game;
