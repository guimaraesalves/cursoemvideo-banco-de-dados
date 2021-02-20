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




