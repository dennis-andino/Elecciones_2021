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
--------------------------------------------------------
--  TIPOS_CANDIDATURA
--------------------------------------------------------

CREATE TABLE tipo_candidatura (
    id      NUMBER PRIMARY KEY,
    nombre  VARCHAR2(40) NOT NULL,
    estado  NUMBER DEFAULT ( 1 ) NOT NULL
);

CREATE SEQUENCE secuencia_tipocand START WITH 1 INCREMENT BY 1;

COMMIT;

INSERT INTO tipo_candidatura VALUES (
    secuencia_tipocand.NEXTVAL,
    'Presidente',
    1
);

INSERT INTO tipo_candidatura VALUES (
    secuencia_tipocand.NEXTVAL,
    'Alcalde',
    1
);

INSERT INTO tipo_candidatura VALUES (
    secuencia_tipocand.NEXTVAL,
    'Diputado',
    1
);

COMMIT;
--------------------------------------------------------
--  PARTIDOS
--------------------------------------------------------

CREATE TABLE partidos (
    id           NUMBER PRIMARY KEY,
    nombre       VARCHAR2(40) NOT NULL,
    descripcion  VARCHAR2(1000) DEFAULT ( 'empty' ),
    logo         VARCHAR2(200) DEFAULT ( 'partidodefault.png' ) NOT NULL,
    estado       NUMBER DEFAULT ( 1 ) NOT NULL
);

CREATE SEQUENCE secuencia_partidos START WITH 1 INCREMENT BY 1;

COMMIT;

--------------------------------------------------------
--  DEPARTAMENTOS
--------------------------------------------------------

CREATE TABLE departamentos (
    id      NUMBER PRIMARY KEY,
    nombre  VARCHAR2(40)
)

CREATE SEQUENCE secuencia_departamentos START WITH 1 INCREMENT BY 1;

COMMIT;
--------------------------------------------------------
--  MUNICIPIOS
--------------------------------------------------------

CREATE TABLE municipios (
    id            NUMBER PRIMARY KEY,
    nombre        VARCHAR2(40),
    departamento  NUMBER NOT NULL,
    CONSTRAINT municipio_departamento_fk FOREIGN KEY ( departamento )
        REFERENCES departamentos ( id )
);

CREATE SEQUENCE secuencia_municipios START WITH 1 INCREMENT BY 1;

COMMIT;

select municipios.id,municipios.nombre as municipio,departamentos.nombre as departamento from municipios inner join departamentos 
on municipios.departamento=departamentos.id order by municipio;



--------------------------------------------------------
--  MESAS
--------------------------------------------------------

CREATE TABLE mesas (
    id            NUMBER PRIMARY KEY,
    descripcion   VARCHAR2(40),
    departamento  NUMBER NOT NULL,
    municipio     NUMBER NOT NULL,
    presidente    VARCHAR2(30) NOT NULL,
    secretario    VARCHAR2(30) NOT NULL,
    vocal         VARCHAR2(30) NOT NULL,
    estado        NUMBER DEFAULT ( 0 ) NOT NULL,
    latitud       VARCHAR2(50) NOT NULL,
    longitud      VARCHAR2(50) NOT NULL,
    CONSTRAINT mesa_usuario_presidente_fk FOREIGN KEY ( presidente )
        REFERENCES usuarios ( id ),
    CONSTRAINT mesa_usuario_secretario_fk FOREIGN KEY ( secretario )
        REFERENCES usuarios ( id ),
    CONSTRAINT mesa_usuario_vocal_fk FOREIGN KEY ( vocal )
        REFERENCES usuarios ( id ),
    CONSTRAINT mesa_departamento_fk FOREIGN KEY ( departamento )
        REFERENCES departamentos ( id ),
    CONSTRAINT mesa_municipio_fk FOREIGN KEY ( municipio )
        REFERENCES municipios ( id )
);
CREATE SEQUENCE secuencia_mesas START WITH 1 INCREMENT BY 1;

update mesas set latitud='14.1010715' where id=22;
update mesas set longitud='-87.2429908' where id=22;
COMMIT;
--update mesas set estado=0 where id=1;
--ALTER TABLE MESAS MODIFY estado NUMBER DEFAULT ( 0 );

--------------------------------------------------------
--  USUARIOS
--------------------------------------------------------
CREATE TABLE usuarios (
    id          VARCHAR2(30) PRIMARY KEY,
    clave       VARCHAR2(500),
    nombre      VARCHAR2(40),
    correo      VARCHAR2(100) DEFAULT ( 'empty' ),
    direccion   VARCHAR2(500) NOT NULL,
    telefono    VARCHAR2(30),
    fecha_nac   VARCHAR2(30),
    fotografia  VARCHAR2(200) DEFAULT ( 'userdefault.png' ),
    rol         NUMBER DEFAULT ( 0 ), /* 0-> elector , 1->admin, 2->miembro mesa, 3->magistrado*/
    mesa        NUMBER,
    voto        NUMBER DEFAULT ( 0 ) NOT NULL,
    CONSTRAINT usuario_mesa_fk FOREIGN KEY ( mesa )REFERENCES mesas ( id )
);

