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
