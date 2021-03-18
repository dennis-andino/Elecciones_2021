/*Administrador*/
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318270','pepe','Xavier Lagos','xavielagos@outlook.com','ciudad universitaria','98987655','01-01-1990','userdefault.png',1,1);

/*Miembros de mesa 1 (TEG)*/

--presidente
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318271','pepe','Marco Antonio Andino Lagos','marcossa@outlook.com','ciudad universitaria','98987655','01-01-1990','userdefault.png',2,1);

--secretario
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318272','pepe','Eduardo Molina','molinaeduardo@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',2,1);
--vocal
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318273','pepe','Brayan Torres','brayant@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',2,1);

/*Miembros de mesa 2 (Cortes)*/
--presidente
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318274','pepe','Moises Hernandez','moisess@unitec.edu',' ave3 14calle col.benito','98987655','01-01-1990','userdefault.png',2,2);
--secretario
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318275','pepe','Walter Alvarado','walter@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',2,2);
--vocal
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318276','pepe','Tomas Edison Alvarado','tomas@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',2,2);
commit;

/*Miembros de mesa 3 (Olancho)*/
--presidente
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318277','pepe','Santos Benito','san@gmail.edu','juticalpita 3calle','98987655','01-01-1990','userdefault.png',2,3);
--secretario
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318278','pepe','Juaquin Escobar','joa@outlook.edu','calle azcona 23 ave4','98987654','01-01-1990','userdefault.png',2,3);
--vocal
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318279','pepe','Carmen Lopez','carmen@unitec.edu','calle medina 5ave','98987654','01-01-1990','userdefault.png',2,3);
commit;

/* Magistrados*/
--magistrado  1
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318280','pepe','Leonardo Dicaprio Sanchez','tito@gmail.com','res. prados universitarios','98987655','01-01-1960','userdefault.png',3,1);
--magistrado 2
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318281','pepe','Juaquin Escobar Torres','joa@outlook.edu','calle azcona 23 ave4','98987654','01-01-1990','userdefault.png',3,2);
commit;

--------------------------------------------------------
--CANDIDATOS A LA PRESIDENCIA PARTIDO NACIONAL
--------------------------------------------------------

INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318282','pepe','Nasry Tito Asfura','asfura@outlook.com','prados universitarios','98987654','01-01-1990','userdefault.png',0,1);
commit;

--------------------------------------------------------
--CANDIDATOS A LA PRESIDENCIA PARTIDO LIBERAL
--------------------------------------------------------
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318283','pepe','Yani Rosental oliva','yani@outlook.com','prados universitarios','98987654','01-01-1990','userdefault.png',0,1);
commit;

--------------------------------------------------------
--CANDIDATOS A LA PRESIDENCIA PARTIDO LIBRE
--------------------------------------------------------
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318284','pepe','Nelson Avila','nelson@outlook.com','prados universitarios','98987654','01-01-1990','userdefault.png',0,1);
commit;

--------------------------------------------------------
--CANDIDATOS A LA ALCALDIAS PARTIDO NACIONAL
--------------------------------------------------------
--TGU
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318285','pepe','Wilfredo Castelladnos Madrid','willf@outlook.com','prados universitarios','98987654','01-01-1990','userdefault.png',0,1);
--SPS
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318286','pepe','Oscar Kilgore','okilgor@outlook.com','14 ave res. Villanova','98987654','01-01-1990','userdefault.png',0,2);
commit;


--------------------------------------------------------
--CANDIDATOS A LA ALCALDIAS PARTIDO LIBERAL
--------------------------------------------------------

--TGU
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318287','pepe','Hermes Alvarado Guzman','hermes@outlook.com','prados universitarios','98987654','01-01-1990','userdefault.png',0,1);

--SPS
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318288','pepe','Orbin Miranda Sanchez','orbin@outlook.com','14 ave res. Villanova','98987654','01-01-1990','userdefault.png',0,2);
commit;
select * from USUARIOS order by id

--------------------------------------------------------
--CANDIDATOS A LA ALCALDIAS PARTIDO LIBRE
--------------------------------------------------------
--TGU
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318289','pepe','Orbin Miranda Santos','miranda@outlook.com','prados universitarios','98987654','01-01-1990','userdefault.png',0,1);
--SPS
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318290','pepe','Manuel Miranda Santo','manuel@outlook.com','prados universitarios','98987654','01-01-1990','userdefault.png',0,2);
commit;

