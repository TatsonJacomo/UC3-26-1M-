CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE livro (
id_livro INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(150) NOT NULL,
autor VARCHAR(100),
genero VARCHAR(50),
preco DECIMAL (10,2),
ano_publicacao INT,
disponivel BOOLEAN
);

INSERT INTO livro (titulo, autor, genero, preco, ano_publicacao, disponivel)
 VALUES
('O Senhor dos Anéis', 'J. R. R. Tolkien', 'Fantasia', 89.90, 1954, TRUE),
('O Hobbit', 'J. R. R. Tolkien', 'Fantasia', 54.90, 1937, TRUE),
('Dom Casmurro', 'Machado de Assis', 'Literatura Brasileira', 39.90, 1899, TRUE),
('Harry Potter e a Pedra Filosofal', 'J. K. Rowling', 'Fantasia', 44.90, 1997, FALSE),
('1984', 'George Orwell', 'Ficção Científica', 35.90, 1949, TRUE),
('O Alquimista', 'Paulo Coelho', 'Ficção', 49.90, 1988, TRUE),
('A Menina que Roubava Livros', 'Markus Zusak', 'Drama', 59.90, 2005, TRUE),
('O Código Da Vinci', 'Dan Brown', 'Suspense', 69.90, 2003, FALSE),
('Memórias Póstumas de Brás Cubas', 'Machado de Assis', 'Literatura Brasileira', 29.90, 1880, TRUE),
('A Revolução dos Bichos', 'George Orwell', 'Fábula', 28.90, 1945, TRUE);

-- Seleciona a Tabela
SELECT * FROM livro;

-- igual
SELECT *FROM livro
WHERE genero = 'Suspense';

-- Diferente (Se quiser selecionar todos menos esse)
SELECT * FROM livro
WHERE genero <> 'Suspense';

-- Maior que 
SELECT * FROM livro
WHERE preco > 50;

-- Menor que 
SELECT * FROM livro
WHERE preco < 30;

-- Maior ou igual
SELECT * FROM livro
WHERE ano_publicacao >= 2000;

-- Menor igual
SELECT * FROM livro
WHERE preco <= 40;

-- AND, OR E NOT

-- AND / E 
SELECT *FROM livro 
WHERE genero = 'Fantasia' AND preco < 60;

-- OR / OU
SELECT * FROM livro
WHERE genero = 'Fantasia' OR genero = 'Drama';

-- NOT / NÃO
SELECT *FROM livro
WHERE NOT genero = 'Fantasia';

-- BETWEEN
SELECT * FROM livro
WHERE preco BETWEEN 20 AND 50;

-- IN
SELECT * FROM livro
WHERE genero IN ('Fantasia', 'Drama');

SELECT * FROM livro
WHERE genero IN ('Fantasia', 'Drama') AND preco < 50;


-- LIKE: começa com O
-- LIKE = COMO
SELECT * FROM livro
WHERE titulo LIKE 'O%';