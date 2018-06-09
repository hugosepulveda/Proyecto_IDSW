# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#USUARIOS############
Usuario.create(nombres:"nombre 1", apellidos:"apellido 1", tipo:"cliente interno", contrasena: 1234567, rut: 1234567)

Usuario.create(nombres:"nombre 2", apellidos:"apellido 2", tipo:"bodeguero", contrasena: 7654321, rut: 7654321)

Usuario.create(nombres:"nombre 3", apellidos:"apellido 3", tipo:"bodeguero central", contrasena: 1111111, rut: 1111111) #bodeguero central

Usuario.create(nombres:"nombre 4", apellidos:"apellido 4", tipo:"encargado compra", contrasena: 2222222, rut: 2222222)

#SOLICITUDES#########
Solicitude.create(material: "material 1", cantidad: 2, usuario_id: 1)

Solicitude.create(material: "material 2", cantidad: 3, usuario_id: 1)

#BODEGAS#############
Bodega.create(numero: 742, calle: "Avenida siempreviva", comuna: "Springfield")

#MATERIALES##########
Materiale.create(nombre: "material 1", cantidad: 100, disponible: true, bodega_id: 1, tipo: "Carga pesada", comentario: "Difícil transporte")
Materiale.create(nombre: "material 3", cantidad: 0, disponible: false, bodega_id: 1, tipo: "Aceite inflamable", comentario: "Precaución: inflamabilidad")

#BODEGUEROS##########
Bodeguero.create(usuario_id: 2, bodega_id: 1)

#OBRAS##############
Obra.create(nombre: "ENDESA 1", numero: "111", calle: "calle genérica", comuna: "Comuna genérica", tipo: "Electricidad", cliente: "ENDESA", bodega_id: 1)

#CLIENTES_INTERNO###
ClientesInterno.create(usuario_id: 1, obra_id: 1)
