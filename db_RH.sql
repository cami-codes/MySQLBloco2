CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_funcionarios(
id BIGINT AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int,
cargo varchar(255),
dataAdmissao date,
salario decimal NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios(nome, idade, cargo, dataAdmissao, salario)
VALUES ("Camila", 21, "Desenvolvedora", "2022-05-23", 2500.00);

INSERT INTO tb_funcionarios(nome, idade, cargo, dataAdmissao, salario)
VALUES ("Maria", 53, "Analista", "2020-06-24", 1750.00);

INSERT INTO tb_funcionarios(nome, idade, cargo, dataAdmissao, salario)
VALUES ("Pedro", 18, "Desenvolvedor", "2022-05-23", 1500.00);

INSERT INTO tb_funcionarios(nome, idade, cargo, dataAdmissao, salario)
VALUES ("Marcos", 43, "Analista", "2015-10-25", 3575.00);

INSERT INTO tb_funcionarios(nome, idade, cargo, dataAdmissao, salario)
VALUES ("Amanda", 25, "Desenvolvedora", "2022-05-23", 3000.00);

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

UPDATE tb_funcionarios SET cargo = "Desenvolvedora Senior" Where id = 1;