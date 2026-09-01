### DQL - Como buscar informações

## DQL significa `Data Query Language`, ou `Linguagem de Consulta de Dados`. Através dela nós conseguimos buscar os dados que precisamos. Todos os comandos de DQL envolvem o `SELECT`.

### Passo 1 - Como selecionar todas as colunas e linhas de umas tabela:
```sql
SELECT * FROM nome_da_tabela;
```

```sql
SELECT * FROM livros;
```

### Passo 2 - Como selecionar uma coluna especifica:
```sql
SELECT nome_da_coluna FROM nome_da_tabela;
```

```sql
SELECT titulo FROM livros;
```

### Passo 3 - Como selicionar várias colunas de uma tabela:

```sql
SELECT nome_da_coluna, nome_da_ outra_coluna FROM nome_da_tabela;
```

```sql
SELECT titulo, autor FROM livros;
```

### Passo 4 - Como dar um "apelido" para uma ou masi coluna  (APENAS NA HORA DA PESQUISA):
```sql
SELECT nome_da_tabela AS apelido_da_coluna FROM nome_da_tabela;
```

```sql
SELECT titulo AS Titulo_de_livros FROM livros;
```

```sql
SELECT titulo AS Titulo_de_livros, autor AS Autor_do_livro  FROM livros;
```

### Passo 5 - Como fazer uma consulta com condição (por exemplo, ao inves de selicionar TODOS os livros, quero apenas os livros de autor X):

```sql
SELECT * FROM nome_da_tabela WHERE condicao
```

```sql
-- Selecione apenas os livros que tiverem a coluna autor com alor igual a "J. R. R. Xablau"
-- Traduzindo: seleciona apenas os livros do autor "J. R. R. Xablau"
SELECT * FROM livros WHERE autor = "J. R. R. Xablau"
```


### Exercicio:

Crie uma tabela carros, com id_carro, modelo, cor e marca.

Insira pelo menos 10 carros, divididos entre 3 marcas e 2 cores.

Selecione TUDO da tabela carros.

Selecione apenas a coluna modelo.

Selecione apenas as colunas modelo e marcas.

Selecione apenas os carros que tiverem a marca `FERRARI`.

Selecione a marca e a cor , mas apenas dos carros que tiverem a cor `vermelho`. Coloque o apelido Marca_Do_Carro e Cor_Do_Carro.




### Passo 6 - Como selecionar tudo de uma tabela que seja DIFERENTE de algo (mostra tudo menos aquele valor)

```sql
-- Selecione todos os livros MENOS os que são do genero fantasia
SELECT * FROM livros
WHERE genero <> 'Fantasia'
```

### Passo 7 - Como selecionar apenas valores que são MAIORES que algo
```sql
-- Seleciona livros que tenham o preco MAIOR do que 50
SELECT * FROM livros
WHERE preco > 50
```

### Passo 8 - Como selecionar apenas valores que são MENORES que algo
```sql
-- Seleciona livros que temham o preco MENOR que 30
SELECT * FROM livros
WHERE preco < 30
```

### Passo 9 - Como selecionar valores MAIORES  ou IGUAIS ou estão MENORES ou IGUAIS
```sql
SELECT * FROM livros WHERE preco >= 10
```

```sql
-- Seleciona livros que tenham o preco MENOR ou IGUal a 10
SELECT * FROM livros WHERE preco <= 10
```

### Passo 10 - Como selecionar com duas ou mais condições ao mesmo tempo
```sql
-- Seleciona livros que tenham o gênero FANTASIA mas que também tem o preco MENOR QUE 60
SELECT * FROM livros 
WHERE genero = 'Fantasia' AND preco < 60
```

### Passo 11 - Como selecionar com uma condição OU outra ao mesmo tempo
```sql
SELECT * FROM livros 
WHERE genero = 'Fantasia' OR genero = 'Drama'
```

### Passo 12 - Como selecionar EXCLUINDO  determinado valor da consulta (funciona parecido com o DIFERENTE <>)
```sql
SELECT * FROM livros 
WHERE NOT genero = 'Fantasia'
```

### Passo 13 - Como selecionar apenas valores entre determinado intervalo
```sql
-- Seleciona apenas livros cujo preco está entre 20 e 50
SELECT * FROM livros
WHERE preco BETWEEN 20 AND 50
```
### Passo 14 - Como selecionar apenas valores entre os que listamos 
```sql
-- Seleciona apenas os livros dos gêneros Fantasia  e/ou Romance (poderia ser mais que 2)
SELECT * FROM livros 
WHERE genero IN ('Fantasia', 'Romance');
``` 

