-- MySQL Script generated by MySQL Workbench
-- Mon Aug 19 10:55:08 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Monitorando
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Monitorando
-- -----------------------------------------------------

DROP SCHEMA IF EXISTS `Monitorando` ;
CREATE SCHEMA IF NOT EXISTS `Monitorando` DEFAULT CHARACTER SET utf8 ;
USE `Monitorando` ;

-- -----------------------------------------------------
-- Table `Monitorando`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Monitorando`.`Usuario` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(65) NOT NULL,
  `Senha` VARCHAR(100) NOT NULL,
  `Tipo` ENUM('Aluno', 'Professor') NOT NULL,
  `Email` VARCHAR(50) NOT NULL,
  `Foto` VARCHAR(45) ,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;

INSERT INTO `Monitorando`.`Usuario` (`Nome`, `Senha`, `Tipo`, `Email`, `Foto`) VALUES ("Fellipe Costa Reis", "0000004", "Aluno", "fcr@gmail.com", "imagem1.png/AAAAA");
INSERT INTO `Monitorando`.`Usuario` (`Nome`, `Senha`, `Tipo`, `Email`, `Foto`) VALUES ("Fernanda Cesar da Silva", "0000003", "Aluno", "g.reis@gmail.com", "imagem2.png/AAAAA");
INSERT INTO `Monitorando`.`Usuario` (`Nome`, `Senha`, `Tipo`, `Email`, `Foto`) VALUES ("Kayane Rocha ", "0000002", "Aluno", "ghuyiyg@gmail.com", "imagem3.png/AAAAA");
INSERT INTO `Monitorando`.`Usuario` (`Nome`, `Senha`, `Tipo`, `Email`, `Foto`) VALUES ("Natália Penalva Panighel", "0000001", "Aluno", "fellipe@gmail.com", "imagem4.png/AAAAA");
INSERT INTO `Monitorando`.`Usuario` (`Nome`, `Senha`, `Tipo`, `Email`, `Foto`) VALUES ("Angelica Ferreira Gomes", "0000005", "Aluno", "angel.ferreira@gmail.com", "imagem5.png/AAAAA");
INSERT INTO `Monitorando`.`Usuario` (`Nome`, `Senha`, `Tipo`, `Email`, `Foto`) VALUES ("Jean Vitor Hass", "0000006", "Aluno", "jean.hass@gmail.com", "imagem6.png/AAAAA");
INSERT INTO `Monitorando`.`Usuario` (`Nome`, `Senha`, `Tipo`, `Email`, `Foto`) VALUES ("Bruno Ferreira Ribeiro", "0000007", "Aluno", "bruno.ddff@gmail.com", "imagem7.png/AAAAA");
INSERT INTO `Monitorando`.`Usuario` (`Nome`, `Senha`, `Tipo`, `Email`, `Foto`) VALUES ("Cristina Soares", "0000008", "Aluno", "cris.almeida@gmail.com", "imagem8.png/AAAAA");
INSERT INTO `Monitorando`.`Usuario` (`Nome`, `Senha`, `Tipo`, `Email`, `Foto`) VALUES ("Ana Beatriz Nascimento", "0000009", "Aluno", "bia.luscas@gmail.com","");
INSERT INTO `Monitorando`.`Usuario` (`Nome`, `Senha`, `Tipo`, `Email`, `Foto`) VALUES ("Camila Cabello ", "0000010", "Aluno", "a.leao@gmail.com", "imagem10.png/AAAAA");
INSERT INTO `Monitorando`.`Usuario` (`Nome`, `Senha`, `Tipo`, `Email`, `Foto`) VALUES ("Shawn Petter Raul Mendes", "0000011", "Aluno", "camz.c@gmail.com", "imagem11.png/AAAAA");
INSERT INTO `Monitorando`.`Usuario` (`Nome`, `Senha`, `Tipo`, `Email`, `Foto`) VALUES ("Adriana Ribas", "00000", "Aluno", "adr.tibas@gmail.com","" ),
																					  ("Ana Beatriz Perreira", "nananada", "Professor", "anapp@gmail.com", "imagem18.png/BABA"),
																					  ("Jéssica Pea", "ada", "Professor", "jejepea@gmail.com", "imagem19.png/BABA"),
																					  ("Maria Silva", "454545", "Professor", "mama_silva@gmail.com", "imagem20.png/BABA"),
																					  ("Paulo Santos", "na2121", "Professor", "paulinhoS@gmail.com", "imagem21.png/BABA"),
																					  ("Carla Traz", "569869", "Aluno", "PaulaTraz3bolos@gmail.com", "imagem22.png/BABA"),
																					  ("Elangia Cesar", "4569876", "Aluno", "elangiaCe@gmail.com", "imagem23.png/BABA"),
																					  ("Cacilda Teodoro", "fefefe", "Professor", "cacildsTeo@gmail.com", "imagem.png/BABA");




select * from `Monitorando`.`Usuario`;


-- -----------------------------------------------------
-- Table `Monitorando`.`Curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Monitorando`.`Curso` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;

INSERT INTO `Monitorando`.`Curso` (`Nome`) VALUES ("Linguagens");
INSERT INTO `Monitorando`.`Curso` (`Nome`) VALUES ("Matemática");
INSERT INTO `Monitorando`.`Curso` (`Nome`) VALUES ("Humanas");
INSERT INTO `Monitorando`.`Curso` (`Nome`) VALUES ("Ciências Naturais");
INSERT INTO `Monitorando`.`Curso` (`Nome`) VALUES ("Informática Integrado");
INSERT INTO `Monitorando`.`Curso` (`Nome`) VALUES ("Mecanica Integrado");
INSERT INTO `Monitorando`.`Curso` (`Nome`) VALUES ("Eletronica Integrado");
INSERT INTO `Monitorando`.`Curso` (`Nome`) VALUES ("Eletrotecnica Integrado");

select * from `Curso`;


-- -----------------------------------------------------
-- Table `Monitorando`.`Turma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Monitorando`.`Turma` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Numero` INT NOT NULL,
  `Curso_Id` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Turma_Curso1_idx` (`Curso_Id` ASC),
  CONSTRAINT `fk_Turma_Curso1`
    FOREIGN KEY (`Curso_Id`)
    REFERENCES `Monitorando`.`Curso` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `Monitorando`.`Turma` (`Numero`, `Curso_Id`) VALUES
(113, 5), (131, 5), (213, 5), (231, 5), (313, 5), (331, 5), (413, 5), (431, 5),
(110, 6), (130, 6), (210, 6), (230, 6), (310, 6), (330, 6), (410, 6), (430, 6),
(111, 7), (112, 7), (211, 7), (212, 7), (311, 7), (312, 7), (411, 7), (412, 7),
(132, 8), (232, 8), (323, 8), (432, 8);



select * from `Turma`;

--------------------------------------------------------
-- Table `Monitorando`.`Aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Monitorando`.`Aluno` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Status` ENUM('Monitor', 'Comum') NOT NULL,
  `Id_Usuario` INT NOT NULL,
  `Id_Turma` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Aluno_Usuario1_idx` (`Id_Usuario` ASC),
  INDEX `fk_Aluno_Turma1_idx` (`Id_Turma` ASC),
  CONSTRAINT `fk_Aluno_Usuario1`
    FOREIGN KEY (`Id_Usuario`)
    REFERENCES `Monitorando`.`Usuario` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Aluno_Turma1`
    FOREIGN KEY (`Id_Turma`)
    REFERENCES `Monitorando`.`Turma` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `Monitorando`.`Aluno` (`Status`,`Id_Usuario`, `Id_Turma`)
