CREATE DATABASE carros;

USE carros;


-- 1. Crie uma tabela carros, com id_carro, modelo, cor e marca.

CREATE TABLE carros (
id_carro INT PRIMARY KEY,
modelo VARCHAR(100) NOT NULL,
cor VARCHAR(50) NOT NULL,
marca VARCHAR(100) NOT NULL
);

-- RENOMEAR A COLUNA id_carros PARA  id_carro
ALTER TABLE carros
RENAME COLUMN id_carros TO id_carro;


-- 2. Insira pelo menos 10 carros, divididos entre 3 marcas e 2 cores.

INSERT INTO carros (id_carro, modelo, cor, marca) VALUES
(1,'Peugeot 206', 'preto', 'PEUGEOT'),
(2,'Nivus', 'vermelho','VOLKSWAGEN'),
(3, 'Ferrari Roma', 'preto', 'FERRARI'),
(4,'Peugeot 3008', 'vermelho', 'PEUGEOT'),
(5, 'Polo', 'preto', 'VOLKSWAGEN'),
(6, 'Ferrari SF90', 'vermelho', 'FERRARI'),
(7, 'Peugeot 208', 'preto', 'PEUGEOT'),
(8,'Saveiro', 'vermelho', 'VOLKSWAGEN'),
(9, 'Ferrari 488 GTB', 'vermelho', 'FERRARI'),
(10, 'Peugeot 2008', 'preto', 'PEUGEOT');


-- 3. Selecione TUDO da tabela carros.

SELECT * FROM carros;

-- 4. Selecione apenas a coluna modelo.

SELECT modelo FROM carros;

-- 5. Selecione apenas as colunas modelo e marca.

SELECT modelo, marca FROM carro;

-- 6. Selecione apenas os carros que tiverem a marca FERRARI.

SELECT * FROM carros WHERE marca = 'FERRARI';

-- 7. Selecione a marca e a cor , mas apenas dos carros que tiverem a cor vermelho. Coloque o apelido Marca_Do_Carro e Cor_Do_Carro.

SELECT marca AS Marca_Do_Carro, cor AS Cor_Do_Carro
FROM carros
WHERE cor = 'vermelho';