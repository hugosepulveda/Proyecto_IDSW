# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Usuario.create(nombres:"nombre 1", apellidos:"apellido 1", tipo:"cliente interno", contrasena: 1234567, rut: 1234567)

Usuario.create(nombres:"nombre 2", apellidos:"apellido 2", tipo:"bodeguero", contrasena: 7654321, rut: 7654321)

Solicitude.create(material: "material 1", cant_material: 2, usuario_id: 1)

Solicitude.create(material: "material 2", cant_material: 3, usuario_id: 1)