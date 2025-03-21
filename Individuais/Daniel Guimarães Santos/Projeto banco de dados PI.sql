create database PI;
use PI;

-- Tabelas

create table arquivo (
    ID int primary key auto_increment,
    nome varchar(100) not null,
    CNPJ varchar(18) not null, 
    email varchar(100) not null, 
    cep char(8) not null, 
    senha varchar(255) not null
);
create table lancamento (
    id int primary key auto_increment,
    lux decimal(15,4),
    luxMomento date not null 
);
create table arduino (
id int primary key auto_increment,
status varchar(20) not null
);
alter table arduino add constraint chkStatus check (status in ('ativo', 'inativo', 'em manutenção'));


-- inserts e selects


insert into arquivo (nome, CNPJ, email, cep, senha) values
('Jardins do Sertão', '12.345.678/0001-90', 'contato@jardinsdosertao.com.br', '71045220', 'Sertao_verde@'),
('Flores do Campo', '98.765.432/0001-87', 'atendimento@floresdocampo.com.br', '30310570', 'Campo_bonito!');

select * from arquivo;

insert into lancamento (lux, luxMomento) values
(4500.5721, '2025-05-10'),
(15800.23, '2025-05-22'),
(27892.50, '2025-02-05');

select * from lancamento;

insert into arduino (status) values
('ativo'),
('inativo'),
('em manutenção');

select * from arduino;