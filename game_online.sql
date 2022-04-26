create database db_game;

use db_game;

create table tb_classes(
id bigint auto_increment,
classe varchar(255) not null,
descricao varchar(1000),
primary key (id)
);

insert tb_classes (classe,descricao) values 
('mago(a/e)','Tem como características principais a Inteligência, que é usado para conjurar suas magias');
insert into tb_classes (classe,descricao) values 
('guerreiro(a/e)','São exímios lutadores marciais, sempre prontos para o combate. Possuem extremas habilidades de combate.' );
insert into tb_classes (classe,descricao) values 
('elfo(a/e)','Eram divindades maiores da natureza e da fertilidade. Os elfos são geralmente mostrados como jovens de grande beleza vivendo entre as florestass' );
insert into tb_classes (classe,descricao) values 
('arqueiro(a/e)','Um arqueiro é um verdadeiro mestre no uso de arco, e nem mesmo um guerreiro muito experiente pode se igualar as suas capacidades.' );
insert into tb_classes (classe,descricao) values 
('ninja','É um agente secreto ou mercenário especializado em artes marciais de guerra não ortodoxas.' );

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
cidade varchar(255),tb_colaboradorestb_funcionarios
ataque int not null,
defesa int not null,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

insert into tb_personagens (nome,cidade,ataque,defesa,classe_id) value ("Luiza","Carpina",5000,5000,2);
insert into tb_personagens (nome,cidade,ataque,defesa,classe_id) value ("Juliana","Paulista",5000,5000,4);
insert into tb_personagens (nome,cidade,ataque,defesa,classe_id) value ("Homem Aranha","Recife",2000,2000,5);
insert into tb_personagens (nome,cidade,ataque,defesa,classe_id) value ("Capitão America","Recife",3000,2000,1);
insert into tb_personagens (nome,cidade,ataque,defesa,classe_id) value ("Batman","Gotham City",4000,2000,3);

select * from tb_classes;
select * from tb_personagens;

select * from tb_personagens where ataque > 3500 or ataque < 4500;

#inner join

select tb_personagens.nome, tb_personagens.ataque, tb_classes.classe, tb_classes.descricao from tb_personagens
inner join tb_classes on tb_classes.id = tb_personagens.classe_id;

select * from tb_personagens
inner join tb_classes on tb_classes.id = tb_personagens.classe_id;

select * from tb_personagens
right join tb_classes on tb_classes.id = tb_personagens.classe_id;

select * from tb_personagens
left join tb_classes on tb_classes.id = tb_personagens.classe_id;

