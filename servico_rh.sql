create database db_servicorh;

use db_servicorh;

create table tb_colaboradores(
id bigint auto_increment, 
nome char(255) not null, 
cpf integer(11) not null,
salario double not null, 
cargo char (50) not null, 
primary key (id)
);

insert into tb_colaboradores(nome,cpf,salario,cargo)
values("Luiza",1234567890,25000,"professoradedatabase");

insert into tb_colaboradores(nome,cpf,salario,cargo)
values("Juliana",1234567890,25000,"estudante");

insert into tb_colaboradores(nome,cpf,salario,cargo)
values("Geandro",1234567890,25000,"professordedatabase");

insert into tb_colaboradores(nome,cpf,salario,cargo)
values("Laise",1234567890,25000,"professoradedatabase");

insert into tb_colaboradores(nome,cpf,salario,cargo)
values("Lisandra",1234567890,25000,"professoradedatabase");

update tb_colaboradores set salario = 2000 where id = 4; 
update tb_colaboradores set salario = 1500 where id = 5;

select * from tb_colaboradores;

select * from tb_colaboradores where salario > 2000;
select * from tb_colaboradores where salario < 2000;