--------------------------------------------------------
--CANDIDATOS A DIPUTADO PARTIDO NACIONAL
--------------------------------------------------------
--FRANCISCO MORAZAN
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318291','pepe','Lissi Cano','lizi@outlook.com','prados universitarios','98987654','01-01-1990','userdefault.png',0,1);
--CORTES
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318292','pepe','Juan Diego Zelaya','juand@outlook.com','14 ave res. Villanova','98987654','01-01-1990','userdefault.png',0,2);
commit;


--------------------------------------------------------
--CANDIDATOS A DIPUTADO PARTIDO LIBERAL
--------------------------------------------------------

--FRANCISCO MORAZAN
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318293','pepe','Esdras Amado Lopez','esdras@outlook.com','prados universitarios','98987654','01-01-1990','userdefault.png',0,1);

--CORTES
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318294','pepe','Tami Sharai Espinoza','tami@outlook.com','14 ave res. Villanova','98987654','01-01-1990','userdefault.png',0,2);
commit;


--------------------------------------------------------
--CANDIDATOS A DIPUTADO PARTIDO LIBRE
--------------------------------------------------------
--FRANCISCO MORAZAN
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318295','pepe','Jorge Luis Calix','calix@outlook.com','prados universitarios','98987654','01-01-1990','userdefault.png',0,1);
--CORTES
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318296','pepe','Pedro Barahona Mejia','pedro@outlook.com','prados24 valle sula','98987654','01-01-1990','userdefault.png',0,2);
commit;



--------------------------------------------------------
--Electores
-------------------------------------------------------
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,mesa)
VALUES('0801199318100','pepe','Pablo Emilio Escobar','pablo@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',1);
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,mesa)
VALUES('0801199318101','pepe','Paola Lazaroni Perez','pao@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',1);
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,mesa)
VALUES('0801199318102','pepe','Elsa Emilia Sacapunta','elsa@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',2);
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,mesa)
VALUES('0801199318103','pepe','Gabriela Emilia Perez','emilia@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',3);
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,mesa)
VALUES('0801199318104','pepe','Oscar Emilio Garay','emilio@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',2);
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,mesa)
VALUES('0801199318105','pepe','Emilia Garay Funez','emiliag@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',2);
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,mesa)
VALUES('0801199318106','pepe','Cristian Josue Gonzales','cris@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',2);
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,mesa)
VALUES('0801199318107','pepe','Josue Cristian Martinez','emilia@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',1);
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,mesa)
VALUES('0801199318108','pepe','Pamela Antonia Perez','pame@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',1);
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,mesa)
VALUES('0801199318109','pepe','Dunia Benitez','duni@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',1);
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,mesa)
VALUES('0801199318110','pepe','Raul Arturo Perez','rau@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',2);
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,mesa)
VALUES('0801199318111','pepe','Arturo Emilia AMrtine','art@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',2);
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,mesa)
VALUES('0801199318112','pepe','Josue Antonio Perez','jos@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',2);
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,mesa)
VALUES('0801199318103','pepe','Roberto Jr Perez','rob@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',3);
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,mesa)
VALUES('0801199318113','pepe','Eduardo Emilia flores','edu@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',1);
commit;

select * from USUARIOS order by id

--------------------------------------------------------
--DEPARTAMENTOS
-------------------------------------------------------


INSERT INTO departamentos(id,nombre) VALUES(secuencia_departamentos.nextval,'FRANCISCO MORAZAN');
INSERT INTO departamentos(id,nombre) VALUES(secuencia_departamentos.nextval,'CORTES');
INSERT INTO departamentos(id,nombre) VALUES(secuencia_departamentos.nextval,'OLANCHO');

COMMIT;
select * from departamentos;
--------------------------------------------------------
--MUNICIPIOS
-------------------------------------------------------

INSERT INTO municipios(id,nombre,departamento) VALUES(secuencia_municipios.nextval,'DISTRITIO CENTRAL',1);
INSERT INTO municipios(id,nombre,departamento) VALUES(secuencia_municipios.nextval,'SAN PEDRO SULA',2);
INSERT INTO municipios(id,nombre,departamento) VALUES(secuencia_municipios.nextval,'JUTICALPA',3);

