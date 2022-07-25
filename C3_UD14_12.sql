show databases;
drop database if exists C3_UD14_12;
create database C3_UD14_12;
use C3_UD14_12;

create table Profesores (
    nombre varchar(60),
    apellido1 varchar(60),
    apellido2 varchar(60),
    dni varchar(9),
    direccion varchar(255),
    titulo varchar(255),
    gana float not null,
    primary key (dni),
    unique key (nombre)
);

create table Cursos (
	nombre_curso varchar(60),
	cod_curso int,
	dni_profesor varchar(9),
    maximo_alumnos int,
    fecha_inicio date,
    fecha_fin date,
    num_horas int not null,
    primary key (cod_curso),
    unique key (nombre_curso),
    foreign key (dni_profesor) references Profesores (dni)
    on delete set null on update cascade
);

create table Alumnos (
	nombre varchar(60),
    apellido1 varchar(60),
    apellido2 varchar(60),
    dni varchar(9),
    direccion varchar(255),
    sexo char check (sexo in ('H', 'M')),
    fecha_nacimiento date,
    curso int,
    primary key (dni),
    foreign key (curso) references Cursos (cod_curso)
    on delete cascade on update cascade
);