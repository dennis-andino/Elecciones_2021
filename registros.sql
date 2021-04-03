/*Administrador*/
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318270','pepe','Xavier Lagos','xavielagos@outlook.com','ciudad universitaria','98987655','01-01-1990','imagenes/userdefault.png',1,1);

/*Miembros de mesa 1 (TEG)*/

--presidente
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318271','pepe','Marco Antonio Andino Lagos','marcossa@outlook.com','ciudad universitaria','98987655','01-01-1990','imagenes/userdefault.png',2,1);

--secretario
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318272','pepe','Eduardo Molina','molinaeduardo@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','imagenes/userdefault.pngg',2,1);
--vocal
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318273','pepe','Brayan Torres','brayant@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','imagenes/userdefault.png',2,1);

/*Miembros de mesa 2 (Cortes)*/
--presidente
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318274','pepe','Moises Hernandez','moisess@unitec.edu',' ave3 14calle col.benito','98987655','01-01-1990','imagenes/userdefault.png',2,2);
--secretario
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318275','pepe','Walter Alvarado','walter@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','imagenes/userdefault.png',2,2);
--vocal
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318276','pepe','Tomas Edison Alvarado','tomas@unitec.edu','calle sebastian 2ave','98987654','01-01-1990','imagenes/userdefault.png',2,2);
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

----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------

--------------------------------------------------------
--CANDIDATOS A LA ALCALDIAS PARTIDO NACIONAL
--------------------------------------------------------
--TGU 0801199318285
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318285','pepe','Wilfredo Castelladnos Madrid','willf@outlook.com','prados universitarios','98987654','01-01-1990','userdefault.png',0,1);
--SPS 0801199318286
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318286','pepe','Oscar Kilgore','okilgor@outlook.com','14 ave res. Villanova','98987654','01-01-1990','userdefault.png',0,2);
commit;


--------------------------------------------------------
--CANDIDATOS A LA ALCALDIAS PARTIDO LIBERAL
--------------------------------------------------------

--TGU (0801199318287)
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318287','pepe','Hermes Alvarado Guzman','hermes@outlook.com','prados universitarios','98987654','01-01-1990','userdefault.png',0,1);

--SPS (0801199318288)
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318288','pepe','Orbin Miranda Sanchez','orbin@outlook.com','14 ave res. Villanova','98987654','01-01-1990','userdefault.png',0,2);
commit;
select * from USUARIOS order by id;

--------------------------------------------------------
--CANDIDATOS A LA ALCALDIAS PARTIDO LIBRE
--------------------------------------------------------
--TGU (0801199318289)
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,rol,mesa)
VALUES('0801199318289','pepe','Orbin Miranda Santos','miranda@outlook.com','prados universitarios','98987654','01-01-1990','userdefault.png',0,1);
--SPS (0801199318290)
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

select * from papeletas where tipo_candidatura=3;
select * from usuarios where id='0801199318293';


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

DELETE FROM MESAS WHERE ID=23;

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
INSERT INTO USUARIOS(id,clave,nombre,correo,direccion,telefono,Fecha_nac,fotografia,mesa)
VALUES('0801199318114','pepe','Willian Alvarado','will@gmail.com','calle sebastian 2ave','98987654','01-01-1990','userdefault.png',1);
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

INSERT INTO municipios(id,nombre,departamento) VALUES(secuencia_municipios.nextval,'DISTRITO CENTRAL',1);
INSERT INTO municipios(id,nombre,departamento) VALUES(secuencia_municipios.nextval,'SAN PEDRO SULA',2);
INSERT INTO municipios(id,nombre,departamento) VALUES(secuencia_municipios.nextval,'JUTICALPA',3);
INSERT INTO municipios(id,nombre,departamento) VALUES(secuencia_municipios.nextval,'San antonio de oriente',1);

COMMIT;
select * from municipios;
--------------------------------------------------------
--PARTIDOS  ELECTORALES
-------------------------------------------------------
INSERT INTO PARTIDOS(id,nombre,descripcion,logo)VALUES(secuencia_partidos.nextval,'Partido Nacional (PN)','El partido nacional (PN) un partido político de centroderecha1? hondureño, fundado el 27 de febrero de 1902 por Manuel Bonilla.','pn.png');
INSERT INTO PARTIDOS(id,nombre,descripcion,logo)VALUES(secuencia_partidos.nextval,'Liberal','El partido Liberal (PL) un partido político de izquierda , fundado el 5 de febrero de 1891 por Celeo Arias .','pl.png');
INSERT INTO PARTIDOS(id,nombre,descripcion,logo)VALUES(secuencia_partidos.nextval,'Libre','Es un partido político de izquierda de Honduras, que busca romper con el bipartidismo fundado en 2011 por Manuel Zelaya.','libre.png');
commit;
select * from PARTIDOS;
--------------------------------------------------------
--MESAS ELECTORALES
-------------------------------------------------------


