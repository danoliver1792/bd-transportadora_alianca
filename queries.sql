-- criando o banco
CREATE DATABASE IF NOT EXISTS trans_alianca;

USE trans_alianca;

-- criando a tabela com os dados dos funcionarios
CREATE TABLE funcionario (
	idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	sobrenome VARCHAR(255) NOT NULL,
	idCargo INT NOT NULL,
	idNivel INT NOT NULL,
	salario DECIMAL(10, 2) NOT NULL,
	FOREIGN KEY (idCargo) REFERENCES cargo(idCargo),
	FOREIGN KEY (idNivel) REFERENCES nivel(idNivel)
);

-- criando as tabelas cargo e nivel
CREATE TABLE cargo (
	idCargo INT PRIMARY KEY AUTO_INCREMENT,
	nomeCargo VARCHAR(255)
);

CREATE TABLE nivel (
	idNivel INT PRIMARY KEY AUTO_INCREMENT,
	nomeNivel VARCHAR(255)

);

-- criar tabela com backup para armazenar os dados excluídos da tabela funcionario, servira como uma forma de guardar as pessoas demitidas
CREATE TABLE funcionario_backup (
	idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(255),
	sobrenome VARCHAR(255),
	cargo INT,
	nivel INT,
	salario DECIMAL(10, 2)
);

-- adicionando a coluna para data de admissão na tabela funcionario
ALTER TABLE funcionario
ADD COLUMN data_admissao DATE;

-- alterando o tipo da coluna data_admissao
ALTER TABLE funcionario
MODIFY COLUMN data_admissao DATE NOT NULL;

-- criacao de trigger para fazer backup dos dados deletados da tabela funcionario
DELIMITER $

CREATE TRIGGER BackupFuncionario
AFTER DELETE ON funcionario
FOR EACH ROW
BEGIN
	INSERT INTO funcionario_backup (idFuncionario, nome, sobrenome, cargo, nivel, salario, data_admissao)
	VALUES (OLD.idFuncionario, OLD.nome, OLD.sobrenome, OLD.idCargo, OLD.idNivel, OLD.salario, OLD.data_admissao);
END;
$

DELIMITER ;

-- inserindo os cargos
INSERT INTO cargo VALUES (1, "motorista");
INSERT INTO cargo VALUES (2, "auxiliar de logistica");
INSERT INTO cargo VALUES (3, "supervisor de logistica");
INSERT INTO cargo VALUES (4, "gerente financeiro");
INSERT INTO cargo VALUES (5, "auxiliar administrativo");
INSERT INTO cargo VALUES (6, "auxiliar de servicos gerais");
INSERT INTO cargo VALUES (7, "motoboy");
INSERT INTO cargo VALUES (8, "recursos humanos");

-- inserindo niveis
INSERT INTO nivel VALUES (1, "junior");
INSERT INTO nivel VALUES (2, "pleno");
INSERT INTO nivel VALUES (3, "senior");

-- inserindo os dados dos funcionarios
INSERT INTO funcionario VALUES (1, "Maria", "Antonia", 6, 2, 1200, "2022-02-21");
INSERT INTO funcionario VALUES (NULL, "Eduardo", "Brandao", 1, 2, 2500, "2021-08-14");
INSERT INTO funcionario VALUES (NULL, "Julio", "Magalhaes", 1, 3, 4500, "2018-05-15");
INSERT INTO funcionario VALUES (NULL, "Carlos", "Carvalho", 1, 2, 2500, "2020-06-09");
INSERT INTO funcionario VALUES (NULL, "Fatima", "Azevedo", 1, 3, 4500, "2017-01-23");
INSERT INTO funcionario VALUES (NULL, "Joice", "Camila", 4, 3, 3500, "2019-08-17");
INSERT INTO funcionario VALUES (NULL, "Carla", "Nascimento", 5, 2, 2500, "2020-04-06");

-- procedures de busca
DELIMITER $

-- motoristas
CREATE PROCEDURE Motoristas()
BEGIN
	SELECT * FROM funcionario
	WHERE idCargo = 1;
END;
$

-- auxiliar de logistica
CREATE PROCEDURE AuxLog()
BEGIN
	SELECT * FROM funcionario
	WHERE idCargo = 2;
END;
$
