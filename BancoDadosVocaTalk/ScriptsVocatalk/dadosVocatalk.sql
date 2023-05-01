-- Inserindo dados na tabela t_vt_cliente
INSERT INTO t_vt_cliente VALUES (1, 'João da Silva', '12345678901', TO_DATE('2019-10-10', 'YYYY-MM-DD'));
INSERT INTO t_vt_cliente VALUES (2, 'Maria Oliveira', '23456789012', TO_DATE('2020-01-10', 'YYYY-MM-DD'));
INSERT INTO t_vt_cliente VALUES (3, 'Pedro Souza', '34567890123', TO_DATE('2015-01-18', 'YYYY-MM-DD'));
INSERT INTO t_vt_cliente VALUES (4, 'Ana Pereira', '45678901234', TO_DATE('2019-09-19', 'YYYY-MM-DD'));
INSERT INTO t_vt_cliente VALUES (5, 'Lucas Santos', '56789012345', TO_DATE('2017-06-18', 'YYYY-MM-DD'));
INSERT INTO t_vt_cliente VALUES (6, 'Mariana Costa', '67890123456', TO_DATE('2018-01-10', 'YYYY-MM-DD'));
INSERT INTO t_vt_cliente VALUES (7, 'Gabriel Fernandes', '78901234567', TO_DATE('2019-01-10', 'YYYY-MM-DD'));
INSERT INTO t_vt_cliente VALUES (8, 'Carla Silva', '89012345678', TO_DATE('2018-04-23', 'YYYY-MM-DD'));
INSERT INTO t_vt_cliente VALUES (9, 'Rafaela Oliveira', '90123456789', TO_DATE('2022-11-10', 'YYYY-MM-DD'));
INSERT INTO t_vt_cliente VALUES (10, 'Daniel Santos', '01234567890', TO_DATE('2022-03-11', 'YYYY-MM-DD'));

-- Inserindo dados na tabela t_vt_telefone_contato
INSERT INTO t_vt_telefone_contato (id_telefone_contato, id_cliente, nr_ddd, nr_telefone, tp_contato)
VALUES (1, 1, '11', '98326-2722', 'Celular');

INSERT INTO t_vt_telefone_contato (id_telefone_contato, id_cliente, nr_ddd, nr_telefone, tp_contato)
VALUES (2, 2, '11', '99212-4299', 'Comercial');

INSERT INTO t_vt_telefone_contato (id_telefone_contato, id_cliente, nr_ddd, nr_telefone, tp_contato)
VALUES (3, 3, '13', '99905-7242', 'Celular');

INSERT INTO t_vt_telefone_contato (id_telefone_contato, id_cliente, nr_ddd, nr_telefone, tp_contato)
VALUES (4, 4, '15', '97138-8236', 'Residencial');

INSERT INTO t_vt_telefone_contato (id_telefone_contato, id_cliente, nr_ddd, nr_telefone, tp_contato)
VALUES (5, 5, '12', '98470-4329', 'Celular');

INSERT INTO t_vt_telefone_contato (id_telefone_contato, id_cliente, nr_ddd, nr_telefone, tp_contato)
VALUES (6, 6, '11', '99121-1382', 'Comercial');

INSERT INTO t_vt_telefone_contato (id_telefone_contato, id_cliente, nr_ddd, nr_telefone, tp_contato)
VALUES (7, 7, '11', '97376-4351', 'Celular');

INSERT INTO t_vt_telefone_contato (id_telefone_contato, id_cliente, nr_ddd, nr_telefone, tp_contato)
VALUES (8, 8, '19', '98472-8414', 'Comercial');

INSERT INTO t_vt_telefone_contato (id_telefone_contato, id_cliente, nr_ddd, nr_telefone, tp_contato)
VALUES (9, 9, '16', '96715-7166', 'Celular');

INSERT INTO t_vt_telefone_contato (id_telefone_contato, id_cliente, nr_ddd, nr_telefone, tp_contato)
VALUES (10, 10, '12', '98430-1162', 'Comercial');

