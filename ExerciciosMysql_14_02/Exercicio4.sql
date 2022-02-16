drop database db_cidade_das_carnes;

create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255)not null,
medida varchar(255)not null,
telefone long,
primary key(id)

);

insert into tb_categoria(descricao,medida,telefone)
values("bovina","1 unidade grande",119562345563);
insert into tb_categoria(descricao,medida,telefone)
values("suina","1 unidade média",119662345561);
insert into tb_categoria(descricao,medida,telefone)
values("bovina","1 unidade média",119562345563);
insert into tb_categoria(descricao,medida,telefone)
values("suina","1 unidade grande",119562345563);
insert into tb_categoria(descricao,medida,telefone)
values("frutos do mar","1 unidade média",119562345563);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
peso decimal (8,2),
preco decimal (8,2),
congelados varchar(255),
validade date,
produtos_id bigint,
primary key (id),
foreign key (produtos_id) references tb_categoria(id)
);

insert into tb_produto(nome,peso,preco,congelados,validade,produtos_id)
values("acém",90,55,"batatafrita","15-02-22",3);
insert into tb_produto(nome,peso,preco,congelados,validade,produtos_id)
values("bife",80,60,"Hamburguer","19-03-23",3);
insert into tb_produto(nome,peso,preco,congelados,validade,produtos_id)
values("alcatra",130,70,"nuggts","17-04-24",1);
insert into tb_produto(nome,peso,preco,congelados,validade,produtos_id)
values("maminha",60,40,"legumes","16-05-26",3);
insert into tb_produto(nome,peso,preco,congelados,validade,produtos_id)
values("peixe",90,60,"salsicha","15-02-28",5);
insert into tb_produto(nome,peso,preco,congelados,validade,produtos_id)
values("bisteca",90,50,"pão de queijo","26-02-23",2);
insert into tb_produto(nome,peso,preco,congelados,validade,produtos_id)
values("coxão duro",140,80,"pão de alho","30-02-22",4);
insert into tb_produto(nome,peso,preco,congelados,validade,produtos_id)
values("pancetta",70,60,"lasanha","22-02-27",2);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria
on tb_produto.produtos_id = tb_categoria.id;

select nome from tb_produto;