COMMIT;
select * from municipios;
--------------------------------------------------------
--PARTIDOS  ELECTORALES
-------------------------------------------------------
INSERT INTO PARTIDOS(id,nombre,descripcion,logo)VALUES(secuencia_partidos.nextval,'Partido Nacional (PN)','El partido nacional (PN) un partido pol�tico de centroderecha1? hondure�o, fundado el 27 de febrero de 1902 por Manuel Bonilla.','pn.png');
INSERT INTO PARTIDOS(id,nombre,descripcion,logo)VALUES(secuencia_partidos.nextval,'Liberal','El partido Liberal (PL) un partido pol�tico de izquierda , fundado el 5 de febrero de 1891 por Celeo Arias .','pl.png');
INSERT INTO PARTIDOS(id,nombre,descripcion,logo)VALUES(secuencia_partidos.nextval,'Libre','Es un partido pol�tico de izquierda de Honduras, que busca romper con el bipartidismo fundado en 2011 por Manuel Zelaya.','libre.png');
commit;
select * from PARTIDOS;
--------------------------------------------------------
--MESAS ELECTORALES
-------------------------------------------------------


INSERT INTO MESAS(id,descripcion,departamento,municipio,presidente,secretario,vocal) VALUES(secuencia_mesas.nextval,'MESA 1 UNAH TEG',1,1,'0801199318271','0801199318272','0801199318273');
INSERT INTO MESAS(id,descripcion,departamento,municipio,presidente,secretario,vocal) VALUES(secuencia_mesas.nextval,'MESA 2 UNAH SPS',2,2,'0801199318274','0801199318275','0801199318276');
INSERT INTO MESAS(id,descripcion,departamento,municipio,presidente,secretario,vocal) VALUES(secuencia_mesas.nextval,'MESA 3 INA Juticalpa',3,3,'0801199318277','0801199318278','0801199318279'); 
COMMIT;
select * from mesas;
--------------------------------------------------------
--VOTOS PARA PRESIDENTE
-------------------------------------------------------
--Presidente LIBERAL
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318100','0801199318283',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318101','0801199318283',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318102','0801199318283',1,1,2021,1,1,2);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318103','0801199318283',1,1,2021,1,1,3);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318283','0801199318283',1,1,2021,1,1,1);
--Presidente NACIONAL
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318104','0801199318282',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318105','0801199318282',1,1,2021,1,1,2);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318106','0801199318282',1,1,2021,1,1,2);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318282','0801199318282',1,1,2021,1,1,1);

--Presidente LIBRE
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318107','0801199318284',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318108','0801199318284',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318109','0801199318284',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318110','0801199318284',1,1,2021,1,1,2);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318111','0801199318284',1,1,2021,1,1,2);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318112','0801199318284',1,1,2021,1,1,2);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318113','0801199318284',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318284','0801199318284',1,1,2021,1,1,1);
COMMIT;
--------------------------------------------------------
--VOTOS PARA ALCALDES
-------------------------------------------------------
--Alcaldes LIBERAL 0801199318287  0801199318288
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318100','0801199318283',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318101','0801199318283',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318102','0801199318283',1,1,2021,1,1,2);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318103','0801199318283',1,1,2021,1,1,3);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318283','0801199318283',1,1,2021,1,1,1);
--Alcalde NACIONAL
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318104','0801199318282',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318105','0801199318282',1,1,2021,1,1,2);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318106','0801199318282',1,1,2021,1,1,2);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318282','0801199318282',1,1,2021,1,1,1);

--Alcalde LIBRE
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318107','0801199318284',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318108','0801199318284',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318109','0801199318284',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318110','0801199318284',1,1,2021,1,1,2);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318111','0801199318284',1,1,2021,1,1,2);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318112','0801199318284',1,1,2021,1,1,2);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318113','0801199318284',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318284','0801199318284',1,1,2021,1,1,1);
COMMIT;
select * from VOTOS;
SELECT usuarios.nombre,count(votos.candidato) as total FROM votos INNER JOIN usuarios ON votos.candidato= usuarios.id GROUP BY usuarios.nombre;



