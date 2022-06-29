-- Gerado por Oracle SQL Developer Data Modeler 21.4.1.349.1605
--   em:        2022-05-23 20:02:46 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE banco (
    cd_banco           NUMBER(1) NOT NULL,
    usuario_cd_usuario NUMBER(10) NOT NULL,
    nm_banco           VARCHAR2(25) NOT NULL,
    nr_agencia         NUMBER(4) NOT NULL,
    nr_conta           NUMBER(8) NOT NULL
);

ALTER TABLE banco ADD CONSTRAINT banco_pk PRIMARY KEY ( usuario_cd_usuario,
                                                        cd_banco );

CREATE TABLE categoria (
    cd_categoria              NUMBER(5) NOT NULL,
    gastar_ds_gasto           VARCHAR2(25) NOT NULL,
    gastar_usuario_cd_usuario NUMBER(10) NOT NULL,
    ds_categoria              VARCHAR2(20) NOT NULL
);

ALTER TABLE categoria
    ADD CONSTRAINT categoria_pk PRIMARY KEY ( cd_categoria,
                                              gastar_ds_gasto,
                                              gastar_usuario_cd_usuario );

CREATE TABLE celular (
    nr_celular         NUMBER(15) NOT NULL,
    usuario_cd_usuario NUMBER(10) NOT NULL,
    nr_ddd             NUMBER(2) NOT NULL,
    nr_ddi             NUMBER(4) NOT NULL
);

CREATE UNIQUE INDEX celular__idx ON
    celular (
        usuario_cd_usuario
    ASC );

ALTER TABLE celular ADD CONSTRAINT celular_pk PRIMARY KEY ( nr_celular );

CREATE TABLE cidade (
    cd_cidade          NUMBER(4) NOT NULL,
    usuario_cd_usuario NUMBER(10) NOT NULL,
    estado_cd_estado   NUMBER(4) NOT NULL,
    nm_cidade          VARCHAR2(25) NOT NULL
);

CREATE UNIQUE INDEX cidade__idx ON
    cidade (
        usuario_cd_usuario
    ASC );

CREATE UNIQUE INDEX cidade__idxv1 ON
    cidade (
        estado_cd_estado
    ASC );

ALTER TABLE cidade ADD CONSTRAINT cidade_pk PRIMARY KEY ( cd_cidade );

CREATE TABLE estado (
    cd_estado        NUMBER(4) NOT NULL,
    cidade_cd_cidade NUMBER(4) NOT NULL,
    nm_estado        VARCHAR2(25) NOT NULL
);

CREATE UNIQUE INDEX estado__idx ON
    estado (
        cidade_cd_cidade
    ASC );

ALTER TABLE estado ADD CONSTRAINT estado_pk PRIMARY KEY ( cd_estado );

CREATE TABLE gastar (
    ds_gasto           VARCHAR2(25) NOT NULL,
    usuario_cd_usuario NUMBER(10) NOT NULL,
    qtd_gasto          NUMBER(5) NOT NULL,
    dt_gasto           DATE NOT NULL,
    vl_gasto           NUMBER(5) NOT NULL
);

ALTER TABLE gastar ADD CONSTRAINT gastar_pk PRIMARY KEY ( ds_gasto,
                                                          usuario_cd_usuario );

CREATE TABLE genero (
    cd_genero          NUMBER(2) NOT NULL,
    usuario_cd_usuario NUMBER(10) NOT NULL,
    ds_genero          VARCHAR2(15) NOT NULL
);

CREATE UNIQUE INDEX genero__idx ON
    genero (
        usuario_cd_usuario
    ASC );

ALTER TABLE genero ADD CONSTRAINT genero_pk PRIMARY KEY ( cd_genero );

CREATE TABLE login (
    ds_email           VARCHAR2(70) NOT NULL,
    usuario_cd_usuario NUMBER(10) NOT NULL,
    nr_senha           VARCHAR2(8) NOT NULL
);

CREATE UNIQUE INDEX login__idx ON
    login (
        usuario_cd_usuario
    ASC );

ALTER TABLE login ADD CONSTRAINT login_pk PRIMARY KEY ( ds_email );

CREATE TABLE tipo_conta (
    cd_conta_bancaria        NUMBER(1) NOT NULL,
    banco_usuario_cd_usuario NUMBER(10) NOT NULL,
    banco_cd_banco           NUMBER(1) NOT NULL,
    ds_conta_bancaria        VARCHAR2(25) NOT NULL
);

