create database db_escola;

use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome char(255) not null,
idade integer not null,
matricula integer not null,
nota double not null,
unidade integer not null,
primary key (id)
);

insert into tb_alunos(nome,idade,matricula,nota,unidade)
values("Juliana",27,889563,10,2);
insert into tb_alunos(nome,idade,matricula,nota,unidade)
values("Luiza",29,7789562,10,2);
insert into tb_alunos(nome,idade,matricula,nota,unidade)
values("Anny",35,8756356,8.5,2);
insert into tb_alunos(nome,idade,matricula,nota,unidade)
values("Williane",25,784262,7.5,2);
insert into tb_alunos(nome,idade,matricula,nota,unidade)
values("Geandro",30,8562456,10,2);
insert into tb_alunos(nome,idade,matricula,nota,unidade)
values("Kelly",27,784596,9,2);
insert into tb_alunos(nome,idade,matricula,nota,unidade)
values("Luis",25,4523698,10,2);
insert into tb_alunos(nome,idade,matricula,nota,unidade)
values("Miguel",18,756326,5,2);

select * from tb_alunos where nota > 7.0;
select * from tb_alunos where nota < 7.0;

update tb_alunos set nota = 9.5 where id = 4;

