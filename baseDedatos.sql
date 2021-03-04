/*
sistema de elecciones
-------------------------------------------
clave oracle 11g: root user: system 
-------------------------------------------
database name: eleccionesdb
username : eleccionesdb
clave:root
------------------------------------------
*/

CREATE TABLE USUARIOS(
id VARCHAR2(30) PRIMARY KEY,
clave VARCHAR2(200) NOT NULL,
nombre VARCHAR2(40) NOT NULL,
correo VARCHAR2(100) NOT NULL,
telefono VARCHAR2(30) NOT NULL,
Fecha_nac VARCHAR2(30) NOT NULL,
fotografia VARCHAR2(200) NOT NULL,
rol NUMBER DEFAULT(4)
);
/*alter table USUARIOS add fotografia VARCHAR2(200) NOT NULL;
alter table USUARIOS drop (latitud,longitud)*/
INSERT INTO USUARIOS(id,clave,nombre,correo,telefono,Fecha_nac,fotografia,rol)
VALUES('0801199318270','pepe','Gaby Montes','gabymontes@unitec.edu','98987654','01/01/1990','gaby.png',0);
INSERT INTO USUARIOS(id,clave,nombre,correo,telefono,Fecha_nac,fotografia,rol)
VALUES('0801199318271','pepe','Eduardo Montes','eduardomontes@unitec.edu','98987655','01/01/1991','default.png',0);
select * from usuarios;