COMMIT;

select voto from usuarios where id='0801199318270';
SELECT
    concat('mesa #', concat(id, concat(' ', descripcion))) AS descripcion,latitud,longitud FROM mesas;

UPDATE USUARIOS SET voto=0 where id='0801199318270';
COMMIT;


UPDATE mesas SET latitud = '14.085602943187286',longitud = '-87.16213542432806' WHERE id = 1;
UPDATE mesas SET latitud = '15.530276492863548',longitud = '-88.03582577004546' WHERE id = 2;
UPDATE mesas SET latitud = '14.670931786791694', longitud = '-86.21037773026524' WHERE id = 3;
COMMIT;
--alter table mesas add longitud VARCHAR2(50) DEFAULT('-87.20476353990762') NOT NULL;
-- 14.085492644831433, -87.20476353990762




--------------------------------------------------------
--  PAPELETAS
--------------------------------------------------------

CREATE TABLE papeletas (
    id                NUMBER PRIMARY KEY,
    candidato         VARCHAR2(30),
    partido           NUMBER NOT NULL,
    tipo_candidatura  NUMBER NOT NULL,
    casilla           NUMBER NOT NULL,
    municipio         NUMBER DEFAULT ( 0 ) NOT NULL,
    departamento      NUMBER DEFAULT ( 0 ) NOT NULL,
    CONSTRAINT papeleta_usuarios_fk FOREIGN KEY ( candidato )
        REFERENCES usuarios ( id ),
    CONSTRAINT papeleta_partidos_fk FOREIGN KEY ( partido )
        REFERENCES partidos ( id ),
    CONSTRAINT papeleta_tipocand_fk FOREIGN KEY ( tipo_candidatura )
        REFERENCES tipo_candidatura ( id )
);

CREATE SEQUENCE secuencia_papaletas START WITH 1 INCREMENT BY 1;



select usuarios.id,usuarios.fotografia, usuarios.nombre, papeletas.casilla from papeletas inner join usuarios on papeletas.candidato=usuarios.id where papeletas.tipo_candidatura=2 and papeletas.municipio=1;
--presidentes
select usuarios.fotografia, usuarios.nombre, papeletas.casilla from papeletas inner join
usuarios on papeletas.candidato=usuarios.id where papeletas.tipo_candidatura=1 and papeletas.partido=1;

--alcaldes
select usuarios.fotografia, usuarios.nombre, papeletas.casilla from papeletas inner join
usuarios on papeletas.candidato=usuarios.id where papeletas.tipo_candidatura=2 and papeletas.partido=1;

--diputados
select usuarios.fotografia, usuarios.nombre, papeletas.casilla from papeletas inner join
usuarios on papeletas.candidato=usuarios.id where papeletas.tipo_candidatura=3 and papeletas.partido=1;

COMMIT;

--------------------------------------------------------
--PAPELETAS
--------------------------------------------------------



COMMIT;

SELECT
    partido,
    tipo_candidatura,
    COUNT(tipo_candidatura) AS total
FROM
    papeletas
GROUP BY
    partido,
    tipo_candidatura
ORDER BY
    partido,
    tipo_candidatura ASC;

SELECT
    *
FROM
    resumenpapeletas


select * from votos where tipo_candidatura=1 and partido=3;
select nombre from usuarios where id='0801199318285';
update votos set partido=3 where candidato='0801199318284'

select * from partidos;
select * from papeletas;

describe votos;
--------------------------------------------------------
--VOTOS
--------------------------------------------------------

CREATE TABLE votos (
    id                NUMBER PRIMARY KEY,
    votante           VARCHAR2(30),
    candidato         VARCHAR2(30),
    fecha             DATE DEFAULT to_date(sysdate, 'DD-MM-YYYY'),
    tipo_candidatura  NUMBER,
    partido           NUMBER,
    anho              NUMBER,
    departamento      NUMBER,
    municipio         NUMBER,
    mesa              NUMBER,
    CONSTRAINT votos_usuario_votante_fk FOREIGN KEY ( votante )
        REFERENCES usuarios ( id ),
    CONSTRAINT votos_usuario_candidato_fk FOREIGN KEY ( candidato )
        REFERENCES usuarios ( id ),
    CONSTRAINT votos_partido_fk FOREIGN KEY ( partido )
        REFERENCES partidos ( id ),
    CONSTRAINT votos_departamento_fk FOREIGN KEY ( departamento )
        REFERENCES departamentos ( id ),
    CONSTRAINT votos_municipio_fk FOREIGN KEY ( municipio )
        REFERENCES municipios ( id )
);
CREATE SEQUENCE secuencia_votos START WITH 1 INCREMENT BY 1;
COMMIT;

