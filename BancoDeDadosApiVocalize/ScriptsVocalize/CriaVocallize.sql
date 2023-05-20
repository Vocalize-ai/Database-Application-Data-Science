-- Gerado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   em:        2023-05-20 15:18:33 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE t_vocalize_feedback (
    id_feedback         NUMBER(8) NOT NULL,
    id_ligacao          NUMBER(8) NOT NULL,
    nr_nivel_avaliacao  NUMBER(2),
    ds_comentario       VARCHAR2(100)
);

COMMENT ON COLUMN t_vocalize_feedback.id_feedback IS
    'Esse atributo ir� receber a chave prim�ria da do feedback da liga��o do cliente, gerada autom�ticamente. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vocalize_feedback.id_ligacao IS
    'Esse atributo ir� receber a chave prim�ria da liga��o, gerada autom�ticamente. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vocalize_feedback.nr_nivel_avaliacao IS
    'Esse atributo ir� receber o n�mero do n�vel de avalia��o do feedback da liga��o.Seu conte�do � opcional.';

COMMENT ON COLUMN t_vocalize_feedback.ds_comentario IS
    'Esse atributo ir� receber o coment�rio do feedback da liga��o.Seu conte�do � opcional.';

ALTER TABLE t_vocalize_feedback ADD CONSTRAINT t_vocalize_feedback_pk PRIMARY KEY ( id_feedback );

ALTER TABLE t_vocalize_feedback ADD CONSTRAINT t_vocalize_feedback_ligacao_un UNIQUE ( id_ligacao );

CREATE TABLE t_vocalize_ligacao (
    id_ligacao           NUMBER(8) NOT NULL,
    id_cliente           NUMBER(8) NOT NULL,
    dt_ligacao           DATE NOT NULL,
    qtd_duracao          NUMBER(4) NOT NULL,
    ds_trancricao_audio  VARCHAR2(200) NOT NULL,
    ds_temperatura       VARCHAR2(200) NOT NULL
);

COMMENT ON COLUMN t_vocalize_ligacao.id_ligacao IS
    'Esse atributo ir� receber a chave prim�ria da liga��o, gerada autom�ticamente. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vocalize_ligacao.dt_ligacao IS
    'Esse atributo ir� receber a data de liga��o do cliente.Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vocalize_ligacao.qtd_duracao IS
    'Esse atributo ir� receber a quantidade de dura��o da liga��o do cliente.Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vocalize_ligacao.ds_trancricao_audio IS
    'Esse atributo ir� receber a transcri��o do a�dio da liga��o do cliente.Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vocalize_ligacao.ds_temperatura IS
    'Esse atributo ir� receber a descri�a� da temperatura da liga��o do cliente.Seu conte�do � obrigat�rio.';

CREATE INDEX t_vocalize_ligacao_cliente_idx ON
    t_vocalize_ligacao (
        id_cliente
    ASC );

ALTER TABLE t_vocalize_ligacao ADD CONSTRAINT t_vocalize_ligacao_pk PRIMARY KEY ( id_ligacao );

CREATE TABLE t_vt_cliente (
    id_cliente      NUMBER(8) NOT NULL,
    nm_cliente      VARCHAR2(120) NOT NULL,
    nr_cpf          VARCHAR2(11) NOT NULL,
    ds_email        VARCHAR2(80) NOT NULL,
    nr_ddd          VARCHAR2(2) NOT NULL,
    nr_telefone     VARCHAR2(9) NOT NULL,
    dt_atendimento  DATE NOT NULL
);

COMMENT ON COLUMN t_vt_cliente.id_cliente IS
    'Esse atributo � a chave prim�ria do cliente gerada autom�ticamente.Seu conte�do � obrig�torio.';

COMMENT ON COLUMN t_vt_cliente.nm_cliente IS
    'Esse atributo ir� receber o email do cliente. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_cliente.nr_cpf IS
    'Esse atributo ir� receber o n�mero do cpf do cliente. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_cliente.ds_email IS
    'Esse atributo ir� receber a descri��o  do email  do cliente. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_cliente.nr_ddd IS
    'Esse atributo ir� receber o n�mero do ddd  do cliente. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_cliente.nr_telefone IS
    'Esse atributo ir� receber o n�mero dtelefonee  do cliente. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_cliente.dt_atendimento IS
    'Esse atributo ir� receber a data de atendimento do cliente, gerado automaticamente pelo sistema. Seu conte�do � obrigat�rio.';

ALTER TABLE t_vt_cliente ADD CONSTRAINT t_vt_cliente_pk PRIMARY KEY ( id_cliente );

ALTER TABLE t_vt_cliente ADD CONSTRAINT t_vt_cliente_nr_cpf_un UNIQUE ( nr_cpf );

ALTER TABLE t_vt_cliente ADD CONSTRAINT t_vt_cliente_ds_email_un UNIQUE ( ds_email );

ALTER TABLE t_vt_cliente ADD CONSTRAINT t_vt_cliente_nr_telefone_un UNIQUE ( nr_telefone );

ALTER TABLE t_vocalize_feedback
    ADD CONSTRAINT t_vocalize_feedback_ligacao_fk FOREIGN KEY ( id_ligacao )
        REFERENCES t_vocalize_ligacao ( id_ligacao );

ALTER TABLE t_vocalize_ligacao
    ADD CONSTRAINT t_vocalize_ligacao_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES t_vt_cliente ( id_cliente );



-- Relat�rio do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             3
-- CREATE INDEX                             1
-- ALTER TABLE                              9
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
