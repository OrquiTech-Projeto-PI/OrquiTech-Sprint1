create database bd_pi;

use bd_pi;

create table cadastro (
id int primary key auto_increment,
empresa varchar(50) not null unique,
cnpj char(14) not null unique,
email varchar(50) not null unique,
telefone varchar(11),
cep char(8) not null,
senha varchar(30) not null
);

insert into cadastro (empresa, cnpj, email, telefone, cep, senha) values
('Orquideas SP', '35476098270001', 'oquideas.sp011@outlook.com', '1199877600', '06765404', 'Orqsp011!'),
('Orquídeas RJ', '98976129980001', 'orquideas.rj@gmail.com', '1192564301', '08679050', 'Rj12091123*');

select * from cadastro;


create table registro (
id int primary key auto_increment,
lux float not null,
idOrquidea int,
dtRegistro datetime default current_timestamp, constraint chkOrquidea check(idOrquidea in(1, 2, 3))
);

insert into registro (lux, idOrquidea) values
('7098.7432', '1'),
('43567.34', '2'),
('15678.89', '3');

select * from registro;

create table sensor (
id int primary key auto_increment,
statusSensor varchar(12) not null,constraint chkStatus check(statusSensor in ('Ativo', 'Inativo', 'Manutenção')),
empresaCadastro varchar(50) not null,
estufa int not null
);

insert into sensor (statusSensor, empresaCadastro, estufa) values
('Ativo', 'Orquideas SP', 1),
('Manutenção', 'Orquideas SP', 2),
('Inativo', 'Orquídea RJ', 2),
('Ativo', 'Orquídea RJ', 2),
('Ativo', 'Orquídea RJ', 3);

select * from sensor;

	