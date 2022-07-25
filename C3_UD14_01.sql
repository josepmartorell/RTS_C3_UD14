show databases;
drop database if exists C3_UD14_01;
create database C3_UD14_01;
use C3_UD14_01;

create table Estaciones (
	identificador int,
    latitud varchar(255),
    longitud varchar(255),
    altitud varchar(255),
    primary key (identificador)
);

create table Muestras (
	identificadorEstacion int,
    fecha date,
    temperaturaMinima int,
    temperaturaMaxima int,
    precipitaciones int,
    humedadMinima int,
    humedadMaxima int,
    velocidadVientoMinima int,
    velocidadVientoMaxima int,
    foreign key (identificadorEstacion) references Estaciones (identificador)
    on delete no action on update cascade
);

show tables;