```sql
-- Também podemos combinar usando AND, por exemplo:
SELECT * FROM livros
WHERE preco IN ('Fantasia', 'Romance') AND preco > 30;
```

### Passo 15 - Como selecionar  apenas um valor que COMEÇA ou TERMINA com tal(is) caractere(s)
```sql
-- Seleciona apenas o livro que começa com O:
SELECT * FROM livros WHERE titulo LIKE 'O%';
```

```sql
-- Seleciona apenas livros que terminam com Bichos:
SELECT * FROM livros WHERE titulo LIKE 'Bichos';
```


### Passo 16 - Como selecionar um valor que CONTÉM tal(is) caractere(s)
```sql
-- Seleciona livros com CONTÉM 'aventura' no titulo, não importa aonde:
SELECT* FROM livros WHERE titulo LIKE 'aventura';
```


### Passo 17 - Como selecionar um valor que tem um ou mais caracteres 'faltando' (por exemplo, selecionar um ano da decada de 90 sem se importar se é 91, 92, 93, etc...):
```sql
SELECT * FROM livros
WHERE ano_publicacao LIKE '198_'
```


Exercicio ¬

https://leosouzasenac.github.io/exercicio-banco-de-dados/seu-ze-wars.html


### Passo 18 - Como selecionar algo e ordenar por ordem alfabetica:

```sql
-- Ordena os livros por titulo, de Z a A
SELECT * FROM livro
ORDER BY titulo DESC;
```

```sql
-- Ordena os livros por titulo, de A a Z
SELECT * FROM livro
ORDER BY titulo ASC;
```


### Passo 19 - Como limitar o numero de resultados de um select:
```sql
-- Traz só 5 livros
SELECT * FROM livro LIMIT 5;
```

```sql
-- Select com where + oder by + limit.
-- Sim, da pra combinar várias coisas em um select. 
SELECT * FROM livro
WHERE ano_publicacao > 1943
ORDER BY ano_publicacao LIMIT 3;
```


### Passo 20 - Como contar o numero de registro:
Podemos fazer isso utlizando a função de agregação COUNT(*). Ela conta quantos registros existem na nossa tabela e obedecem a tal condição(se houver).

```sql
-- Conta quantos filmes exitem na tabela 
SELECT COUNT(*) FROM filme;
```

```sql
-- Conta quantos filmes de ação exitem na tabela 
SELECT COUNT(*) FROM filme WHERE genero = 'Ação';
```

```sql
-- Conta quantos filmes exitem sem  contar valores nulos 
SELECT COUNT(nome_da_coluna) FROM filme;
```

### Passo 21 - Como somar valores de uma tabela:
PAra somar qualquer valor numero podemmos usar a função SUM(nome_da_coluna). Ela faz a soma de todos os valores que selecionamos, com ou sem WHERE. 

```sql
SELECT SUM(nome_da_coluna) FROM filme;

-- Soma toda a coluna bilheteria 
SELECT SUM(bilheteria) FROM filme;
```

```sql
-- Soma a bilheteria dos filmes de 2020 em diante
SELECT SUM(bilheteria) FROM filme
 WHERE ano_lancamento >= 2020;
```

### Passo  22 - Como calcular media de valores de uma coluna
Podemos calcular a media NUMERICA de valores de uma coluna utilizando a função AVG(nome_da_coluna).

```sql
-- Calcula a media de bilheteria de todos os valores
SELECT AVG(bilheteria) FROM filme;
```

```sql
-- Calcula a media de biblioteca so dos filmes com notaa igual ou abaixo de 7
SELECT AVG(bilheteria) FROM filme
 WHERE nota  <= 7;
```

### Passo 23 - Como calcular a NEMOR VALOR  de uma coluna:
Para podermos encontrar o maior ou menor numero deum coluna, usamos MAX(nome_da_coluna) e MIN(nome_da_coluna).

```sql
-- Encontrar o filme com a MENOR nota:
SELECT MIN(nota) FROM filme;
```


```sql
-- Encontrar o filme com a MAIOR nota:
SELECT MAX(nota) FROM filme;
```

Em uma única consulta (um único SELECT), me mostre quantos filmes tem no total, qual a média das notas, qual a nota máxima e qual a nota minima. Usem apelidos para as colunas.

```sql
 SELECT COUNT(*) AS filmes,
 AVG(nota) AS media_das_notas,
 MAX(nota) AS nota_maxima,
 MIN(nota) AS nota_minima
 FROM filme; 
```




