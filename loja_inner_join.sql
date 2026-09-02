-- Banco de dados
CREATE DATABASE loja_inner_join;

USE loja_inner_join;


-- Tabelas
CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(80) NOT NULL,
    estado CHAR(2) NOT NULL
);


CREATE TABLE vendedor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    setor VARCHAR(50) NOT NULL
);


CREATE TABLE categoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL
);


CREATE TABLE produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id INT NOT NULL,

    FOREIGN KEY (categoria_id)
        REFERENCES categoria(id)
);


CREATE TABLE pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    vendedor_id INT NOT NULL,
    data_pedido DATE NOT NULL,
    status VARCHAR(30) NOT NULL,

    FOREIGN KEY (cliente_id)
        REFERENCES cliente(id),

    FOREIGN KEY (vendedor_id)
        REFERENCES vendedor(id)
);


CREATE TABLE item_pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT NOT NULL,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,

    FOREIGN KEY (pedido_id)
        REFERENCES pedido(id),

    FOREIGN KEY (produto_id)
        REFERENCES produto(id)
);

-- Inserts
-- Clientes
INSERT INTO cliente (nome, cidade, estado) VALUES
('Ana Souza', 'Porto Alegre', 'RS'),
('Bruno Lima', 'São Leopoldo', 'RS'),
('Carla Mendes', 'Novo Hamburgo', 'RS'),
('Diego Alves', 'Canoas', 'RS'),
('Eduarda Martins', 'Florianópolis', 'SC'),
('Felipe Rocha', 'Curitiba', 'PR'),
('Gabriela Silva', 'Porto Alegre', 'RS'),
('Henrique Costa', 'São Paulo', 'SP'),
('Isabela Ferreira', 'Caxias do Sul', 'RS'),
('João Oliveira', 'Blumenau', 'SC'),
('Karen Rodrigues', 'Novo Hamburgo', 'RS'),
('Lucas Pereira', 'Canoas', 'RS');

-- Vendedores
INSERT INTO vendedor (nome, setor) VALUES
('Marcos Silva', 'Informática'),
('Juliana Alves', 'Eletrônicos'),
('Roberto Santos', 'Casa'),
('Patrícia Gomes', 'Games'),
('Fernando Lima', 'Geral');

-- Categorias
INSERT INTO categoria (nome) VALUES
('Computadores'),
('Periféricos'),
('Celulares'),
('Games'),
('Casa Inteligente'),
('Áudio');

-- Produtos
INSERT INTO produto (nome, preco, estoque, categoria_id) VALUES
('Notebook Lenovo', 3499.90, 15, 1),
('Notebook Acer', 2899.90, 8, 1),
('Monitor 24 Polegadas', 899.90, 20, 2),
('Mouse Logitech', 129.90, 50, 2),
('Teclado Mecânico', 299.90, 30, 2),
('Galaxy S25', 4999.90, 12, 3),
('iPhone 16', 6999.90, 10, 3),
('Controle Xbox', 449.90, 25, 4),
('PlayStation 5', 3999.90, 7, 4),
('Nintendo Switch', 2199.90, 11, 4),
('Lâmpada Inteligente', 89.90, 40, 5),
('Echo Dot', 399.90, 18, 5),
('Fone Bluetooth JBL', 349.90, 35, 6),
('Caixa de Som JBL', 599.90, 16, 6),
('Headset Gamer', 279.90, 22, 6);

-- Pedidos
INSERT INTO pedido (cliente_id, vendedor_id, data_pedido, status) VALUES
(1, 1, '2026-08-01', 'Entregue'),
(2, 4, '2026-08-02', 'Entregue'),
(3, 2, '2026-08-03', 'Enviado'),
(1, 2, '2026-08-05', 'Entregue'),
(4, 3, '2026-08-06', 'Cancelado'),
(5, 1, '2026-08-07', 'Entregue'),
(6, 4, '2026-08-08', 'Enviado'),
(7, 5, '2026-08-10', 'Entregue'),
(8, 2, '2026-08-11', 'Processando'),
(9, 1, '2026-08-12', 'Entregue'),
(10, 3, '2026-08-14', 'Enviado'),
(2, 1, '2026-08-15', 'Entregue'),
(11, 4, '2026-08-17', 'Processando'),
(12, 5, '2026-08-18', 'Entregue'),
(3, 1, '2026-08-20', 'Entregue'),
(7, 4, '2026-08-22', 'Enviado'),
(1, 5, '2026-08-24', 'Processando'),
(9, 2, '2026-08-25', 'Entregue');

