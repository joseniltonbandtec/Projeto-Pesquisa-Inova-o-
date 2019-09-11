create database graotech;

use graotech;

create table usuario(

id_usuario int primary key auto_increment,

nomeUsuario varchar(30),

email varchar(30),

telefone varchar(30),

cpf varchar(20)
);

create table armazem(

id_armazem int primary key auto_increment,

nome_armazem varchar(30),

cep varchar(30),

largura_armazem decimal(10,2),

altura_armazem decimal(10,2),

volume_armazem decimal(10,2),

fk_graos int,
foreign key(fk_graos) references graos(id_graos),

fk_usuario int,
foreign key(fk_usuario) references usuario(id_usuario)
);

create table graos(

id_graos int primary key auto_increment,

nome_graos varchar(30),

tipo_graos varchar(30),

temperatura_adequada decimal(10,2),

umidade_adequada decimal
);

select * from usuario,armazem,graos;

select * from graos;
select * from armazem;
select * from usuario;

insert into graos values(null,'café','cafeina',10.12,9.2);
insert into armazem values(null,'Rancho zé',03232,72.20,20.50,30.00,1);
insert into usuario values(null,'José','josédocafé@aaa','99999-9999','9999999',1);

drop table usario;