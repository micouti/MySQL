create database db_school;

use db_school;

create table tb_alunos(
id bigint auto_increment,
nome varchar(255),
idade int,
turma varchar(255),
matéria varchar(255),
nota decimal(8,1),
primary key (id)
);

insert into tb_alunos(nome, idade, turma, matéria, nota) values ("André", 12, "C", "Inglês", 7.5);
insert into tb_alunos(nome, idade, turma, matéria, nota) values ("Antony", 13, "B", "Inglês", 6.5);
insert into tb_alunos(nome, idade, turma, matéria, nota) values ("Gregory", 11, "A", "Inglês", 4.5);
insert into tb_alunos(nome, idade, turma, matéria, nota) values ("Ingrid", 14, "C", "Inglês", 9.5);
insert into tb_alunos(nome, idade, turma, matéria, nota) values ("Cláudio", 10, "E", "Inglês", 7.0);
insert into tb_alunos(nome, idade, turma, matéria, nota) values ("Mislayne", 13, "A", "Inglês", 4.8);
insert into tb_alunos(nome, idade, turma, matéria, nota) values ("Mirela", 11, "D", "Inglês", 8.6);
insert into tb_alunos(nome, idade, turma, matéria, nota) values ("Angela", 10, "A", "Inglês", 10.0);

select * from tb_alunos;

select * from tb_alunos where nota < 7.0;
select * from tb_alunos where nota > 7.0;

update tb_alunos set nota = 5.0 where id = 3;