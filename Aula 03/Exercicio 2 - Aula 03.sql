CREATE DATABASE db_pizzaria_legal;

DROP DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint auto_increment,
Descrição varchar(255),
Disponivel  boolean,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (Descrição, Disponivel)
VALUES ("Pizzas Doces", true);

INSERT INTO tb_categorias (Descrição, Disponivel)
VALUES ("Pizzas Salgadas", true);

INSERT INTO tb_categorias (Descrição, Disponivel)
VALUES ("Especiais", true);

INSERT INTO tb_categorias (Descrição, Disponivel)
VALUES ("Bebidas", true);

INSERT INTO tb_categorias (Descrição, Disponivel)
VALUES ("Outros", true);

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
Sabor varchar(255) NOT NULL,
Quantidade int NOT NULL,
Preço decimal (6,2),
Categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (Categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (Sabor, Quantidade, Preço, Categoria_id)
VALUES ("Mussarela", 100, 24.99, 2);

INSERT INTO tb_pizzas (Sabor, Quantidade, Preço, Categoria_id)
VALUES ("Calabresa", 100, 24.99, 2);

INSERT INTO tb_pizzas (Sabor, Quantidade, Preço, Categoria_id)
VALUES ("Frango com Catupiry", 200, 46.99, 2);

INSERT INTO tb_pizzas (Sabor, Quantidade, Preço, Categoria_id)
VALUES ("Chocolate", 100, 30.99, 1);

INSERT INTO tb_pizzas (Sabor, Quantidade, Preço, Categoria_id)
VALUES ("Portuguesa", 200, 65.99, 2);

INSERT INTO tb_pizzas (Sabor, Quantidade, Preço, Categoria_id)
VALUES ("Brigadeiro", 100, 78.99, 1);

INSERT INTO tb_pizzas (Sabor, Quantidade, Preço, Categoria_id)
VALUES ("Romeu e Julieta", 100, 47.99, 1);

INSERT INTO tb_pizzas (Sabor, Quantidade, Preço, Categoria_id)
VALUES ("Marguerita", 100, 43.99, 2);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE Preço > 45;

SELECT * FROM tb_pizzas WHERE Preço BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE Sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.Categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.Categoria_id = tb_categorias.id WHERE Descrição LIKE "%Pizzas Doces%";

