SELECT cliente, produto, quantidade, valortotal, data FROM relacional.clientes AS clientes 
INNER JOIN relacional.vendas AS vendas ON (clientes.idcliente = vendas.idcliente) 
INNER JOIN relacional.itensvenda AS itensvenda ON (vendas.idvenda = itensvenda.idvenda) 
INNER JOIN relacional.produtos AS produtos ON (itensvenda.idproduto = produtos.idproduto) 
WHERE clientes.idcliente = 1;