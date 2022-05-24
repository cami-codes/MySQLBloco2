CREATE DATABASE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint auto_increment,
Raça varchar(255) not null,
Classe varchar(255) not null,
primary key (id)
);

INSERT INTO tb_classes(Raça, Classe)
VALUES ("Humano", "Arqueiro");

INSERT INTO tb_classes(Raça, Classe)
VALUES ("Elfo", "Mago");

INSERT INTO tb_classes(Raça, Classe)
VALUES ("Anão", "Cavaleiro");

INSERT INTO tb_classes(Raça, Classe)
VALUES ("Humano", "Ladrão");

INSERT INTO tb_classes(Raça, Classe)
VALUES ("Qunari", "Tanque");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id bigint auto_increment,
Nome varchar(255),
Ataque int,
Defesa int,
Magia int,
Destreza int,
Inteligência int,
Agilidade int,
Classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (Classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(Nome, Ataque, Defesa, Magia, Destreza, Inteligência, Agilidade, Classe_id)
VALUES ("Alfarr", 2500, 1000, 0, 500, 900, 1000, 4);

INSERT INTO tb_personagens(Nome, Ataque, Defesa, Magia, Destreza, Inteligência, Agilidade, Classe_id)
VALUES ("Atlantes", 300, 100, 2000, 100, 2000, 200, 2);

INSERT INTO tb_personagens(Nome, Ataque, Defesa, Magia, Destreza, Inteligência, Agilidade, Classe_id)
VALUES ("Robin Wood", 2100, 100, 0, 2000, 100, 1500, 1);

INSERT INTO tb_personagens(Nome, Ataque, Defesa, Magia, Destreza, Inteligência, Agilidade, Classe_id)
VALUES ("Caliope", 1500, 2400, 0, 50, 100, 200, 5);

INSERT INTO tb_personagens(Nome, Ataque, Defesa, Magia, Destreza, Inteligência, Agilidade, Classe_id)
VALUES ("Natalis", 300, 1500, 0, 100, 87, 200, 5);

INSERT INTO tb_personagens(Nome, Ataque, Defesa, Magia, Destreza, Inteligência, Agilidade, Classe_id)
VALUES ("Hunter", 2750, 1000, 0, 1000, 400, 200, 4);

INSERT INTO tb_personagens(Nome, Ataque, Defesa, Magia, Destreza, Inteligência, Agilidade, Classe_id)
VALUES ("Richard", 1200, 100, 0, 100, 2000, 200, 1);

INSERT INTO tb_personagens(Nome, Ataque, Defesa, Magia, Destreza, Inteligência, Agilidade, Classe_id)
VALUES ("Frederick", 1200, 3000, 0, 100, 899, 200, 3);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE Ataque > 2000;

SELECT * FROM tb_personagens WHERE Defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE Nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.Classe_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.Classe_id = tb_classes.id WHERE Classe LIKE "%Arqueiro";

