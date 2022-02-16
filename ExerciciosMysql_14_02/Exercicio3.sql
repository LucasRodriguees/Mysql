drop database db_farmacia_legal;

create database db_farmacia_legal;

use db_farmacia_legal;

create table tb_categoria(
id bigint auto_increment,
quantidade int,
tamanhocp varchar(255),
marcas varchar(255)not null,
primary key(id)
);

insert into tb_categoria(quantidade,tamanhocp,marcas)
values (30,"1cm","ziagen");
insert into tb_categoria(quantidade,tamanhocp,marcas)
values (20,"3cm","tymlos");
insert into tb_categoria(quantidade,tamanhocp,marcas)
values (25,"2cm","orencia");
insert into tb_categoria(quantidade,tamanhocp,marcas)
values (40,"1cm","reopro");
insert into tb_categoria(quantidade,tamanhocp,marcas)
values (15,"2cm","sectral");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255)not null,
preco decimal(8,2),
codigo decimal(8,2),
peso double,
Ean char(10),
categorias_id bigint,
primary key(id),
foreign key (categorias_id) references tb_categoria(id)
);

insert into tb_produto(nome,preco,codigo,peso,Ean,categorias_id)
values ("abacavir",60,54004,0.0340,789841524,1);
insert into tb_produto(nome,preco,codigo,peso,Ean,categorias_id)
values ("abaloparatida",50,54012,0.0300,189841524,2);
insert into tb_produto(nome,preco,codigo,peso,Ean,categorias_id)
values ("abatacepte",70,54032,0.0350,289841524,3);
insert into tb_produto(nome,preco,codigo,peso,Ean,categorias_id)
values ("abciximabe",40,54087,0.0360,389841524,4);
insert into tb_produto(nome,preco,codigo,peso,Ean,categorias_id)
values ("acabose",55,54059,0.0370,489841524,5);
insert into tb_produto(nome,preco,codigo,peso,Ean,categorias_id)
values ("acebutolol",65,54025,0.0380,589841524,2);
insert into tb_produto(nome,preco,codigo,peso,Ean,categorias_id)
values ("acetazolamida",45,54022,0.0390,689841524,3);
insert into tb_produto(nome,preco,codigo,peso,Ean,categorias_id)
values ("acetilcisteina",30,54044,0.0310,889841524,2);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%b%";

select * from tb_produto inner join tb_categoria
on tb_produto.categorias_id = tb_categoria.id;

select marcas from tb_categoria;