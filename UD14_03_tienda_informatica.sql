drop database if exists `UD14_03_tienda_informatica`;
create database if not exists `UD14_03_tienda_informatica`;

use `UD14_03_tienda_informatica`;

drop table if exists fabricantes;
drop table if exists articulos;

create table fabricantes ( 
	codigo int auto_increment,
    nombre nvarchar(100) not null,
    constraint primary key (codigo)

);

create table articulos ( 
  codigo int auto_increment,
  nombre nvarchar(100) not null,
  precio int not null,
  fabricante int null,
  constraint primary key (codigo),
  constraint foreign key (fabricante) references fabricantes (codigo)
  on delete cascade on update cascade
);

insert into fabricantes values(0001, 'ASUS');
insert into fabricantes values(0002, 'HP');
insert into fabricantes values(0003, 'Microsoft Windows');
insert into fabricantes values(0004, 'ACME');

insert into articulos values (0001, 'Portatil',  1200, null);
insert into articulos values (0002, 'Sistema Operativo',  150, null);
insert into articulos values (0003, 'Mouse',  7, null);
insert into articulos values (0004, 'Teclado',  24, null);

commit;

select * from articulos, fabricantes;