-- Itens dos pedidos
INSERT INTO item_pedido (pedido_id, produto_id, quantidade) VALUES
(1, 1, 1),
(1, 4, 2),

(2, 9, 1),
(2, 8, 2),

(3, 6, 1),
(3, 13, 1),

(4, 7, 1),

(5, 11, 3),

(6, 2, 1),
(6, 5, 1),

(7, 10, 1),
(7, 8, 1),

(8, 12, 2),
(8, 11, 4),

(9, 7, 1),
(9, 13, 2),

(10, 3, 2),
(10, 4, 1),

(11, 12, 1),
(11, 14, 1),

(12, 1, 1),
(12, 3, 1),
(12, 5, 1),

(13, 9, 1),
(13, 15, 1),

(14, 14, 2),

(15, 2, 1),
(15, 4, 1),
(15, 13, 1),

(16, 10, 1),
(16, 15, 2),

(17, 6, 1),
(17, 12, 1),

(18, 3, 1),
(18, 5, 1);


SELECT * FROM cliente;

SELECT * FROM pedido;

/*
Exercícios de INNER JOIN

Parte 1 — JOIN entre duas tabelas

1. Clientes e pedidos
Mostre todos os pedidos juntamente com o nome do cliente que realizou cada pedido.

Mostre:

número do pedido;
nome do cliente;
data do pedido;
status.

*/
SELECT pedido.id, cliente.nome, pedido.data_pedido, pedido.status
FROM pedido 
INNER JOIN cliente ON pedido.cliente_id = cliente.id;

-- com apelido
SELECT p.id AS numero_do_pedido, cliente.nome, p.data_pedido, p.status
FROM pedido AS p
INNER JOIN cliente ON p.cliente_id = cliente.id
ORDER BY p.id;

/*
2. Produtos e categorias
Mostre todos os produtos juntamente com a categoria à qual pertencem.

Mostre:

nome do produto;
preço;
nome da categoria.

*/
SELECT p.nome AS nome_do_produto, p.preco, c.nome AS nome_da_categoria
FROM produto AS p
INNER JOIN categoria AS c ON p.categoria_id = c.id;


/*
3. Pedidos e vendedores
Queremos descobrir qual vendedor foi responsável por cada pedido.

Mostre:

número do pedido;
nome do vendedor;
setor do vendedor;
data do pedido.
*/

SELECT p.id AS numero_do_pedido, v.nome AS nome_do_vendedor, v.setor AS setor_do_vendedor, p.data_pedido AS data_do_pedido
FROM vendedor AS v
INNER JOIN pedido AS p ON v.id = p.id;


/*
4. Itens e produtos
Mostre os produtos existentes nos itens dos pedidos.

Mostre:

número do item;
nome do produto;
quantidade.
*/

SELECT i.id AS numero_do_item, p.nome AS nome_do_produto, i.quantidade AS quantidade
FROM produto AS p
INNER JOIN item_pedido AS i ON p.id = i.id;

/*Parte 2 — JOIN entre três tabelas

5. Cliente responsável por cada produto comprado
Queremos saber quem comprou cada produto.

Relacione:

cliente → pedido → item_pedido

Mostre:

nome do cliente;
número do pedido;
número do produto;
quantidade comprada.
*/

SELECT cliente.nome AS nome_do_cliente, pedido.id AS numero_do_pedido, produto.id AS numero_do_produto, item_pedido.quantidade AS quantidade_comprada
FROM item_pedido
INNER JOIN pedido ON item_pedido.pedido_id = pedido.id
INNER JOIN produto ON item_pedido.produto_id = produto.id
INNER JOIN cliente ON pedido.cliente_id = cliente.id;