-- Inserindo dados na tabela t_vt_endereco
INSERT INTO t_vt_endereco (id_endereco, id_cliente, nm_logradouro, nr_logradouro, ds_complemento, nm_bairro, nm_cidade, nm_estado, ds_cep) 
VALUES (1, 1, 'Rua Augusta', 1000, 'Apto 101', 'Consolação', 'São Paulo', 'SP', '01310100');

INSERT INTO t_vt_endereco (id_endereco, id_cliente, nm_logradouro, nr_logradouro, ds_complemento, nm_bairro, nm_cidade, nm_estado, ds_cep) 
VALUES (2, 2, 'Rua da Consolação', 2500, 'Apto 302', 'Cerqueira César', 'São Paulo', 'SP', '01301001');

INSERT INTO t_vt_endereco (id_endereco, id_cliente, nm_logradouro, nr_logradouro, ds_complemento, nm_bairro, nm_cidade, nm_estado, ds_cep) 
VALUES (3, 3, 'Avenida Brigadeiro Faria Lima', 2000, 'Conj. 501', 'Jardim Paulistano', 'São Paulo', 'SP', '01452001');

INSERT INTO t_vt_endereco (id_endereco, id_cliente, nm_logradouro, nr_logradouro, ds_complemento, nm_bairro, nm_cidade, nm_estado, ds_cep) 
VALUES (4, 4, 'Rua Joaquim Antunes', 361, 'Apto 102', 'Pinheiros', 'São Paulo', 'SP', '05415010');

INSERT INTO t_vt_endereco (id_endereco, id_cliente, nm_logradouro, nr_logradouro, ds_complemento, nm_bairro, nm_cidade, nm_estado, ds_cep) 
VALUES (5, 5, 'Rua Oscar Freire', 2052, 'Loja 01', 'Cerqueira César', 'São Paulo', 'SP', '05409011');

INSERT INTO t_vt_endereco (id_endereco, id_cliente, nm_logradouro, nr_logradouro, ds_complemento, nm_bairro, nm_cidade, nm_estado, ds_cep) 
VALUES (6, 6, 'Rua dos Pinheiros', 940, 'Sala 3', 'Pinheiros', 'São Paulo', 'SP', '05422001');

INSERT INTO t_vt_endereco (id_endereco, id_cliente, nm_logradouro, nr_logradouro, ds_complemento, nm_bairro, nm_cidade, nm_estado, ds_cep) 
VALUES (7, 7, 'Rua Pamplona', 1200, 'Apto 41', 'Jardim Paulista', 'São Paulo', 'SP', '01405002');

INSERT INTO t_vt_endereco (id_endereco, id_cliente, nm_logradouro, nr_logradouro, ds_complemento, nm_bairro, nm_cidade, nm_estado, ds_cep) 
VALUES (8, 8, 'Rua Augusta', 1524, 'Sala 201', 'Consolação', 'São Paulo', 'SP', '01304001');

INSERT INTO t_vt_endereco (id_endereco, id_cliente, nm_logradouro, nr_logradouro, ds_complemento, nm_bairro, nm_cidade, nm_estado, ds_cep) 
VALUES (9, 9, 'Avenida Paulista', 1578, 'Conj. 1201', 'Bela Vista', 'São Paulo', 'SP', '01310916');

INSERT INTO t_vt_endereco (id_endereco, id_cliente, nm_logradouro, nr_logradouro, ds_complemento, nm_bairro, nm_cidade, nm_estado, ds_cep) 
VALUES (10, 10, 'Rua Carlos Comenale', 57, 'Apto 62', 'Cerqueira César', 'São Paulo', 'SP', '01422040');

--Inserindo dados na tabela t_vt_login

INSERT INTO t_vt_login (id_login, id_cliente, ds_email, ds_senha, dt_ultimo_login)
VALUES (1, 1, 'joao.silva@gmail.com', 'senha123', SYSDATE-30);

INSERT INTO t_vt_login (id_login, id_cliente, ds_email, ds_senha, dt_ultimo_login)
VALUES (2, 2, 'maria.oliveira@yahoo.com', 'senha456', SYSDATE-15);

