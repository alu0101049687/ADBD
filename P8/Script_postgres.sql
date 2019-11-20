--Objeto relacional Proyecto arquitectónico 
--Administración  y Diseño de Base de Datos


--Akshay Chatani Chatani, Zuzanna Elzbieta Szalaty & Benjamin Paddags




--Subir el modelo del ejercicio de Proyectos Arquitectónicos en UML y el código Postgres generado.


CREATE TABLE jefe  (
nombre text ,
codigo integer ,
dni integer ,
telefono integer,
PRIMARY KEY (dni)
);




CREATE TABLE proyecto  (
nombre text ,
jefe_dni integer PRIMARY KEY ,
 FOREIGN KEY (jefe_dni)  REFERENCES jefe(dni) 
);






CREATE TYPE representacion AS (
dibujo BLOB,
cantidad_de_figura integer);










CREATE TABLE plano  (
identificador integer PRIMARY KEY,
fecha_entrega date,
cantidad_figuras integer,
repre representacion,
arquitectos text[],
proyecto_dni integer,
 FOREIGN KEY (proyecto_dni)  REFERENCES proyecto(jefe_dni) 
);










CREATE TABLE figura (
perimetro integer,
area integer,
color text,
nombre text,
plano_identificador integer PRIMARY KEY,
proyecto_dni integer,
tipo_de_figura text,
numero_de_lineas integer,
FOREIGN KEY (plano_identificador)  REFERENCES plano(identificador) 
);












CREATE TABLE linea (
origen integer,
final integer,
longitud integer,
identificador integer ,
poligono_plano_identificador integer,
PRIMARY KEY (identificador,poligono_plano_identificador),
FOREIGN KEY (poligono_plano_identificador)  REFERENCES figura(plano_identificador) 
);
































INSERT INTO jefe (nombre, codigo,dni,telefono)
VALUES (‘Paco’, 3434,4343434,6463636);




INSERT INTO proyecto (nombre, jefe_dni)
VALUES (‘Lucas’, 4343434);






INSERT INTO plano (identificador, fecha_entrega, cantidad_figuras,  arquitectos,proyecto_dni ,repre)
 VALUES ('34343', '2000-01-01’, 4, '{"JUan", "Pedro"}',  4343434 , ROW('mi calle', 23)
);






INSERT INTO figura (perimetro, area, color,  nombre,plano_identificador ,proyecto_dni,tipo_de_figura,numero_de_lineas)
 VALUES (54, 454, ‘rojo’, 'JUAN’,  34343 ,343434,’rara’,45)
;






INSERT INTO linea (origen, final, longitud,  identificador,poligono_plano_identificador)
 VALUES (54, 454, 456,  45,34343 )
;