/*6. Produtos existentes em cada pedido
Mostre todos os pedidos e os produtos que fazem parte deles.

Mostre:

número do pedido;
nome do produto;
quantidade.
*/

SELECT pedido.id AS numero_do_pedido, produto.nome AS nome_do_produto, item_pedido.quantidade AS quantidade
FROM produto
INNER JOIN pedido ON 

/*
7. Clientes e vendedores
Queremos saber qual vendedor atendeu cada cliente em cada compra.

Mostre:

nome do cliente;
nome do vendedor;
número do pedido;
data do pedido.
*/

/*
8. Produto e sua categoria
Mostre apenas os produtos que já apareceram em algum pedido.

Relacione:

item_pedido → produto → categoria

Mostre:

nome do produto;
categoria;
quantidade comprada.
*/

/*
Parte 3 — JOIN entre quatro tabelas
9. Histórico de compras
Crie uma consulta mostrando um histórico detalhado das compras.

Relacione:

cliente → pedido → item_pedido → produto

Mostre:

nome do cliente;
número do pedido;
nome do produto;
quantidade;
preço do produto.
*/

/*
10. Histórico de vendas por vendedor
Queremos visualizar todos os produtos vendidos por cada vendedor.

Relacione:

vendedor → pedido → item_pedido → produto

Mostre:

vendedor;
número do pedido;
produto;
quantidade.
*/

/*
11. Produtos comprados por clientes do Rio Grande do Sul
Mostre somente compras realizadas por clientes cujo estado seja RS.

Mostre:

cliente;
cidade;
produto;
quantidade.
*/

/*
12. Pedidos entregues
Mostre somente os produtos pertencentes a pedidos com status:

Entregue
Mostre:

número do pedido;
cliente;
produto;
quantidade.
*/

/*
Parte 4 — JOIN entre cinco tabelas
13. Relatório completo de vendas
Relacione:

cliente
↓
pedido
↓
item_pedido
↓
produto
↓
categoria
Mostre:

cliente;
número do pedido;
data;
produto;
categoria;
quantidade;
preço.
14. Produtos da categoria Games
Mostre todas as compras de produtos pertencentes à categoria:

Games
Mostre:

cliente;
produto;
quantidade;
data do pedido.
15. Compras de computadores
Mostre os clientes que compraram produtos da categoria:

Computadores
Mostre:

cliente;
cidade;
produto;
preço;
data da compra.
Parte 5 — JOIN com cálculos
Aqui já começa a ficar mais interessante.

16. Valor de cada item comprado
Sabemos que:

valor do item = preço × quantidade
Mostre:

número do pedido;
produto;
preço unitário;
quantidade;
valor do item.
17. Valor dos itens comprados por cada cliente
Mostre cada produto comprado e quanto aquele item custou para o cliente.

Mostre:

cliente;
produto;
quantidade;
preço;
valor do item.
18. Compras acima de R$ 1.000
Mostre somente os itens cujo:

preço × quantidade
seja superior a 1000.

Mostre:

cliente;
produto;
quantidade;
valor do item.
19. Compras feitas pelo vendedor Marcos Silva
Mostre todos os produtos vendidos pelo vendedor:

Marcos Silva
Mostre:

cliente;
produto;
quantidade;
data da venda.
20. Celulares vendidos
Mostre todas as vendas de produtos da categoria:

Celulares
Mostre:

cliente;
vendedor;
produto;
quantidade;
status do pedido.
Desafio final
21. Relatório detalhado
A empresa quer gerar uma tabela com o histórico completo das vendas.

O resultado deverá apresentar:

número do pedido;
data;
cliente;
cidade do cliente;
vendedor;
setor do vendedor;
produto;
categoria;
preço unitário;
quantidade;
valor total daquele item;
status do pedido.
Organize os resultados do pedido mais recente para o mais antigo.

Para chegar ao resultado, será necessário relacionar todas as seis tabelas do banco.
*/