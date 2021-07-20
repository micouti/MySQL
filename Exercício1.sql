create database db_setrh;

use db_setrh;

create table tb_func(
cadastro bigint auto_increment,
nome varchar(255),
idade int,
telefone int,
salário decimal(8,2),
anosempresa int,
primary key (cadastro)
);

insert into tb_func(nome, idade, telefone, salário, anosempresa) values ("Rogério", 23, 973745009, 2.500, 3);
insert into tb_func(nome, idade, telefone, salário, anosempresa) values ("João", 27, 972784950, 1.900, 2); 
insert into tb_func(nome, idade, telefone, salário, anosempresa) values ("Analua", 23, 967382048, 4.800, 5);
insert into tb_func(nome, idade, telefone, salário, anosempresa) values ("Marcela", 24, 987364859, 2.800, 4);
insert into tb_func(nome, idade, telefone, salário, anosempresa) values ("Lara", 26, 967472649, 8.500, 7);

select * from tb_func;

-- mostrando salário específico 
select * from tb_func where salário < 2.000;

-- mostrando salário específico
select * from tb_func where salário > 2.000;

-- modificando salário
alter table tb_func modify salário decimal (8,3);

-- atualizando um nome
update tb_func set nome = "Milena" where cadastro = 1;

