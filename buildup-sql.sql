CREATE SCHEMA `stubeat` ;

CREATE TABLE `stubeat`.`sbemployee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `empname` VARCHAR(45) NOT NULL,
  `empemail` VARCHAR(45) NOT NULL,
  `emppassword` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `stubeat`.`sbmember` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC));

CREATE TABLE `stubeat`.`sbmusic` (
  `musicid` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `musicname` VARCHAR(500) NOT NULL,
  `id` INT UNSIGNED NOT NULL,
  `music` VARCHAR(10000) NULL,
  PRIMARY KEY (`musicid`),
  INDEX `id_idx` (`id` ASC),
  CONSTRAINT `id`
    FOREIGN KEY (`id`)
    REFERENCES `stubeat`.`sbmember` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);