VALUES ("Monitor", 1, 3),
("Comum", 2, 1),
("Monitor", 3, 2),
("Comum", 4, 3),
("Monitor", 5, 1),
("Comum", 6, 2),
("Comum", 7, 1),
("Comum", 11, 8);

select * from `Aluno`;

-- -----------------------------------------------------
-- Table `Monitorando`.`Local`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Monitorando`.`Local` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Identificacao` VARCHAR(15) NOT NULL,
  `Tipo` ENUM('Laboratório', 'Sala', 'Auditório') NOT NULL,
  `Bloco` ENUM('Bloco A', 'Bloco C', 'Bloco D', 'Bloco E', 'Bloco F', 'Bloco H', 'Saguão') NOT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;

INSERT INTO `Monitorando`.`Local` (`Identificacao`, `Tipo`, `Bloco`) 
VALUES 
("299", "Sala", "Bloco A"),
("300", "Sala", "Bloco A"),
("302", "Sala", "Bloco A"),
("304", "Sala", "Bloco A"),
("308", "Sala", "Bloco A"),
("309", "Sala", "Bloco A"),
("310", "Sala", "Bloco A"),
("311", "Sala", "Bloco A"),
("312", "Sala", "Bloco A"),
("314", "Sala", "Bloco A"),
("315", "Sala", "Bloco A"),
("316", "Sala", "Bloco A"),
("317", "Sala", "Bloco A"),
("318", "Sala", "Bloco A"),
("319", "Sala", "Bloco A"),
("321", "Sala", "Bloco A"),
("322", "Laboratório", "Bloco A"),
("323", "Sala", "Bloco A"),
("324", "Laboratório", "Bloco A"),
("325", "Sala", "Bloco A"),
("326A", "Sala", "Bloco A"),
("326", "Laboratório", "Bloco A"),
("328", "Sala", "Bloco A"),
("329", "Sala", "Bloco A"),
("330", "Sala", "Bloco A"),
("331", "Sala", "Bloco A"),
("332A", "Sala", "Bloco A"),
("332", "Sala", "Bloco A"),
("333", "Laboratório", "Bloco A"),
("334", "Sala", "Bloco A"),
("338", "Sala", "Bloco A"),
("340", "Sala", "Bloco A"),
("342", "Sala", "Bloco A"),
("348", "Sala", "Bloco A"),
("350", "Sala", "Bloco A"),
("354", "Sala", "Bloco A"),
("356", "Laboratório", "Bloco A"),

