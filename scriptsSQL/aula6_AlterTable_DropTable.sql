use cadastro;

CREATE TABLE pessoas (
	id int NOT NULL AUTO_INCREMENT,
	nome varchar(30) NOT NULL,
	nascimento date,
	sexo enum('M', 'F'),
    peso decimal(5, 2), 
    altura decimal(3, 2),
    Nacionalidade varchar(20) DEFAULT 'Brasil',
	PRIMARY KEY (id)
)DEFAULT CHARSET = utf8;

show databases;
use cadastro;
show tables;
describe pessoas;

INSERT INTO pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)VALUES
(DEFAULT,'Godofredo','1984-01-02', 'M', '78.5', '1.83', 'Brasil');

INSERT INTO pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
(DEFAULT,'Ana','1978-12-20', 'F', '71.5', '1.75', 'EUA'),
(DEFAULT, 'Pedro', '2000-07-15', 'M', '52.3', '1.45', 'Brasil'),
(DEFAULT, 'Margareth', '1970-06-23', 'F', '75.9', '1.70', 'Portugal');

desc peoples;

/* AULA 6 - Alterando a Estrutura da
Tabela (ALTER TABLE E DROP TABLE */

alter table pessoas
add column profissao varchar(10);

ALTER TABLE pessoas
drop column profissao;

ALTER TABLE pessoas
ADD COLUMN profissao varchar(10) AFTER nome;

ALTER TABLE pessoas
ADD COLUMN codigo int FIRST;

alter table pessoas
ADD COLUMN profissao varchar(20) not null default '';

alter table pessoas
change column profissao prof varchar(20);

alter table pessoas
rename to peoples;

select * from pessoas;

CREATE TABLE IF NOT EXISTS cursos (
	nome varchar(30) not null UNIQUE,
	descricao text,
	carga int UNSIGNED,
	totaulas int,
	ano year DEFAULT '2021'
) DEFAULT CHARSET = utf8;
 
 desc cursos;
 
 ALTER TABLE cursos
ADD COLUMN idcurso int FIRST;

ALTER TABLE cursos
ADD PRIMARY KEY(idcurso);

/* AULA 7 - Manipulando Linhas
(UPDATE, DELETE E TRUNCATE) */

INSERT INTO cursos values
('1','HTML4','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de PhotoShop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução à Linguagem Java','10','29','2000'),
('6','MySQL','Bancos de Dados MySQL','40','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças Rítmicas','40','30','2022'),
('9','Cozinha Árabe','Aprenda a fazer kibe','40','37','2022'),
('10','YouTuber','Gerar polêmica e ganhar inscritos','5','37','2022');

select * from cursos;

-- MODIFICANDO LINHAS INCORRETAS
UPDATE cursos
SET nome = 'HTML5'
WHERE idcurso = '1';

UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE idcurso = '4';

UPDATE cursos
SET nome = 'Java', ano = '2015', carga = '40'
WHERE idcurso = '5'
limit 1;

DELETE FROM cursos
WHERE idcurso = '8';

DELETE FROM cursos
WHERE idcurso = '9';

DELETE FROM cursos
WHERE idcurso = '10';











