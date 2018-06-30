# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#USUARIOS############
Usuario.create(nombres:"Dennis", apellidos:"Ritchie", tipo:"cliente interno", email: "dennis@gpi.cl", contrasena: 1234567, rut: 1234567)

Usuario.create(nombres:"John", apellidos:"Backus", tipo:"bodeguero", email: "john@gpi.cl", contrasena: 7654321, rut: 7654321)

Usuario.create(nombres:"Ligia", apellidos:"Gargallo", tipo:"bodeguero central", email: "ligia@gpi.cl", contrasena: 1111111, rut: 1111111) #bodeguero central

Usuario.create(nombres:"Cynthia", apellidos: "Dwork", tipo:"encargado compra", email: "cynthia@gpi.cl", contrasena: 2222222, rut: 2222222)

#BODEGAS#############
Bodega.create(numero: 742, calle: "Avenida siempreviva", comuna: "Springfield")

#MATERIALES##########
Materiale.create(nombre: "material 1", cantidad: 100, disponible: true, bodega_id: 1, tipo: "Carga pesada", comentario: "Difícil transporte")
Materiale.create(nombre: "material 3", cantidad: 0, disponible: false, bodega_id: 1, tipo: "Aceite inflamable", comentario: "Precaución: inflamabilidad")

#BODEGUEROS##########
Bodeguero.create(usuario_id: 2, bodega_id: 1)

#CLIENTES_INTERNO###
ClientesInterno.create(usuario_id: 1, bodega_id: 1)

#SOLICITUDES#########

Solicitude.create(material: "material 1", cantidad: 2, cliente_id: 1, bodeguero_id: 1, prioridad: 1, estado: "En revisión")

Solicitude.create(material: "material 2", cantidad: 3, cliente_id: 1, bodeguero_id: 1, prioridad: 1, estado: "En revisión")