("C105", "Auditório", "Bloco C"),
("C104", "Laboratório", "Bloco C"),
("C103", "Laboratório", "Bloco C"),
("C106", "Sala", "Bloco C"),
("C102", "Laboratório", "Bloco C"),
("C107", "Laboratório", "Bloco C"),
("C108", "Laboratório", "Bloco C"),
("C110", "Laboratório", "Bloco C"),
("508", "Sala", "Bloco C"),
("C109", "Laboratório", "Bloco C"),
("C110", "Laboratório", "Bloco C"),
("C201", "Laboratório", "Bloco C"),
("C209", "Sala", "Bloco C"),
("C202", "Laboratório", "Bloco C"),
("C203", "Laboratório", "Bloco C"),
("C207", "Laboratório", "Bloco C"),
("C208", "Laboratório", "Bloco C"),
("C204", "Laboratório", "Bloco C"),
("C205", "Laboratório", "Bloco C"),
("C206", "Sala", "Bloco C"),
("C133", "Laboratório", "Bloco C"),
("C134", "Laboratório", "Bloco C"),
("C116", "Laboratório", "Bloco C"),
("C222", "Laboratório", "Bloco C"),
("C221", "Laboratório", "Bloco C"),
("Laboratório 16", "Laboratório", "Bloco C"),
("C215", "Laboratório", "Bloco C"),
("C220", "Laboratório", "Bloco C"),
("C219", "Laboratório", "Bloco C"),
("C216", "Laboratório", "Bloco C"),
("C217", "Laboratório", "Bloco C"),
("C218", "Laboratório", "Bloco C"),
("C213", "Laboratório", "Bloco C"),
("C212", "Laboratório", "Bloco C"),
("C211", "Laboratório", "Bloco C"),
("C210", "Laboratório", "Bloco C"),

("D224", "Sala", "Bloco D"),
("D225", "Sala", "Bloco D"),
("D226", "Laboratório", "Bloco D"),
("D221", "Laboratório", "Bloco D"),
("D223", "Sala", "Bloco D"),
("D222", "Sala", "Bloco D"),
("D220", "Laboratório", "Bloco D"),
("D219", "Laboratório", "Bloco D"),
("D218", "Laboratório", "Bloco D"),
("D217", "Laboratório", "Bloco D"),
("D215", "Sala", "Bloco D"),
("D216", "Laboratório", "Bloco D"),
("D213", "Sala", "Bloco D"),
("D214", "Laboratório", "Bloco D"),
("D211", "Sala", "Bloco D"),
("D212", "Laboratório", "Bloco D"),
("D210", "Sala", "Bloco D"),
("D209", "Laboratório", "Bloco D"),
("D204", "Sala", "Bloco D"),
("D205", "Sala", "Bloco D"),
("D203", "Sala", "Bloco D"),
("D202", "Sala", "Bloco D"),
("D109", "Laboratório", "Bloco D"),
("D108", "Laboratório", "Bloco D"),
("D107", "Laboratório", "Bloco D"),
("D106", "Laboratório", "Bloco D"),
("D117", "Laboratório", "Bloco D"),
("D115", "Laboratório", "Bloco D"),
("D114", "Laboratório", "Bloco D"),
("D113", "Laboratório", "Bloco D"),
("A108", "Laboratório", "Bloco D"),
("A210", "Sala", "Bloco D"),
("A113", "Sala", "Bloco D"),
("A114", "Sala", "Bloco D"),
("A116", "Sala", "Bloco D"),
("A117", "Sala", "Bloco D"),

