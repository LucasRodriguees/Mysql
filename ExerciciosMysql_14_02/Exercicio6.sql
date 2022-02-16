drop database db_cursodaminhavida;

create database db_cursodaminhavida;

use db_cursodaminhavida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255)not null,
endereço varchar(255)not null,
telefone long,
primary key(id)

);

insert into tb_categoria(descricao,endereço,telefone)
values("Generation","são paulo n00",119562345563);
insert into tb_categoria(descricao,endereço,telefone)
values("alura","santos n00",119662345561);
insert into tb_categoria(descricao,endereço,telefone)
values("rocket","coritiba",119562345563);
insert into tb_categoria(descricao,endereço,telefone)
values("linkedin","rio de janeiro",119562345563);
insert into tb_categoria(descricao,endereço,telefone)
values("senac","santa cantarina",119562345563);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
cursoonline varchar(255),
valor decimal,
duraçao varchar (255),
datatermino date,
produtos_id bigint,
primary key (id),
foreign key (produtos_id) references tb_categoria(id)
);

insert into tb_produto(nome,cursoonline,valor,duraçao,datatermino,produtos_id)
values("tecnologia","Generation",40,"250 horas","15-02-22",1);
insert into tb_produto(nome,cursoonline,valor,duraçao,datatermino,produtos_id)
values("tecnologia","alura",70,"100 horas","19-03-23",2);
insert into tb_produto(nome,cursoonline,valor,duraçao,datatermino,produtos_id)
values("tecnologia","rocket",60,"200 horas","17-04-24",3);
insert into tb_produto(nome,cursoonline,valor,duraçao,datatermino,produtos_id)
values("tecnologia","linkedin",55,"300 horas","16-05-26",4);
insert into tb_produto(nome,cursoonline,valor,duraçao,datatermino,produtos_id)
values("tecnologia","senac",60,"350 horas","15-02-28",5);
insert into tb_produto(nome,cursoonline,valor,duraçao,datatermino,produtos_id)
values("tecnologia","alura",50,"400 horas","26-02-23",2);
insert into tb_produto(nome,cursoonline,valor,duraçao,datatermino,produtos_id)
values("tecnologia","Generation",80,"450 horas","30-02-22",1);
insert into tb_produto(nome,cursoonline,valor,duraçao,datatermino,produtos_id)
values("tecnologia","linkedin",60,"50 horas","22-02-27",4);

select * from tb_produto;

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria
on tb_produto.produtos_id = tb_categoria.id;

select nome from tb_produto;