INSERT INTO t_vt_login (id_login, id_cliente, ds_email, ds_senha, dt_ultimo_login)
VALUES (3, 3, 'pedro.souza@hotmail.com', 'senha789', SYSDATE-7);

INSERT INTO t_vt_login (id_login, id_cliente, ds_email, ds_senha, dt_ultimo_login)
VALUES (4, 4, 'ana.pereira@gmail.com', 'senha1011', SYSDATE-3);

INSERT INTO t_vt_login (id_login, id_cliente, ds_email, ds_senha, dt_ultimo_login)
VALUES (5, 5, 'lucas.santos@yahoo.com', 'senha1213', SYSDATE-1);

INSERT INTO t_vt_login (id_login, id_cliente, ds_email, ds_senha, dt_ultimo_login)
VALUES (6, 6, 'mariana.costa@hotmail.com', 'senha1415', SYSDATE-5);

INSERT INTO t_vt_login (id_login, id_cliente, ds_email, ds_senha, dt_ultimo_login)
VALUES (7, 7, 'gabriel.fernandes@gmail.com', 'senha1617', SYSDATE-10);

INSERT INTO t_vt_login (id_login, id_cliente, ds_email, ds_senha, dt_ultimo_login)
VALUES (8, 8, 'carla.silva@yahoo.com', 'senha1819', SYSDATE-20);

INSERT INTO t_vt_login (id_login, id_cliente, ds_email, ds_senha, dt_ultimo_login)
VALUES (9, 9, 'rafaela.oliveira@hotmail.com', 'senha2021', SYSDATE-25);

INSERT INTO t_vt_login (id_login, id_cliente, ds_email, ds_senha, dt_ultimo_login)
VALUES (10, 10, 'daniel.santos@gmail.com', 'senha2223', SYSDATE-28);


-- Inserindo dados na tabela t_vt_plano
INSERT INTO t_vt_plano (id_plano, nm_plano, qtd_franquia_minutos, qtd_franquia_internet, vlr_mensal, ds_plano) 
VALUES (1, 'Plano Básico', 200, 15, 50, 'Plano com franquia de 200 minutos e 15GB de internet');

INSERT INTO t_vt_plano (id_plano, nm_plano, qtd_franquia_minutos, qtd_franquia_internet, vlr_mensal, ds_plano) 
VALUES (2, 'Plano Intermediário', 400, 25, 80, 'Plano com franquia de 400 minutos e 4GB de internet');

INSERT INTO t_vt_plano (id_plano, nm_plano, qtd_franquia_minutos, qtd_franquia_internet, vlr_mensal, ds_plano) 
VALUES (3, 'Plano Avançado', 600, 6, 120, 'Plano com franquia de 600 minutos e 6GB de internet');

INSERT INTO t_vt_plano (id_plano, nm_plano, qtd_franquia_minutos, qtd_franquia_internet, vlr_mensal, ds_plano) 
VALUES (4, 'Plano Ilimitado', 0, 10, 200, 'Plano com internet ilimitada e sem franquia de minutos');

INSERT INTO t_vt_plano (id_plano, nm_plano, qtd_franquia_minutos, qtd_franquia_internet, vlr_mensal, ds_plano) 
VALUES (5, 'Plano Light', 100, 1, 30, 'Plano com franquia de 100 minutos e 1GB de internet');

--Inserindo dados na tabela t_vt_servico_adicional

INSERT INTO t_vt_servico_adicional 
VALUES (1, '2GB de Internet', 15.00, 'Adicional de 2GB de internet no mês');

INSERT INTO t_vt_servico_adicional 
VALUES (2, '4GB de Internet', 25.00, 'Adicional de 4GB de internet no mês');

INSERT INTO t_vt_servico_adicional 
VALUES (3, '6GB de Internet', 35.00, 'Adicional de 6GB de internet no mês');

INSERT INTO t_vt_servico_adicional 
VALUES (4, '10GB de Internet', 35.00, 'Adicional de 10GB de internet no mês');

