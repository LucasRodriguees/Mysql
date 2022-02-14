create database db_RH;

use db_RH;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
endereco varchar(255),
cpf long,
salario decimal,
quantidade int,
primary key(id)
);

insert into tb_funcionarios(nome,endereco,cpf,salario,quantidade)
values ("João","São paulo",36426975189,2500,30);

insert into tb_funcionarios(nome,endereco,cpf,salario,quantidade)
values ("Maria","São paulo",36426975189,2400,30);

insert into tb_funcionarios(nome,endereco,cpf,salario,quantidade)
values ("Ana","São paulo",36426975189,1700,30);

insert into tb_funcionarios(nome,endereco,cpf,salario,quantidade)
values ("Rafael","São paulo",36426975189,1500,30);

select * from tb_funcionarios where salario > 2000;

select * from tb_funcionarios where salario < 2000;

alter table tb_funcionarios modify quantidade int (6);


