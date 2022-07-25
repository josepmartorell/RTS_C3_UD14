show databases;
drop database if exists C3_UD14_07;
create database C3_UD14_07;
use C3_UD14_07;

create table Despachos (
	numero int,
    capacidad int,
    primary key (numero)
);

create table Directores (
	dni varchar(8),
    NomApels nvarchar(255),
    despacho int,
    primary key(dni),
    foreign key (despacho) references Despachos(numero)
    on delete set null on update cascade
);

alter table Directores
	add column dniJefe varchar(8),
    add foreign key (dniJefe) references Directores (dni)
    on delete set null on update cascade;
    
show tables;