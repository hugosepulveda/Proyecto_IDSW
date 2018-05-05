--DROP DATABASE GPI;
CREATE DATABASE GPI;
USE GPI;

CREATE TABLE USUARIOS(
	rut int,
	nombres varchar(50),
	apellidos varchar(50),
	tipo varchar(50),
	contrasena varchar(100),
	primary key (rut)
);

CREATE TABLE OBRAS(
	id_obra int,
	ubicacion varchar(100),
	primary key (id_obra)
);

CREATE TABLE BODEGAS(
	id_bodega int,
	horario date,
	direccion varchar(100),
	comuna varchar(100),
	primary key (id_bodega)
);

CREATE TABLE MATERIALES(
	id_material int,
	marca varchar(50),
	cant int,
	bodega_id int,
	disponible TINYINT(0),
	comentario varchar(200),
	primary key (id_material),
	foreign key (bodega_id) references BODEGAS(id_bodega)
);

CREATE TABLE CLIENTES_INTERNOS(
	usuario_id int,
	obra_id int,
	foreign key (usuario_id) references USUARIOS(id_usuario),
	foreign key (obra_id) references OBRAS(id_obra)
);

CREATE TABLE ENCARGADOS_COMPRA(
	usuario_id int,
	foreign key (usuario_id) references USUARIOS(id_usuario)	
);

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

CREATE TABLE FACTURAS(
	id_factura int,
	orden_id int,
	proveedor_id int
	primary key (id_factura),
	foreign key (orden_id) references ORDENES_COMPRA(id_orden),
	foreign key (proveedor_id) references PROVEEDORES(proveedores_id)

);

CREATE TABLE COTIZACIONES(
	id_cotizacion int,
	encargado_id int,
	prov_id int,
	foreign key (encargado_id) references ENCARGADOS_COMPRA(id_encargado),
	foreign key (prov_id) references PROVEEDORES(id_proveedor)
);

CREATE TABLE SOLICITUDES(
	id_solicitud int,
	cliente_id int,
	orden_id int,
	prioridad int,
	material varchar(100),
	cant_material int,
	comentarios varchar(200),
	estado varchar(50),
	primary key (id_solicitud),
	foreign key (cliente_id) references CLIENTES_INTERNOS(id_cliente),
	foreign key (orden_id) references ORDENES(id_orden)
);

CREATE TABLE DESPACHOS(
	id_despacho int,
	encargado_id int,
	solicitud_id int,
	foreign key (solicitud_id) references SOLICITUDES(id_solicitud),
	foreign key (encargado_compra_id) references ENCARGADOS_COMPRA(usuario_id)
);

CREATE TABLE BODEGUEROS(
	id_bodeguero int,
	bodega_id int,
	encargado_id int,
	primary key (id_bodeguero),
	foreign key (bodega_id) references BODEGAS(id_bodega),
	foreign key (enacargado_id) references ENCARGADOS(encargado_id)
);
-----------------------------
INSERT INTO USUARIOS VALUES (1234, "Hugo Adolfo", "Sepulveda Arriaza", "Cliente Interno", "1234");
