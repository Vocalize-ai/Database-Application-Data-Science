-- Gerado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   em:        2023-05-19 21:54:56 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE t_vt_cliente (
    id_cliente   NUMBER(8) NOT NULL,
    nm_cliente   VARCHAR2(120) NOT NULL,
    nr_cpf       VARCHAR2(11) NOT NULL,
    dt_cadastro  DATE NOT NULL
);

COMMENT ON COLUMN t_vt_cliente.id_cliente IS
    'Esse atributo � a chave prim�ria do cliente gerada autom�ticamente.Seu conte�do � obrig�torio.';

COMMENT ON COLUMN t_vt_cliente.nm_cliente IS
    'Esse atributo ir� receber o email do cliente. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_cliente.nr_cpf IS
    'Esse atributo ir� receber o n�mero do cpf do cliente �nico e exclusivo. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_cliente.dt_cadastro IS
    'Esse atributo ir� receber a data de cadastro do cliente, gerado automaticamente pelo sistema. Seu conte�do � obrigat�rio.';

ALTER TABLE t_vt_cliente ADD CONSTRAINT t_vt_cliente_pk PRIMARY KEY ( id_cliente );

ALTER TABLE t_vt_cliente ADD CONSTRAINT t_vt_cliente_nr_cpf_un UNIQUE ( nr_cpf );

CREATE TABLE t_vt_fatura (
    id_fatura          NUMBER(8) NOT NULL,
    id_cliente         NUMBER(8) NOT NULL,
    id_tipo_pagamento  NUMBER(8) NOT NULL,
    id_itens_fatura    NUMBER(8) NOT NULL,
    vlr_fatura         NUMBER(10, 2) NOT NULL,
    dt_vencimento      DATE NOT NULL,
    dt_pagamento       DATE NOT NULL
);

COMMENT ON COLUMN t_vt_fatura.id_fatura IS
    'Esse atributo � a chave prim�ria da fatura gerada autom�ticamente.Seu conte�do � obrig�torio.';

COMMENT ON COLUMN t_vt_fatura.id_tipo_pagamento IS
    'Esse atributo � a chave prim�ria do tipo de pagamento gerada autom�ticamente.Seu conte�do � obrig�torio.';

COMMENT ON COLUMN t_vt_fatura.id_itens_fatura IS
    'Esse atributo � a chave prim�ria dos itens da fatura,  gerada autom�ticamente.Seu conte�do � obrig�torio.';

COMMENT ON COLUMN t_vt_fatura.vlr_fatura IS
    'Esse atributo ir� receber o valor total da fatura. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_fatura.dt_vencimento IS
    'Esse atributo ir� receber a data de vencimento da fatura. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_fatura.dt_pagamento IS
    'Esse atributo ir� receber a data de pagamento da fatura. Seu conte�do � obrigat�rio.';

CREATE INDEX t_vt_fatura_cliente_idx ON
    t_vt_fatura (
        id_cliente
    ASC );

CREATE INDEX t_vt_fatura_itens_fatura_idx ON
    t_vt_fatura (
        id_itens_fatura
    ASC );

CREATE INDEX t_vt_fatura_tp_pagt_idx ON
    t_vt_fatura (
        id_tipo_pagamento
    ASC );

ALTER TABLE t_vt_fatura ADD CONSTRAINT t_vt_fatura_pk PRIMARY KEY ( id_fatura );

CREATE TABLE t_vt_itens_fat_serv_add (
    id_itens_fatura       NUMBER(8) NOT NULL,
    id_servico_adicional  NUMBER(8) NOT NULL
);

COMMENT ON COLUMN t_vt_itens_fat_serv_add.id_itens_fatura IS
    'Esse atributo � a chave prim�ria dos itens da fatura,  gerada autom�ticamente.Seu conte�do � obrig�torio.';

COMMENT ON COLUMN t_vt_itens_fat_serv_add.id_servico_adicional IS
    'Esse atributo � a chave prim�ria do servico gerada autom�ticamente.Seu conte�do � obrig�torio.';

CREATE TABLE t_vt_itens_fatura (
    id_itens_fatura     NUMBER(8) NOT NULL,
    id_plano            NUMBER(8) NOT NULL,
    st_item             CHAR(1) NOT NULL,
    dt_item_adicionado  DATE NOT NULL
);

COMMENT ON COLUMN t_vt_itens_fatura.id_itens_fatura IS
    'Esse atributo � a chave prim�ria dos itens da fatura,  gerada autom�ticamente.Seu conte�do � obrig�torio.';

COMMENT ON COLUMN t_vt_itens_fatura.id_plano IS
    'Esse atributo � a chave prim�ria do plano gerada autom�ticamente.Seu conte�do � obrig�torio.';

