# Proyecto_IDSW

Por _carpetas_:

## Documentación

PDFs de los entregables.

## Stack:

* Flask (Python 3)
* MySQL
* Semantic UI

## proyecto

* **venv**: Virtual Environment, ambiente virtual de python 3.6 que trae los paquetes necesarios (a continuación hay instrucciones para crearla).
* **app.py**: Aplicación principal.

### Instrucciones para ejecutar

#### Windows (ocupar CMD):

* Por terminal, ingresar a P_IDSW/proyecto y escribir: $ python -m venv venv
* $ venv/Scripts/activate
* $ pip install -r requirements.txt
* Después $ _export FLASK_APP=app.py_
* $ _flask run_
* La línea _Running on http://127.0.0.1:5000/_ indicará donde se podrá ver.

#### Macos/Linux/like UNIX:

* Ingresar a P_IDSW/proyecto en la terminal
* Escribir: python3 -m venv venv
* source venv/bin/activate
* $ pip install -r requirements.txt
* Después $ _export FLASK_APP=app.py_
* $ _flask run_
* La línea _Running on http://127.0.0.1:5000/_ indicará donde se podrá ver.

__En Windows puede dar problemas en Power Shell, por configuraciones de seguridad del sistema.__
