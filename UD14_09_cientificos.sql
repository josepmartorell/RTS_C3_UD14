drop database if exists `UD14_09_cientificos`;
create database if not exists `UD14_09_cientificos`;

use `UD14_09_cientificos`;

drop table if exists cientificos;
drop table if exists asignado_a;
drop table if exists proyecto;

create table cientificos ( 
	DNI 			 varchar(8),
    NomApels		 nvarchar(255) not null,
    constraint primary key (DNI)
);

create table proyecto (
	id    		     char(4),
    Nombre		     nvarchar(255),
    horas 		     int,
    constraint primary key (id)
);

create table asignado_a (
cientifico			 varchar(8),
proyecto   			 char(4),
constraint foreign key (cientifico) references cientificos (DNI),
constraint foreign key (proyecto) references proyecto (id),
primary key (cientifico, proyecto)
);

show tables;



