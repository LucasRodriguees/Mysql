create database db_registro;

use db_registro;

create table tb_estudantes (
id bigint auto_increment,
nome varchar(255),
idade int,
nota decimal,
quantidade int,
carteirinha int,
primary key (id)
);

insert into tb_estudantes (nome,idade,nota,quantidade,carteirinha)
values ("Lucas",20,5.00,44,384);
insert into tb_estudantes (nome,idade,nota,quantidade,carteirinha)
values ("Maria",19,8.00,44,468);

select * from tb_estudantes where nota > 7;

select * from tb_estudantes where nota < 7;

alter table tb_estudantes modify idade int (22);

