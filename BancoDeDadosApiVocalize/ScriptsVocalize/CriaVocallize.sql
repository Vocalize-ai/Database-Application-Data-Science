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
    'Esse atributo irá receber a chave primária da do feedback da ligação do cliente, gerada automáticamente. Seu conteúdo é obrigatório.';

COMMENT ON COLUMN t_vocalize_feedback.id_ligacao IS
    'Esse atributo irá receber a chave primária da ligação, gerada automáticamente. Seu conteúdo é obrigatório.';

COMMENT ON COLUMN t_vocalize_feedback.nr_nivel_avaliacao IS
    'Esse atributo irá receber o número do nível de avaliação do feedback da ligação.Seu conteúdo é opcional.';

COMMENT ON COLUMN t_vocalize_feedback.ds_comentario IS
    'Esse atributo irá receber o comentário do feedback da ligação.Seu conteúdo é opcional.';

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
    'Esse atributo irá receber a chave primária da ligação, gerada automáticamente. Seu conteúdo é obrigatório.';

COMMENT ON COLUMN t_vocalize_ligacao.dt_ligacao IS
    'Esse atributo irá receber a data de ligação do cliente.Seu conteúdo é obrigatório.';

COMMENT ON COLUMN t_vocalize_ligacao.qtd_duracao IS
    'Esse atributo irá receber a quantidade de duração da ligação do cliente.Seu conteúdo é obrigatório.';

COMMENT ON COLUMN t_vocalize_ligacao.ds_trancricao_audio IS
    'Esse atributo irá receber a transcrição do aúdio da ligação do cliente.Seu conteúdo é obrigatório.';

COMMENT ON COLUMN t_vocalize_ligacao.ds_temperatura IS
    'Esse atributo irá receber a descriçaõ da temperatura da ligação do cliente.Seu conteúdo é obrigatório.';

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
    'Esse atributo é a chave primária do cliente gerada automáticamente.Seu conteúdo é obrigátorio.';

COMMENT ON COLUMN t_vt_cliente.nm_cliente IS
    'Esse atributo irá receber o email do cliente. Seu conteúdo é obrigatório.';

COMMENT ON COLUMN t_vt_cliente.nr_cpf IS
    'Esse atributo irá receber o número do cpf do cliente. Seu conteúdo é obrigatório.';

COMMENT ON COLUMN t_vt_cliente.ds_email IS
    'Esse atributo irá receber a descrição  do email  do cliente. Seu conteúdo é obrigatório.';

COMMENT ON COLUMN t_vt_cliente.nr_ddd IS
    'Esse atributo irá receber o número do ddd  do cliente. Seu conteúdo é obrigatório.';

COMMENT ON COLUMN t_vt_cliente.nr_telefone IS
    'Esse atributo irá receber o número dtelefonee  do cliente. Seu conteúdo é obrigatório.';

COMMENT ON COLUMN t_vt_cliente.dt_atendimento IS
    'Esse atributo irá receber a data de atendimento do cliente, gerado automaticamente pelo sistema. Seu conteúdo é obrigatório.';

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



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
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
