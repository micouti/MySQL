create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria (
id bigint auto_increment,
setor varchar(255),
verificacao varchar(255),
reposicaocx int,
primary key (id)
);

insert into tb_categoria (setor, verificacao, reposicaocx) values ("Infantil", "Mensal", 10); 
insert into tb_categoria (setor, verificacao, reposicaocx) values ("Cosméticos", "Quinzenal", 20);
insert into tb_categoria (setor, verificacao, reposicaocx) values ("Medicamentos", "Semanal", 25);
insert into tb_categoria (setor, verificacao, reposicaocx) values ("Higiene Pessoal", "Quinzenal", 15);
insert into tb_categoria (setor, verificacao, reposicaocx) values ("Nutrição", "Semanal", 5);

create table tb_produtos (
id bigint auto_increment,
nome varchar(255),
marca varchar(255),
quantidade int,
valor decimal(8,2),
validade date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos (nome, marca, quantidade, valor, validade, categoria_id) values ("Chupeta", "Johnsons", 10, 26.99, '0000-00-00', 1);
insert into tb_produtos (nome, marca, quantidade, valor, validade, categoria_id) values ("Sabonete Líquido", "CheraCasa", 25, 12.10, '2021-12-26', 2);
insert into tb_produtos (nome, marca, quantidade, valor, validade, categoria_id) values ("Batom", "MaryKay", 30, 22.99, '2023-05-04', 2);
insert into tb_produtos (nome, marca, quantidade, valor, validade, categoria_id) values ("Benegripe", "MaisSaúde", 25, 15.90, '2021-12-19', 3);
insert into tb_produtos (nome, marca, quantidade, valor, validade, categoria_id) values ("Dipirona", "Ultrafarm", 20, 5.80, '2022-07-05', 3);
insert into tb_produtos (nome, marca, quantidade, valor, validade, categoria_id) values ("Lenço Umedecido", "Confort", 40, 14.00, '2025-02-01', 4);
insert into tb_produtos (nome, marca, quantidade, valor, validade, categoria_id) values ("Listerine", "Colgate", 10, 9.90, '2022-09-18', 4);
insert into tb_produtos (nome, marca, quantidade, valor, validade, categoria_id) values ("Shake", "BodyBuilder", 12, 29.99, '2024-12-09', 5);

select * from tb_produtos;

select * from tb_produtos where valor > 15.00;

select * from tb_produtos where valor between 3 and 60;

select * from tb_produtos where nome like "b%";

select * from tb_produtos inner join tb_categoria on tb_produtos.categoria_id = tb_categoria.id;

select * from tb_produtos inner join tb_categoria on tb_produtos.categoria_id = tb_categoria.id where setor = "Nutrição";