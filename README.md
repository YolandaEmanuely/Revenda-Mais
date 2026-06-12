# Projeto de Banco de Dados:

Este repositório apresenta a documentação detalhada e a implementação técnica de um sistema de banco de dados. O projeto percorre todo o desenvolvimento de dados, desde a modelagem conceitual e lógica até a implementação física e a extração de inteligência de negócio através de consultas SQL avançadas.

## 📑 Índice
1. [Cenário](#1-cenário)
2. [Modelagem Conceitual](#2-modelagem-conceitual)
3. [Modelagem Lógica](#3-modelagem-lógica)
4. [Modelagem Física](#4-modelagem-física)
5. [Inserção de Dados](#5-inserção-de-dados)
6. [CRUD](#6-crud)
7. [Relatórios](#7-relatórios)

---

## 1. Cenário
Revenda + 

A Revenda + é uma empresa que atua como revendedora de produtos de diversas categorias, como eletrônicos, informática, eletrodomésticos e acessórios. Para controlar suas operações diárias, a empresa precisa de um sistema que gerencie fornecedores, produtos, clientes, pedidos e vendedores.

Cada fornecedor possui um CNPJ, um nome fantasia e um endereço completo. Além disso, cada fornecedor pode ter um ou mais telefones de contato cadastrados. Um fornecedor pode fornecer um ou mais produtos. 

Cada produto possui um SKU, nome, preço de custo, preço de venda e quantidade em estoque. O lucro é obtido automaticamente pela diferença entre o preço de venda e o preço de custo, não sendo armazenado diretamente. Cada produto pertence a apenas uma categoria e é fornecido por um único fornecido. 

Cada categoria possui um identificador e um nome. Uma categoria pode agrupar muitos produtos.

Cada vendedor possui uma matrícula, nome e data de admissão. O tempo de casa de cada vendedor é calculado a partir da data de admissão, sem ser armazenado. Cada vendedor possui apenas um cadastro ao sistema, com login e senha. 

Cada cliente possui um CPF, nome e data de cadastro. Um cliente pode ter um ou mais e-mails cadastrados. Todo cliente é atendido por um único vendedor responsável. 

Cada pedido pertence a um cliente e é registrado por um vendedor. Um pedido possui data, status e valor total, que é calculado pela soma dos itens do pedido. Um cliente pode realizar muitos pedidos, e um vendedor pode registrar muitos pedidos. 

Um pedido pode conter muitos produtos, e um mesmo produto pode aparecer em muitos pedidos diferentes. Essa relação é representada pelos itens do pedido, que registram a quantidade e o preço unitário de cada produto no momento da compra.
<kbd><img src="prints/001.png" alt="Cenário" width="100%"/></kbd>

## 2. Modelagem Conceitual
Representação inicial das entidades, atributos e relacionamentos (DER).
<kbd><img src="prints/001-2.png" alt="Modelagem Conceitual" width="100%"/></kbd>

## 3. Modelagem Lógica
Estruturação final das tabelas com PKs, FKs e tipos de dados.
<kbd><img src="prints/001-3.png" alt="Modelagem Lógica" width="100%"/></kbd>

## 4. Modelagem Física
Implementação do esquema no SGBD (Supabase).
<kbd><img src="prints/1.png" alt="Física 1" width="100%"/></kbd>
<kbd><img src="prints/2.png" alt="Física 2" width="100%"/></kbd>
<kbd><img src="prints/3.png" alt="Física 3" width="100%"/></kbd>
<kbd><img src="prints/4.png" alt="Física 4" width="100%"/></kbd>
<kbd><img src="prints/5.png" alt="Física 5" width="100%"/></kbd>
<kbd><img src="prints/6.png" alt="Física 6" width="100%"/></kbd>
<kbd><img src="prints/7.png" alt="Física 7" width="100%"/></kbd>
<kbd><img src="prints/8.png" alt="Física 8" width="100%"/></kbd>
<kbd><img src="prints/9.png" alt="Física 9" width="100%"/></kbd>
<kbd><img src="prints/10.png" alt="Física 10" width="100%"/></kbd>
<kbd><img src="prints/11.png" alt="Física 11" width="100%"/></kbd>

## 5. Inserção de Dados
Inserção de dados nas tabelas.
<kbd><img src="prints/12.png" width="100%"/></kbd>
<kbd><img src="prints/13.png" width="100%"/></kbd>
<kbd><img src="prints/14.png" width="100%"/></kbd>
<kbd><img src="prints/15.png" width="100%"/></kbd>
<kbd><img src="prints/16.png" width="100%"/></kbd>
<kbd><img src="prints/17.png" width="100%"/></kbd>
<kbd><img src="prints/18.png" width="100%"/></kbd>
<kbd><img src="prints/19.png" width="100%"/></kbd>
<kbd><img src="prints/20.png" width="100%"/></kbd>
<kbd><img src="prints/21.png" width="100%"/></kbd>
<kbd><img src="prints/22.png" width="100%"/></kbd>

## 6. CRUD
Operações fundamentais de manipulação de dados:
* **Create:** Inserção de registros.
* **Read:** Consultas básicas.
* **Update:** Atualizações.
* **Delete:** Exclusão de dados.
<kbd><img src="prints/23.png" width="100%"/></kbd>
<kbd><img src="prints/24.png" width="100%"/></kbd>
<kbd><img src="prints/25.png" width="100%"/></kbd>
<kbd><img src="prints/26.png" width="100%"/></kbd>
<kbd><img src="prints/27.png" width="100%"/></kbd>
<kbd><img src="prints/28.png" width="100%"/></kbd>
<kbd><img src="prints/29.png" width="100%"/></kbd>
<kbd><img src="prints/30.png" width="100%"/></kbd>
<kbd><img src="prints/31.png" width="100%"/></kbd>

## 7. Relatórios
Consultas SQL.
<kbd><img src="prints/32.png" width="100%"/></kbd>
<kbd><img src="prints/33.png" width="100%"/></kbd>
<kbd><img src="prints/34.png" width="100%"/></kbd>
<kbd><img src="prints/35.png" width="100%"/></kbd>
<kbd><img src="prints/36.png" width="100%"/></kbd>
<kbd><img src="prints/37.png" width="100%"/></kbd>
<kbd><img src="prints/38.png" width="100%"/></kbd>
<kbd><img src="prints/39.png" width="100%"/></kbd>
<kbd><img src="prints/40.png" width="100%"/></kbd>
<kbd><img src="prints/41.png" width="100%"/></kbd>

Este projeto foi desenvolvido como parte da avaliação do **1º semestre** da matéria de **Modelagem de Banco de Dados**, referente ao curso de **Desenvolvimento de Software Multiplataforma** da **Fatec Franca**.