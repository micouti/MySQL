create database db_ecommerce;

use db_ecommerce;

create table tb_loja(
id bigint auto_increment,
nome varchar(255),
preco decimal(8,2),
categoria varchar(255), 
vendedor varchar(255),
descricao varchar(255),
primary key (id)
);

insert into tb_loja(nome, preco, categoria, vendedor, descricao) values ("Detergente", 101.00, "Limpeza", "Ype-Lucas", "Lava louças");
insert into tb_loja(nome, preco, categoria, vendedor, descricao) values ("Veja", 112.90, "Limpeza", "Ype-Lucas", "Desengordurante multiuso");
insert into tb_loja(nome, preco, categoria, vendedor, descricao) values ("Bombril", 100.00, "Limpeza", "Scotch Brite-Daniela", "Esponça de aço para ariar");
insert into tb_loja(nome, preco, categoria, vendedor, descricao) values ("Prato", 215.50, "Louça", "Havan-Camila", "Utensílio de cozinha");
insert into tb_loja(nome, preco, categoria, vendedor, descricao) values ("Copo", 198.19, "Louça", "Havan-Camila", "Recipiente para líquidos");
insert into tb_loja(nome, preco, categoria, vendedor, descricao) values ("Garrafa térmica", 590.00, "Recipiente", "BomCoffe-Julia", "Armazena café líquidos frios ou quentes e conserva-os em suas temperaturas");
insert into tb_loja(nome, preco, categoria, vendedor, descricao) values ("Geladeira", 2000.70, "Aparelho", "Brastemp-Marisa", "Refrigerador conservador de alimentos");
insert into tb_loja(nome, preco, categoria, vendedor, descricao) values ("Lanternas", 229.99, "Aparelho", "LedLight-Fernando", "Iluminador portátil");

select * from tb_loja;

select * from tb_loja where preco > 500.00;

select * from tb_loja where preco < 500.00;

update tb_loja set nome = "Lanterna" where id = 8; 