-- Consultas SQL

SELECT 
p.sku,
p.nome AS produto,
c.nome AS categoria,
f.nome AS fornecedor,
p.preco_venda,
(p.preco_venda - p.preco_custo) AS lucro_unitario,
p.estoque
FROM produto p
JOIN categoria c ON p.id_categoria = c.id_categoria
JOIN fornecedor f ON p.cnpj_fornecedor = f.cnpj
WHERE p.estoque > 0
ORDER BY lucro_unitario DESC;

SELECT 
c.cpf,
c.nome AS cliente,
c.data_cadastro,
v.nome AS vendedor
FROM cliente c
JOIN vendedor v ON c.matricula_vendedor = v.matricula 
WHERE c.data_cadastro >= '2023-01-01'
ORDER BY c.data_cadastro ASC;

SELECT 
p.id_pedido,
p.data_pedido,
p.status,
c.nome AS cliente,
v.nome AS vendedor 
FROM pedido p 
JOIN cliente c ON p.cpf_cliente = c.cpf
JOIN vendedor v ON p.matricula_vendedor = v.matricula
WHERE p.status = 'entregue'
ORDER BY p.data_pedido DESC;

SELECT
p.sku,
p.nome AS produto,
c.nome AS categoria,
SUM(ip.quantidade) AS total_vendido,
p.preco_venda
FROM produto p
JOIN categoria c ON p.id_categoria = c.id_categoria
JOIN item_pedido ip ON p.sku = ip.sku_produto
WHERE p.preco_venda > 500.00
GROUP BY p.sku, p.nome, c.nome, p.preco_venda
ORDER BY total_vendido DESC;


SELECT 
v.matricula,
v.nome AS vendedor,
COUNT(p.id_pedido) AS total_pedidos
FROM vendedor v 
JOIN pedido p ON v.matricula = p.matricula_vendedor
WHERE p.status != 'cancelado'
GROUP BY v.matricula, v.nome 
ORDER BY total_pedidos DESC;

SELECT
p.id_pedido,
p.data_pedido,
c.nome AS cliente,
pr.nome AS produto,
ip.quantidade,
ip.preco_unitario
FROM pedido p
JOIN cliente c ON p.cpf_cliente = c.cpf
JOIN item_pedido ip ON p.id_pedido = ip.id_pedido
JOIN produto pr ON ip.sku_produto = pr.sku
WHERE p.status = 'enviado'
ORDER BY p.data_pedido ASC;

SELECT
p.sku,
p.nome AS produto,
p.preco_venda,
p.estoque,
f.nome AS fornecedor
FROM produto p
JOIN categoria c ON p.id_categoria = c.id_categoria
JOIN fornecedor f ON p.cnpj_fornecedor = f.cnpj
WHERE c.nome = 'Informática'
AND p.estoque < 30
ORDER BY p.estoque ASC;

SELECT 
c.cpf,
c.nome AS cliente,
ce.email,
v.nome AS vendedor_responsavel
FROM cliente c 
JOIN cliente_email ce ON c.cpf = ce.cpf_cliente
JOIN vendedor v ON c.matricula_vendedor = v.matricula
WHERE ce.email LIKE '%gmail.com'
ORDER BY c.nome ASC;

SELECT
p.id_pedido,
p.data_pedido,
pr.nome AS produto,
f.nome AS fornecedor,
ip.quantidade,
ip.preco_unitario
FROM pedido p
JOIN item_pedido ip ON p.id_pedido = ip.id_pedido
JOIN produto pr ON ip.sku_produto = pr.sku
JOIN fornecedor f ON pr.cnpj_fornecedor = f.cnpj
WHERE ip.preco_unitario > 1000.00
ORDER BY ip.preco_unitario DESC;

SELECT
p.sku,
p.nome AS produto,
c.nome AS categoria,
f.nome AS fornecedor,
f.cidade AS cidade_fornecedor,
p.preco_custo,
p.preco_venda,
(p.preco_venda - p.preco_custo) AS lucro_unitario
FROM produto p
JOIN categoria c ON p.id_categoria = c.id_categoria
JOIN fornecedor f ON p.cnpj_fornecedor = f.cnpj
WHERE p.preco_venda < 1000.00
ORDER BY p.preco_venda ASC;
