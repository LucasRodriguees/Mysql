create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
roupas varchar(255),
quantidade int ,
preco decimal,
validade int,
tamanho varchar(255),
primary key(id)
);

insert into tb_produtos (roupas,quantidade,preco,validade,tamanho)
values ("Adidas",200,450,27/02/2022,"P,G,M,GG");
insert into tb_produtos (roupas,quantidade,preco,validade,tamanho)
values ("Lacoste",200,400,27/02/2022,"P,G,M,GG");
insert into tb_produtos (roupas,quantidade,preco,validade,tamanho)
values ("Nike",200,600,27/02/2022,"P,G,M,GG");
insert into tb_produtos (roupas,quantidade,preco,validade,tamanho)
values ("Tommy",200,570,27/02/2022,"P,G,M,GG");
insert into tb_produtos (roupas,quantidade,preco,validade,tamanho)
values ("puma",200,580,27/02/2022,"P,G,M,GG");
insert into tb_produtos (roupas,quantidade,preco,validade,tamanho)
values ("Polo",200,300,27/02/2022,"P,G,M,GG");
insert into tb_produtos (roupas,quantidade,preco,validade,tamanho)
values ("oakley",200,340,27/02/2022,"P,G,M,GG");
insert into tb_produtos (roupas,quantidade,preco,validade,tamanho)
values ("hurley",200,200,27/02/2022,"P,G,M,GG");

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

alter table tb_produtos modify quantidade int (100);
