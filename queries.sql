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
