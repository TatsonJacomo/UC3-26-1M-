link para realização do exercício 6. 
https://leosouzasenac.github.io/exercicio-banco-de-dados/mercadinho


```sql
-- Mercadinho do Seu Zé

-- Crie um banco chamado mercadinho_do_ze.    (1)
CREATE DATABASE mercadinho_do_ze;

USE mercadinho_do_ze;


-- Crie a tabela produtos com:           (2)
-- id_produto, nome, categoria, preco, estoque
CREATE TABLE produtos ( id_produto INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
categoria VARCHAR(50),
preco DECIMAL(10,2),
estoque INT
); 


-- Crie a tabela clientes:         (3)
-- id_cliente, nome, telefone, saldo_fiado
CREATE TABLE clientes (id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
telefone VARCHAR(20),
saldo_fiado DECIMAL(10,2)
 DEFAULT 0
);


-- Crie a tabela vendas:              (4)
-- id_venda, id_cliente, data_venda
-- id_cliente deve ser uma FOREIGN KEY apontando pra clientes(id_cliente).
CREATE TABLE vendas (id_venda INT PRIMARY KEY AUTO_INCREMENT,
id_cliente INT,
data_venda DATE,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);


-- Crie a tabela itens_venda:        (5)
-- id_item, id_venda, id_produto, quantidade
-- As duas últimas colunas devem ser FOREIGN KEYS.
CREATE TABLE itens_venda(id_item INT PRIMARY KEY AUTO_INCREMENT,
id_venda INT,
id_produto INT,
quantidade INT,
FOREIGN KEY (id_venda) REFERENCES vendas(id_venda),
FOREIGN KEY (id_produto) REFERENCES  produtos(id_produto)
);


-- Insira em produtos pelo menos 4 itens, por exemplo:     (6)
-- Cerveja Lata 350ml — Bebidas — R$ 4,50 — estoque 120
-- Coxinha Congelada — Salgados — R$ 3,20 — estoque 60
-- Refrigerante 2L — Bebidas — R$ 8,90 — estoque 40
-- Pão de Forma — Padaria — R$ 7,00 — estoque 25
INSERT INTO produtos (nome, categoria, preco, estoque) 
VALUES
('Cerveja Lata 350ml', 'Bebidas', 4.50, 120),
('Coxinha Congelada', 'Salgados', 3.20, 60),
('Refrigerante 2L', 'Bebidas', 8.90, 40),
('Pão de Forma', 'Padaria', 7.00, 25);


-- Insira em clientes pelo menos 3 pessoas, incluindo:      (7)
-- Dona Marlene — telefone e saldo_fiado de R$ 45,00
-- Seu Chico — telefone e saldo_fiado de R$ 0,00 (por enquanto)
-- Mais um cliente de sua escolha
INSERT INTO clientes (nome, telefone, saldo_fiado)
VALUES 
('Dona Marlene', '(77) 98144-2585', 45.00),
('Professor Leo', '(11) 99265-3810', 1.90);

INSERT INTO clientes (nome, telefone)
VALUES 
('Seu Chico', '(62) 99956-8965');


-- Registre a venda:       (8)
-- Um INSERT em vendas para o Seu Chico, com a data de hoje.
-- Dois INSERT em itens_venda: 2 cervejas e 1 coxinha, ligados a essa venda.

INSERT INTO vendas (id_cliente, data_venda)
VALUES (1, '2026-08-13');

INSERT INTO itens_venda(id_venda, id_produto, quantidade)
VALUES
(1, 1, 2),
(1, 2, 1);


-- Atualize:     (9)
-- O estoque da Cerveja Lata 350ml deve passar para 18.
UPDATE produtos 
SET estoque = 18
WHERE id_produto = 1; 


-- Atualize:     (10)
-- O preco da Coxinha Congelada deve passar para 2,25.
UPDATE produtos
SET preco = 2.25
WHERE id_produto = 2;


-- Atualize:       (11)
-- O saldo_fiado da Dona Marlene deve voltar para 0
UPDATE clientes
SET saldo_fiado = 0
WHERE id_cliente = 2;


-- Remova:       (12)
-- O produto Pão de Forma deve ser excluído da tabela produtos.

DELETE FROM produtos WHERE id_produto = 4;

-- Sem apagar nenhuma tabela, faça:    (13)
-- Adicione a coluna validade (data) em produtos.
-- Renomeie a coluna telefone de clientes para whatsapp — "ninguém mais liga, só manda mensagem", disse o fiscal.
-- Aumente a coluna categoria de produtos para até 80 caracteres, porque "Bebidas Alcoólicas Artesanais Importadas" não coube.

ALTER TABLE produtos
ADD COLUMN validade DATE;

ALTER TABLE clientes
RENAME COLUMN telefone TO whatsapp;

ALTER TABLE produtos MODIFY COLUMN categoria VARCHAR(80);


-- Corrija sem recriar a tabela:    (14)
-- Adicione uma constraint chamada
-- fk_item_produto ligando id_produto em itens_venda a produtos(id_produto).
ALTER TABLE itens_venda
ADD CONSTRAINT fk_item_produto
FOREIGN KEY (id_produto) REFERENCES produtos(id_produto);

-- Parte A — Venda cancelada:    (15)
-- Seu Chico desistiu de um item da venda de hoje.
-- Remova apenas essa linha de itens_venda (não a venda inteira).

-- Parte B — Tabela de teste:
-- Existe uma tabela temporária chamada testes_estagiario usada só para treino. Apague-a de vez.

-- Parte C — Só no papel:
-- Escreva o comando que apagaria o banco mercadinho_do_ze inteiro — mas não execute. 
-- É só para o Seu Zé ver e assinar embaixo, autorizando (ou não).

DELETE FROM itens_venda WHERE id_item = 1;

DROP TABLE testes_estagiario;

DROP DATABASE mercadinho_do_ze;

```
