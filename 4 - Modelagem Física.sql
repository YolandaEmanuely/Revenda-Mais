CREATE SCHEMA revenda_mais;

CREATE TABLE categoria (
    id_categoria SERIAL      PRIMARY KEY,
    nome         VARCHAR(80) NOT NULL
);

CREATE TABLE fornecedor (
  cnpj        VARCHAR(18) PRIMARY KEY,
  nome        VARCHAR(100) NOT NULL,
  rua         VARCHAR(120),
  bairro      VARCHAR(100),
  cidade      VARCHAR(100),
  estado      VARCHAR(100)
);

CREATE TABLE fornecedor_telefone (
  id                 SERIAL    PRIMARY KEY,
  cnpj_fornecedor    VARCHAR(18) NOT NULL REFERENCES fornecedor(cnpj) ON DELETE CASCADE,
  telefone           VARCHAR(20)    NOT NULL
);

CREATE TABLE produto (
  sku                VARCHAR(18)    PRIMARY KEY,
  nome               VARCHAR(100)   NOT NULL,
  preco_custo        DECIMAL(10,2)  NOT NULL CHECK (preco_custo >= 0),
  preco_venda        DECIMAL(10,2)  NOT NULL CHECK (preco_venda >= 0),
  estoque            INT            NOT NULL DEFAULT 0 CHECK (estoque >= 0),
  cnpj_fornecedor    VARCHAR(18)    REFERENCES fornecedor(cnpj),
  id_categoria       INT            REFERENCES categoria(id_categoria)
);

CREATE TABLE vendedor (
  matricula          VARCHAR(18)  PRIMARY KEY,
  nome               VARCHAR(100) NOT NULL,
  data_admissao       DATE         NOT NULL
);


CREATE TABLE  acesso_vendedor (
  id_acesso            SERIAL       PRIMARY KEY,
  matricula_vendedor   VARCHAR(18)  NOT NULL UNIQUE REFERENCES vendedor(matricula) ON DELETE CASCADE,
  login                VARCHAR(60) NOT NULL UNIQUE,
  senha                VARCHAR(60) NOT NULL
);

CREATE TABLE cliente (
  cpf                   VARCHAR(15) PRIMARY KEY,
  nome                  VARCHAR(80) NOT NULL,
  data_cadastro         DATE        NOT NULL DEFAULT CURRENT_DATE,
  matricula_vendedor    VARCHAR(18) REFERENCES vendedor(matricula)
);

CREATE TABLE cliente_email (
  id                    SERIAL        PRIMARY KEY,
  cpf_cliente           VARCHAR(15)   NOT NULL REFERENCES cliente(cpf) ON DELETE CASCADE,
  email                 VARCHAR(120)  NOT NULL
);

CREATE TABLE pedido (
  id_pedido             VARCHAR(18)   PRIMARY KEY,
  data_pedido           DATE          NOT NULL DEFAULT CURRENT_DATE,
  status                VARCHAR(20)   NOT NULL DEFAULT 'pendente' CHECK (status IN ('pendente', 'enviado','entregue','cancelado')),
  cpf_cliente           VARCHAR(15)   NOT NULL REFERENCES cliente(cpf),
  matricula_vendedor    VARCHAR(18)   NOT NULL REFERENCES vendedor(matricula)
);

CREATE TABLE item_pedido (
    id_pedido      VARCHAR(18)   NOT NULL REFERENCES pedido(id_pedido) ON DELETE CASCADE,
    sku_produto    VARCHAR(18)   NOT NULL REFERENCES produto(sku),
    quantidade     INT           NOT NULL CHECK (quantidade > 0),
    preco_unitario DECIMAL(10,2) NOT NULL CHECK (preco_unitario >= 0),
    PRIMARY KEY (id_pedido, sku_produto)
);
