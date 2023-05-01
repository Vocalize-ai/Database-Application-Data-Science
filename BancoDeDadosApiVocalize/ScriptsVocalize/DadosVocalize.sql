--Inserindo dados na tabela t_vocalize_ligacao
INSERT INTO t_vocalize_ligacao (id_ligacao, id_cliente, dt_ligacao, qtd_duracao, ds_trancricao_audio, ds_temperatura)
VALUES (1, 1,TO_DATE('2023-01-12', 'YYYY-MM-DD'), 10, 'Mais informações sobre o produto', 'O cliente sentiu satisfeito');

INSERT INTO t_vocalize_ligacao (id_ligacao, id_cliente, dt_ligacao, qtd_duracao, ds_trancricao_audio, ds_temperatura)
VALUES (2, 1, TO_DATE('2023-02-11', 'YYYY-MM-DD'), 15, 'Quero realizar uma compra', 'Não identifiquei nenhum comportamento fora do padrão.');

INSERT INTO t_vocalize_ligacao (id_ligacao, id_cliente, dt_ligacao, qtd_duracao, ds_trancricao_audio, ds_temperatura)
VALUES (3, 2, TO_DATE('2023-03-20', 'YYYY-MM-DD') , 18, 'Gostaria de cancelar uma compra', 'Não identifiquei nenhum comportamento fora do padrão.');

INSERT INTO t_vocalize_ligacao (id_ligacao, id_cliente, dt_ligacao, qtd_duracao, ds_trancricao_audio, ds_temperatura)
VALUES (4, 3, TO_DATE('2023-03-21', 'YYYY-MM-DD') , 22, 'O valor do plano veio errado no boleto.', 'Não identifiquei nenhum comportamento fora do padrão.');

INSERT INTO t_vocalize_ligacao (id_ligacao, id_cliente, dt_ligacao, qtd_duracao, ds_trancricao_audio, ds_temperatura)
VALUES (5, 4, TO_DATE('2023-03-21', 'YYYY-MM-DD'), 5, 'Pedi a troca do serviço, mas não foi resolvido.', 'Não identifiquei nenhum comportamento fora do padrão.');

INSERT INTO t_vocalize_ligacao (id_ligacao, id_cliente, dt_ligacao, qtd_duracao, ds_trancricao_audio, ds_temperatura)
VALUES (6, 5, TO_DATE('2023-03-24', 'YYYY-MM-DD'), 13, 'Procurar outros serviços.', 'Não identifiquei nenhum comportamento fora do padrão.');

INSERT INTO t_vocalize_ligacao (id_ligacao, id_cliente, dt_ligacao, qtd_duracao, ds_trancricao_audio, ds_temperatura)
VALUES (7, 6, TO_DATE('2023-03-27', 'YYYY-MM-DD'), 28, 'Alterar o endereço do serviço.', 'O cliente se mostrou nervoso.');

INSERT INTO t_vocalize_ligacao (id_ligacao, id_cliente, dt_ligacao, qtd_duracao, ds_trancricao_audio, ds_temperatura)
VALUES (8, 7,TO_DATE('2023-04-01', 'YYYY-MM-DD'), 17, 'A conta veio errada', 'Conteve algumas variações no tom de voz.');

INSERT INTO t_vocalize_ligacao (id_ligacao, id_cliente, dt_ligacao, qtd_duracao, ds_trancricao_audio, ds_temperatura)
VALUES (9, 8,TO_DATE('2023-04-07', 'YYYY-MM-DD'), 20, 'Meu boleto não chegou.', 'Não identifiquei nenhum comportamento fora do padrão.');

INSERT INTO t_vocalize_ligacao (id_ligacao, id_cliente, dt_ligacao, qtd_duracao, ds_trancricao_audio, ds_temperatura)
VALUES (10, 9, TO_DATE('2023-04-07', 'YYYY-MM-DD'), 4, 'Quero pagar com pix.', 'O cliente ficou Satisfeito.');

--Inserindo dados na tabela t_vocalize_feedback
INSERT INTO t_vocalize_feedback (id_feedback, id_ligacao, nr_nivel_avaliacao, ds_comentario)
VALUES (1, 1, 5, 'Atendimento Excelente');

INSERT INTO t_vocalize_feedback (id_feedback, id_ligacao, nr_nivel_avaliacao, ds_comentario)
VALUES (2, 2, 3, 'Atendimento Bom');

INSERT INTO t_vocalize_feedback (id_feedback, id_ligacao, nr_nivel_avaliacao, ds_comentario)
VALUES (3, 3, 2, 'Atendimento Ruim');

INSERT INTO t_vocalize_feedback (id_feedback, id_ligacao, nr_nivel_avaliacao, ds_comentario)
VALUES (4, 4, 1, 'Atendimento Muito Ruim');

INSERT INTO t_vocalize_feedback (id_feedback, id_ligacao, nr_nivel_avaliacao, ds_comentario)
VALUES (5, 5, 3, 'Atendimento Bom');

INSERT INTO t_vocalize_feedback (id_feedback, id_ligacao, nr_nivel_avaliacao, ds_comentario)
VALUES (6, 6, 4, 'Atendimento Muito Bom');

INSERT INTO t_vocalize_feedback (id_feedback, id_ligacao, nr_nivel_avaliacao, ds_comentario)
VALUES (7, 7, 5, 'Atendimento Excelente');

INSERT INTO t_vocalize_feedback (id_feedback, id_ligacao, nr_nivel_avaliacao, ds_comentario)
VALUES (8, 8, 4, 'Atendimento Muito Bom');

INSERT INTO t_vocalize_feedback (id_feedback, id_ligacao, nr_nivel_avaliacao, ds_comentario)
VALUES (9, 9, 6, 'Atendimento Neutro');

INSERT INTO t_vocalize_feedback (id_feedback, id_ligacao, nr_nivel_avaliacao, ds_comentario)
VALUES (10, 10, 5, 'Atendimento Excelente');