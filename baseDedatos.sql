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
    voto        NUMBER DEFAULT ( 0 ) NOT NULL
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
    estado        NUMBER DEFAULT ( 1 ) NOT NULL,
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



--------------------------------------------------------
--VOTOSCOMMIT;
--------------------------------------------------------

CREATE TABLE VOTOS (
    id          NUMBER PRIMARY KEY,
    votante       VARCHAR2(30),
    candidato     VARCHAR2(30),
    fecha       DATE DEFAULT to_date(sysdate, 'DD-MM-YYYY'),
    tipo_candidatura         NUMBER,
    partido       NUMBER,
    anho         NUMBER,
    departamento  NUMBER,
    municipio NUMBER,
    mesa         NUMBER,
     CONSTRAINT votos_usuario_votante_fk FOREIGN KEY ( votante ) REFERENCES usuarios ( id ),
     CONSTRAINT votos_usuario_candidato_fk FOREIGN KEY ( candidato ) REFERENCES usuarios ( id ),
     CONSTRAINT votos_partido_fk FOREIGN KEY ( partido ) REFERENCES partidos ( id ),
     CONSTRAINT votos_departamento_fk FOREIGN KEY ( departamento ) REFERENCES departamentos ( id ),
     CONSTRAINT votos_municipio_fk FOREIGN KEY ( municipio ) REFERENCES municipios ( id )
        
);

CREATE SEQUENCE secuencia_votos START WITH 1 INCREMENT BY 1;

COMMIT;
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