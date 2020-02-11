create database spmedgroupDDL

USE spmedgroupDDL


CREATE TABLE prontuario(
idprontuario int primary key identity,
idclinica int foreign key references clinica(idclinica),
nome_passiente varchar (200)not null,
RG CHAR (14) NOT NULL UNIQUE,
CPF CHAR (14) NOT NULL UNIQUE,
DataNascimento datetime2 not null,
telefone char (11) NOT NULL UNIQUE
);


create table especialidades (
idespecialidade int primary key identity,
nomeespecialidades varchar (200)not null
);

create table medico(
idmedico int primary key identity,
idusuario int foreign key references usuario(idusuario),
idespecialidades int foreign key references especialidades(idespecialidade),
nome_medico varchar (200)not null,
CRM CHAR (14) NOT NULL UNIQUE,

);

create table clinica (
idclinica int primary key identity,
idadm int foreign key references adm(idadm),
CNPJ CHAR (14) NOT NULL UNIQUE,
nomeclinica varchar (200)not null,
localizacao varchar (250)not null
);

create table adm (
idadm int primary key identity,
idtipousuario int foreign key references tipousuario(idtipousuario),
nomeadm varchar (200)not null,
senha varchar (8)not null,
email varchar (200)not null,
);

create table tipousuario (
idtipousuario int primary key identity,
titulotipousuario varchar (200)not null
);

create table usuario(
idusuario int primary key identity,
idtipousuario int foreign key references tipousuario(idtipousuario),
idadm int foreign key references adm(idadm),
nomeusuario varchar (200)not null,
email varchar (200)not null,
datanascimento datetime2 not null
);

create table passiente (
idpassiente int primary key identity,
idusuario int foreign key references usuario(idusuario),
idconsulta int foreign key references consulta(idconsulta),
RG CHAR (14) NOT NULL UNIQUE,
CPF CHAR (14) NOT NULL UNIQUE,
);

CREATE table consulta (
idconsulta int primary key identity,
idmedico int foreign key references medico(idmedico),
idclinica int foreign key references clinica(idclinica),
idprontuario int foreign key references prontuario(idprontuario),
dataconsulta datetime not null,
situacaoconsulta varchar (10) not null
);