COMMENT ON COLUMN t_vt_itens_fatura.st_item IS
    'Esse atributo ir� receber A(Ativo) ou I(Inativo) para identificar o status do item contratado. Seu conte�so � obrigat�rio.';

COMMENT ON COLUMN t_vt_itens_fatura.dt_item_adicionado IS
    'Esse atributo ir� receber a date em que o item do plano foi adicionado , ser� preenchida  autom�ticamente.Seu conte�do � obrig�torio.';

CREATE INDEX t_vt_itens_fatura_plano_idx ON
    t_vt_itens_fatura (
        id_plano
    ASC );

ALTER TABLE t_vt_itens_fatura ADD CONSTRAINT t_vt_itens_fatura_pk PRIMARY KEY ( id_itens_fatura );

CREATE TABLE t_vt_login (
    id_login         NUMBER(8) NOT NULL,
    id_cliente       NUMBER(8) NOT NULL,
    ds_email         VARCHAR2(80) NOT NULL,
    ds_senha         VARCHAR2(20) NOT NULL,
    dt_ultimo_login  DATE NOT NULL
);

COMMENT ON COLUMN t_vt_login.id_login IS
    'Esse atributo � a chave prim�ria do login do cliente gerada autom�ticamente.Seu conte�do � obrig�torio.';

COMMENT ON COLUMN t_vt_login.id_cliente IS
    'Esse atributo � a chave prim�ria do cliente gerada autom�ticamente.Seu conte�do � obrig�torio.';

COMMENT ON COLUMN t_vt_login.ds_email IS
    'Esse atributo ir� receber o email do login do cliente �nico e exclusivio. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_login.ds_senha IS
    'Esse atributo ir� receber a senha do login do cliente. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_login.dt_ultimo_login IS
    'Esse atributo ir� receber a data do �ltimo login do cliente, gerada autom�ticamente pelo sistema. Seu conte�do � obrigat�rio.';

CREATE UNIQUE INDEX t_vt_login_cliente_idx ON
    t_vt_login (
        id_cliente
    ASC );

ALTER TABLE t_vt_login ADD CONSTRAINT t_vt_login_pk PRIMARY KEY ( id_login );

ALTER TABLE t_vt_login ADD CONSTRAINT t_vt_login_ds_email_un UNIQUE ( ds_email );

CREATE TABLE t_vt_plano (
    id_plano               NUMBER(8) NOT NULL,
    nm_plano               VARCHAR2(40) NOT NULL,
    qtd_franquia_minutos   NUMBER(5) NOT NULL,
    qtd_franquia_internet  NUMBER(4) NOT NULL,
    vlr_mensal             NUMBER(10, 2) NOT NULL,
    ds_plano               VARCHAR2(60) NOT NULL
);

COMMENT ON COLUMN t_vt_plano.id_plano IS
    'Esse atributo � a chave prim�ria do plano gerada autom�ticamente.Seu conte�do � obrig�torio.';

COMMENT ON COLUMN t_vt_plano.nm_plano IS
    'Esse atributo ir� receber o nome do plano. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_plano.qtd_franquia_minutos IS
    'Esse atributo ir� receber a quantidade de minutos da franquia  do plano. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_plano.qtd_franquia_internet IS
    'Esse atributo ir� receber a quantidade de internet da franquia  do plano. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_plano.vlr_mensal IS
    'Esse atributo ir� receber o valor mensal  do plano. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_plano.ds_plano IS
    'Esse atributo ir� receber a descri��o do plano. Seu conte�do � obrigat�rio.';

ALTER TABLE t_vt_plano ADD CONSTRAINT t_vt_plano_pk PRIMARY KEY ( id_plano );

CREATE TABLE t_vt_servico_adicional (
    id_servico_adicional  NUMBER(8) NOT NULL,
    nm_servico            VARCHAR2(40) NOT NULL,
    vlr_servico           NUMBER(10, 2) NOT NULL,
    ds_servico_adicional  VARCHAR2(60) NOT NULL
);

COMMENT ON COLUMN t_vt_servico_adicional.id_servico_adicional IS
    'Esse atributo � a chave prim�ria do servico gerada autom�ticamente.Seu conte�do � obrig�torio.';

COMMENT ON COLUMN t_vt_servico_adicional.nm_servico IS
    'Esse atributo ir� receber o nome do servico adicional. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_servico_adicional.vlr_servico IS
    'Esse atributo ir� receber o valor do servico adicional. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_servico_adicional.ds_servico_adicional IS
    'Esse atributo ir� receber a descri��o do servico adicional. Seu conte�do � obrigat�rio.';