("715", "Laboratório", "Bloco E"),
("701", "Sala", "Bloco E"),
("704", "Sala", "Bloco E"),
("707", "Sala", "Bloco E"),
("708", "Sala", "Bloco E"),
("714", "Laboratório", "Bloco E"),
("712", "Laboratório", "Bloco E"),
("711", "Sala", "Bloco E"),
("125", "Laboratório", "Bloco E"),

("816", "Laboratório", "Bloco F"),
("812", "Laboratório", "Bloco F"),
("813", "Laboratório", "Bloco F"),
("814", "Laboratório", "Bloco F"),
("815", "Sala", "Bloco F"),
("806", "Laboratório", "Bloco F"),
("805", "Sala", "Bloco F"),
("803", "Sala", "Bloco F"),
("802", "Laboratório", "Bloco F"),
("801", "Sala", "Bloco F"),
("807", "Laboratório", "Bloco F"),
("808", "Laboratório", "Bloco F"),

("A201", "Auditório", "Saguão"),
("A219", "Auditório", "Saguão"),

("H130", "Laboratório", "Bloco H"),
("H129", "Laboratório", "Bloco H"),
("H127", "Laboratório", "Bloco H"),
("H128", "Laboratório", "Bloco H"),
("H126", "Laboratório", "Bloco H"),
("H131", "Laboratório", "Bloco H"),
("H125", "Laboratório", "Bloco H"),
("H123", "Laboratório", "Bloco H"),
("H122", "Laboratório", "Bloco H"),
("H121", "Laboratório", "Bloco H"),
("H120", "Laboratório", "Bloco H"),
("H115", "Sala", "Bloco H"),
("H114", "Laboratório", "Bloco H"),
("H113", "Laboratório", "Bloco H"),
("H112", "Sala", "Bloco H"),
("H111", "Laboratório", "Bloco H"),
("H110", "Laboratório", "Bloco H"),
("H134", "Laboratório", "Bloco H"),
("H109", "Laboratório", "Bloco H"),
("H108", "Laboratório", "Bloco H"),
("H107", "Laboratório", "Bloco H"),
("H106", "Laboratório", "Bloco H"),
("H105", "Laboratório", "Bloco H"),
("H133", "Laboratório", "Bloco H"),
("H103", "Laboratório", "Bloco H"),
("H104", "Laboratório", "Bloco H"),
("H203", "Laboratório", "Bloco H"),
("H204", "Sala", "Bloco H"),
("H205", "Sala", "Bloco H"),
("H206", "Sala", "Bloco H"),
("H207", "Sala", "Bloco H"),
("H208", "Sala", "Bloco H"),
("H209", "Laboratório", "Bloco H"),
("H210", "Laboratório", "Bloco H"),
("H211", "Laboratório", "Bloco H"),
("H212", "Sala", "Bloco H"),
("H213", "Sala", "Bloco H"),
("H217", "Sala", "Bloco H");

select * from `Local`;

