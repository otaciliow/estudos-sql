-- 5 Melhores vendedores:
SELECT nome, count(idvenda) AS totalvendas FROM relacional.vendedores AS vendedores 
INNER JOIN relacional.vendas ON (vendedores.idvendedor = vendas.idvendedor) GROUP BY vendedores.idvendedor ORDER BY totalvendas DESC LIMIT 5;

-- 5 Piores vendedores:
SELECT nome, count(idvenda) AS totalvendas FROM relacional.vendedores AS vendedores 
INNER JOIN relacional.vendas ON (vendedores.idvendedor = vendas.idvendedor) GROUP BY vendedores.idvendedor ORDER BY totalvendas LIMIT 5;