ALTER TABLE t_vt_servico_adicional ADD CONSTRAINT t_vt_servico_adicional_pk PRIMARY KEY ( id_servico_adicional );

CREATE TABLE t_vt_telefone_contato (
    id_telefone_contato  NUMBER(8) NOT NULL,
    id_cliente           NUMBER(8) NOT NULL,
    nr_ddd               VARCHAR2(2) NOT NULL,
    nr_telefone          VARCHAR2(10) NOT NULL
);

COMMENT ON COLUMN t_vt_telefone_contato.id_telefone_contato IS
    'Esse atributo � a chave prim�ria do telefone de contato do cliente  gerada autom�ticamente.Seu conte�do � obrig�torio.';

COMMENT ON COLUMN t_vt_telefone_contato.id_cliente IS
    'Esse atributo � a chave prim�ria do cliente gerada autom�ticamente.Seu conte�do � obrig�torio.';

COMMENT ON COLUMN t_vt_telefone_contato.nr_ddd IS
    'Esse atributo ir� receber o n�mero do DDD do cliente. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_telefone_contato.nr_telefone IS
    'Esse atributo ir� receber o n�mero do telefone do cliente �nico e exclusivo. Seu conte�do � obrigat�rio.';

CREATE INDEX t_vt_tel_contato_cliente_idx ON
    t_vt_telefone_contato (
        id_cliente
    ASC );

ALTER TABLE t_vt_telefone_contato ADD CONSTRAINT t_vt_telefone_contato_pk PRIMARY KEY ( id_telefone_contato );

ALTER TABLE t_vt_telefone_contato ADD CONSTRAINT t_vt_tel_contato_nr_tel_un UNIQUE ( nr_telefone );

CREATE TABLE t_vt_tipo_pagamento (
    id_tipo_pagamento  NUMBER(8) NOT NULL,
    nm_tipo_pagamento  VARCHAR2(50) NOT NULL,
    ds_tipo_pagamento  VARCHAR2(80)
);

COMMENT ON COLUMN t_vt_tipo_pagamento.id_tipo_pagamento IS
    'Esse atributo � a chave prim�ria do tipo de pagamento gerada autom�ticamente.Seu conte�do � obrig�torio.';

COMMENT ON COLUMN t_vt_tipo_pagamento.nm_tipo_pagamento IS
    'Esse atributo ir� receber o nome do tipo de pagamento. Seu conte�do � obrigat�rio.';

COMMENT ON COLUMN t_vt_tipo_pagamento.ds_tipo_pagamento IS
    'Esse atributo ir� receber a descri��o do tipo de pagamento. Seu conte�do � opcional.';

ALTER TABLE t_vt_tipo_pagamento ADD CONSTRAINT t_vt_tipo_pagamento_pk PRIMARY KEY ( id_tipo_pagamento );

ALTER TABLE t_vt_fatura
    ADD CONSTRAINT t_vt_fatura_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES t_vt_cliente ( id_cliente );

ALTER TABLE t_vt_fatura
    ADD CONSTRAINT t_vt_fatura_itens_fatura_fk FOREIGN KEY ( id_itens_fatura )
        REFERENCES t_vt_itens_fatura ( id_itens_fatura );

ALTER TABLE t_vt_fatura
    ADD CONSTRAINT t_vt_fatura_tipo_pagamento_fk FOREIGN KEY ( id_tipo_pagamento )
        REFERENCES t_vt_tipo_pagamento ( id_tipo_pagamento );

ALTER TABLE t_vt_itens_fat_serv_add
    ADD CONSTRAINT t_vt_it_fat_sv_add_it_ft_fk FOREIGN KEY ( id_itens_fatura )
        REFERENCES t_vt_itens_fatura ( id_itens_fatura );

ALTER TABLE t_vt_itens_fat_serv_add
    ADD CONSTRAINT t_vt_it_ft_sv_add_sv_ad_fk FOREIGN KEY ( id_servico_adicional )
        REFERENCES t_vt_servico_adicional ( id_servico_adicional );

ALTER TABLE t_vt_itens_fatura
    ADD CONSTRAINT t_vt_itens_fatura_plano_fk FOREIGN KEY ( id_plano )
        REFERENCES t_vt_plano ( id_plano );

ALTER TABLE t_vt_login
    ADD CONSTRAINT t_vt_login_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES t_vt_cliente ( id_cliente );

ALTER TABLE t_vt_telefone_contato
    ADD CONSTRAINT t_vt_tel_contato_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES t_vt_cliente ( id_cliente );



-- Relat�rio do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             9
-- CREATE INDEX                             6
-- ALTER TABLE                             19
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
