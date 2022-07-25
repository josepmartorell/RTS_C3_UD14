show databases;
drop database if exists C3_UD14_03;
create database C3_UD14_03;
use C3_UD14_03;

create table Fabricantes (
	codigo int,
    nombre nvarchar(255),
    primary key (codigo)
);

create table Articulos (
	codigo int,
	nombre nvarchar(255),
    precio int,
    fabricante int,
    primary key (codigo),
    foreign key (fabricante) references Fabricantes (codigo)
    on delete cascade on update cascade
);

show tables;