CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar (255) NOT NULL,
quantidade int,
marca varchar (255),
preco decimal NOT NULL,
disponivel boolean,
primary key (id)
);

INSERT INTO tb_produtos(nome, quantidade, marca, preco, disponivel)
VALUES ("Mouse Gamer", 20, "Razor", 550.00, true);

INSERT INTO tb_produtos(nome, quantidade, marca, preco, disponivel)
VALUES ("Mouse", 50, "Multilaser", 100.00, true);

INSERT INTO tb_produtos(nome, quantidade, marca, preco, disponivel)
VALUES ("Cadeira Gamer", 100, "ThunderX3", 1500.00, true);

INSERT INTO tb_produtos(nome, quantidade, marca, preco, disponivel)
VALUES ("Cadeira Gamer", 50, "PCYES", 550.00, true);

INSERT INTO tb_produtos(nome, quantidade, marca, preco, disponivel)
VALUES ("Teclado Gamer", 20, "HyperX", 200.00, true);

INSERT INTO tb_produtos(nome, quantidade, marca, preco, disponivel)
VALUES ("Teclado Gamer", 20, "Multilaser", 50.00, true);

INSERT INTO tb_produtos(nome, quantidade, marca, preco, disponivel)
VALUES ("Monitor", 10, "SAMSUNG", 2000.00, true);

INSERT INTO tb_produtos(nome, quantidade, marca, preco, disponivel)
VALUES ("Processador", 20, "Intel", 3000.00, true);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 499.00 Where id = 1;
