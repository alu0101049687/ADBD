# Práctica 2: Instalación y prueba de Postgresql
## *Administración  y Diseño de Base de Datos*
### Akshay Chatani Chatani, Zuzanna Elzbieta Szalaty & Benjamin Paddags

#### Introducción
* El objetivo de esta práctica ha sido instalar postgresql y probarlo creando una base de datos de prueba.

#### Instalación postgresql
Para poder instalar el programa en nuestra máquina virtual es necesario ser el root. Por ello habrá que usar el siguiente comando:
sudo apt-get install postgresql


#### Creación de la Base de Datos 
* sudo su postgres: Cambiamos al usuario postgres ya que es el que tiene los permisos para acceder a la base de datos de postgres
* createuser --interactive: Este comando sirve para crear un usuario de modo interactivo ( para que nos vaya preguntando los detalles por terminal).
* createdb usuario: Este comando sirve para crear una base de datos llamada usuario.
* psql: Con este comando entramos en la interfaz de programación de postgresql.
![Screenshot](capturas/1.png)


#### Creación de un ejemplo de pruebas
En la shell psql como el nuevo usuario “usuario”, se ejecutaron los comandos que se muestran en la imagen.
Esto creará una tabla llamada usuarios que contiene un campo para el nombre y otro para la clave.
Y además se inserta dentro de la tabla usuarios los campos nombre y clave con los valores que queremos.
![Screenshot](capturas/2.png)
