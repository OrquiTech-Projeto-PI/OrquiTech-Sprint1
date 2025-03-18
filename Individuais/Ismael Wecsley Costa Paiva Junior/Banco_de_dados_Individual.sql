create database Projeto_de_PI;
use Projeto_de_PI;


-- Tabelas

create table arquivo (
ID int primary key auto_increment,
nome varchar(20),
CNPJ char(14),
email varchar(50),
cep char(8),
senha varchar(50) 
);
create table lancamento (
id int primary key auto_increment,
lux float,
luxMomento date
);
create table arduino (
id int primary key auto_increment,
status varchar(20) not null
);


-- inserts e selects

insert into arquivo (nome, CNPJ, email, cep, senha) values
('Orquídeas do Vale', '23452671000138', 'contato@orquideasdovale.com.br', '57329650', 'Vale_e_vida@'),
('Orquídeas Tropicais', '58247362000160', 'atendimento@orquideasflordocampo.com.br', '15060230', 'Abelha_come_flor');
select * from arquivo;

insert into lancamento (lux, luxMomento) values
('9895.7432', '2025-04-03'),
('20000.34', '2025-04-21'),
('41351.89', '2025-01-12');
select * from lancamento;

insert into arduino (status) values
('Funcionando'),
('Não Funcionando');
select * from arduino;