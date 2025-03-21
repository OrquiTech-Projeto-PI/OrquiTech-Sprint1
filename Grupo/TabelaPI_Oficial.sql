/*
Grupo 7 - 
------------OrquiTech------------
Daniel Guimarães Santos
Gabriel dos Santos Silverio Ramos
Gabriel Oliveira Silva de Pietro
Ismael Wecsley Costa Paiva Junior
Luan Buchi de Assis
Pedro Henrique Sales Santos
Vitor Gomes de Oliveira
*/

-- Tabela para cadastro/login no Site Institucional
create database Projeto_PI;
use Projeto_PI;

-- Tabela para cadastro/login no Site Institucional
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


-- Está é uma tabela apenas de auxilio, para nós mesmos verificarmos e analisarmos para ver se a tabela registro está tudo certo.
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


-- tabela onde acontecerão os inserts captado pelo arduino
create table registro (
id int primary key auto_increment,
lux float not null,
dtRegistro datetime default current_timestamp,
idOrquidea int
);

desc registro;

-- Check para permitir apenas inserir dados com idOrquidea 1, 2 ou 3 (para tabela comparar na tabela orquideas)
alter table registro add constraint chkOrquidea check(idOrquidea in(1, 2, 3));

insert into registro (lux, idOrquidea) values
('1850.32', '1'),
('2008.34', '2'),
('7314.89', '3');

select 
	id as ID,
    lux as Lux,
    dtRegistro as 'Tempo do Registro',
    idOrquidea as 'ID da Orquídea'
from registro;


-- Tabela para termos melhor organização e localização dos sensores
create table sensor (
id int primary key auto_increment,
statusSensor varchar(12) not null,
empresaCadastro varchar(50) not null,
estufa int not null
);

-- Check pois o sensor só pode estar Ativo, Inativo ou em Manutenção.
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