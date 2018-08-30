# Proyecto_IDSW

### BD quedó configurada para Linux.

## Stack:

* Ruby on Rails
* MySQL
* Foundation

Por _carpetas_:

## Documentación

PDFs de los entregables.

## innombrable

* **app/controllers**: Controladores.
* **app/views**: Vistas.
* **app/db**: Modelo Base de datos.
* **config/database.yml**: Configuración conexión bd mysql.

### Instrucciones para ejecutar

#### Windows (ocupar CMD):

* Por terminal, ingresar a P_IDSW/innombrable y escribir: $ ruby bin/rails server

#### Macos/Linux/UNIX-like:

* Ingresar a P_IDSW/innombrable en la terminal
* correr el servidor: $ _rails s_
* Se podrá observar en _localhost:3000/_.

### Creación de la Base de datos:

* Entrar a carpeta _innombrable_.
* En caso de tener la bd ya creada, ejecutar en la terminal: $ rails db:drop
* $ rails db:create
* $ rails db:migrate
* $ rails db:seed
