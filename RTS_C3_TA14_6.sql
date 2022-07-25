drop database if exists C3_UD14_6;
create database C3_UD14_6;
use C3_UD14_6;

create table Peliculas (
	codigo int,
    nombre nvarchar(100),
    calificacionEdad int,
    PRIMARY KEY (codigo)
);

create table Salas (
	codigo int,
    nombre nvarchar(100),
    pelicula int,
    FOREIGN KEY (pelicula) REFERENCES Peliculas (codigo)
);

show tables;