CREATE DATABASE prototipoPiBd;
USE prototipoPiBd;
-- TABELA USUÁRIO/CLIENTE
CREATE TABLE cliente (
	idCliente int primary key auto_increment,
    nomeEmpresa varchar(30),
	email varchar(60),
    senha varchar(20),
    cnpj char(14),
    endereco varchar(60)
);
    
-- TABELA ORQUÍDEAS
CREATE TABLE orquideas (
	id int primary key auto_increment,
	tipo varchar(20) not null,
	dataPlant date not null,
	mediaLux int not null,
	preco int not null
);

-- TABELA SENSOR
CREATE TABLE sensor (
	id int primary key auto_increment,
	statusSens varchar(12) not null,
	luxQtd decimal(5,2) not null,
	luxHoraCap datetime 
);