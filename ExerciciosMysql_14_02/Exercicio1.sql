create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int ,
roupas varchar (255)not null,
primary key(id)
);

insert into tb_classe (nome,quantidade,roupas) values ("Gary",6,"Medievais");
insert into tb_classe (nome,quantidade,roupas) values ("Mario",6,"fantasia");
insert into tb_classe (nome,quantidade,roupas) values ("luigui",6,"fantasia");
insert into tb_classe (nome,quantidade,roupas) values ("roger",6,"Medievais");
insert into tb_classe (nome,quantidade,roupas) values ("douglas",6,"Medievais");



create table tb_personagem(
id bigint auto_increment,
poderat double,
poderdef float,
classe varchar(255) not null,
cov int,
arma varchar(255) not null,
classes_id bigint,
primary key (id),
foreign key (classes_id) references tb_classe(id)
);

insert into tb_personagem (poderat,poderdef,classe,cov,arma,classes_id) values (3000,1500,"Arqueiro",4458,"Arco",1);
insert into tb_personagem (poderat,poderdef,classe,cov,arma,classes_id) values (1600,2100,"Assassin",4459,"facas",1);
insert into tb_personagem (poderat,poderdef,classe,cov,arma,classes_id) values (2000,1000,"warrior",4460,"Espada",1);
insert into tb_personagem (poderat,poderdef,classe,cov,arma,classes_id) values (3200,1700,"Martial artist",4461,"Espada",1);
insert into tb_personagem (poderat,poderdef,classe,cov,arma,classes_id) values (2500,1200,"Arqueiro",4462,"Arco",1);
insert into tb_personagem (poderat,poderdef,classe,cov,arma,classes_id) values (4000,900,"Gunner",4463,"Doze",1);
insert into tb_personagem (poderat,poderdef,classe,cov,arma,classes_id) values (1800,3000,"Mage",4464,"Flauta",1);
insert into tb_personagem (poderat,poderdef,classe,cov,arma,classes_id) values (2600,2000,"Arqueiro",4465,"Arco",1);

select poderat from tb_personagem where poderat > 2000;

select poderdef from tb_personagem where poderdef between 1000 and 2000;

select arma from tb_personagem where arma like "%c%";

select * from tb_personagem inner join tb_classe
on tb_personagem.classes_id = tb_classe.id;

select * from tb_personagem where classe = "Arqueiro"



