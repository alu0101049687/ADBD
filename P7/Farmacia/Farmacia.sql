SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS,
FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE,
SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
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
DROP TABLE IF EXISTS `mydb`.`familia` ;
CREATE TABLE IF NOT EXISTS `mydb`.`familia` (
`nombre` VARCHAR(45) NOT NULL,
`incompatibilidades` VARCHAR(45) NULL,
PRIMARY KEY (`nombre`));
-- -----------------------------------------------------
-- Table `mydb`.`enfermedad`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`enfermedad` ;
CREATE TABLE IF NOT EXISTS `mydb`.`enfermedad` (
`nombre` VARCHAR(45) NOT NULL,
PRIMARY KEY (`nombre`));
-- -----------------------------------------------------
-- Table `mydb`.`cliente_credito`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`cliente_credito` ;CREATE TABLE IF NOT EXISTS `mydb`.`cliente_credito` (
`cc` INT NOT NULL,
`nombre` VARCHAR(45) NULL,
`dia_pagos` VARCHAR(45) NULL,
PRIMARY KEY (`cc`));
-- -----------------------------------------------------
-- Table `mydb`.`medicamento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`medicamento` ;
CREATE TABLE IF NOT EXISTS `mydb`.`medicamento` (
`codigo` VARCHAR(10) NOT NULL,
`nombre` VARCHAR(45) NULL,
`tipo_igic` DOUBLE NULL,
`precio` DOUBLE NULL,
`receta` TINYINT(1) NOT NULL,
`laboratorio.codigo` VARCHAR(10) NULL,
`posologia` TIME NULL,
PRIMARY KEY (`codigo`));
-- -----------------------------------------------------
-- Table `mydb`.`compra_medicamento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`compra_medicamento` ;
CREATE TABLE IF NOT EXISTS `mydb`.`compra_medicamento` (
`importe_linea` VARCHAR(45) NOT NULL,
`unidades` VARCHAR(45) NULL,
`igic` DOUBLE NULL,
`compra.fechahora` DATETIME NOT NULL,
`medicamento.codigo` VARCHAR(10) NULL,
PRIMARY KEY (`importe_linea`, `compra.fechahora`));
-- -----------------------------------------------------
-- Table `mydb`.`table2_copy3`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`table2_copy3` ;-- -----------------------------------------------------
-- Table `mydb`.`pago_credito`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`pago_credito` ;
CREATE TABLE IF NOT EXISTS `mydb`.`pago_credito` (
`fechahora_pago` DATETIME NOT NULL,
`cantidad_abonada` INT NULL,
`cliente.nombre` VARCHAR(45) NOT NULL,
`compra.fecha` VARCHAR(45) NULL,
PRIMARY KEY (`cliente.nombre`, `fechahora_pago`));
-- -----------------------------------------------------
-- Table `mydb`.`table2_copy5`
-- ----------------------------------------------------
-- -----------------------------------------------------
-- Table `mydb`.`laboratorio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`laboratorio` ;
CREATE TABLE IF NOT EXISTS `mydb`.`laboratorio` (
`codigo` VARCHAR(10) NOT NULL,
`nombre` VARCHAR(45) NULL,
`telefono` VARCHAR(20) NULL,
`contacto_nombre` VARCHAR(45) NULL,
`contacto_apellido` VARCHAR(45) NULL,
`calle` VARCHAR(45) NULL,
`numero` INT NULL,
`cp` VARCHAR(5) NULL,
PRIMARY KEY (`codigo`));
-- -----------------------------------------------------
-- Table `mydb`.`compra`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`compra` ;
CREATE TABLE IF NOT EXISTS `mydb`.`compra` (`importe` VARCHAR(45) NULL,
`fechahora` DATETIME NOT NULL,
PRIMARY KEY (`fechahora`));
-- -----------------------------------------------------
-- Table `mydb`.`familia_enfermedad`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`familia_enfermedad` ;
CREATE TABLE IF NOT EXISTS `mydb`.`familia_enfermedad` (
`nombre.familia` VARCHAR(45) NOT NULL,
`nombre.enfermedad` VARCHAR(45) NOT NULL,
PRIMARY KEY (`nombre.familia`, `nombre.enfermedad`));
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
-- -----------------------------------------------------
-- Data for table `mydb`.`familia`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`familia` (`nombre`, `incompatibilidades`) VALUES ('Analgésicos',
NULL);
INSERT INTO `mydb`.`familia` (`nombre`, `incompatibilidades`) VALUES ('Antialérgicos',
NULL);
INSERT INTO `mydb`.`familia` (`nombre`, `incompatibilidades`) VALUES ('Laxantes', NULL);
INSERT INTO `mydb`.`familia` (`nombre`, `incompatibilidades`) VALUES ('Antiinfecciosos',
NULL);
INSERT INTO `mydb`.`familia` (`nombre`, `incompatibilidades`) VALUES ('Antiinflamatorios',
NULL);
INSERT INTO `mydb`.`familia` (`nombre`, `incompatibilidades`) VALUES ('Antitusivos',
NULL);
INSERT INTO `mydb`.`familia` (`nombre`, `incompatibilidades`) VALUES ('Antipiréticos',
NULL);
INSERT INTO `mydb`.`familia` (`nombre`, `incompatibilidades`) VALUES ('Antiácidos',
NULL);
COMMIT;-- -----------------------------------------------------
-- Data for table `mydb`.`enfermedad`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`enfermedad` (`nombre`) VALUES ('SIDA');
INSERT INTO `mydb`.`enfermedad` (`nombre`) VALUES ('Malaria');
INSERT INTO `mydb`.`enfermedad` (`nombre`) VALUES ('Cólera');
INSERT INTO `mydb`.`enfermedad` (`nombre`) VALUES ('Ébola');
INSERT INTO `mydb`.`enfermedad` (`nombre`) VALUES ('Enfermedad pulmonar');
INSERT INTO `mydb`.`enfermedad` (`nombre`) VALUES ('Diabetes');
INSERT INTO `mydb`.`enfermedad` (`nombre`) VALUES ('Tuberculosis');
INSERT INTO `mydb`.`enfermedad` (`nombre`) VALUES ('Traumatismo');
INSERT INTO `mydb`.`enfermedad` (`nombre`) VALUES ('Cardiopatía');
INSERT INTO `mydb`.`enfermedad` (`nombre`) VALUES ('Afección cerebrovascular');
COMMIT;
-- -----------------------------------------------------
-- Data for table `mydb`.`cliente_credito`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`cliente_credito` (`cc`, `nombre`, `dia_pagos`) VALUES (1234, ' África
Herrera Delgado ', '2019-01-01');
INSERT INTO `mydb`.`cliente_credito` (`cc`, `nombre`, `dia_pagos`) VALUES (4567, '
Fernando Navarro Lopez ', '2019-01-02');
INSERT INTO `mydb`.`cliente_credito` (`cc`, `nombre`, `dia_pagos`) VALUES (7890, ' Aroa
Morales Dominguez ', '2019-01-03');
INSERT INTO `mydb`.`cliente_credito` (`cc`, `nombre`, `dia_pagos`) VALUES (1122, ' Aitor
Carmona Fuentes ', '2019-01-04');
INSERT INTO `mydb`.`cliente_credito` (`cc`, `nombre`, `dia_pagos`) VALUES (3344, ' Leyre
Pascual Romero ', '2019-01-05');
INSERT INTO `mydb`.`cliente_credito` (`cc`, `nombre`, `dia_pagos`) VALUES (4455, ' Marco
Perez Medina ', '2019-01-06');
INSERT INTO `mydb`.`cliente_credito` (`cc`, `nombre`, `dia_pagos`) VALUES (5566 , '
Laura Aguilar Morales ', '2019-01-07');
INSERT INTO `mydb`.`cliente_credito` (`cc`, `nombre`, `dia_pagos`) VALUES (6677, '
Alejandro Alvarez Diaz ', '2019-01-08');
INSERT INTO `mydb`.`cliente_credito` (`cc`, `nombre`, `dia_pagos`) VALUES (7788, ' Leire
Herrera Cruz ', '2019-01-09');
INSERT INTO `mydb`.`cliente_credito` (`cc`, `nombre`, `dia_pagos`) VALUES (8899, '
Joaquín Roca Suarez ', '2019-01-10');
INSERT INTO `mydb`.`cliente_credito` (`cc`, `nombre`, `dia_pagos`) VALUES (1010, ' Elena
Gallardo Gimenez ', NULL);COMMIT;
-- -----------------------------------------------------
-- Data for table `mydb`.`medicamento`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`medicamento` (`codigo`, `nombre`, `tipo_igic`, `precio`, `receta`,
`laboratorio.codigo`, `posologia`) VALUES ('1234', 'ibuprofeno', 6.5, 12, TRUE, '1244', '1');
INSERT INTO `mydb`.`medicamento` (`codigo`, `nombre`, `tipo_igic`, `precio`, `receta`,
`laboratorio.codigo`, `posologia`) VALUES ('2345', 'ebastina', 6.5, 2, FALSE, '2345', '6');
INSERT INTO `mydb`.`medicamento` (`codigo`, `nombre`, `tipo_igic`, `precio`, `receta`,
`laboratorio.codigo`, `posologia`) VALUES ('3456', 'omeprazol', 6.5, 45, TRUE, '2462', '4');
INSERT INTO `mydb`.`medicamento` (`codigo`, `nombre`, `tipo_igic`, `precio`, `receta`,
`laboratorio.codigo`, `posologia`) VALUES ('4567', 'enalapril', 6.5, 5, FALSE, '4667', '1');
INSERT INTO `mydb`.`medicamento` (`codigo`, `nombre`, `tipo_igic`, `precio`, `receta`,
`laboratorio.codigo`, `posologia`) VALUES ('5678', 'lovastitina', 6.5, 10, TRUE, '8922', '4');
INSERT INTO `mydb`.`medicamento` (`codigo`, `nombre`, `tipo_igic`, `precio`, `receta`,
`laboratorio.codigo`, `posologia`) VALUES ('6789', 'fluoxetina', 6.5, 15, FALSE, '2375', '6');
INSERT INTO `mydb`.`medicamento` (`codigo`, `nombre`, `tipo_igic`, `precio`, `receta`,
`laboratorio.codigo`, `posologia`) VALUES ('7890', 'paroxetina', 6.5, 9, TRUE, '5382', '1');
INSERT INTO `mydb`.`medicamento` (`codigo`, `nombre`, `tipo_igic`, `precio`, `receta`,
`laboratorio.codigo`, `posologia`) VALUES ('8901', 'estradiol', 6.5, 8, FALSE, '9812', '4');
INSERT INTO `mydb`.`medicamento` (`codigo`, `nombre`, `tipo_igic`, `precio`, `receta`,
`laboratorio.codigo`, `posologia`) VALUES ('9012', 'diazepam', 6.5, 11, TRUE, '3587', '6');
INSERT INTO `mydb`.`medicamento` (`codigo`, `nombre`, `tipo_igic`, `precio`, `receta`,
`laboratorio.codigo`, `posologia`) VALUES ('0123', 'cetrizina', 6.5, 12, FALSE, '2489', '1');
COMMIT;
-- -----------------------------------------------------
-- Data for table `mydb`.`compra_medicamento`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`compra_medicamento` (`importe_linea`, `unidades`, `igic`,
`compra.fechahora`, `medicamento.codigo`) VALUES ('23', '2', 6.5, '2019-01-01', '1122');
INSERT INTO `mydb`.`compra_medicamento` (`importe_linea`, `unidades`, `igic`,
`compra.fechahora`, `medicamento.codigo`) VALUES ('21', '3', 6.5, '2019-01-02', '2233');
INSERT INTO `mydb`.`compra_medicamento` (`importe_linea`, `unidades`, `igic`,
`compra.fechahora`, `medicamento.codigo`) VALUES ('55', '4', 6.5, '2019-01-03', '3344');
INSERT INTO `mydb`.`compra_medicamento` (`importe_linea`, `unidades`, `igic`,
`compra.fechahora`, `medicamento.codigo`) VALUES ('67', '5', 6.5, '2019-01-04', '4455');INSERT INTO `mydb`.`compra_medicamento` (`importe_linea`, `unidades`, `igic`,
`compra.fechahora`, `medicamento.codigo`) VALUES ('43', '6', 6.5, '2019-01-05', '5566');
INSERT INTO `mydb`.`compra_medicamento` (`importe_linea`, `unidades`, `igic`,
`compra.fechahora`, `medicamento.codigo`) VALUES ('98', '1', 6.5, '2019-01-06', '6677');
INSERT INTO `mydb`.`compra_medicamento` (`importe_linea`, `unidades`, `igic`,
`compra.fechahora`, `medicamento.codigo`) VALUES ('43', '2', 6.5, '2019-01-07', '7788');
INSERT INTO `mydb`.`compra_medicamento` (`importe_linea`, `unidades`, `igic`,
`compra.fechahora`, `medicamento.codigo`) VALUES ('34', '3', 6.5, '2019-01-08', '8899');
INSERT INTO `mydb`.`compra_medicamento` (`importe_linea`, `unidades`, `igic`,
`compra.fechahora`, `medicamento.codigo`) VALUES ('32', '4', 6.5, '2019-01-09', '1010');
INSERT INTO `mydb`.`compra_medicamento` (`importe_linea`, `unidades`, `igic`,
`compra.fechahora`, `medicamento.codigo`) VALUES ('56', '4', 6.5, '2019-01-10', '1111');
INSERT INTO `mydb`.`compra_medicamento` (`importe_linea`, `unidades`, `igic`,
`compra.fechahora`, `medicamento.codigo`) VALUES ('31', '2', 6.5, '2019-01-12', '1212');
INSERT INTO `mydb`.`compra_medicamento` (`importe_linea`, `unidades`, `igic`,
`compra.fechahora`, `medicamento.codigo`) VALUES ('89', '1', 6.5, '2019-01-11', '1313');
COMMIT;
-- -----------------------------------------------------
-- Data for table `mydb`.`pago_credito`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`pago_credito` (`fechahora_pago`, `cantidad_abonada`,
`cliente.nombre`, `compra.fecha`) VALUES ('2019-01-01', 20, 'Lucas Caballero Vargas ',
'2019-01-01');
INSERT INTO `mydb`.`pago_credito` (`fechahora_pago`, `cantidad_abonada`,
`cliente.nombre`, `compra.fecha`) VALUES ('2019-05-01', 30, ' África Herrera Delgado ',
'2019-04-01');
INSERT INTO `mydb`.`pago_credito` (`fechahora_pago`, `cantidad_abonada`,
`cliente.nombre`, `compra.fecha`) VALUES ('2019-06-01', 30, ' Marcos Marti Delgado ',
'2019-05-01');
INSERT INTO `mydb`.`pago_credito` (`fechahora_pago`, `cantidad_abonada`,
`cliente.nombre`, `compra.fecha`) VALUES ('2019-07-01', 40, ' Miriam Rubio Sanchez ',
'2019-06-01');
INSERT INTO `mydb`.`pago_credito` (`fechahora_pago`, `cantidad_abonada`,
`cliente.nombre`, `compra.fecha`) VALUES ('2019-08-01', 44, ' José Manuel Medina Garcia ',
'2019-07-01');
INSERT INTO `mydb`.`pago_credito` (`fechahora_pago`, `cantidad_abonada`,
`cliente.nombre`, `compra.fecha`) VALUES ('2019-09-01', 21, ' Leyre Casas Nieto ',
'2019-08-01');
INSERT INTO `mydb`.`pago_credito` (`fechahora_pago`, `cantidad_abonada`,
`cliente.nombre`, `compra.fecha`) VALUES ('2019-10-01', 21, ' Joel Ortiz Santos ',
'2019-09-01');INSERT INTO `mydb`.`pago_credito` (`fechahora_pago`, `cantidad_abonada`,
`cliente.nombre`, `compra.fecha`) VALUES ('2019-11-01', 56, ' Olivia Gil Garrido ',
'2019-10-01');
INSERT INTO `mydb`.`pago_credito` (`fechahora_pago`, `cantidad_abonada`,
`cliente.nombre`, `compra.fecha`) VALUES ('2019-12-01', 89, ' Carlos Mendez Diez ',
'2019-11-01');
COMMIT;
-- -----------------------------------------------------
-- Data for table `mydb`.`laboratorio`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`laboratorio` (`codigo`, `nombre`, `telefono`, `contacto_nombre`,
`contacto_apellido`, `calle`, `numero`, `cp`) VALUES ('1234', 'A', ' 566643455 ', 'GONZALO',
'MOHAMED', 'AVENIDA DE ESPAÑA', 25, '35315');
INSERT INTO `mydb`.`laboratorio` (`codigo`, `nombre`, `telefono`, `contacto_nombre`,
`contacto_apellido`, `calle`, `numero`, `cp`) VALUES ('4321', 'B', ' 756718387 ', 'MARIA
CARMEN', 'CANO', 'CALLE IGLESIA', 11, '29632');
INSERT INTO `mydb`.`laboratorio` (`codigo`, `nombre`, `telefono`, `contacto_nombre`,
`contacto_apellido`, `calle`, `numero`, `cp`) VALUES ('2345', 'C', '179686356', 'KHADIJA',
'BENITEZ', 'CARRERA MADRID', 41, '28891');
INSERT INTO `mydb`.`laboratorio` (`codigo`, `nombre`, `telefono`, `contacto_nombre`,
`contacto_apellido`, `calle`, `numero`, `cp`) VALUES ('5432', 'D', '297718438', 'JUAN DIOS',
'GALAN', 'CORREDERA MAYOR', 92, '44174');
INSERT INTO `mydb`.`laboratorio` (`codigo`, `nombre`, `telefono`, `contacto_nombre`,
`contacto_apellido`, `calle`, `numero`, `cp`) VALUES ('3456', 'E', '362732533', 'MARIA
ELENA', 'CORRALES', 'RONDA REAL', 81, '48294');
INSERT INTO `mydb`.`laboratorio` (`codigo`, `nombre`, `telefono`, `contacto_nombre`,
`contacto_apellido`, `calle`, `numero`, `cp`) VALUES ('6543', 'A', ' 300347466 ', 'MARIA
SOL', 'ORTEGA', 'VEREDA IGLESIA', 30, '43284');
INSERT INTO `mydb`.`laboratorio` (`codigo`, `nombre`, `telefono`, `contacto_nombre`,
`contacto_apellido`, `calle`, `numero`, `cp`) VALUES ('4567', 'B', '097840138', 'JUAN
IGNACIO', 'RIVERO', 'CORREDERA IGLESIA', 29, '34976');
INSERT INTO `mydb`.`laboratorio` (`codigo`, `nombre`, `telefono`, `contacto_nombre`,
`contacto_apellido`, `calle`, `numero`, `cp`) VALUES ('7654', 'C', '660829480',
'ESPERANZA', 'GARCIA', 'TRAVESÍA PEDRALBES', 25, '46533');
INSERT INTO `mydb`.`laboratorio` (`codigo`, `nombre`, `telefono`, `contacto_nombre`,
`contacto_apellido`, `calle`, `numero`, `cp`) VALUES ('5678', 'D', '442122778', 'CARLOS
MANUEL', 'VALDES', 'RONDA PEDRALBES', 18, '08527');
INSERT INTO `mydb`.`laboratorio` (`codigo`, `nombre`, `telefono`, `contacto_nombre`,
`contacto_apellido`, `calle`, `numero`, `cp`) VALUES ('8765', 'E', '442122779', 'SARAY',
'GARZON', 'CALLEJÓN PEDRALBES', 33, '22787');INSERT INTO `mydb`.`laboratorio` (`codigo`, `nombre`, `telefono`, `contacto_nombre`,
`contacto_apellido`, `calle`, `numero`, `cp`) VALUES ('6789', 'F', '424862282', 'ALEJANDRA',
'ROVIRA', 'VÍA HORNO', 87, '19828');
COMMIT;
-- -----------------------------------------------------
-- Data for table `mydb`.`compra`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`compra` (`importe`, `fechahora`) VALUES ('22', '2019-01-01');
INSERT INTO `mydb`.`compra` (`importe`, `fechahora`) VALUES ('21', '2019-01-02');
INSERT INTO `mydb`.`compra` (`importe`, `fechahora`) VALUES ('20', '2019-01-03');
INSERT INTO `mydb`.`compra` (`importe`, `fechahora`) VALUES ('19', '2019-01-04');
INSERT INTO `mydb`.`compra` (`importe`, `fechahora`) VALUES ('18', '2019-01-05');
INSERT INTO `mydb`.`compra` (`importe`, `fechahora`) VALUES ('17', '2019-01-06');
INSERT INTO `mydb`.`compra` (`importe`, `fechahora`) VALUES ('16', '2019-01-07');
INSERT INTO `mydb`.`compra` (`importe`, `fechahora`) VALUES ('15', '2019-01-08');
INSERT INTO `mydb`.`compra` (`importe`, `fechahora`) VALUES ('14', '2019-01-09');
INSERT INTO `mydb`.`compra` (`importe`, `fechahora`) VALUES ('13', '2019-01-10');
INSERT INTO `mydb`.`compra` (`importe`, `fechahora`) VALUES ('12', '2019-01-11');
COMMIT;


DELIMITER $$

DROP TRIGGER IF EXISTS prohibir_cambios$$
CREATE TRIGGER prohibir_cambios
    BEFORE UPDATE ON pago_credito FOR EACH ROW
    BEGIN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Prohibido cambiar el importe una vez esté pagado";
    END$$

DELIMITER ;



UPDATE pago_credito
SET
cantidad_abonada = 50
WHERE
`cliente.nombre`=' Carlos Mendez Diez ';



	