-- -----------------------------------------------------
-- Table `Monitorando`.`Disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Monitorando`.`Disciplina` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NOT NULL,
  `Curso_Id` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Disciplina_Curso1_idx` (`Curso_Id` ASC),
  CONSTRAINT `fk_Disciplina_Curso1`
    FOREIGN KEY (`Curso_Id`)
    REFERENCES `Monitorando`.`Curso` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


INSERT INTO `Monitorando`.`Disciplina` (`Nome`, `Curso_Id`) 
VALUES ("Gestão Industrial", 5),
("Informática", 5),
("Sistemas computacionais", 5),
("Lógica 1", 5),
("Lógica 2", 5),
("Linguagem de programação 1", 5),
("Projeto integrador", 5),
("Redes de computadores e internet", 5),
("Banco de dados", 5),
("Linguagem de programação 2", 5),
("Linguagem de programação 3", 5),
("Teoria e desenvolvimento de sistemas", 5),
("Tópicos profissionais", 5),
("Aplicações para Web 1", 5),
("Prática do desenvolvimento de sistemas", 5),
("Aplicações para Web 2", 5),
("Segurança da informação", 5),

("Desenho técnico", 7),
("Gestão industrial", 7),
("Eletricidade básica",  7),
("Eletrônica digital 1", 7),
("Laboratório de electricidade", 7),
("Circuitos elétricos", 7),
("Desenho técniclo eletrônico",7),
("Eletrônica 1", 7),
("Eletrônica aplicada 1", 7),
("Eletrônica digital 2", 7),
("Segurança do trabalho", 7),
("Eletrônica 2", 7),
("Eletrônica aplicada 2", 7),
("Eletrônica digital 3", 7),
("Eletrônica industrial", 7),
("Microprocessadores", 7),
("Programação", 7),
("Automação", 7),
("Elementos de telecomunicações", 7),
("Microcontroladores", 7),
("Projetos eletrônicos", 7),


("Gestão Industrial",8),
("Eletricidade 1", 8),
("Eletromagnetismo", 8),
("Laboratório de eletrotécnica 1",8),
("Eletricidade 2", 8),
("Desenho técnico",8),
("Instalações elétricas 1", 8),
("Eletrônica", 8),
("Laboratório de eletrotécnica 2", 8),
("Segurança e gestão do trabalho",8),
("Eletricidade 3", 8),
("Medidas elétricas", 8),
("Laboratório de eletrotécnica 3", 8),
("Instalações elétricas 2", 8),
("Máquinas elétricas 1", 8),
("Maquinas elétricas 2",8),
("Geração, transmissão e distribuição", 8),
("Segurança 2 - NR 10", 8),
("Eficiência energética",8),
("Automação", 8),


("Materiais de construção mecânica",6),
("Metrologia",6),
("Segurança do trabalho",6),
("Mecânica técnica", 6),
("Desenho auxiliado por computador",6),
("Eletricidade", 6),
("Máquinas, ferramentas e dispositivos", 6),
("Prática em mecânica 1", 6),
("Resistência dos materiais", 6),
("Elementos de máquinas", 6),
("Laboratório de mecânica 1", 6),
("Prática em mecânica 2", 6),
("Máquinas e aparelhos mecânicos", 6),
("Laboratório de mecânica 2",6),
("Projetos de máquinas e dispositivos", 6),
("Metodologia do trabalho científico", 6),
("Gestão industrial", 6),
("Desenho técnico em mecânica", 6),

("Inglês 1", 1),
("Inglês 2", 1),
("Inglês 3", 1),
("Língua portuguesa e literatura 1", 1),
("Língua portuguesa e literatura 2", 1),
("Língua portuguesa e literatura 3",1),
("Língua portuguesa e literatura 4",1),
("Educação física 1",1),
("Educação física 2",1),
("Educação física 2",1),
("Espanhol 1",1),
("Espanhol 2",1),
("Libras 1", 1),
("Libras 2", 1),
("Artes 4", 1),

("Matemática 1", 2),
("Matemática 2", 2),
("Matemática 3", 2),
("Matemática 4", 2),

("História 1", 3),
("História 2", 3),
("História 3", 3),
("Geografia 1", 3),
("Geografia 2", 3),
("Geografia 3", 3),
("Sociologia 1", 3),
("Sociologia 2",3),
("Sociologia 3", 3),
("Filosofia 1", 3),
("Filosofia 2", 3),
("Filosofia 3", 3),

("Biologia 1", 4),
("Biologia 2", 4),
("Biologia 3", 4),
("Física 1", 4),
("Física 2", 4),
("Física 3",4),
("Química 1", 4),
("Química 2", 4),
("Química 3", 4);


select * from `Disciplina`;


-- -----------------------------------------------------
-- Table `Monitorando`.`Professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Monitorando`.`Professor` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Disciplina` VARCHAR(60) NOT NULL,
  `Id_Usuario` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Professor_Usuario1_idx` (`Id_Usuario` ASC),
  CONSTRAINT `fk_Professor_Usuario1`
    FOREIGN KEY (`Id_Usuario`)
    REFERENCES `Monitorando`.`Usuario` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `Monitorando`.`Professor` (`Disciplina`, `Id_Usuario`) VALUES ("Banco de dados", 8),
("Gestão Industrial", 9),
("Desenho técnico", 10),
("Eletromagnetismo", 11);

select * from `Professor`;


-- -----------------------------------------------------
-- Table `Monitorando`.`Codigo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Monitorando`.`CodigoPedido` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Codigo` VARCHAR(45) NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


INSERT INTO `Monitorando`.`CodigoPedido` (`Codigo`, `Data`)
VALUES ("A01", "2018-10-22 11:45:00"), ("A02", "2018-10-25 11:00:00"), ("A03", "2018-05-22 12:45:00"), ("A04", "2018-11-22 11:45:00");

select * from `Codigo`;

