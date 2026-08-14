### DQL - Como buscar informações

## DQL significa `Data Query Language`, ou `Linguagem de Consulta de Dados`. Através dela nós conseguimos buscar os dados que precisamos. Todos os comandos de DQL envolvem o `SELECT`.

## Passo 1 - Como selecionar todas as colunas e linhas de umas tabela:
```sql
SELECT * FROM nome_da_tabela;
```

```sql
SELECT * FROM livros;
```

## Passo 2 - Como selecionar uma coluna especifica:
```sql
SELECT nome_da_coluna FROM nome_da_tabela;
```

```sql
SELECT titulo FROM livros;
```

## Passo 3 - Como selicionar várias colunas de uma tabela:

```sql
SELECT nome_da_coluna, nome_da_ outra_coluna FROM nome_da_tabela;
```

```sql
SELECT titulo, autor FROM livros;
```

## Passo 4 - Como dar um "apelido" para uma ou masi coluna  (APENAS NA HORA DA PESQUISA):
```sql
SELECT nome_da_tabela AS apelido_da_coluna FROM nome_da_tabela;
```

```sql
SELECT titulo AS Titulo_de_livros FROM livros;
```

```sql
SELECT titulo AS Titulo_de_livros, autor AS Autor_do_livro  FROM livros;
```

## Passo 5 - Como fazer uma consulta com condição (por exemplo, ao inves de selicionar TODOS os livros, quero apenas os livros de autor X):

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
