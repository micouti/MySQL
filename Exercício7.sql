create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria (
id bigint auto_increment,
setor varchar(255),
vitamina varchar(255),
tempo varchar(255),
primary key (id)
);

insert into tb_categoria (setor, vitamina, tempo) values ("Ácidas", "C", "1 Semana");
insert into tb_categoria (setor, vitamina, tempo) values ("Semiácidas", "C-E-K", "2 Semanas");
insert into tb_categoria (setor, vitamina, tempo) values ("Doces", "C", "6 Dias");
insert into tb_categoria (setor, vitamina, tempo) values ("Hiper-Hídricas", "B3", "15 Dias");
insert into tb_categoria (setor, vitamina, tempo) values ("Oleaginosas", "E", "1 Mês");

create table tb_frutas (
id bigint auto_increment,
nome varchar(255),
caract varchar(255),
preçokg decimal(8,2),
estacao varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);


insert into tb_frutas (nome, caract, preçokg, estacao, categoria_id) values ("Limão", "Verde", 12.99, "Primavera", 1);
insert into tb_frutas (nome, caract, preçokg, estacao, categoria_id) values ("Laranja", "Amarela", 10.89, "Verão", 1);
insert into tb_frutas (nome, caract, preçokg, estacao, categoria_id) values ("Manga", "Rosa", 15.00, "Verão", 2);
insert into tb_frutas (nome, caract, preçokg, estacao, categoria_id) values ("Abacate", "Verde", 12.99, "Verão", 5);
insert into tb_frutas (nome, caract, preçokg, estacao, categoria_id) values ("Melancia", "Verde", 18.00, "Outono", 4);
insert into tb_frutas (nome, caract, preçokg, estacao, categoria_id) values ("Mamão", "Laranja", 12.99, "Primavera", 3);
insert into tb_frutas (nome, caract, preçokg, estacao, categoria_id) values ("Morango", "Vermelho", 12.99, "Outono", 1);
insert into tb_frutas (nome, caract, preçokg, estacao, categoria_id) values ("Banana", "Amarela", 12.80, "Atemporal", 2);

select * from tb_frutas;

update tb_frutas set preçokg = 5.00 where id = 7;

select * from tb_frutas where preçokg > 10.00;

select * from tb_frutas where preçokg between 3 and 10;

select * from tb_frutas where nome like "M%";

select * from tb_frutas inner join tb_categoria on tb_produtos.categoria_id = tb_categoria.id;

select * from tb_frutas inner join tb_categoria on tb_frutas.categoria_id = tb_categoria.id where setor = "Ácidas";