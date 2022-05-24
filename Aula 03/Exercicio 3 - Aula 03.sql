create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment,
Descrição varchar (255) NOT NULL,
Disponível boolean,
primary key (id)
);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Medicamentos Genéricos", true);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Medicamentos Manipulados", true);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Cosméticos", true);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Produtos de higiene pessoal", true);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Suplementos", true);

SELECT * FROM tb_categorias;

create table tb_produtos(
id bigint auto_increment,
Nome varchar (255),
Quantidade  int,
Preço decimal (6,2),
Categoria_id bigint,
primary key (id),
foreign key (Categoria_id) references tb_categorias(id)
);

INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Dipirona", 100, 9.99, 1);

INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Dorflex", 100, 13.50, 1);

INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Rexona", 100, 23.99, 3);

INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Fluoxetina", 100, 59.99, 2);

INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Dove", 100, 24.99, 3);

INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Neosaldina", 100, 11.99, 1);

INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Multivitamínico", 100, 60, 5);

INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Torsilax", 100, 11.99, 1);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE Preço > 50;

SELECT * FROM tb_produtos WHERE Preço BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE Nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.Categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.Categoria_id = tb_categorias.id WHERE Descrição LIKE "%Medicamentos Genéricos%";