CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id bigint auto_increment,
nome varchar(255) NOT NULL,
idade int,
serie varchar(255) NOT NULL,
nota decimal NOT NULL,
passouDeAno boolean,
primary key(id)
);

INSERT INTO tb_estudantes(nome, idade, serie, nota, passouDeAno)
VALUES ("Camila", 15, "2A", 10.00, true);

INSERT INTO tb_estudantes(nome, idade, serie, nota, passouDeAno)
VALUES ("Maria", 17, "3B", 4.00, false);

INSERT INTO tb_estudantes(nome, idade, serie, nota, passouDeAno)
VALUES ("Luis", 15, "2A", 6.00, true);

INSERT INTO tb_estudantes(nome, idade, serie, nota, passouDeAno)
VALUES ("Amanda", 15, "2C", 7.00, true);

INSERT INTO tb_estudantes(nome, idade, serie, nota, passouDeAno)
VALUES ("Marta", 17, "3C", 3.00, false);

INSERT INTO tb_estudantes(nome, idade, serie, nota, passouDeAno)
VALUES ("Pedro", 14, "1B", 8.00, true);

INSERT INTO tb_estudantes(nome, idade, serie, nota, passouDeAno)
VALUES ("Matheus", 16, "2B", 6.00, true);

INSERT INTO tb_estudantes(nome, idade, serie, nota, passouDeAno)
VALUES ("Luisa", 16, "2B", 9.00, true);

SELECT * FROM tb_estudantes WHERE nota >= 7;

SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 7.00 WHERE id = 3;