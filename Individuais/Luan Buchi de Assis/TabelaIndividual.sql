create database Projeto_PI;
use Projeto_PI;
create table cadastro (
id int primary key auto_increment,
empresa varchar(50) not null unique,
cnpj char(14) not null unique,
email varchar(50) not null unique,
telefone varchar(11),
cep char(8) not null,
senha varchar(30) not null
);
desc cadastro;
insert into cadastro (empresa, cnpj, email, telefone, cep, senha) values
('Jardim das Orquídeas Ltda', '23981563000177', 'jardim.orquideas@outlook.com', '11943217890', '57329650', 'ILoveFlor100!'),
('Orquídea Real Ltda', '81934546000122', 'orquidea.real@gmail.com', '11923881375', '74930174', 'a12345*');
select 
	id as ID, 
    empresa as 'Nome da Empresa', 
    cnpj as CNPJ, 
    email as 'Email Institucional', 
    telefone as Telefone, 
    cep as CEP, 
    senha as Senha 
from cadastro;

create table orquideas (
id int primary key auto_increment,
especie varchar(20) not null unique,
luxMinimo int not null,
luxMaximo int not null
);
desc orquideas;
insert into orquideas (especie, luxMinimo, luxMaximo) values
('Phalaenopsis', 1000, 2000),
('Cattleya', 2000, 4000),
('Vanda', 5000, 10000);
select 
	id as ID,
    especie as Espécie,
    concat(luxMinimo, ' até ', luxMaximo) as Lux
from orquideas;

create table registro (
id int primary key auto_increment,
lux float not null,
dtRegistro datetime default current_timestamp,
idOrquidea int
);
desc registro;
alter table registro add constraint chkOrquidea check(idOrquidea in(1, 2, 3));
insert into registro (lux, idOrquidea) values
('1850.32', '1'),
('2006.34', '2'),
('7351.89', '3');
select 
	id as ID,
    lux as Lux,
    dtRegistro as 'Tempo do Registro',
    idOrquidea as 'ID da Orquídea'
from registro;

create table sensor (
id int primary key auto_increment,
statusSensor varchar(12) not null,
empresaCadastro varchar(50) not null,
estufa int not null
);
alter table sensor add constraint chkStatus check(statusSensor in ('Ativo', 'Inativo', 'Manutenção'));
desc sensor;
insert into sensor (statusSensor, empresaCadastro, estufa) values
('Ativo', 'Jardim das Orquídeas Ltda', 1),
('Manutenção', 'Jardim das Orquídeas Ltda', 2),
('Inativo', 'Orquídea Real Ltda', 1),
('Ativo', 'Orquídea Real Ltda', 2),
('Ativo', 'Orquídea Real Ltda', 3);
select 
	id as ID,
    statusSensor as 'Status do Sensor',
    empresaCadastro as 'Empresa Cadastrada',
    estufa as Estufa
from sensor;
