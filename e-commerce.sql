create database db_comercial_barreto;

use db_comercial_barreto;

create table tb_produtos(
id bigint auto_increment,
produto char(255) not null,
tipo char(255) not null,
preco double not null,
marca char(255) not null,
unidade char(255) not null,
primary key (id)
);

insert into tb_produtos(produto,tipo,preco,marca,unidade)
values("notebook","eletronico",5000,"acer","und");
insert into tb_produtos(produto,tipo,preco,marca,unidade)
values("pc","eletronico",6000,"acer","und");
insert into tb_produtos(produto,tipo,preco,marca,unidade)
values("mouse","eletronico",60,"logitech","und");
insert into tb_produtos(produto,tipo,preco,marca,unidade)
values("monitor","eletronico",2500,"philips","und");
insert into tb_produtos(produto,tipo,preco,marca,unidade)
values("teclado","eletronico",300,"logitech","und");
insert into tb_produtos(produto,tipo,preco,marca,unidade)
values("mouse pad","obj",20,"logitech","und");
insert into tb_produtos(produto,tipo,preco,marca,unidade)
values("celular","eletronico",2500,"samsung","und");
insert into tb_produtos(produto,tipo,preco,marca,unidade)
values("carregador","eletronico",200,"acer","und");

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set preco = 2600 where id = 4; 