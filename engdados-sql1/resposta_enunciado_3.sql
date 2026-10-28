SELECT produto, count(DISTINCT vendas.idvenda) AS total_vendas FROM relacional.vendas AS vendas 
INNER JOIN relacional.itensvenda AS itensvenda ON (vendas.idvenda = itensvenda.idvenda) 
INNER JOIN relacional.produtos AS produtos ON (itensvenda.idproduto = produtos.idproduto) 
WHERE EXTRACT(MONTH FROM vendas.data) = 1 AND EXTRACT(YEAR FROM vendas.data) = 2016 
GROUP BY produtos.produto;