ALTER TABLE tipo_conta
    ADD CONSTRAINT tipo_conta_pk PRIMARY KEY ( cd_conta_bancaria,
                                               banco_usuario_cd_usuario,
                                               banco_cd_banco );

CREATE TABLE usuario (
    cd_usuario         NUMBER(10) NOT NULL,
    celular_nr_celular NUMBER(15) NOT NULL,
    cidade_cd_cidade   NUMBER(4) NOT NULL,
    login_ds_email     VARCHAR2(70) NOT NULL,
    nm_usuario         VARCHAR2(50) NOT NULL,
    ds_email           VARCHAR2(70) NOT NULL,
    genero_cd_genero   NUMBER(2) NOT NULL
);

CREATE UNIQUE INDEX usuario__idx ON
    usuario (
        genero_cd_genero
    ASC );

CREATE UNIQUE INDEX usuario__idxv1 ON
    usuario (
        cidade_cd_cidade
    ASC );

CREATE UNIQUE INDEX usuario__idxv2 ON
    usuario (
        login_ds_email
    ASC );

CREATE UNIQUE INDEX usuario__idxv3 ON
    usuario (
        celular_nr_celular
    ASC );

ALTER TABLE usuario ADD CONSTRAINT usuario_pk PRIMARY KEY ( cd_usuario );

ALTER TABLE banco
    ADD CONSTRAINT banco_usuario_fk FOREIGN KEY ( usuario_cd_usuario )
        REFERENCES usuario ( cd_usuario );

ALTER TABLE categoria
    ADD CONSTRAINT categoria_gastar_fk FOREIGN KEY ( gastar_ds_gasto,
                                                     gastar_usuario_cd_usuario )
        REFERENCES gastar ( ds_gasto,
                            usuario_cd_usuario );

ALTER TABLE celular
    ADD CONSTRAINT celular_usuario_fk FOREIGN KEY ( usuario_cd_usuario )
        REFERENCES usuario ( cd_usuario );

ALTER TABLE cidade
    ADD CONSTRAINT cidade_estado_fk FOREIGN KEY ( estado_cd_estado )
        REFERENCES estado ( cd_estado );

ALTER TABLE cidade
    ADD CONSTRAINT cidade_usuario_fk FOREIGN KEY ( usuario_cd_usuario )
        REFERENCES usuario ( cd_usuario );

ALTER TABLE estado
    ADD CONSTRAINT estado_cidade_fk FOREIGN KEY ( cidade_cd_cidade )
        REFERENCES cidade ( cd_cidade );

ALTER TABLE gastar
    ADD CONSTRAINT gastar_usuario_fk FOREIGN KEY ( usuario_cd_usuario )
        REFERENCES usuario ( cd_usuario );

ALTER TABLE genero
    ADD CONSTRAINT genero_usuario_fk FOREIGN KEY ( usuario_cd_usuario )
        REFERENCES usuario ( cd_usuario );

ALTER TABLE login
    ADD CONSTRAINT login_usuario_fk FOREIGN KEY ( usuario_cd_usuario )
        REFERENCES usuario ( cd_usuario );

ALTER TABLE tipo_conta
    ADD CONSTRAINT tipo_conta_banco_fk FOREIGN KEY ( banco_usuario_cd_usuario,
                                                     banco_cd_banco )
        REFERENCES banco ( usuario_cd_usuario,
                           cd_banco );

ALTER TABLE usuario
    ADD CONSTRAINT usuario_celular_fk FOREIGN KEY ( celular_nr_celular )
        REFERENCES celular ( nr_celular );

ALTER TABLE usuario
    ADD CONSTRAINT usuario_cidade_fk FOREIGN KEY ( cidade_cd_cidade )
        REFERENCES cidade ( cd_cidade );

ALTER TABLE usuario
    ADD CONSTRAINT usuario_genero_fk FOREIGN KEY ( genero_cd_genero )
        REFERENCES genero ( cd_genero );

ALTER TABLE usuario
    ADD CONSTRAINT usuario_login_fk FOREIGN KEY ( login_ds_email )
        REFERENCES login ( ds_email );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            10
-- CREATE INDEX                            10
-- ALTER TABLE                             24
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
