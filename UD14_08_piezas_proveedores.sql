

drop database if exists `UD14_08_piezas_proveedores`;

create database if not exists `UD14_08_piezas_proveedores` /*!40100 DEFAULT CHARACTER SET utf8 */;

use `UD14_08_piezas_proveedores`;

drop table if exists piezas;
drop table if exists suministra;
drop table if exists proveedores;

create table piezas
( 
  Codigo                   int auto_increment,
  Nombre                   nvarchar(100) not null, 
  constraint pk_piezas     primary key (codigo)
);

CREATE TABLE proveedores
( 
  Id               		     char(4),
  Nombre                     nvarchar(100) not null, 
  constraint pk_proveedores  primary key (id)
);

CREATE TABLE suministra
(  
  CodigoPieza               int,
  IdProveedor               char(4),
  Precio				    int,
  constraint foreign key (CodigoPieza) REFERENCES piezas (Codigo),
  constraint foreign key (IdProveedor) REFERENCES proveedores (Id),
  constraint primary key(codigoPieza, idProveedor)
);

show tables;