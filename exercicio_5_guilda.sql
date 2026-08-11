-- PROGRESSO 1/13
-- CRIANDO O BANCO DE DADOS (1)
CREATE DATABASE guilda_aventureiros;

-- SELECIONA PARA USAR
USE guilda_aventureiros;

-- CRIAR TABELA aventureiros (2)
CREATE TABLE aventureiros (
id_aventureiro INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
classe VARCHAR(50),
nivel INT
);

-- CRIAR TABELA missoes (3)
CREATE TABLE missoes (
id_missoes INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
recompensa DECIMAL(10,2),
dificuldade VARCHAR(50)
);

-- Aterar o nome id_missoes para id_missao
ALTER TABLE missoes
RENAME COLUMN
id_missoes TO
id_missao;

-- CRIAR TABELA aventuras (4)
CREATE TABLE aventuras(
id_aventura INT PRIMARY KEY AUTO_INCREMENT,
id_aventureiro INT,
id_missao INT,

-- As duas últimas colunas deverão ser FOREIGN KEYS.
FOREIGN KEY (id_aventureiro) REFERENCES aventureiros(id_aventureiro), 
FOREIGN KEY (id_missao) REFERENCES missoes(id_missao)
);

-- Adicione uma coluna chamada mana na tabela aventureiros. (5)
ALTER TABLE aventureiros ADD COLUMN mana INT;

-- A coluna classe agora deve aceitar até 100 caracteres. (6)
ALTER TABLE aventureiros MODIFY COLUMN classe VARCHAR(100)

--  Renomeie a coluna: recompensa -> recompensas_moedas (7)
ALTER TABLE missoes 
RENAME COLUMN recompensa TO recompensa_moedas;

-- Crie a tabela monstros: (8)
CREATE TABLE monstros (
id_monstrO INT PRIMARY KEY 
AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
vida INT NOT NULL,
nivel INT NOT NULL );

ALTER TABLE monstros RENAME COLUMN id_monstrO TO id_monstro;


-- Crie monstros_derrotados: id_derrota, id_aventureiro, id_monstro
-- As duas últimas são FOREIGN KEYS. (9)
CREATE TABLE monstros_derrotados (
id_derrota INT  PRIMARY KEY
AUTO_INCREMENT,
id_aventureiro INT,
id_monstro INT,
FOREIGN KEY (id_aventureiro) REFERENCES
aventureiros(id_aventureiro),
FOREIGN KEY (id_monstro) REFERENCES
monstros(id_monstro)
);

-- Corrija sem apagar a tabela:
-- Adicione uma constraint chamada fk_monstro ligando
-- id_monstro a monstros(id_monstro). (10)
ALTER TABLE monstros_derrotados
ADD CONSTRAINT fk_monstro
FOREIGN KEY (id_monstro)
REFERENCES monstros(id_monstro);


-- Remova: A coluna mana da tabela aventureiros. (11)
ALTER TABLE aventureiros
DROP COLUMN mana;

-- Renomeie a tabela:
-- aventuras → participacoes_missoes (12)
ALTER TABLE aventurasnm 
RENAME TO participacoes_missoes;

-- Parte A: Apague a tabela monstros_derrotados. (13)
-- Parte B: Escreva o comando que apagaria o banco guilda_aventureiros, mas não execute.
DROP TABLE monstros_derrotados;
DROP DATABASE guilda_aventureiros;