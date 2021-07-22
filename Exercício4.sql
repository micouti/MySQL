create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
servidor varchar(255),
sala int,
onlinee boolean not null,
primary key (id)
);

insert into tb_classe (servidor, sala, onlinee) values ("Alfa", 1, true);
insert into tb_classe (servidor, sala, onlinee) values ("Bravo", 2, true);
insert into tb_classe (servidor, sala, onlinee) values ("Charlie", 3, true);
insert into tb_classe (servidor, sala, onlinee) values ("Offline", 4, false);
insert into tb_classe (servidor, sala, onlinee) values ("Treino", 5, true);

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
usuario int,
apelido varchar(255),
patente varchar(255),
defesa int,
ataque int,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (usuario, apelido, patente, defesa, ataque, categoria_id) values (97474759, "Roger", "1°Sargento", 3000,  2000, 2); 
insert into tb_personagem (usuario, apelido, patente, defesa, ataque, categoria_id) values (86325684, "Lucx", "2°Tenente", 2450, 2500, 2); 
insert into tb_personagem (usuario, apelido, patente, defesa, ataque, categoria_id) values (65348647, "Marquin", "1°Capitão", 5000, 4550, 2); 
insert into tb_personagem (usuario, apelido, patente, defesa, ataque, categoria_id) values (76325764, "Luizinha", "Recruta", 1097, 1900, 1); 
insert into tb_personagem (usuario, apelido, patente, defesa, ataque, categoria_id) values (64263154, "Marioxxx", "Cadete", 3517, 1645, 5);
insert into tb_personagem (usuario, apelido, patente, defesa, ataque, categoria_id) values (62546236, "Lalah", "Coronel", 981, 2413, 3); 
insert into tb_personagem (usuario, apelido, patente, defesa, ataque, categoria_id) values (78264528, "XxBruninhaxX", "Major", 3472, 3000, 3); 
insert into tb_personagem (usuario, apelido, patente, defesa, ataque, categoria_id) values (87623562, "Cardos_Lara", "General", 2034, 1500, 4);  

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where apelido like "C%";

select * from tb_personagem where patente = "General";

select tb_personagem.apelido, tb_classe.onlinee from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id;
