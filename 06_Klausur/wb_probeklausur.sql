SHOW DATABASES;

USE mydb;

SHOW TABLES;

DROP TABLE IF EXISTS `mydb`.`orders`;
DROP TABLE IF EXISTS `mydb`.`customers`;

CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `ID` INT NOT NULL,
  `cst_name` VARCHAR(45) NOT NULL,
  `cst_firstname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

DESCRIBE customers;

CREATE TABLE IF NOT EXISTS `mydb`.`orders` (
  `ID` INT NOT NULL,
  `amount` DECIMAL(6,2) NOT NULL,
  `customers_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_orders_customers_idx` (`customers_ID` ASC) VISIBLE,
  CONSTRAINT `fk_orders_customers`
    FOREIGN KEY (`customers_ID`)
    REFERENCES `mydb`.`customers` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

DESCRIBE orders;