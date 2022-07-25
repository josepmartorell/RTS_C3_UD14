drop database if exists `UD14_10_grandes_almacenes`;
create database if not exists `UD14_10_grandes_almacenes`;

use `UD14_10_grandes_almacenes`;

drop table if exists cajeros;
drop table if exists productos;
drop table if exists maquinas_registradoras;
drop table if exists venta;

create table cajeros ( 
	Codigo 			 int auto_increment,
    NomApels		 nvarchar(255) not null,
    constraint primary key (Codigo)
);

create table productos (
	Codigo 			 int auto_increment,
    Nombre		     nvarchar(100),
    Precio		     int,
    constraint primary key (Codigo)
);

create table maquinas_registradoras (
	Codigo 			 int auto_increment,
    piso 		     int,
    constraint primary key (Codigo)
);

create table venta (
Cajero			     int,
Maquina   			 int,
Producto			 int,
constraint foreign key (Cajero) references cajeros (Codigo),
constraint foreign key (Maquina) references maquinas_registradoras (Codigo),
constraint foreign key (Producto) references productos (Codigo),
primary key (Cajero, Maquina, Producto)
);

show tables;