INSERT INTO t_vt_servico_adicional 
VALUES (5, '20GB de Internet', 70.00, 'Adicional de 20GB de internet no mês');

INSERT INTO t_vt_servico_adicional 
VALUES (6, '25GB de Internet', 100.00, 'Adicional de 25GB de internet no mês');


-- Inserindo dados na tabela t_vt_itens_fatura
INSERT INTO t_vt_itens_fatura (id_itens_fatura, id_plano, id_servico_adicional, st_plano, dt_item_adicionado)
VALUES (1, 1, 2, 'A', TO_DATE('2020-01-04', 'YYYY-MM-DD'));

INSERT INTO t_vt_itens_fatura (id_itens_fatura, id_plano, id_servico_adicional, st_plano, dt_item_adicionado)
VALUES (2, 2, 1, 'A', TO_DATE('2020-02-12', 'YYYY-MM-DD'));

INSERT INTO t_vt_itens_fatura (id_itens_fatura, id_plano, id_servico_adicional, st_plano, dt_item_adicionado)
VALUES (3, 3, 3, 'A', TO_DATE('2021-02-26', 'YYYY-MM-DD'));

INSERT INTO t_vt_itens_fatura (id_itens_fatura, id_plano, id_servico_adicional, st_plano, dt_item_adicionado)
VALUES (4, 4, 1, 'A', TO_DATE('2021-08-21', 'YYYY-MM-DD'));

INSERT INTO t_vt_itens_fatura (id_itens_fatura, id_plano, id_servico_adicional, st_plano, dt_item_adicionado)
VALUES (5, 4, 1, 'I', TO_DATE('2021-09-16', 'YYYY-MM-DD'));

INSERT INTO t_vt_itens_fatura (id_itens_fatura, id_plano, id_servico_adicional, st_plano, dt_item_adicionado)
VALUES (6, 1, 4, 'A', TO_DATE('2021-10-01', 'YYYY-MM-DD'));

INSERT INTO t_vt_itens_fatura (id_itens_fatura, id_plano, id_servico_adicional, st_plano, dt_item_adicionado)
VALUES (7, 1, 1, 'A', TO_DATE('2022-11-10', 'YYYY-MM-DD'));

INSERT INTO t_vt_itens_fatura (id_itens_fatura, id_plano, id_servico_adicional, st_plano, dt_item_adicionado)
VALUES (8, 5, 1, 'A', TO_DATE('2023-01-19', 'YYYY-MM-DD'));

INSERT INTO t_vt_itens_fatura (id_itens_fatura, id_plano, id_servico_adicional, st_plano, dt_item_adicionado)
VALUES (9, 4, 2, 'I', TO_DATE('2023-02-22', 'YYYY-MM-DD'));

INSERT INTO t_vt_itens_fatura (id_itens_fatura, id_plano, id_servico_adicional, st_plano, dt_item_adicionado) 
VALUES (10, 5, 1, 'A', TO_DATE('2023-03-25', 'YYYY-MM-DD'));

-- Inserindo dados na tabela t_vt_tipo_pagamento
INSERT INTO t_vt_tipo_pagamento (id_tipo_pagamento, nm_tipo_pagamento, ds_tipo_pagamento)
VALUES (1, 'Cartão de Crédito', 'Pagamento realizado através de cartão de crédito.');

INSERT INTO t_vt_tipo_pagamento (id_tipo_pagamento, nm_tipo_pagamento, ds_tipo_pagamento)
VALUES (2, 'Cartão de Débito', 'Pagamento realizado através de cartão de débito.');

INSERT INTO t_vt_tipo_pagamento (id_tipo_pagamento, nm_tipo_pagamento, ds_tipo_pagamento)
VALUES (3, 'Boleto Bancário', 'Pagamento realizado através de boleto bancário.');

INSERT INTO t_vt_tipo_pagamento (id_tipo_pagamento, nm_tipo_pagamento, ds_tipo_pagamento)
VALUES (4, 'Transferência Bancária', 'Pagamento realizado através de transferência bancária.');

