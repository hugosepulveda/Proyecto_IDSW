CREATE DATABASE GPI;
USE GPI;

CREATE TABLE USUARIOS(
	id_usuario int,
	nombres varchar(50),
	apellidos varchar(50),
	tipo varchar(50),
	contrasena varchar(100),
	obra_id int,
	primary key (id_usuario)
);

CREATE TABLE BODEGAS(
	id_bodega int,
	horario date,
	direccion varchar(100),
	comuna varchar(100),
	primary key (id_bodega)
);

CREATE TABLE RETIRO_BODEGA(
	id_bodega int,
	id_bodeguero int,
	id_solicitud int,
	fecha_retiro date,
	cantidad int, 
	primary key (fecha_retiro, id_bodega, id_bodeguero, id_solicitud)
);

CREATE TABLE BODEGAS_MATERIALES(
	material_id int,
	bodega_id int,
	primary key (material_id, bodega_id)
);

CREATE TABLE MATERIALES(
	id_material int,
	material varchar(50),
	marca varchar(50),
	cant int,
	disponible int,
	comentario varchar(200),
	primary key (id_material)
);

CREATE TABLE SOLICITUDES_MATERIALES(
	material_id int,
	solicitud_id int,
	primary key (material_id, solicitud_id)
);

CREATE TABLE SOLICITUDES(
	id_solicitud int,
	prioridad int,
	material varchar(100),
	cant_material int,
	comentarios varchar(200),
	estado varchar(50),
	bodeguero_id int,
	cliente_id int, 
	encargado_id int,
	primary key (id_solicitud),
	foreign key (bodeguero_id) references USUARIOS(usuario_id),
	foreign key (cliente_id) references USUARIOS(usuario_id),
	foreign key (encargado_id) references USUARIOS(usuario_id)
);

CREATE TABLE PROVEEDORES(
	id_proveedor int,
	telefono int,
	mail varchar(100),
	primary key (id_proveedor)
);

CREATE TABLE ORDENES(
	id_orden int,
	encargado_id int,
	proveedor_id int,
	primary key (id_orden),
	foreign key (encargado_id) references USUARIOS(usuario_id),
	foreign key (proveedor_id) references PROVEEDORES(id_proveedor)
);

CREATE TABLE FACTURAS(
	id_factura int,
	orden_id int,
	primary key (id_factura),
	foreign key (orden_id) references ORDENES(id_orden)
);

CREATE TABLE COTIZACIONES(
	id_cotizacion int,
	encargado_id int,
	proveedor_id int,
	primary key (id_cotizacion),
	foreign key (encargado_id) references USUARIOS(usuario_id),
	foreign key (proveedor_id) references PROVEEDORES(id_proveedor)
);

CREATE TABLE DESPACHOS(
	id_bodega int,
	id_bodeguero int,
	id_orden int,
	fecha_despacho date,
	cantidad int, 
	primary key (fecha_despacho, id_bodega,	id_bodeguero, id_orden)
);

INSERT INTO USUARIOS VALUES (1234, "Nombre", "Apellido", "Cliente Interno", "1234", 0123);