INSERT INTO MESAS(id,descripcion,departamento,municipio,presidente,secretario,vocal) VALUES(secuencia_mesas.nextval,'MESA 1 UNAH TEG',1,1,'0801199318271','0801199318272','0801199318273');
INSERT INTO MESAS(id,descripcion,departamento,municipio,presidente,secretario,vocal) VALUES(secuencia_mesas.nextval,'MESA 2 UNAH SPS',2,2,'0801199318274','0801199318275','0801199318276');
INSERT INTO MESAS(id,descripcion,departamento,municipio,presidente,secretario,vocal) VALUES(secuencia_mesas.nextval,'MESA 3 INA Juticalpa',3,3,'0801199318277','0801199318278','0801199318279'); 
INSERT INTO MESAS(id,descripcion,departamento,municipio,presidente,secretario,vocal) VALUES(secuencia_mesas.nextval,'MESA 4 UNAH Juticalpa',(select departamento from municipios where id=3),3,'0801199318277','0801199318278','0801199318279'); 
select departamento from municipios where id=3;
select * from municipios;
COMMIT;
ROLLBACK;
select * from mesas;


--------------------------------------------------------
--PAPELETAS
--------------------------------------------------------
--------------------partido nacional 1
--presidente 1

INSERT INTO papeletas(id,candidato,partido,tipo_candidatura,casilla,municipio,departamento) VALUES (secuencia_papaletas.NEXTVAL,'0801199318282',1,1,1,1,1);
--alcaldes 2
INSERT INTO papeletas(id,candidato,partido,tipo_candidatura,casilla,municipio,departamento) VALUES (secuencia_papaletas.NEXTVAL,'0801199318285',1,2,1,1,1);
INSERT INTO papeletas(id,candidato,partido,tipo_candidatura,casilla,municipio,departamento)VALUES (secuencia_papaletas.NEXTVAL,'0801199318286',1,2,2,2,2);
--diputados 3
INSERT INTO papeletas(id,candidato,partido,tipo_candidatura,casilla,municipio,departamento) VALUES (secuencia_papaletas.NEXTVAL,'0801199318291',1,3,1,1,1);
INSERT INTO papeletas(id,candidato,partido,tipo_candidatura,casilla,municipio,departamento)VALUES (secuencia_papaletas.NEXTVAL,'0801199318292',1,3,2,2,2);
COMMIT;

--------------------partido liberal 2
--presidente 1

INSERT INTO papeletas VALUES (secuencia_papaletas.NEXTVAL,'0801199318283',2,1,1);
--alcaldes 2
INSERT INTO papeletas VALUES (secuencia_papaletas.NEXTVAL,'0801199318287',2,2,1);
INSERT INTO papeletas VALUES (secuencia_papaletas.NEXTVAL,'0801199318288',2,2,2);
--diputados 3
INSERT INTO papeletas(id,candidato,partido,tipo_candidatura,casilla,municipio,departamento) VALUES (secuencia_papaletas.NEXTVAL,'0801199318293',2,3,1,1,1);--FRANCISCO MORAZAN
INSERT INTO papeletas(id,candidato,partido,tipo_candidatura,casilla,municipio,departamento)VALUES (secuencia_papaletas.NEXTVAL,'0801199318294',2,3,2,2,2);--CORTES
COMMIT;

--------------------partido libre 3
--presidente 1
INSERT INTO papeletas VALUES (secuencia_papaletas.NEXTVAL,'0801199318284',3,1,1);
--alcaldes 2
INSERT INTO papeletas VALUES (secuencia_papaletas.NEXTVAL,'0801199318289',3,2,1);
INSERT INTO papeletas VALUES (secuencia_papaletas.NEXTVAL,'0801199318290',3,2,2);
--diputados 3
INSERT INTO papeletas(id,candidato,partido,tipo_candidatura,casilla,municipio,departamento) VALUES (secuencia_papaletas.NEXTVAL,'0801199318295',3,3,1,1,1);--FRANCISCO MORAZAN
INSERT INTO papeletas(id,candidato,partido,tipo_candidatura,casilla,municipio,departamento)VALUES (secuencia_papaletas.NEXTVAL,'0801199318296',3,3,2,2,2);--CORTES

