-- MySQL Script generated by MySQL Workbench
-- Thu Nov 28 09:11:28 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`familia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`familia` (
  `nombre` VARCHAR(45) NOT NULL,
  `incompatibilidades` VARCHAR(45) NULL,
  PRIMARY KEY (`nombre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`enfermedad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`enfermedad` (
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`nombre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cliente_credito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cliente_credito` (
  `cc` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `dia_pagos` VARCHAR(45) NULL,
  `nom` VARCHAR(45) NULL,
  `cliente_creditocol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cc`, `cliente_creditocol`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`laboratorio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`laboratorio` (
  `codigo` VARCHAR(10) NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `telefono` VARCHAR(20) NULL,
  `contacto_nombre` VARCHAR(45) NULL,
  `contacto_apellido` VARCHAR(45) NULL,
  `calle` VARCHAR(45) NULL,
  `numero` INT NULL,
  `cp` VARCHAR(5) NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`medicamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`medicamento` (
  `codigo` VARCHAR(10) NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `tipo_igic` DOUBLE NULL,
  `precio` DOUBLE NULL,
  `receta` TINYINT(1) NOT NULL,
  `laboratorio.codigo` VARCHAR(10) NULL,
  `posologia` TIME NULL,
  PRIMARY KEY (`codigo`),
  INDEX `codigo_idx` (`laboratorio.codigo` ASC) VISIBLE,
  CONSTRAINT `codigo`
    FOREIGN KEY (`laboratorio.codigo`)
    REFERENCES `mydb`.`laboratorio` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`compra` (
  `importe` VARCHAR(45) NULL,
  `fechahora` DATETIME NOT NULL,
  PRIMARY KEY (`fechahora`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`compra_medicamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`compra_medicamento` (
  `importe_linea` VARCHAR(45) NOT NULL,
  `unidades` VARCHAR(45) NULL,
  `igic` DOUBLE NULL,
  `compra.fechahora` DATETIME NOT NULL,
  `medicamento.codigo` VARCHAR(10) NULL,
  PRIMARY KEY (`importe_linea`, `compra.fechahora`),
  INDEX `fecha_idx` (`compra.fechahora` ASC) VISIBLE,
  INDEX `codigo_idx` (`medicamento.codigo` ASC) VISIBLE,
  CONSTRAINT `fecha`
    FOREIGN KEY (`compra.fechahora`)
    REFERENCES `mydb`.`compra` (`fechahora`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `codigo`
    FOREIGN KEY (`medicamento.codigo`)
    REFERENCES `mydb`.`medicamento` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`table2_copy3`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`table2_copy3` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`pago_credito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pago_credito` (
  `fechahora_pago` DATETIME NOT NULL,
  `cantidad_abonada` INT NULL,
  `cliente.nombre` VARCHAR(45) NOT NULL,
  `compra.fecha` VARCHAR(45) NULL,
  PRIMARY KEY (`cliente.nombre`, `fechahora_pago`),
  CONSTRAINT `nombre`
    FOREIGN KEY ()
    REFERENCES `mydb`.`cliente_credito` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`table2_copy5`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`table2_copy5` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`familia_enfermedad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`familia_enfermedad` (
  `nombre.familia` VARCHAR(45) NOT NULL,
  `nombre.enfermedad` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`nombre.familia`, `nombre.enfermedad`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
