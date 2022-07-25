drop database if exists `UD14_11_investigadores`;
create database if not exists `UD14_11_investigadores`;

use `UD14_11_investigadores`;

drop table if exists facultad;
drop table if exists investigadores;
drop table if exists reserva;
drop table if exists equipos;

create table facultad ( 
	Codigo 			 int auto_increment,
    Nombre		     nvarchar(100) not null,
    constraint primary key (Codigo)
);

create table investigadores (
	DNI 			 varchar(8),
    NomApels		 nvarchar(255),
    Facultad         int,
    constraint primary key (DNI),
    constraint foreign key (Facultad) references facultad (Codigo)
);

create table equipos (
	NumSerie 		 char(4),
    Nombre           nvarchar(100),
    Facultad 		 int,
    constraint primary key (NumSerie),
    constraint foreign key (Facultad) references facultad (Codigo)
);

create table reserva (
DNI 		         varchar(8),
NumSerie  			 char(4),
Comienzo			 datetime,
Fin    				 datetime,
constraint foreign key (DNI) references investigadores (DNI),
constraint foreign key (NumSerie) references equipos (NumSerie),
primary key (DNI, NumSerie)
);

show tables;