--------------------------------------------------------
--VOTOS PARA PRESIDENTE (Pendiende correccion de municipio, departamento y mesa segun municipio)
-------------------------------------------------------
--Presidente LIBERAL
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318100','0801199318283',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318101','0801199318283',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318102','0801199318283',1,1,2021,1,1,2);--
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318103','0801199318283',1,1,2021,1,1,3);--
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318283','0801199318283',1,1,2021,1,1,1);
--Presidente NACIONAL
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318104','0801199318282',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318105','0801199318282',1,1,2021,1,1,2);--
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318106','0801199318282',1,1,2021,1,1,2);--
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318282','0801199318282',1,1,2021,1,1,1);

--Presidente LIBRE
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318107','0801199318284',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318108','0801199318284',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318109','0801199318284',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318110','0801199318284',1,1,2021,1,1,2);--
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318111','0801199318284',1,1,2021,1,1,2);--
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318112','0801199318284',1,1,2021,1,1,2);--
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318113','0801199318284',1,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318284','0801199318284',1,1,2021,1,1,1);
COMMIT;
--------------------------------------------------------
--VOTOS PARA ALCALDES
-------------------------------------------------------
--Alcalde NACIONAL
-------------------TGU (0801199318285)
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318104','0801199318285',2,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318282','0801199318285',2,1,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318285','0801199318285',2,1,2021,1,1,1);

 -----------------SPS (0801199318286)
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318105','0801199318286',2,1,2021,2,2,2);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318106','0801199318286',2,1,2021,2,2,2);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318286','0801199318286',2,1,2021,2,2,2);
COMMIT;

--Alcaldes LIBERAL 
-------------------TGU (0801199318287)
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318100','0801199318287',2,2,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318101','0801199318287',2,2,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318283','0801199318287',2,2,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318287','0801199318287',2,2,2021,1,1,1);
-------------------SPS (0801199318288)
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318102','0801199318288',2,2,2021,1,2,2);--corregir departamento
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318288','0801199318288',2,2,2021,1,2,2);--
-------------------juticalpa (0801199318288)
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318103','0801199318283',2,2,2021,1,1,3);--pendiente de ejecutar porque falta candidato para esa mesa
COMMIT;
select * from partidos


--Alcalde LIBRE
-------------------TGU (0801199318289)
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318107','0801199318289',2,3,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318108','0801199318289',2,3,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318109','0801199318289',2,3,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318113','0801199318289',2,3,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318284','0801199318289',2,3,2021,1,1,1);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318289','0801199318289',2,3,2021,1,1,1);
-----------------SPS (0801199318290)
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318110','0801199318290',2,3,2021,2,2,2);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318111','0801199318290',2,3,2021,2,2,2);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318112','0801199318290',2,3,2021,2,2,2);
INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa) VALUES(secuencia_votos.nextval,'0801199318290','0801199318290',2,3,2021,2,2,2);

COMMIT;
select * from VOTOS;
--obteniene los votos por presidente
SELECT usuarios.nombre,count(votos.candidato) as total FROM votos INNER JOIN usuarios ON votos.candidato= usuarios.id where votos.tipo_candidatura=1 GROUP BY usuarios.nombre;
--obtiene votos por alcalde y municipio
select concat(concat(nombre,' ['),concat(municipio,' ]'))as candidato,total from vista_resultados_alcaldes order by municipio;
select * from vista_resultados_alcaldes;
SELECT usuarios.nombre,votos.municipio ,count(usuarios.nombre) as total FROM votos INNER JOIN usuarios ON votos.candidato= usuarios.id where votos.tipo_candidatura=2 group by usuarios.nombre,votos.municipio having MAX(total);
select * from partidos where estado=1;
update partidos set logo='imagenes/libre.png' where id=3;

update usuarios set voto=0 where id='0801199318270';

--__________________________________________--
--CREDENCIALES
----------------------------------------------
usuario administror: 0801199318270
clave: pepe

usuario miembro mesa: 0801199318271
clave: pepe

usuario magistrado: 0801199318281
clave: pepe

usuario elector: 0801199318290
clave: pepe

paneles habilitados unicamente administrador:
--------------------------------------------------
partidos politicos : ya lee pero aun no guarda.
todos ya imprimen pdf
mesas electorales , ya accede a mapa y muestra las mesas electorales


select id from usuarios where mesa=1 and rol =2;
