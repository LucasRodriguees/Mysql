drop database db_construindo_a_nossa_vida;

create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255)not null,
marcas varchar(255)not null,
telefone long,
primary key(id)

);

insert into tb_categoria(descricao,marcas,telefone)
values("roupas","Nike",119562345563);
insert into tb_categoria(descricao,marcas,telefone)
values("sapatos","Adidas",119662345561);
insert into tb_categoria(descricao,marcas,telefone)
values("roupas","lacoste",119562345563);
insert into tb_categoria(descricao,marcas,telefone)
values("roupas","puma",119562345563);
insert into tb_categoria(descricao,marcas,telefone)
values("chapeu","polo",119562345563);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
datadeentrega date,
preco decimal (8,2),
cor varchar(255),
metododepagamento varchar(255),
produtos_id bigint,
primary key (id),
foreign key (produtos_id) references tb_categoria(id)
);

insert into tb_produto(nome,datadeentrega,preco,cor,metododepagamento,produtos_id)
values("camisa","15-02-22",55,"Vermelha","Boleto",3);
insert into tb_produto(nome,datadeentrega,preco,cor,metododepagamento,produtos_id)
values("tennis","15-03-23",60,"Preto","Cartão",2);
insert into tb_produto(nome,datadeentrega,preco,cor,metododepagamento,produtos_id)
values("calça jeans","16-02-24",70,"Azul","paypal",1);
insert into tb_produto(nome,datadeentrega,preco,cor,metododepagamento,produtos_id)
values("bone","17-02-25",40,"Verde","cartão",5);
insert into tb_produto(nome,datadeentrega,preco,cor,metododepagamento,produtos_id)
values("blusa de friu","18-02-26",60,"roxa","boleto",4);
insert into tb_produto(nome,datadeentrega,preco,cor,metododepagamento,produtos_id)
values("toca","19-02-27",50,"branca","paypal",5);
insert into tb_produto(nome,datadeentrega,preco,cor,metododepagamento,produtos_id)
values("calça moletom","20-02-28",30,"amarelo","cartão",4);
insert into tb_produto(nome,datadeentrega,preco,cor,metododepagamento,produtos_id)
values("tennis","20-02-29",60,"preto","boleto",2);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria
on tb_produto.produtos_id = tb_categoria.id;

select nome from tb_produto;