create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categorias(
id bigint auto_increment,
Descrição varchar (255) NOT NULL,
Disponível boolean,
primary key (id)
);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Tecnologia", true);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Administração", true);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Gestão Comercial", true);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Física", true);

INSERT INTO tb_categorias(Descrição, Disponível)
VALUES ("Agronegócio", true);

select * from tb_categorias;

CREATE TABLE tb_cursos(
id bigint AUTO_INCREMENT,
Nome_Curso varchar(255) NOT NULL,
Nome_Aluno varchar(255) NOT NULL,
Preço decimal(6, 2),
Categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (Categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos(Nome_Curso, Nome_Aluno, Preço, Categoria_id)
VALUES ("Curso Java Iniciante", "Camila", 650, 1);

INSERT INTO tb_cursos(Nome_Curso, Nome_Aluno, Preço, Categoria_id)
VALUES ("Curso Java Avançado", "Augusto", 1000, 1);

INSERT INTO tb_cursos(Nome_Curso, Nome_Aluno, Preço, Categoria_id)
VALUES ("Técnico em Administração", "Amanda", 850.00, 2);

INSERT INTO tb_cursos(Nome_Curso, Nome_Aluno, Preço, Categoria_id)
VALUES ("Curso Física Básica", "Leandro", 550, 4);

INSERT INTO tb_cursos(Nome_Curso, Nome_Aluno, Preço, Categoria_id)
VALUES ("Curso Física Avançada", "Maria", 1000, 4);

INSERT INTO tb_cursos(Nome_Curso, Nome_Aluno, Preço, Categoria_id)
VALUES ("Curso de Agropecuária", "João", 669.99, 5);

INSERT INTO tb_cursos(Nome_Curso, Nome_Aluno, Preço, Categoria_id)
VALUES ("Kit de Ferramentas", 100, 150, 4);

INSERT INTO tb_cursos(Nome_Curso, Nome_Aluno, Preço, Categoria_id)
VALUES ("Curso Área Comercial", 100, 510.99, 3);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE Preço > 500;

SELECT * FROM tb_cursos WHERE Preço BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE Nome_Curso LIKE "%j%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.Categoria_id = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.Categoria_id = tb_categorias.id WHERE Descrição LIKE "%Tecnologia%";
