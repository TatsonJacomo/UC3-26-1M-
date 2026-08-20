-- Continação
-- (1)
-- Liste todos os produtos da tabela produtos que participam do Clube 
-- ou seja, todos, menos a categoria "Bebida Alcoólica Importada".
SELECT * FROM produtos
WHERE categoria <> 'Bebida Alcoolica Importada';

-- (2)
-- Selecione os produtos com preco maior que 50 
-- esses vão entrar na lista de pontos em dobro.
SELECT * FROM produtos
WHERE preco > 50;

-- (3)
-- Selecione os produtos com preco menor que 10 
-- esses entram na campanha de pontos triplos.
SELECT * FROM produtos
WHERE preco < 10;

-- (4)
-- Sua missão, na tabela clientes:
-- Liste quem tem pontos maior ou igual a 100 (rancho completo).
-- Depois, liste quem tem pontos menor ou igual a 30 (prêmio de consolação).
SELECT * FROM clientes
WHERE pontos >= 100;

SELECT * FROM clientes
WHERE pontos <=30;

-- (5)
-- Selecione, na tabela clientes, quem tem categoria_favorita igual a 'Bebidas' e pontos maior que 80.
SELECT * FROM clientes
WHERE categoria_favorita = 'Bebidas'
AND pontos > 80;

-- (6)
-- Selecione, em clientes, quem tem pontos maior ou igual a 90 ou compras_semana maior que 5.
SELECT * FROM clientes
WHERE pontos >= 90 
OR compras_semana > 5;

-- (7)
-- Refaça a consulta do Dia 1 (produtos que participam do Clube), mas agora usando NOT em vez de <>.
SELECT * FROM produtos
WHERE NOT categoria = 'Bebida Alcoólica Importada';

-- (8)
-- Selecione, em clientes, quem tem pontos entre 50 e 90 (incluindo as pontas).
SELECT * FROM clientes
WHERE pontos 
BETWEEN 50 AND 90;

-- (9)
-- Selecione, em produtos, os itens cuja categoria esteja entre 'Bebidas', 'Salgados' e 'Padaria'.
SELECT * FROM produtos
WHERE categoria IN ('Bebidas', 'Salgados', 'Padaria');

-- (10)
-- Alguém pergunta: "tem algum prêmio que começa com 'Kit'?"
-- Outra pessoa pergunta: "e um que termina com 'Especial'?"
SELECT * FROM premios
WHERE nome LIKE 'Kit%';

SELECT * FROM premios
WHERE nome LIKE '%Especial';

-- (11)
-- Selecione, em clientes, quem tem "arlene" em qualquer parte do nome.
SELECT * FROM clientes
WHERE nome LIKE '%arlene%';

-- (12)
-- Selecione, em clientes, quem tem ano_cadastro começando com "198" — não importa o último dígito.
SELECT * FROM clientes
WHERE ano_cadastro LIKE '198_'
