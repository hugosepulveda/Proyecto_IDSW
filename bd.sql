CREATE DATABASE GPI;
USE GPI;

CREATE TABLE USUARIOS(
	rut int auto_increment,
	nombres varchar(10),
	apellidos varchar(10),
	tipo varchar(20),
	primary key (rut)
);

CREATE TABLE OBRAS(
		id_obra int,
		ubicacion varchar(100),
		primary key (id_obra)
);

CREATE TABLE MATERIALES(

);

CREATE TABLE BODEGAS(
	id_bodega int,
	horario date,
	direccion varchar(100)
	comuna varchar(100),
	primary key (id_bodega)
);

CREATE TABLE CLIENTES_INTERNOS(
	obra_id int,
	foreign key (obra_id) references OBRAS(id_obra)
);

CREATE TABLE ENCARGADOS_COMPRA();

CREATE TABLE PROVEEDORES(
	id_proveedor int,
	numero int,
	mail varchar(100),
	primary key (id_proveedor)
);

CREATE TABLE ORDENES_COMPRA(
	id_orden int,
	encargado_id int,
	proveedor_id int,
	primary key (id_orden),
	foreign key (encargado_id) references ENCARGADOS(encargado_id),
	foreign key (proveedor_id) references PROVEEDORES(proveedores_id)
);

CREATE TABLE FACTURAS();

CREATE TABLE COTIZACIONES();

CREATE TABLE DESPACHOS();

CREATE TABLE BODEGUEROS();