
-- BANCO DE DADOS CLINICA VETERINARIA
CREATE DATABASE Clinica_Pet;

--Tabelas
create table Clinicas(
IdClinica int identity primary key not null,
Nome varchar (100),
Endereco varchar (200)
);

create table Veterinarios(
IdVeterinarios int identity primary key not null,
Clinica int foreign key references Clinicas(IdClinica),
CRMV varchar(8),
Nome varchar (100)
);

create table Atendimentos(
IdAtendimento int identity primary key not null,
Pet int foreign key references Pets(IdPet),
Veterinario int foreign key references Veterinarios(IdVeterinarios),
Descricao varchar(200),
DataAtendimento datetime
);

create table Racas(
IdRacas int identity primary key not null,
Tipo int foreign key references TipoPets(IdTipoPet),
Descricao varchar (200)
);

create table Pets(
IdPet int identity primary key not null,
Raca int foreign key references Racas(IdRacas),
Dono int foreign key references Dono(IdDono),
Nome varchar(100),
DataNascimento datetime
);

create table Dono(
IdDono int primary key identity not null,
Nome varchar (100)
);

create table TipoPets(
IdTipoPet int primary key identity not null,
Descricao varchar(200)
);






--BANCO DE DADOS OPTMUS

CREATE DATABASE OPTMUS

use OPTMUS;
-- Tabelas

create table Artistas(
IdArtistas int primary key identity not null,
Estilo int foreign key references Estilo(IdEstilo),
Nome varchar (100)
);

create table Album(
IdAlbum int primary key identity not null,
Artista int foreign key references Artistas(IdArtistas),
Nome varchar(100),
DataLancamento datetime,
Localizacao varchar(200),
QtMinutos timestamp,
Ativo binary
);

create table EstiloAlbum(
IdEstiloAlbum int primary key identity not null,
Album int foreign key references Album(IdAlbum),
Estilo int foreign key references Estilo(IdEstilo)
);

create table Estilo(
IdEstilo int primary key identity not null,
Nome varchar
);

create table Usuarios(
IdUsuario int primary key identity not null,
Nome varchar(100),
Permissao binary,
Senha varchar(20),
Email varchar(100)
);