-- -----------------------------------------------------
-- Table `Monitorando`.`Monitor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Monitorando`.`Monitor` (
  `Id` INT NOT NULL AUTO_INCREMENT ,
  `Id_Usuario` INT NOT NULL,
  `Status` ENUM('Ativo', 'Desativado', 'Verificando') NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Monitor_Usuario1_idx` (`Id_Usuario` ASC),
  INDEX `fk_Monitor_Codigo1_idx` (`Codigo_Id` ASC),
  CONSTRAINT `fk_Monitor_Usuario1`
    FOREIGN KEY (`Id_Usuario`)
    REFERENCES `Monitorando`.`Usuario` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
ENGINE = InnoDB;

INSERT INTO `Monitorando`.`Monitor` (`Id_Usuario`, `Status`, `Codigo_Id`)
VALUES (1, "Ativo", 1),
(3, "Desativado", 2),
(5, "Verificando", 3);

select * from `Monitor`;

-- -----------------------------------------------------
-- Table `Monitorando`.`Codigo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Monitorando`.`CodigoPedidoXMonitor` (
  `Id_CodigoPedido` INT NOT NULL,
  `Id_Monitor` INT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_CodigoPedidoXMonitor_CodidoPedido1_idx` (`Id_CodigoPedidoXMonitor` ASC),
  INDEX `fk_CodigoPedidoXMonitor_Monitor1_idx` (`Id_Monitor` ASC),
  CONSTRAINT `fk_CodigoPedidoXMonitor_CodigoPedido1`
    FOREIGN KEY (`Id_CodigoPedido`)
    REFERENCES `Monitorando`.`CodigoPedido` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CodigoPedidoXMonitor_Minotor1`
    FOREIGN KEY (`Id_Monitor`)
    REFERENCES `Monitorando`.`Monitor` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
ENGINE = InnoDB;

INSERT INTO `Monitorando`.`CodigoPedidoXMonitor` (`Id_CodigoPedido`, `Id_Monitor`)
VALUES (1, 1),
(2, 2),
(3, 3),
(4, 4);

-- -----------------------------------------------------
-- Table `Monitorando`.`Monitoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Monitorando`.`Monitoria` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Conteudo` VARCHAR(100) NOT NULL,
  `DataHorario` DATETIME NOT NULL,
  `NumVagas` INT NOT NULL,
  `NumInscritos` INT NOT NULL,
  `Descricao` MEDIUMTEXT NOT NULL,
  `Id_Local` INT NOT NULL,
  `Id_Disciplina` INT NOT NULL,
  `Id_Monitor` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Monitoria_Local1_idx` (`Id_Local` ASC),
  INDEX `fk_Monitoria_Disciplina1_idx` (`Id_Disciplina` ASC),
  INDEX `fk_Monitoria_Monitor1_idx` (`Id_Monitor` ASC),
  CONSTRAINT `fk_Monitoria_Local1`
    FOREIGN KEY (`Id_Local`)
    REFERENCES `Monitorando`.`Local` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Monitoria_Disciplina1`
    FOREIGN KEY (`Id_Disciplina`)
    REFERENCES `Monitorando`.`Disciplina` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Monitoria_Monitor1`
    FOREIGN KEY (`Id_Monitor`)
    REFERENCES `Monitorando`.`Monitor` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `Monitorando`.`Monitoria` ( `Conteudo`, `DataHorario`, `NumVagas`, `NumInscritos`, `Descricao`, `Id_Local`, `Id_Disciplina`, `Id_Monitor`) 
values ("Banco de Dados - MySQL", '2020-04-22 08:30:00', 10, 4, "Monitoria para retirar dúvidas sobre mySQL.", 1,  9, 1),
	   ("Criação de Tabelas - MySQL Workbench", '2019-10-22 14:45:00' , 20, 13,  "Monitoria para retirar dúvidas sobre a criação e ralacionamento de tabelas ultizando MySQL Workbench", 2,  9, 2),
       ("Trigonometria", '2019-10-27 13:15:00' , 50, 4,  "Monitoria destinada a pessoas que estão com dúvidas em Trigonometria, ou querem aprofundar seus estudos sobre o assunto", 3,  93, 2),
       ("Números Complexos", '2019-09-27 13:15:00' , 45, 4,  "Vamos juntos obter conhecimento sobre Números Complexos!", 1,  93, 1),
	   ("Matrizes", '2019-10-27 13:15:00' , 25, 18,  "Vamos juntos obter conhecimento sobre Números Complexos!", 10,  93, 1),
       ("Sistema Lineares", '2020-04-22 7:15:00', 20, 9, "Sistemas Lineares não são monstros,venha descobrir", 15,  93, 2),
	   ("Funções Afins", '2019-10-22 11:45:00' , 60, 7,  "Monitoria para quem deseja realmente ententer o assunto, sendo explicado de uma forma mais tranquila e sólida!", 33,  92, 2),
       ("Funções Quadráticas", '2019-08-12 11:15:00' , 50, 45,  "Monitoria destinada a pessoas que estão com dúvidas em Trigonometria, ou querem aprofundar seus estudos sobre o assunto", 31,  92, 2),
       ("Função Exponêncial", '2019-09-17 18:15:00' , 35, 20,  "Vamos juntos obter conhecimento sobre Números Complexos!", 31,  92, 2),
	   ("Funções logarítmicas", '2019-04-14 9:15:00' , 40, 36,  "Vamos juntos obter conhecimento sobre Números Complexos!", 31,  92, 1),
       ("Java - Logica 2", '2019-09-21 9:15:00' , 15, 2,  "Retirar duvidas exitentes para as turmas de segundo ano de informática", 1,  5, 4), 
	   ("Vetores - JAVA - LG2", '2019-04-14 9:15:00' ,25, 20, "Retirar duvidas exitentes para as turmas de segundo ano de informática", 1,  5, 7);

select * from  `Monitoria`;

-- -----------------------------------------------------
-- Table `Monitorando`.`Inscricao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Monitorando`.`Inscricao` (
  `Id` INT NOT NULL   AUTO_INCREMENT,
  `Id_Usuario` INT NOT NULL,
  `Id_Monitoria` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Inscricao_Usuario1_idx` (`Id_Usuario` ASC),
  INDEX `fk_Inscricao_Monitoria1_idx` (`Id_Monitoria` ASC),
  CONSTRAINT `fk_Inscricao_Usuario1`
    FOREIGN KEY (`Id_Usuario`)
    REFERENCES `Monitorando`.`Usuario` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Inscricao_Monitoria1`
    FOREIGN KEY (`Id_Monitoria`)
    REFERENCES `Monitorando`.`Monitoria` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
INSERT INTO `Monitorando`.`Inscricao` (`Id_Usuario`, `Id_Monitoria`) 
	values( 1, 1),
		  ( 2, 1),
		  ( 3, 1),
		  ( 4, 1),
          ( 5, 2),
		  ( 6, 2),
		  ( 7, 2),
		  ( 8, 2);

select * from `Inscricao`; 

-- -----------------------------------------------------
-- Table `Monitorando`.`Avalicao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Monitorando`.`Avalicao` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Conteudo` VARCHAR(500) NOT NULL,
  `DataPubli` DATE NOT NULL,
  `Nota` INT NULL,
  `Inscricao_Id` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Avalicao_Inscricao1_idx` (`Inscricao_Id` ASC),
  CONSTRAINT `fk_Avalicao_Inscricao1`
    FOREIGN KEY (`Inscricao_Id`)
    REFERENCES `Monitorando`.`Inscricao` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `Monitorando`.`Avalicao` (`Conteudo`,`DataPubli`,`Nota`,`Inscricao_Id`)VALUES("Muito boa!",'2019-01-10',5,1),
																						  ("Não gostei da Monitoria,monitor sem paciência de explicar e tirar dúvidas.",'2019-01-10',2,2),
																						  ("Monitoria mediana ,monitor explicou de forma muito chata!",'2019-01-10',3,3),
																						  ("Monitoria muito boa ,monitor com uma didática muito boa.",'2019-01-10',5,4),
																						  ("Monitoria maravilhosa, monitor extremamente atencioso!",'2019-01-10',4,5),
																						  ("Simplesmente me facina ,monitoria que todos deveriam participar",'2019-01-10',5,6),
																						  ("Nunca mais voltarei a frequentar essa monitoria,muito ruim!",'2019-01-10',1,7),
																						  ("Estou dando uma estrela para poder comentar ,pois nem isso essa monitoria vale !!!",'2019-01-10',1,8);


select * from `Avalicao`;

-- -----------------------------------------------------
-- Table `Monitorando`.`Arquivo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Monitorando`.`Arquivo` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(100) NULL,
  `Id_Monitoria` INT NOT NULL,
  `Local` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Arquivo_Monitoria1_idx` (`Id_Monitoria` ASC),
  CONSTRAINT `fk_Arquivo_Monitoria1`
    FOREIGN KEY (`Id_Monitoria`)
    REFERENCES `Monitorando`.`Monitoria` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `Monitorando`.`Arquivo` (`Nome`, `Id_Monitoria`, `Local`)
VALUES ("ListaExercicios.pdf", 1, "Monitorias/Arquivos/ListaExercicios.pdf"),
			   ("Slides.pdf", 1, "Monitorias/Arquivos/Slides.pdf"),
			   ("ListaExercicios_Trigonomeria.pdf", 3, "Monitorias/Arquivos/ListaExercicios_Trigonomeria.pdf"),
			   ("ListaExercicios_NumeroComplexos.pdf", 4, "Monitorias/Arquivos/ListaExercicios_NumeroComplexos"), 
			   ("ListaExercicios_FuncaoAfim.pdf", 7, "Monitorias/Arquivos/ListaExercicios_FuncaoAfim.pdf"),
			   ("Formulas_FuncaoAfim.pdf",7, "Monitorias/Arquivos/Formulas_FuncaoAfim.pdf"),
			   ("Formulas_NumerosComplexos.pdf", 4, "Monitorias/Arquivos/Formulas_NumerosComplexos.pdf"),
			   ("ListaExercicios_FuncaoExponencial.pdf", 9, "Monitorias/Arquivos/ListaExercicios_FuncaoExponencial.pdf"),
			   ("Teoria_ComoCalcularRo.pdf", 3, "Monitorias/Arquivos/Teoria_ComoCalcular.pdf"),
			   ("Lista_Parabolas.pdf", 8, "Monitorias/Arquivos/Lista_Parabolas.pdf"),
               ("ListaMatrizes.pdf", 5, "Monitorias/Arquivos/ListaMatrizes.pdf"),
               ("TeoremaGauss.pdf",6,"Monitorias/Arquivos/TeoremaGauss.pdf");
			
select * from `Arquivo`;

-- -----------------------------------------------------
-- Table `Monitorando`.`Mensagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Monitorando`.`Mensagem` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `DataHorario` DATETIME NOT NULL,
  `Conteudo` VARCHAR(500) NOT NULL,
  `Inscricao_Id` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Mensagem_Inscricao1_idx` (`Inscricao_Id` ASC),
  CONSTRAINT `fk_Mensagem_Inscricao1`
    FOREIGN KEY (`Inscricao_Id`)
    REFERENCES `Monitorando`.`Inscricao` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `Monitorando`.`Mensagem` (`DataHorario`,`Conteudo`,`Inscricao_Id`)
                        VALUES('2019-08-23 20:12:00',"Olá,boa noite pessoal ,alguém poderia tirar uma dúvida minha?",1),
							('2019-08-23 20:13:00',"Claro,qual seria sua dúvida?",2),
							('2019-08-23 20:13:30',"Como faço para indetificar qual lado de um triângulo retangulo é a Hipotenusa ?",1),
							('2019-08-23 20:14:00',"Observe o lado  oposto ao ângulo de 90°/reto ,esse lado será a Hipotenusa !",2),
							('2019-08-23 20:14:10',"Ahh, muito obrigado!",1),
							('2019-08-23 20:14:50',"O prazer é todo meu!",2),
							('2019-08-23 20:15:00',"Tchau,bons estudos!",2),
							('2019-08-23 20:15:10',"Tchau,até mais...",1),                            
                            
                            ('2019-08-12 13:12:00',"Olá,boa tarde ,alguém gostaria de estudar juntos Trigonometria?",1),
							('2019-08-12 13:13:00',"Claro,vamos combinar de nos encontramos ,para decidirmos tudo certinho?",3),
							('2019-08-12 13:13:30',"Okay,muito obrigado!",1),
							('2019-08-12 13:15:00',"Tchau,bons estudos!",2),
							('2019-08-12 13:15:10',"Tchau,até mais...",1);
                            
Select * from `Mensagem`;

-- -----------------------------------------------------
-- Table `Monitorando`.`Pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Monitorando`.`Pedido` (
  `Id` INT NOT NULL  AUTO_INCREMENT,
  `Motivo` TEXT NOT NULL,
  `Data` DATETIME NOT NULL,
  `Aluno_Id` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Pedido_Aluno1_idx` (`Aluno_Id` ASC),
  CONSTRAINT `fk_Pedido_Aluno1`
    FOREIGN KEY (`Aluno_Id`)
    REFERENCES `Monitorando`.`Aluno` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `Monitorando`.`Pedido` (`Motivo`, `Data`, `Aluno_Id`)
VALUES("Tenho tempo livre e facilidade de ajudar amigos em algumas disciplinas, então quero poder ajudar outros também.", '2019-08-28', 4),
("Quero transmitir meus conhecimentos para outros!", '2019-08-15', 6),
("Eu gosto muito de Matemática e quero ajudar o pessoal.", '2019-08-06', 7),
("Tenho facilidade em algumas disciplinas ,e quero ajudar meus colegas.", '2019-06-25', 8);

select * from `Pedido`;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;