```sql
-- Conta quantos filmes tem na tabela.
SELECT COUNT(*) AS numer_de_filmes FROM filme;

-- Mostrar quantos filmes são de ação 
SELECT COUNT(*) AS numero_de_filmes_de_acao FROM filme
WHERE genero = 'Ação';

-- 	Conta quantas linhas existem
SELECT COUNT(bilheteria) FROM filme;

-- Soma os valores de uma coluna numérica
SELECT SUM(bilheteria) AS bitheteria_total FROM filme;

-- Soma a bilheteria dos filmes de 2020 em diante
SELECT SUM(bilheteria) FROM filme
 WHERE ano_lancamento >= 2020;
 
 
 SELECT AVG(bilheteria) FROM filme;
 -- Calcular a media da bilheteria dos filmes que tem nota MAIOR OU IGUAL a 8
 SELECT AVG(bilheteria) FROM filme
 WHERE nota  <= 7;
 
 
 SELECT COUNT(*) AS filmes,
 AVG(nota) AS media_das_notas,
 MAX(nota) AS nota_maxima,
 MIN(nota) AS nota_minima
 FROM filme; 
 
 -- Qual a quantidade de genero dos filmes
 SELECT	genero, COUNT(*) AS quantidade FROM filme
 GROUP BY genero;
 
 -- Qual a média das notas de cada gênero
  SELECT genero, AVG(nota) AS media FROM filme
 GROUP BY genero;
 
 -- Mostra a media em ordem
  SELECT genero, AVG(nota) AS quantidade FROM filme
 GROUP BY genero ORDER BY quantidade DESC;
 
 -- MAIOR NOTA 
   SELECT genero, AVG(nota) AS media FROM filme
 GROUP BY genero ORDER BY media DESC LIMIT 1;
 
 -- Mostre generos com ate 10 filmes
 SELECT genero, COUNT(*) AS quantidade FROM filme 
 GROUP BY  genero
 HAVING quantidade > 10;
 
 -- mostra todos os generos menos 'FIcção Científica'.
  SELECT genero, COUNT(*) AS quantidade FROM filme 
WHERE genero <> 'FIcção Científica'
 GROUP BY  genero
 HAVING quantidade >= 10;


 -- WHERE filtra linhas
 -- HAVING filtra grupos
 
 
 -- Quais gêneros possuem média de nota maior ou igual a 8?

-- separar os filmes por gênero
-- Calcula a media de cada gênero
 SELECT genero, AVG(nota) AS media_nota
 FROM filme GROUP BY genero
 HAVING media_nota >= 8 ORDER BY media_nota DESC;
 
 
 -- Quais países que produziram pelo menos 5 filmes?
 SELECT pais, COUNT(*) AS numero_filmes FROM filme
 GROUP BY pais
 HAVING numero_filmes >= 5;


-- Quero que me retorne apenas o Diretor com mais Oscars
SELECT diretor, COUNT(*) AS mais_oscars FROM filme
GROUP BY diretor
ORDER BY mais_oscars DESC
LIMIT 1;

-- Quais sao os 3 generos com maior média de nota?
-- Considere apenas generos que possuam pelo menos  5 filmes cadastrados.
-- o resultado deve mostrar:
-- gênero
-- quantidade de filmes
-- média das notas

-- Os resultados devem aparecer:
-- da maior média para a menor .
-- somente os 3 primeiros.alter

-- Escreva uma única consulta que resolva todo o preblema.

SELECT genero, COUNT(*) AS quantidade_filmes, 
AVG(nota) AS media_notas FROM filme
GROUP BY genero
HAVING COUNT(*) >= 5
ORDER BY media_notas DESC
LIMIT 3;
```


# JOIN - Como Juntar informações de duas ou mais tabelas

## JOIN significa , literalmente, JUNTAR. Ou seja, através deste comando, podemos fazer um QUERY (consulta) pegando informaões de várias tabelas diferentes, DESDE QUE ELAS

