### Passo 5 - Como alterar tabelas ja criadas

### Alterar e adicionar uma coluna nova:
```sql
ALTER TABLE nome_da_tabela AND COLUMN nome_da_coluna TIPO;
```

```sql
ALTER TABLE clientes AND COLUMN cpf  VARCHAR(11) NOT NULL UNIQUE;
```


### Alterar e mudar o tipo e/ou o tamamho de uma coluna
```sql
ALTER TABLE nome_da_tabela MODIFY COLUMN nome_da_coluna
TIPO;
```

```sql 
ALTER TABLE clientes MODIFY COLUMN nome VARCHAR(150);
```


### Alterar e renomear uma tabela

```sql
ALTER TABLE nome_da_tabela RENAME TO nome_novo_da_tabela;
```

```sql
ALTER TABLE itens_vendas RENAME TO itens;
```


### Alterar e renomear uma coluna

```sql
ALTER TABLE nome_da_tabela
RENAME COLUMN
nome_antigo_da_coluna TO
nome_novo_da_coluna;
```

```sql
ALTER TABLE itens_vendas
 RENAME COLUMN 
quantidade TO qtd;
```

### Alterar e remover uma coluna

```sql 
ALTER TABLE nome_da_tabela DROP COLUMN nome_da_coluna;
```

```sql
ALTER TABLE clientes DROP COLUMN cpf;
```


> PUTS, ESQUECI DA FOREIGN KEY! É AGORA?

### Alterar e adicionar chaves estrangeiras (foreign keys)
```sql
ALTER TABLE nome_da_tabela AND CONSTRAINT nome_da_fk FOREIGN KEY (nome_da_coluna_fk) REFERENCES nome_da_tabela_referenciada (nome_da_coluna_referenciada);
```

```sql
ALTER TABLE itens_vendas AND CONSTRAINT fk_vendas FOREIGN KEY (id_venda) REFERENCES vendas (id_venda);
```


### Passo 6 - Mandando as tabelas de arrasta

Como que fazemos para apagar nossas tabelas? Se criamos uma tabela que não vamos mais precisar, temos que ter um jeito de mandar ela pro vinagre.

>TEMOS QUE TER CUIDADO, POIS ESTE COMANDO É **IRREVERSÍVEL**

### Apagar uma tabela interia:
```sql
DROP TABLE IF EXISTS nome_da_tabela;
```

```sql
DROP TABLE IF EXISTS itens;
```


### Apagar um BANCO DE DADOS INTEIRO:

```sql
DROP TABLE IF EXISTS nome_do_coitado;
```

```sql
DROP TABLE IF EXISTS loja_biciclet;
