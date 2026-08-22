-- Generado por Oracle SQL Developer Data Modeler 24.3.1.351.0831
--   en:        2026-08-17 11:06:32 CST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE BITACORA 
    ( 
     id_bitacora              UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL , 
     id_colocacion            UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     correlativo              UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     anio                     UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     mes                      UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     fecha                    UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     horas_trabajadas         UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     actividades_realizadas   UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     observaciones            UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     COLOCACION_id_colocacion UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL 
    ) 
;

ALTER TABLE BITACORA 
    ADD CONSTRAINT BITACORA_PK PRIMARY KEY ( id_bitacora ) ;

CREATE TABLE CATEDRATICO 
    ( 
     id_catedratico         UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL , 
     id_instituto           UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     nombre                 UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     identificacion         UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     telefono               UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     especialidad           UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     INSTITUTO_id_instituto UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL 
    ) 
;

ALTER TABLE CATEDRATICO 
    ADD CONSTRAINT CATEDRATICO_PK PRIMARY KEY ( id_catedratico ) ;

CREATE TABLE COLOCACION 
    ( 
     id_colocacion              UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL , 
     id_estudiante              UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     id_plaza                   UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     id_catedratico             UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     fecha_inicio               UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     fecha_fin                  UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     estado                     UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     CATEDRATICO_id_catedratico UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL , 
     ESTUDIANTE_id_estudiante   UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL , 
     PLAZA_id_plaza             UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL 
    ) 
;

ALTER TABLE COLOCACION 
    ADD CONSTRAINT COLOCACION_PK PRIMARY KEY ( id_colocacion ) ;

CREATE TABLE CONTACTO_EMPRESARIAL 
    ( 
     id_contacto        UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL , 
     id_empresa         UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     nombre             UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     telefono           UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     correo             UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     EMPRESA_id_empresa UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL 
    ) 
;

ALTER TABLE CONTACTO_EMPRESARIAL 
    ADD CONSTRAINT CONTACTO_EMPRESARIAL_PK PRIMARY KEY ( id_contacto ) ;

CREATE TABLE CROTERIO_EVALUACION 
    ( 
     id_evaluacino            UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL , 
     id_criterio              UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     puntuacion               UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     EVALUACION_id_evaluacion UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL 
    ) 
;

ALTER TABLE CROTERIO_EVALUACION 
    ADD CONSTRAINT CROTERIO_EVALUACION_PK PRIMARY KEY ( id_evaluacino, EVALUACION_id_evaluacion ) ;

CREATE TABLE EMPRESA 
    ( 
     id_empresa       UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL , 
     nombre           UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     direccion        UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     sector_economico UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    
    ) 
;

ALTER TABLE EMPRESA 
    ADD CONSTRAINT EMPRESA_PK PRIMARY KEY ( id_empresa ) ;

CREATE TABLE ESTUDIANTE 
    ( 
     id_estudiante    UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL , 
     carnet           UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     nombre_completo  UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     carrera_tecnica  UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     direccion        UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     telefono         UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     fecha_nacimiento UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     genero           UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     departamento     UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     municipio        UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     es_repitencia    UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    
    ) 
;

ALTER TABLE ESTUDIANTE 
    ADD CONSTRAINT ESTUDIANTE_PK PRIMARY KEY ( id_estudiante ) ;

CREATE TABLE EVALUACION 
    ( 
     id_evaluacion            UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL , 
     id_colocacion            UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     tipo_evaluacion          UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     fecha_evaluacion         UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     COLOCACION_id_colocacion UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL 
    ) 
;

ALTER TABLE EVALUACION 
    ADD CONSTRAINT EVALUACION_PK PRIMARY KEY ( id_evaluacion ) ;

CREATE TABLE EVALUACION_DE_CRITERIO 
    ( 
     id_criterio              UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL , 
     nombre_criterio          UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     descripcion              UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     EVALUACION_id_evaluacion UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL 
    ) 
;

ALTER TABLE EVALUACION_DE_CRITERIO 
    ADD CONSTRAINT EVALUACION_DE_CRITERIO_PK PRIMARY KEY ( id_criterio, EVALUACION_id_evaluacion ) ;

