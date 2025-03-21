-- Criando o banco de dados com o nome orquitech
create database orquitech;
use orquitech;

-- Criando a primeira tabela
create table usuario (
    id int primary key auto_increment,
    nome varchar(45) not null,
    email varchar(255) unique,
    telefone varchar(16),
    cnpj varchar(14) not null unique,
    cep varchar(8) not null
);

-- Criando a tabela sensor
create table sensor (
    id int primary key auto_increment,
    luminosidade int not null,
    status enum('ativo', 'inativo', 'manutencao') not null,
    instalacao date not null,
    revisao date null,
    lux int not null,
    lux_momento int not null
);

-- Criando a tabela orquidea
create table orquidea (
    id int primary key auto_increment,
    especie varchar(30) not null
);

-- Colocando dados na tabela usuario
insert into usuario (nome, email, telefone, cnpj, cep) values
('Orquideas Bonitas', 'orquideasbonitas@gmail.com', '83 3884-6943', '87225436000167', '76801682'),
('Flores Belas', 'floresbelas@gmail.com', '49 3754-5133', '31012081000173', '49050485'),
('Vegan Shop', 'veganshop@gmail.com', '81 3250-8674', '15489559000102', '88037010');

-- Exibindo todos os usuários
select * from usuario;

insert into sensor (luminosidade, status, instalacao, revisao, lux, lux_momento) values
(500, 'ativo', '2024-03-20', '2025-03-20', 600, 520),
(300, 'manutencao', '2023-10-15', null, 400, 280),
(700, 'inativo', '2022-06-10', '2024-02-01', 800, 0);

select * from sensor;