```sql
## INNER JOIN

/*
Para selecionar as colunas de várias tabelas, precisamos informar primeiro o nomer da tabela, depois um ponto (.) e depois o nome da coluna. EX: aluno.nome

Separamos as informações das várias tabelas com virgula. EX: aluno.nome, livro.titulo

agora pense: qual tabela possui as Fks? É esta tabela que vira depois dor FROM.

Então, precisamos fazer a junção com as outras tabelas. Para isso, usamos INNER JOIN + a próxima tabela + ON, e, depois do ON, precisamos identificar qual coluna nas duas tabelas liga uma na outra . Ou seja, as FOREIGN KEYS. EX: emprestimo.id_aluno = aluno.id_aluno.

Repita o processo de INNER JOIN para quantas tabelas forem necessarias.
*/

SELECT aluno.nome, livro.titulo, emprestimo.data_emprestimo
FROM emprestimo
INNER JOIN aluno ON emprestimo.id_aluno = aluno.id_aluno
INNER JOIN livro ON emprestimo.id_livro = livro.id_livro;
```


```sql


 -- JUNÇÕES (JOIN)
CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

DROP TABLE IF EXISTS emprestimo;
DROP TABLE IF EXISTS aluno;
DROP TABLE IF EXISTS livro;

CREATE TABLE aluno (
  id_aluno INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  turma VARCHAR(20)
);

CREATE TABLE livro (
  id_livro INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(150) NOT NULL,
  autor VARCHAR(100)
);

CREATE TABLE emprestimo (
  id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
  id_aluno INT NOT NULL,
  id_livro INT NOT NULL,
  data_emprestimo DATE NOT NULL,
  data_devolucao DATE,
  FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
  FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);

-- 4 alunos — repare que a "Duda" (id 4) nunca vai aparecer em nenhum empréstimo
INSERT INTO aluno (nome, turma) VALUES
('Bruno Lima', 'DS-2026'),
('Carla Nunes', 'DS-2026'),
('Diego Fontes', 'DS-2027'),
('Duda Ramos', 'DS-2027');

-- 4 livros — repare que "Vidas Secas" (id 4) nunca vai aparecer em nenhum empréstimo
INSERT INTO livro (titulo, autor) VALUES
('Dom Casmurro', 'Machado de Assis'),
('O Cortiço', 'Aluísio Azevedo'),
('Iracema', 'José de Alencar'),
('Vidas Secas', 'Graciliano Ramos');

-- 3 empréstimos, ligando só os 3 primeiros alunos aos 3 primeiros livros
INSERT INTO emprestimo (id_aluno, id_livro, data_emprestimo, data_devolucao) VALUES
(1, 1, '2026-08-01', '2026-08-15'),
(2, 2, '2026-08-03', NULL),
(1, 3, '2026-08-10', NULL);


SELECT * FROM aluno;
SELECT * FROM livro;
SELECT * FROM emprestimo;

-- INNER JOIN: só quem tem correspondência nos dois lados
-- O INNER JOIN é o mais comum. Ele só traz uma linha no resultado 
-- quando existe correspondência nas duas tabelas ao mesmo tempo.

SELECT aluno.nome, livro.titulo, emprestimo.data_emprestimo
FROM emprestimo
INNER JOIN aluno ON emprestimo.id_aluno = aluno.id_aluno
INNER JOIN livro ON emprestimo.id_livro = livro.id_livro;



-- 1) Mostre o nome do aluno que fez o empréstimo de ID 1 e a data do empréstimo. Use WHERE depois do inner join.

-- 2) Mostre o nome e a turma do aluno que fez o empréstimo de ID 2 (use WHERE  depois do inner join).

SELECT aluno.nome, emprestimo.data_emprestimo
FROM aluno
INNER JOIN emprestimo ON aluno.id_aluno = emprestimo.id_aluno
WHERE emprestimo.id_emprestimo = 1;


SELECT aluno.nome, aluno.turma
FROM aluno
INNER JOIN emprestimo ON aluno.id_aluno = emprestimo.id_aluno
WHERE emprestimo.id_emprestimo = 2;


-- OUTRA FORMA DE RESOLVER
SELECT aluno.nome, emprestimo.data_emprestimo
FROM emprestimo
INNER JOIN aluno ON emprestimo.id_aluno = aluno.id_aluno
WHERE emprestimo.id_emprestimo = 1;


SELECT aluno.nome, aluno.turma
FROM emprestimo
INNER JOIN aluno ON emprestimo.id_aluno = aluno.id_aluno
WHERE emprestimo.id_emprestimo = 2;


-- USANDO APELIDO E ABREVIANDO
 SELECT a.nome, e.data_emprestimo
FROM emprestimo AS e
INNER JOIN aluno AS a ON e.id_aluno = a.id_aluno
WHERE e.id_emprestimo = 1;


SELECT a.nome, a.turma
FROM emprestimo AS e
INNER JOIN aluno AS a ON e.id_aluno = a.id_aluno
WHERE e.id_emprestimo = 2;


```


