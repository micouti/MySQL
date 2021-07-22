create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar(255),
sabor varchar(255),
entregaDelivery decimal(8,2),
primary key (id)
);

insert into tb_categoria (tamanho, sabor, entregadelivery) values ("Broto", "Salgado", 2.00);
insert into tb_categoria (tamanho, sabor, entregadelivery) values ("Broto", "Doce",  2.00);
insert into tb_categoria (tamanho, sabor, entregadelivery) values ("Padrão", "Salgado", 5.00);
insert into tb_categoria (tamanho, sabor, entregadelivery) values ("Padrão", "Meio-Meio", 5.00);
insert into tb_categoria (tamanho, sabor, entregadelivery) values ("Trem/Metro", "Diverso", 7.00);

create table tb_pizza(
id bigint auto_increment,
sabores varchar(255),
acompanhamento varchar(255),
valor decimal(8,2),
destinatario varchar(255),
formaPag varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (sabores, acompanhamento, valor, destinatario, formaPag, categoria_id) values ("Calabresa", "Coca 2 Litros", 48.99, "Marisa", "Cartão", 3);
insert into tb_pizza (sabores, acompanhamento, valor, destinatario, formaPag, categoria_id) values ("Queijo", "Coca 1 Litros", 31.99, "Marcos", "Dinheiro", 1);
insert into tb_pizza (sabores, acompanhamento, valor, destinatario, formaPag, categoria_id) values ("Frango/Catupiry", "Coca 2 Litros", 44.99, "Angela", "Cartão", 3);
insert into tb_pizza (sabores, acompanhamento, valor, destinatario, formaPag, categoria_id) values ("Milho", "Coca 1 Litros", 32.99, "Luana", "Ticket", 1);
insert into tb_pizza (sabores, acompanhamento, valor, destinatario, formaPag, categoria_id) values ("QuatroQueijo/Romeu e Julieta", "Coca 2 Litros", 47.99, "Julia", "Dinheiro", 4);
insert into tb_pizza (sabores, acompanhamento, valor, destinatario, formaPag, categoria_id) values ("KitKat", "Coca 1 Litros", 35.00, "Breno", "Ticket", 2);
insert into tb_pizza (sabores, acompanhamento, valor, destinatario, formaPag, categoria_id) values ("Frango/Milho/Toscana/Choc-Morango", "Coca 3 Litros", 92.99, "Larissa", "Dinheiro", 5);
insert into tb_pizza (sabores, acompanhamento, valor, destinatario, formaPag, categoria_id) values ("Portuguesa/Bacon", "Coca 2 Litros", 45.99, "Zilda", "Cartão", 4);


select * from tb_pizza where valor > 45.00;

select * from tb_pizza where valor between 29.00 and 60.00;

select * from tb_pizza where sabores like "C%";

select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;

select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id where sabor = "Doce";