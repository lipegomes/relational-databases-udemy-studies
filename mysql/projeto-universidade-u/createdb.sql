-- MySQL Script generated by MySQL Workbench
-- Thu May 20 15:32:20 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema universidade_u
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema universidade_u
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `universidade_u` DEFAULT CHARACTER SET utf8 ;
USE `universidade_u` ;

-- -----------------------------------------------------
-- Table `universidade_u`.`aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universidade_u`.`aluno` (
  `id_aluno` INT NOT NULL AUTO_INCREMENT,
  `cpf` VARCHAR(14) NOT NULL,
  `sexo` CHAR(1) NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  `email` VARCHAR(150) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `ativo_sn` INT NULL DEFAULT '1',
  PRIMARY KEY (`id_aluno`),
  UNIQUE INDEX `uc_aluno_cpf` (`cpf` ASC) VISIBLE,
  UNIQUE INDEX `uc_aluno_email` (`email` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `universidade_u`.`curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universidade_u`.`curso` (
  `id_curso` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_curso`))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `universidade_u`.`aluno_curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universidade_u`.`aluno_curso` (
  `fk_id_aluno` INT NOT NULL,
  `fk_id_curso` INT NOT NULL,
  `data_inscricao_curso` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `valor_pago_curso` FLOAT(10,2) NULL DEFAULT NULL,
  PRIMARY KEY (`fk_id_aluno`, `fk_id_curso`, `data_inscricao_curso`),
  INDEX `fk_aluno_curso` (`fk_id_aluno` ASC) VISIBLE,
  INDEX `fk_curso_aluno` (`fk_id_curso` ASC) VISIBLE,
  CONSTRAINT `fk_aluno_curso`
    FOREIGN KEY (`fk_id_aluno`)
    REFERENCES `universidade_u`.`aluno` (`id_aluno`),
  CONSTRAINT `fk_curso_aluno`
    FOREIGN KEY (`fk_id_curso`)
    REFERENCES `universidade_u`.`curso` (`id_curso`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `universidade_u`.`professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universidade_u`.`professor` (
  `id_professor` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id_professor`))
ENGINE = InnoDB
AUTO_INCREMENT = 382
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `universidade_u`.`disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universidade_u`.`disciplina` (
  `id_disciplina` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(50) NOT NULL,
  `carga_horaria` INT NULL DEFAULT NULL,
  `fk_id_professor` INT NULL DEFAULT NULL,
  `fk_id_curso` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_disciplina`),
  INDEX `fk_curso_disciplina` (`fk_id_curso` ASC) VISIBLE,
  INDEX `fk_disciplina_professor` (`fk_id_professor` ASC) VISIBLE,
  CONSTRAINT `fk_curso_disciplina`
    FOREIGN KEY (`fk_id_curso`)
    REFERENCES `universidade_u`.`curso` (`id_curso`),
  CONSTRAINT `fk_disciplina_professor`
    FOREIGN KEY (`fk_id_professor`)
    REFERENCES `universidade_u`.`professor` (`id_professor`))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `universidade_u`.`endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universidade_u`.`endereco` (
  `id_endereco` INT NOT NULL AUTO_INCREMENT,
  `logradouro` VARCHAR(100) NOT NULL,
  `numero` VARCHAR(10) NOT NULL,
  `complemento` VARCHAR(20) NULL DEFAULT NULL,
  `bairro` VARCHAR(100) NOT NULL,
  `cidade` VARCHAR(50) NOT NULL,
  `estado` CHAR(2) NOT NULL,
  `fk_id_aluno` INT NOT NULL,
  PRIMARY KEY (`id_endereco`),
  UNIQUE INDEX `uc_endereco_fk_id_aluno` (`fk_id_aluno` ASC) VISIBLE,
  CONSTRAINT `fk_aluno_enredeco`
    FOREIGN KEY (`fk_id_aluno`)
    REFERENCES `universidade_u`.`aluno` (`id_aluno`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `universidade_u`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universidade_u`.`funcionario` (
  `id_matricula` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `funcao` VARCHAR(50) NOT NULL,
  `telefone` VARCHAR(20) NULL DEFAULT NULL,
  `fk_id_matricula_supervisor` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_matricula`),
  INDEX `fk_funcionario_supervisor` (`fk_id_matricula_supervisor` ASC) VISIBLE,
  CONSTRAINT `fk_funcionario_supervisor`
    FOREIGN KEY (`fk_id_matricula_supervisor`)
    REFERENCES `universidade_u`.`funcionario` (`id_matricula`))
ENGINE = InnoDB
AUTO_INCREMENT = 314
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `universidade_u`.`gasto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universidade_u`.`gasto` (
  `id_gasto` INT NOT NULL AUTO_INCREMENT,
  `ano` INT NOT NULL,
  `tipo` ENUM('previsto', 'realizado') NOT NULL,
  `jan` FLOAT(10,2) NULL DEFAULT NULL,
  `fev` FLOAT(10,2) NULL DEFAULT NULL,
  `mar` FLOAT(10,2) NULL DEFAULT NULL,
  `abr` FLOAT(10,2) NULL DEFAULT NULL,
  `mai` FLOAT(10,2) NULL DEFAULT NULL,
  `jun` FLOAT(10,2) NULL DEFAULT NULL,
  `jul` FLOAT(10,2) NULL DEFAULT NULL,
  `ago` FLOAT(10,2) NULL DEFAULT NULL,
  `set` FLOAT(10,2) NULL DEFAULT NULL,
  `out` FLOAT(10,2) NULL DEFAULT NULL,
  `nov` FLOAT(10,2) NULL DEFAULT NULL,
  `dez` FLOAT(10,2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_gasto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `universidade_u`.`projeto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universidade_u`.`projeto` (
  `id_codigo` INT NOT NULL AUTO_INCREMENT,
  `data_criacao` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `nome` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_codigo`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `universidade_u`.`projeto_funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universidade_u`.`projeto_funcionario` (
  `fk_id_codigo` INT NOT NULL,
  `fk_id_matricula` INT NOT NULL,
  `horas_estimadas` INT NOT NULL,
  `horas_realizadas` INT NULL DEFAULT NULL,
  PRIMARY KEY (`fk_id_codigo`, `fk_id_matricula`),
  INDEX `fk_id_matricula` (`fk_id_matricula` ASC) VISIBLE,
  CONSTRAINT `projeto_funcionario_ibfk_1`
    FOREIGN KEY (`fk_id_codigo`)
    REFERENCES `universidade_u`.`projeto` (`id_codigo`),
  CONSTRAINT `projeto_funcionario_ibfk_2`
    FOREIGN KEY (`fk_id_matricula`)
    REFERENCES `universidade_u`.`funcionario` (`id_matricula`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `universidade_u`.`telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universidade_u`.`telefone` (
  `id_telefone` INT NOT NULL AUTO_INCREMENT,
  `numero` VARCHAR(20) NOT NULL,
  `fk_id_aluno` INT NOT NULL,
  `tipo` ENUM('res', 'com', 'cel') NOT NULL,
  PRIMARY KEY (`id_telefone`),
  INDEX `fk_aluno_telefone` (`fk_id_aluno` ASC) VISIBLE,
  CONSTRAINT `fk_aluno_telefone`
    FOREIGN KEY (`fk_id_aluno`)
    REFERENCES `universidade_u`.`aluno` (`id_aluno`))
ENGINE = InnoDB
AUTO_INCREMENT = 19
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