INSERT INTO t_vt_tipo_pagamento (id_tipo_pagamento, nm_tipo_pagamento, ds_tipo_pagamento)
VALUES (5, 'Pix', 'Pagamento realizado através de transferência via Pix.');


-- Inserindo dados na tabela t_vt_fatura
INSERT INTO t_vt_fatura (id_fatura, id_cliente, id_itens_fatura, id_tipo_pagamento, vlr_fatura, dt_vencimento, dt_pagamento) 
VALUES (1, 1, 1, 5,100 ,TO_DATE('2020-05-11', 'YYYY-MM-DD') , TO_DATE('2020-05-10', 'YYYY-MM-DD'));

INSERT INTO t_vt_fatura (id_fatura, id_cliente, id_itens_fatura, id_tipo_pagamento, vlr_fatura, dt_vencimento, dt_pagamento) 
VALUES (2, 2, 2, 5,150,TO_DATE('2020-03-29', 'YYYY-MM-DD') , TO_DATE('2020-03-29', 'YYYY-MM-DD'));

INSERT INTO t_vt_fatura (id_fatura, id_cliente, id_itens_fatura, id_tipo_pagamento, vlr_fatura, dt_vencimento, dt_pagamento) 
VALUES (3, 3, 3, 5,200, TO_DATE('2021-03-12', 'YYYY-MM-DD') , TO_DATE('2021-03-09', 'YYYY-MM-DD') );

INSERT INTO t_vt_fatura (id_fatura, id_cliente, id_itens_fatura, id_tipo_pagamento, vlr_fatura, dt_vencimento, dt_pagamento) 
VALUES (4, 4, 4, 1,120, TO_DATE( '2021-09-21', 'YYYY-MM-DD'), TO_DATE('2021-09-24', 'YYYY-MM-DD'));

INSERT INTO t_vt_fatura (id_fatura, id_cliente, id_itens_fatura, id_tipo_pagamento, vlr_fatura, dt_vencimento, dt_pagamento) 
VALUES (5, 5, 5, 2,90, TO_DATE( '2021-10-16', 'YYYY-MM-DD'), TO_DATE( '2021-10-14', 'YYYY-MM-DD'));

INSERT INTO t_vt_fatura (id_fatura, id_cliente, id_itens_fatura, id_tipo_pagamento, vlr_fatura, dt_vencimento, dt_pagamento) 
VALUES (6, 6, 6, 2,75, TO_DATE( '2021-11-18', 'YYYY-MM-DD') , TO_DATE( '2021-11-17', 'YYYY-MM-DD') );

INSERT INTO t_vt_fatura (id_fatura, id_cliente, id_itens_fatura, id_tipo_pagamento, vlr_fatura, dt_vencimento, dt_pagamento) 
VALUES (7, 7, 7, 1,180, TO_DATE( '2022-12-19', 'YYYY-MM-DD') , TO_DATE( '2022-12-19', 'YYYY-MM-DD') );

INSERT INTO t_vt_fatura (id_fatura, id_cliente, id_itens_fatura, id_tipo_pagamento, vlr_fatura, dt_vencimento, dt_pagamento) 
VALUES (8, 8, 8, 4,250, TO_DATE( '2023-02-19', 'YYYY-MM-DD') , TO_DATE( '2023-02-16', 'YYYY-MM-DD') );

INSERT INTO t_vt_fatura (id_fatura, id_cliente, id_itens_fatura, id_tipo_pagamento, vlr_fatura, dt_vencimento, dt_pagamento) 
VALUES (9, 9, 9, 5,190, TO_DATE( '2023-03-22', 'YYYY-MM-DD') ,TO_DATE( '2023-03-20', 'YYYY-MM-DD') );

INSERT INTO t_vt_fatura (id_fatura, id_cliente, id_itens_fatura, id_tipo_pagamento, vlr_fatura, dt_vencimento, dt_pagamento) 
VALUES (10, 10, 10, 3,110,TO_DATE( '2023-04-25', 'YYYY-MM-DD') , TO_DATE( '2023-04-25', 'YYYY-MM-DD') );