select m.nombre as municipio,u.nombre as candidato, count(*) as total from votos v inner join usuarios u on v.candidato=u.id
inner join municipios m on v.municipio=m.id where tipo_candidatura=2 group by m.nombre,u.nombre

select d.nombre as departamento,u.nombre as candidato, count(*) as total from votos v inner join usuarios u on v.candidato=u.id
inner join departamentos d on v.departamento=d.id where tipo_candidatura=3 group by d.nombre,u.nombre

select * from votos where tipo_candidatura=1 and departamento=1;

select U.nombre,count(U.nombre) as total from votos V inner join usuarios U on V.candidato=U.id  where V.tipo_candidatura=1 group by U.nombre ;

COMMIT;


INSERT INTO VOTOS(id,votante,candidato,tipo_candidatura,partido,anho,departamento,municipio,mesa)
VALUES(secuencia_votos.nextval,'0801199318270','0801199318293',1,(select partido from papeletas where candidato='0801199318293'),2020,1,1,1);



select * from votos
SELECT * FROM PAPELETAS;
SELECT partido,
    tipo_candidatura,
    COUNT(tipo_candidatura) AS total
FROM
    votos
GROUP BY
    partido,
    tipo_candidatura
ORDER BY
    partido;

SELECT
    *
FROM
    votos;



COMMIT;


--------------------------------------------------------
--VISTAS
--------------------------------------------------------
CREATE VIEW vista_login AS
select U.id,U.nombre,U.fotografia,U.rol,U.mesa,U.voto,M.departamento,M.municipio,U.clave,m.estado,m.descripcion from usuarios U inner join mesas M on U.mesa=M.id;
COMMIT;

CREATE VIEW vista_resultados_alcaldes AS
    SELECT
        usuarios.nombre,
        municipios.nombre    AS municipio,
        COUNT(*)             AS total
    FROM
             votos
        INNER JOIN usuarios ON votos.candidato = usuarios.id
        INNER JOIN municipios ON votos.municipio = municipios.id
    WHERE
        votos.tipo_candidatura = 2
    GROUP BY
        usuarios.nombre,
        municipios.nombre
    ORDER BY
        municipios.nombre;

CREATE VIEW resumenpapeletas AS
    SELECT
        partidos.id,
        partidos.nombre                      AS partido,
        tipo_candidatura.nombre              AS candidatura,
        COUNT(tipo_candidatura.nombre)       AS total
    FROM
             papeletas
        INNER JOIN partidos ON papeletas.partido = partidos.id
        INNER JOIN tipo_candidatura ON papeletas.tipo_candidatura = tipo_candidatura.id
    GROUP BY
        partidos.id,
        partidos.nombre,
        tipo_candidatura.nombre
    ORDER BY
        partidos.id,
        tipo_candidatura.nombre DESC;
        
CREATE VIEW vista_todas_mesas AS
    SELECT
        mesas.id,
        mesas.descripcion    AS ubicacion,
        pres.nombre          AS presidente,
        sec.nombre           AS secretario,
        voc.nombre           AS vocal,
        dep.nombre           AS departamento,
        mun.nombre           AS municipio,
        mesas.longitud,
        mesas.latitud,
        mesas.estado
    FROM
             mesas
        INNER JOIN usuarios       pres ON mesas.presidente = pres.id
        INNER JOIN usuarios       sec ON mesas.secretario = sec.id
        INNER JOIN usuarios       voc ON mesas.vocal = voc.id
        INNER JOIN departamentos  dep ON mesas.departamento = dep.id
        INNER JOIN municipios     mun ON mesas.municipio = mun.id
    ORDER BY
        mesas.id ASC
    
        select * from vista_todas_mesas;
        
        
        CREATE VIEW vista_presidente_dep AS
    SELECT
        concat(d.nombre, concat('(', concat(u.nombre, ')')))                     AS departamento,
        COUNT(*)                                                              AS total
    FROM
             votos v
        INNER JOIN usuarios       u ON v.candidato = u.id
        INNER JOIN departamentos  d ON v.departamento = d.id
    WHERE
        v.tipo_candidatura = 1
    GROUP BY
        u.nombre,
        d.nombre
    ORDER BY
        d.nombre,
        total DESC;
--------------------------------------------------------
--OTROS
--------------------------------------------------------

SELECT
    table_name
FROM
    user_tables;

SELECT
    column_name
FROM
    all_tab_columns
WHERE
    table_name = 'USUARIOS';
    
    ALTER TABLE papeletas ADD  municipio NUMBER DEFAULT ( 0 ) NOT NULL;
ALTER TABLE papeletas ADD  departamento NUMBER DEFAULT ( 0 ) NOT NULL;
ALTER TABLE usuarios ADD CONSTRAINT usuario_mesa_fk FOREIGN KEY ( mesa )REFERENCES mesas ( id );