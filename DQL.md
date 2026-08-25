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

