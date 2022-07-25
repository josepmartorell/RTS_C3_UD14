drop database if exists C3_UD14_5;
create database C3_UD14_5;
use C3_UD14_5;

create table Almacenes (
	codigo int,
    lugar nvarchar(100),
    capacidad int,
	primary key (codigo)
);

create table Cajas (
	numReferencia char(5),
    contenido nvarchar(100),
    valor int,
    almacen int,
    primary key (numReferencia),
    foreign key (almacen) references Almacenes (codigo)
);

show tables;