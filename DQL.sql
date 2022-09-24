use todo6;

select 
    *
from
    produtos
limit 3;

select 
    valorProduto
from
    produtos
order by custoProduto DESC
limit 3;

select 
    *
from
    dados
where
    dadoAvaliacao;

select 
    dadoAvaliacao, count(dadoAvaliacao) AS dadoAvaliacao
from
    dados
group by dadoData;

select 
    idproduto, min(dadoNota) as notaMin
from
    dados
group by idproduto
order by notaMin
limit 1;

select 
    idproduto, dadoAvaliacao
from
    dados
order by dadoAvaliacao desc;

select 
    descricaoProduto, max(dadoData)
from
    produtos
        inner join
    dados ON dados.idproduto = produtos.idproduto
group by dados.idproduto
order by dados.dadoData desc;

select 
    dadoNome
from
    clientes
where
    dadoNome like 'Joana%';
select 
    dadoNome
from
    clientes
where
    dadoNome like 'Patricia%';

select 
    idproduto, avg(dadoAvaliacao) as media
from
    dados
group by dadoAvaliacao;


select 
    idproduto as Avaliacao_desatualizada
from
    dados
where
    dadoData <= now() - interval 30 day;

