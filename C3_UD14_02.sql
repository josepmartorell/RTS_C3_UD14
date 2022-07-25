show databases;
drop database if exists C3_UD14_02;
create database C3_UD14_02;
use C3_UD14_02;

create table Editoriales (
	claveEditorial int,
	nombre varchar(255),
    direccion varchar(255),
    telefono int,
    primary key (claveEditorial)
);

create table Libros (
	claveLibro int,
    titulo varchar(255),
    idioma varchar(255),
    formato varchar(255),
    claveeditorial int,
    primary key (claveLibro),
    foreign key (claveeditorial) references Editoriales (claveEditorial)
    on delete set null on update cascade
);

create table Temas (
	claveTema int,
	nombre varchar(255),
    primary key (claveTema)
);

create table Autores (
	claveAutor int,
	nombre varchar(255),
    primary key (claveAutor)
);

create table Ejemplares (
	claveEjemplar int,
	claveLibro int,
    numeroOrden int,
    edicion int,
    ubicacion varchar(255),
    categoria varchar(255),
    primary key (claveEjemplar),
    foreign key (claveLibro) references Libros (claveLibro)
    on delete cascade on update cascade
);

create table Socios (
	claveSocio int,
	nombre varchar(255),
    direccion varchar(255),
    telefono int,
    categoria varchar(255),
    primary key (claveSocio)
);

create table Prestamos (
	claveSocio int,
	claveEjemplar int,
    numeroOrden int,
    fechaPrestamo date,
    fechaDevolucion date,
    notas varchar(255),
    foreign key (claveSocio) references Socios (claveSocio)
    on delete cascade on update cascade,
    foreign key (claveEjemplar) references Ejemplares (claveEjemplar)
    on delete cascade on update cascade
);

create table Tratan_sobre (
	claveLibro int,
	claveTema int,
    foreign key (claveLibro) references Libros (claveLibro)
    on delete cascade on update cascade,
    foreign key (claveTema) references Temas (claveTema)
    on delete cascade on update cascade
);

create table Escritos_por (
	claveLibro int,
	claveAutor int,
    foreign key (claveLibro) references Libros (claveLibro)
    on delete cascade on update cascade,
    foreign key (claveAutor) references Autores (claveAutor)
    on delete cascade on update cascade
);

show tables;