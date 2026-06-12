-- CREATE 
INSERT INTO cliente (cpf, nome, data_cadastro, matricula_vendedor) VALUES 
('435.939.478-25','Luisa Melo', CURRENT_DATE, 'V042');

INSERT INTO cliente_email (cpf_cliente, email) VALUES 
('435.939.478-25','luisamelo1995@gmail.com');


--  READ
SELECT * FROM vendedor;

SELECT nome, data_admissao FROM vendedor;

SELECT * FROM cliente WHERE cpf = '435.939.478-25';

-- UPDATE 
UPDATE cliente SET nome = 'Joana Darc' WHERE cpf ='435.939.478-25';

UPDATE pedido SET status = 'pendente' WHERE id_pedido = 'PED003';

-- DELETE 
DELETE FROM pedido
WHERE id_pedido = 'PED013';

DELETE FROM produto
WHERE sku = 'SKU050';
