create database db_construindo_vidas;

use db_construindo_vidas;

create table tb_categorias(
id bigint auto_increment,
Descrição varchar (255) NOT NULL,
Disponível boolean,
primary key (id)
);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Materiais Hidráulicos", true);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Materiais Elétricos", true);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Tintas", true);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Ferramentas", true);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Madeiras", true);

select * from tb_categorias;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
Nome varchar(255) NOT NULL,
Quantidade int, 
Preço decimal(6, 2),
Categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (Categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Tubo PVC", 100, 82.99, 1);

INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Sifão Sanfonado", 100, 72.99, 1);

INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Cabo Elétrico", 100, 70, 2);

INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Disjuntor", 100, 75.99, 2);

INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Tinta Branca", 100, 100, 3);

INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Tinta preta", 100, 120.99, 3);

INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Kit de Ferramentas", 100, 150, 4);

INSERT INTO tb_produtos(Nome, Quantidade, Preço, Categoria_id)
VALUES ("Viga de Madeira", 100, 52.99, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE Preço > 100;

SELECT * FROM tb_produtos WHERE Preço BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE Nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.Categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.Categoria_id = tb_categorias.id WHERE Descrição LIKE "%Materiais Hidráulicos%";