CREATE TABLE INSTITUTO 
    ( 
     id_instituto   UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL , 
     nombre         UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     direccion      UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     codigo_mineduc UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    
    ) 
;

ALTER TABLE INSTITUTO 
    ADD CONSTRAINT INSTITUTO_PK PRIMARY KEY ( id_instituto ) ;

CREATE TABLE PLAZA 
    ( 
     id_plaza                         UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL , 
     id_contacto                      UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     especialidad_tecnica             UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
     descripcion                      UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                    , 
--  ERROR: Column name length exceeds maximum allowed length(30) 
     CONTACTO_EMPRESARIAL_id_contacto UNKNOWN 
--  ERROR: Datatype UNKNOWN is not allowed 
                     NOT NULL 
    ) 
;

ALTER TABLE PLAZA 
    ADD CONSTRAINT PLAZA_PK PRIMARY KEY ( id_plaza ) ;

ALTER TABLE BITACORA 
    ADD CONSTRAINT BITACORA_COLOCACION_FK FOREIGN KEY 
    ( 
     COLOCACION_id_colocacion
    ) 
    REFERENCES COLOCACION 
    ( 
     id_colocacion
    ) 
;

ALTER TABLE CATEDRATICO 
    ADD CONSTRAINT CATEDRATICO_INSTITUTO_FK FOREIGN KEY 
    ( 
     INSTITUTO_id_instituto
    ) 
    REFERENCES INSTITUTO 
    ( 
     id_instituto
    ) 
;

ALTER TABLE COLOCACION 
    ADD CONSTRAINT COLOCACION_CATEDRATICO_FK FOREIGN KEY 
    ( 
     CATEDRATICO_id_catedratico
    ) 
    REFERENCES CATEDRATICO 
    ( 
     id_catedratico
    ) 
;

ALTER TABLE COLOCACION 
    ADD CONSTRAINT COLOCACION_ESTUDIANTE_FK FOREIGN KEY 
    ( 
     ESTUDIANTE_id_estudiante
    ) 
    REFERENCES ESTUDIANTE 
    ( 
     id_estudiante
    ) 
;

ALTER TABLE COLOCACION 
    ADD CONSTRAINT COLOCACION_PLAZA_FK FOREIGN KEY 
    ( 
     PLAZA_id_plaza
    ) 
    REFERENCES PLAZA 
    ( 
     id_plaza
    ) 
;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE CONTACTO_EMPRESARIAL 
    ADD CONSTRAINT CONTACTO_EMPRESARIAL_EMPRESA_FK FOREIGN KEY 
    ( 
     EMPRESA_id_empresa
    ) 
    REFERENCES EMPRESA 
    ( 
     id_empresa
    ) 
;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE CROTERIO_EVALUACION 
    ADD CONSTRAINT CROTERIO_EVALUACION_EVALUACION_FK FOREIGN KEY 
    ( 
     EVALUACION_id_evaluacion
    ) 
    REFERENCES EVALUACION 
    ( 
     id_evaluacion
    ) 
;

ALTER TABLE EVALUACION 
    ADD CONSTRAINT EVALUACION_COLOCACION_FK FOREIGN KEY 
    ( 
     COLOCACION_id_colocacion
    ) 
    REFERENCES COLOCACION 
    ( 
     id_colocacion
    ) 
;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE EVALUACION_DE_CRITERIO 
    ADD CONSTRAINT EVALUACION_DE_CRITERIO_EVALUACION_FK FOREIGN KEY 
    ( 
     EVALUACION_id_evaluacion
    ) 
    REFERENCES EVALUACION 
    ( 
     id_evaluacion
    ) 
;

ALTER TABLE PLAZA 
    ADD CONSTRAINT PLAZA_CONTACTO_EMPRESARIAL_FK FOREIGN KEY 
    ( 
     CONTACTO_EMPRESARIAL_id_contacto
    ) 
    REFERENCES CONTACTO_EMPRESARIAL 
    ( 
     id_contacto
    ) 
;



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            11
-- CREATE INDEX                             0
-- ALTER TABLE                             21
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
-- ERRORS                                  74
-- WARNINGS                                 0
