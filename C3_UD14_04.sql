show databases;
drop database if exists C3_UD14_04;
create database C3_UD14_04;
use C3_UD14_04;

create table Departamentos (
	codigo int,
    nombre nvarchar(100),
    presupuesto int,
    primary key (codigo)
);

create table Empleados (
	dni int,
    nombre nvarchar(100),
    apellidos nvarchar(255),
    departamento int,
    primary key (dni),
    foreign key (departamento) references Departamentos (codigo)
);

show tables;