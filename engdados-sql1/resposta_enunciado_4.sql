SELECT produto, nome, sum(desconto) AS totaldescontos FROM relacional.vendedores AS vendedores 
INNER JOIN relacional.vendas AS vendas ON (vendedores.idvendedor = vendas.idvendedor) 
INNER JOIN relacional.itensvenda AS itensvenda ON (vendas.idvenda = itensvenda.idvenda) 
INNER JOIN relacional.produtos ON (itensvenda.idproduto = produtos.idproduto) 
GROUP BY produtos.produto, vendedores.nome ORDER BY totaldescontos DESC;