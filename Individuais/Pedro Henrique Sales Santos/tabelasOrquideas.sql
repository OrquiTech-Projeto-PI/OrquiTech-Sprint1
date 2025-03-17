Create database monitoramento;
use monitoramento;

create table sensor(
idSensor int primary key auto_increment,
dtInstalacao datetime default current_timestamp null,
dtUltimoMonitoramento datetime default current_timestamp not null,
luminosidade int not null,
grupoMonitorado varchar(40) not null
);

create table cadastroEmpresa(
idCadastro int primary key auto_increment,
nome varchar(40) not null,
telefone varchar(13) not null,
email varchar(50) not null,
logradouro varchar(60) not null,
numEndereco int not null,
uf char(2) not null,
cnpj char(14) not null,
senha char(12)not null
);

Create table orquidea(
idOrquidea int primary key auto_increment,
tipo varchar(40) not null,
nome varchar(25) not null,
quantidade int not null,
dtPlantio date default current_timestamp not null
);