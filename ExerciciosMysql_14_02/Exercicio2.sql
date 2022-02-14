drop database db_pizzaria_legal;

create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
nome varchar(255) not null,
endereço varchar(255),
telefone int,
primary key(id)
);

insert into tb_categoria (nome,endereço,telefone) values ("Raio de luz","palacio monroe n570",1139476807);
insert into tb_categoria (nome,endereço,telefone) values ("pizza oro di napoli","joao batista n134",1193651487);
insert into tb_categoria (nome,endereço,telefone) values ("pizza Millan","Rua apiacas n147",1136728790);
insert into tb_categoria (nome,endereço,telefone) values ("mano a mano","avenida F mendes n304",1139479913);
insert into tb_categoria (nome,endereço,telefone) values ("passione","av Fernando mendes n381",1139441589);



create table tb_pizza(
id bigint auto_increment,
saborpizza varchar(255) not null,
pizzadoce varchar(255),
 valor double,
aberto time,
fechado time,
pizzas_id bigint,
primary key (id),
foreign key (pizzas_id) references tb_categoria(id)
);

insert into tb_pizza(saborpizza,pizzadoce,valor,aberto,fechado,pizzas_id)
values ("Calabresa","Brigadeiro",34,180000,10000,1);
insert into tb_pizza(saborpizza,pizzadoce,valor,aberto,fechado,pizzas_id)
values ("Muçarela","Doce de leite",32,180000,10000,2);
insert into tb_pizza(saborpizza,pizzadoce,valor,aberto,fechado,pizzas_id)
values ("portuguesa","Bis",45,200000,10000,3);
insert into tb_pizza(saborpizza,pizzadoce,valor,aberto,fechado,pizzas_id)
values ("Marguerita","Bombom",40,180000,20000,4);
insert into tb_pizza(saborpizza,pizzadoce,valor,aberto,fechado,pizzas_id)
values ("Frango com catupiry","Prestigio",70,180000,20000,5);
insert into tb_pizza(saborpizza,pizzadoce,valor,aberto,fechado,pizzas_id)
values ("Napolitana","romeu e julieta",19,180000,10000,4);
insert into tb_pizza(saborpizza,pizzadoce,valor,aberto,fechado,pizzas_id)
values ("Escarola","Doce de leite com coco",20,180000,30000,3);
insert into tb_pizza(saborpizza,pizzadoce,valor,aberto,fechado,pizzas_id)
values ("4Queijo","nutela com morango",60,180000,30000,2);

select * from tb_pizza;

select * from tb_pizza where valor > 45;

select * from tb_pizza where valor between 29 and 60;

select * from tb_pizza where saborpizza like "%c%";

select * from tb_pizza inner join tb_categoria
on tb_pizza.pizzas_id = tb_categoria.id;

select pizzadoce,valor from tb_pizza
