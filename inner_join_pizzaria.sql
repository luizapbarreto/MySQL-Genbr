create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_pizzas(
id bigint auto_increment,
preco double not null,
sabor char(20),
descricao varchar(255),
tamanho char(80),
primary key (id)
);

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255),
pizza_id bigint,
primary key (id),
foreign key (pizza_id) references tb_pizzas(id)
);

insert tb_pizzas (preco,sabor,descricao,tamanho) values 
(22,"mussarela","molho de tomate, queijo mussarela","grande");
insert tb_pizzas (preco,sabor,descricao,tamanho) values 
(25,"calabresa","molho de tomate, queijo mussarela, calabresa","grande");
insert tb_pizzas (preco,sabor,descricao,tamanho) values 
(35,"camarão","molho de tomate, queijo mussarela, camarão","grande");
insert tb_pizzas (preco,sabor,descricao,tamanho) values 
(50,"Champs","molho de tomate, queijo mussarela, Champs","grande");
insert tb_pizzas (preco,sabor,descricao,tamanho) values 
(60,"nutella","nutella","grande");
insert tb_pizzas (preco,sabor,descricao,tamanho) values 
(80,"frango com catupiry","molho de tomate, queijo mussarela, frango, catupiry","grande");
insert tb_pizzas (preco,sabor,descricao,tamanho) values 
(50,"frango","molho de tomate, queijo mussarela, frango","grande");
insert tb_pizzas (preco,sabor,descricao,tamanho) values 
(90,"bacon","molho de tomate, queijo mussarela, bacon","grande");

insert tb_categorias (tipo,pizza_id) values 
("com bordas de catupiry",1);
insert tb_categorias (tipo,pizza_id) values 
("com bordas de catupiry",2);
insert tb_categorias (tipo,pizza_id) values 
("com bordas de cheddar",3);
insert tb_categorias (tipo,pizza_id) values 
("com bordas de cream cheese",1);
insert tb_categorias (tipo,pizza_id) values 
("com bordas de cream cheese",4);

select * from tb_pizzas where preco > 45;
select * from tb_pizzas where preco >= 50 and preco <= 100 ;
select * from tb_pizzas where sabor like "%m%";

select * from tb_categorias
inner join tb_pizzas on tb_pizzas.id = tb_categorias.pizza_id;

select tb_pizzas.sabor from tb_pizzas
inner join tb_categorias on tb_pizzas.id = tb_categorias.pizza_id;




