
create procedure proc_login_cliente (p_id_login number) is
begin 
    update t_vt_login 
    set DT_ULTIMO_LOGIN = SYSDATE
    where id_login = id_login; 
end proc_login_cliente;
/

create procedure proc_desativa_itens_fatura(p_id_itens_fatura number , p_st_plano char)
as
begin 
  update t_vt_itens_fatura
  set st_plano = 'I'
  where id_itens_fatura = p_id_itens_fatura;
end proc_desativa_itens_fatura;
/

create procedure proc_exclui_fatura(p_id_tipo_pagamento number)
as
begin  
    delete 
    from t_vt_tipo_pagamento 
    where ID_TIPO_PAGAMENTO = p_id_tipo_pagamento;
  
end proc_exclui_fatura;
/

select 
    vc.nm_cliente,
    vc.nr_cpf,
    vtc.nr_ddd,
    vtc.nr_telefone,
    ve.ds_cep,
    ve.nm_logradouro,
    ve.nr_logradouro,
    ve.nm_cidade,
    ve.nm_bairro,
    vp.nm_plano,
    vp.qtd_franquia_internet,
    vf.vlr_fatura,
    vit.dt_item_adicionado,
    vf.dt_vencimento,
    vf.dt_pagamento
from t_vt_cliente vc
join t_vt_endereco ve on ve.id_cliente = vc.id_cliente 
join t_vt_telefone_contato vtc on vtc.id_cliente = vc.id_cliente 
join t_vt_fatura vf on vc.id_cliente = vf.id_cliente 
join t_vt_itens_fatura vit on vit.id_itens_fatura = vf.id_itens_fatura
join t_vt_plano vp on vp.id_plano = vit.id_plano
where vc.id_cliente = 1;
/
 
select 
    
from 
inner join on 
group by 

 
