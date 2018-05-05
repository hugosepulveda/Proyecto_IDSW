from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()

class Usuario(Base):
	__tablename_ = "USUARIOS"
	rut = Column(Integer, primary_key = true)
	nombres= Column(String(50))
	apellidos = Column(String(50))
	tipo = Column(String(50))
	contrasena = Column(String(100))
	
class Obras(Base):
	__tablename__ = "OBRAS"
	id_obra = Column(Integer, primary_key = true)
	ubicacion = Column(String(100))

class Bodegas(Base):
	__tablename__ = "BODEGAS"
	id_bodega = Column(Integer, primary_key = true)
	horario = Column(DateTime) #vprobable conflicto definido en bd.sql
	direccion = Column(String(100))
	comuna = Column(String(100))

class Materiales(Base):
	__tablename__ = "MATERIALES"
	id_material = Column(Integer, primary_key = true)
	marca = Column(String(50))
	cant = Column(Integer)
	bodega_id = Column(Integer, ForeignKey("BODEGAS.id_bodega"))
	disponible = Column(Boolean)
	comentario = Column(String(200))

class Clientes_internos(Base):
	__tablename__ = "CLIENTES_INTERNOS"
	usuario_id = Column(Integer, ForeignKey("USUARIOS.rut")) #cambiar usuario_id por ruts
	obra_id = Column(Integer, ForeignKey("OBRAS.id_obra"))

class Encargados_compra(Base):
	__tablename__ = "ENCARGADOS_COMPRA"
	usuario_id = column(Integer, ForeignKey("USUARIOS.rut"))

class Proveedores(Base):
	__tablename__ = "PROVEEDORES"
	id_proveedor = Column(Integer, primary_key = true)
	numero = Column(Integer)
	mail = column(String(100))

class Ordenes_compra(Base):
	__tablename__ = "ORDENES_COMPRA"
	id_orden = Column(Integer, primary_key = true)
	encargado_id  = Column(Integer, ForeignKey("ENCARGADOS_COMPRA.usuario_id"))
	proveedor_id = Column(Integer, ForeignKey("PROVEEDORES.id_proveedor"))

class Facturas(Base):
	__tablename__ = "FACTURAS"
	id_factura = Column(Integer, primary_key = true)
	orden_id = Column(Integer, ForeignKey("ORDENES.id_orden"))
	proveedor_id = Column(Iteer, ForeignKey("PROVEEDORES.id_proveedor"))

class Cotizaciones(Base):
	__tablename__ = "COTIZACIONES"
	id_cotizacion = Column(Integer, primary_key = true)
	encargado_id = Column(Integer, ForeignKey("ENCARGADOS_COMPRA.usuario_id"))
	prov_id = Column(Integer, ForeignKey("PROVEEDORES.id_proveedor"))

class Solicitudes(Base):
	__tablename__ = "SOLICITUDES"
	id_solicitud = Column(Integer, primery_key = true)
	cliente_id = Column(Integer, ForeignKey("CLIENTES_INTERNOS.id_cliente"))
	orden_id = Column(Integer, ForeignKey("ORDENES.id_orden"))
	prioridad = Column(Integer)
	material = Column(String(100))
	cant_material = Column(Integer)
	comentarios = Column(200)
	estado = Column(String(50))
	
class Despachos(Base):
	__tablename__ = "DESPACHOS"
	id_despacho = Column(Integer, primary_key = true)
	encargado_id = Column(Integer, ForeignKey("ENCARGADOS_COMPRA.usuario_id"))
	solicitud_id = Column(Integer, ForeignKey("SOLICITUDES.id_solicitud"))
	
class Bodegueros(Base):
	__tablename__ = "BODEGUEROS"
	id_bodeguero = Column(Integer, primary_key = true)
	bodega_id = Column(Integer, ForeignKey("BODEGAS.id_bodega"))
	encargado_id = Column(Integer, ForeignKey("ENCARGADOS_COMPRA.usuario_id"))