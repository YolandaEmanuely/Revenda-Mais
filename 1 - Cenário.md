# 1. Cenário: Sistema para Revendedor de Produtos
# Revenda +

A **Revenda +** é uma empresa que atua como revendedora de produtos de diversas categorias, como eletrônicos, informática, eletrodomésticos e acessórios. Para controlar suas operações diárias, a empresa precisa de um sistema que gerencie fornecedores, produtos, clientes, pedidos e vendedores.

---

* **Fornecedores:** Cada fornecedor possui um CNPJ, um nome fantasia e um endereço completo. Além disso, cada fornecedor pode ter um ou mais telefones de contato cadastrados. Um fornecedor pode fornecer um ou mais produtos.
* 
* **Produtos:** Cada produto possui um SKU, nome, preço de custo, preço de venda e quantidade em estoque. O lucro é obtido automaticamente pela diferença entre o preço de venda e o preço de custo, não sendo armazenado diretamente. Cada produto pertence a apenas uma categoria e é fornecido por um único fornecedor.
* 
* **Categorias:** Cada categoria possui um identificador e um nome. Uma categoria pode agrupar muitos produtos.
* 
* **Vendedores:** Cada vendedor possui uma matrícula, nome e data de admissão. O tempo de casa de cada vendedor é calculado a partir da data de admissão, sem ser armazenado. Cada vendedor possui apenas um cadastro ao sistema, com login e senha.
* 
* **Clientes:** Cada cliente possui um CPF, nome e data de cadastro. Um cliente pode ter um ou mais e-mails cadastrados. Todo cliente é atendido por um único vendedor responsável.
* 
* **Pedidos:** Cada pedido pertence a um cliente e é registrado por um vendedor. Um pedido possui data, status e valor total, que é calculado pela soma dos itens do pedido. Um cliente pode realizar muitos pedidos, e um vendedor pode registrar muitos pedidos.
* 
* **Itens do Pedido:** Um pedido pode conter muitos produtos, e um mesmo produto pode aparecer em muitos pedidos diferentes. Essa relação é representada pelos itens do pedido, que registram a quantidade e o preço unitário de cada produto no momento da compra.
