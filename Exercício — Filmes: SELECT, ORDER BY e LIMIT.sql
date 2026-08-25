-- Parte 1 — Criando o banco e a tabela
CREATE DATABASE cinemateca;

USE cinemateca;

CREATE TABLE filme (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    diretor VARCHAR(100) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    ano_lancamento INT NOT NULL,
    pais VARCHAR(60) NOT NULL,
    duracao_minutos INT NOT NULL,
    nota DECIMAL(3,1) NOT NULL,
    bilheteria DECIMAL(15,2),
    oscar INT DEFAULT 0
);

-- Parte 2 — Inserindo os dados
INSERT INTO filme
(titulo, diretor, genero, ano_lancamento, pais, duracao_minutos, nota, bilheteria, oscar)
VALUES
('O Poderoso Chefão', 'Francis Ford Coppola', 'Crime', 1972, 'EUA', 175, 9.2, 250341816.00, 3),
('Pulp Fiction', 'Quentin Tarantino', 'Crime', 1994, 'EUA', 154, 8.9, 213928762.00, 1),
('A Origem', 'Christopher Nolan', 'Ficção Científica', 2010, 'EUA', 148, 8.8, 839030630.00, 4),
('Interestelar', 'Christopher Nolan', 'Ficção Científica', 2014, 'EUA', 169, 8.7, 677387716.00, 1),
('O Senhor dos Anéis: A Sociedade do Anel', 'Peter Jackson', 'Fantasia', 2001, 'Nova Zelândia', 178, 8.8, 898204420.00, 4),
('O Senhor dos Anéis: As Duas Torres', 'Peter Jackson', 'Fantasia', 2002, 'Nova Zelândia', 179, 8.8, 947896241.00, 2),
('O Senhor dos Anéis: O Retorno do Rei', 'Peter Jackson', 'Fantasia', 2003, 'Nova Zelândia', 201, 9.0, 1142203948.00, 11),
('Matrix', 'Lana Wachowski', 'Ficção Científica', 1999, 'EUA', 136, 8.7, 467222728.00, 4),
('Clube da Luta', 'David Fincher', 'Drama', 1999, 'EUA', 139, 8.8, 101209702.00, 0),
('Forrest Gump', 'Robert Zemeckis', 'Drama', 1994, 'EUA', 142, 8.8, 678226465.00, 6),
('Titanic', 'James Cameron', 'Romance', 1997, 'EUA', 194, 8.7, 2264717180.00, 11),
('Avatar', 'James Cameron', 'Ficção Científica', 2009, 'EUA', 162, 7.9, 2923706026.00, 3),
('Gladiador', 'Ridley Scott', 'Ação', 2000, 'EUA', 155, 8.5, 465380000.00, 5),
('O Rei Leão', 'Roger Allers', 'Animação', 1994, 'EUA', 88, 8.5, 968511805.00, 2),
('Toy Story', 'John Lasseter', 'Animação', 1995, 'EUA', 81, 8.3, 394436586.00, 1),
('Toy Story 3', 'Lee Unkrich', 'Animação', 2010, 'EUA', 103, 8.3, 1067316101.00, 2),
('Up: Altas Aventuras', 'Pete Docter', 'Animação', 2009, 'EUA', 96, 8.3, 735099082.00, 2),
('Wall-E', 'Andrew Stanton', 'Animação', 2008, 'EUA', 98, 8.4, 521311860.00, 1),
('Ratatouille', 'Brad Bird', 'Animação', 2007, 'EUA', 111, 8.1, 623726085.00, 1),
('Os Incríveis', 'Brad Bird', 'Animação', 2004, 'EUA', 115, 8.0, 631442092.00, 2),
('Homem-Aranha: No Aranhaverso', 'Bob Persichetti', 'Animação', 2018, 'EUA', 117, 8.4, 384256930.00, 1),
('Parasita', 'Bong Joon-ho', 'Drama', 2019, 'Coreia do Sul', 132, 8.5, 258000000.00, 4),
('Cidade de Deus', 'Fernando Meirelles', 'Crime', 2002, 'Brasil', 130, 8.6, 30600000.00, 0),
('Central do Brasil', 'Walter Salles', 'Drama', 1998, 'Brasil', 115, 8.0, 11600000.00, 0),
('Tropa de Elite', 'José Padilha', 'Ação', 2007, 'Brasil', 115, 8.0, 14500000.00, 0),
('O Auto da Compadecida', 'Guel Arraes', 'Comédia', 2000, 'Brasil', 104, 8.6, 15000000.00, 0),
('Bacurau', 'Kleber Mendonça Filho', 'Ficção Científica', 2019, 'Brasil', 132, 7.6, 5000000.00, 0),
('O Pagador de Promessas', 'Anselmo Duarte', 'Drama', 1962, 'Brasil', 98, 8.2, 0.00, 1),
('Ainda Estou Aqui', 'Walter Salles', 'Drama', 2024, 'Brasil', 137, 8.1, 25000000.00, 1),
('Central do Brasil', 'Walter Salles', 'Drama', 1998, 'Brasil', 115, 8.0, 11600000.00, 0),
('Cidadão Kane', 'Orson Welles', 'Drama', 1941, 'EUA', 119, 8.3, 1600000.00, 0),
('Casablanca', 'Michael Curtiz', 'Romance', 1942, 'EUA', 102, 8.5, 4100000.00, 3),
('Psicose', 'Alfred Hitchcock', 'Terror', 1960, 'EUA', 109, 8.5, 50000000.00, 0),
('Janela Indiscreta', 'Alfred Hitchcock', 'Suspense', 1954, 'EUA', 112, 8.5, 36764313.00, 0),
('2001: Uma Odisseia no Espaço', 'Stanley Kubrick', 'Ficção Científica', 1968, 'Reino Unido', 149, 8.3, 14600000.00, 1),
('Laranja Mecânica', 'Stanley Kubrick', 'Drama', 1971, 'Reino Unido', 136, 8.2, 26000000.00, 0),
('O Iluminado', 'Stanley Kubrick', 'Terror', 1980, 'Reino Unido', 146, 8.4, 47000000.00, 0),
('Django Livre', 'Quentin Tarantino', 'Faroeste', 2012, 'EUA', 165, 8.4, 425368238.00, 2),
('Bastardos Inglórios', 'Quentin Tarantino', 'Guerra', 2009, 'EUA', 153, 8.3, 321457747.00, 1),
('Kill Bill: Volume 1', 'Quentin Tarantino', 'Ação', 2003, 'EUA', 111, 8.2, 180906076.00, 0),
('Os Oito Odiados', 'Quentin Tarantino', 'Faroeste', 2015, 'EUA', 168, 7.8, 156513989.00, 1),
('O Cavaleiro das Trevas', 'Christopher Nolan', 'Ação', 2008, 'EUA', 152, 9.0, 1004558444.00, 2),
('Batman Begins', 'Christopher Nolan', 'Ação', 2005, 'EUA', 140, 8.2, 373672993.00, 0),
('Dunkirk', 'Christopher Nolan', 'Guerra', 2017, 'Reino Unido', 106, 7.8, 526949198.00, 3),
('Oppenheimer', 'Christopher Nolan', 'Drama', 2023, 'EUA', 180, 8.6, 976836400.00, 7),
('Memento', 'Christopher Nolan', 'Suspense', 2000, 'EUA', 113, 8.4, 40047078.00, 0),
('Jurassic Park', 'Steven Spielberg', 'Aventura', 1993, 'EUA', 127, 8.2, 1090012995.00, 3),
('Tubarão', 'Steven Spielberg', 'Terror', 1975, 'EUA', 124, 8.1, 476512065.00, 3),
('E.T. - O Extraterrestre', 'Steven Spielberg', 'Ficção Científica', 1982, 'EUA', 115, 7.9, 792910554.00, 4),
('A Lista de Schindler', 'Steven Spielberg', 'Drama', 1993, 'EUA', 195, 9.0, 322161245.00, 7),
('O Resgate do Soldado Ryan', 'Steven Spielberg', 'Guerra', 1998, 'EUA', 169, 8.6, 482349603.00, 5),
('Minority Report', 'Steven Spielberg', 'Ficção Científica', 2002, 'EUA', 145, 7.6, 358372926.00, 0),
('Indiana Jones e os Caçadores da Arca Perdida', 'Steven Spielberg', 'Aventura', 1981, 'EUA', 115, 8.4, 389925971.00, 5),
('O Silêncio dos Inocentes', 'Jonathan Demme', 'Suspense', 1991, 'EUA', 118, 8.6, 272742922.00, 5),
('Seven: Os Sete Crimes Capitais', 'David Fincher', 'Crime', 1995, 'EUA', 127, 8.6, 327333559.00, 0),
('A Rede Social', 'David Fincher', 'Drama', 2010, 'EUA', 120, 7.8, 224920315.00, 3),
('Garota Exemplar', 'David Fincher', 'Suspense', 2014, 'EUA', 149, 8.1, 369330363.00, 0),
('O Curioso Caso de Benjamin Button', 'David Fincher', 'Drama', 2008, 'EUA', 166, 7.8, 329631958.00, 3),
('O Grande Hotel Budapeste', 'Wes Anderson', 'Comédia', 2014, 'EUA', 99, 8.1, 172936941.00, 4),
('Ilha dos Cachorros', 'Wes Anderson', 'Animação', 2018, 'EUA', 101, 7.8, 64241499.00, 0),
('Moonrise Kingdom', 'Wes Anderson', 'Romance', 2012, 'EUA', 94, 7.8, 68349066.00, 0),
('O Fabuloso Destino de Amélie Poulain', 'Jean-Pierre Jeunet', 'Romance', 2001, 'França', 122, 8.3, 174200000.00, 0),
('Intocáveis', 'Olivier Nakache', 'Comédia', 2011, 'França', 112, 8.5, 426588510.00, 0),
('A Vida é Bela', 'Roberto Benigni', 'Comédia', 1997, 'Itália', 116, 8.6, 230098753.00, 3),
('Cinema Paradiso', 'Giuseppe Tornatore', 'Drama', 1988, 'Itália', 155, 8.5, 11990401.00, 1),
('O Labirinto do Fauno', 'Guillermo del Toro', 'Fantasia', 2006, 'México', 118, 8.2, 83700000.00, 3),
('A Forma da Água', 'Guillermo del Toro', 'Fantasia', 2017, 'EUA', 123, 7.3, 195243464.00, 4),
('Gravidade', 'Alfonso Cuarón', 'Ficção Científica', 2013, 'Reino Unido', 91, 7.7, 723192705.00, 7),
('Roma', 'Alfonso Cuarón', 'Drama', 2018, 'México', 135, 7.7, 0.00, 3),
('Boyhood', 'Richard Linklater', 'Drama', 2014, 'EUA', 165, 7.9, 44349000.00, 1),
('Antes do Amanhecer', 'Richard Linklater', 'Romance', 1995, 'EUA', 101, 8.1, 15992600.00, 0),
('Whiplash', 'Damien Chazelle', 'Drama', 2014, 'EUA', 107, 8.5, 49000000.00, 3),
('La La Land', 'Damien Chazelle', 'Musical', 2016, 'EUA', 128, 8.0, 472040000.00, 6),
('O Artista', 'Michel Hazanavicius', 'Comédia', 2011, 'França', 100, 7.8, 133432856.00, 5),
('Mad Max: Estrada da Fúria', 'George Miller', 'Ação', 2015, 'Austrália', 120, 8.1, 380416000.00, 6),
('Matrix Reloaded', 'Lana Wachowski', 'Ficção Científica', 2003, 'EUA', 138, 7.2, 741847937.00, 0),
('Vingadores: Ultimato', 'Anthony Russo', 'Ação', 2019, 'EUA', 181, 8.4, 2799439100.00, 1),
('Homem de Ferro', 'Jon Favreau', 'Ação', 2008, 'EUA', 126, 7.9, 585796247.00, 0),
('Pantera Negra', 'Ryan Coogler', 'Ação', 2018, 'EUA', 134, 7.3, 1349926083.00, 3),
('Coringa', 'Todd Phillips', 'Drama', 2019, 'EUA', 122, 8.3, 1074458282.00, 2),
('Batman', 'Matt Reeves', 'Crime', 2022, 'EUA', 176, 7.8, 772245583.00, 0),
('Top Gun: Maverick', 'Joseph Kosinski', 'Ação', 2022, 'EUA', 130, 8.2, 1495696293.00, 1),
('Missão: Impossível - Efeito Fallout', 'Christopher McQuarrie', 'Ação', 2018, 'EUA', 147, 7.7, 791657398.00, 0),
('Piratas do Caribe: A Maldição do Pérola Negra', 'Gore Verbinski', 'Aventura', 2003, 'EUA', 143, 8.1, 654264015.00, 0),
('Harry Potter e a Pedra Filosofal', 'Chris Columbus', 'Fantasia', 2001, 'Reino Unido', 152, 7.6, 1026000000.00, 0),
('Harry Potter e as Relíquias da Morte: Parte 2', 'David Yates', 'Fantasia', 2011, 'Reino Unido', 130, 8.1, 1341511219.00, 3),
('Star Wars: Uma Nova Esperança', 'George Lucas', 'Ficção Científica', 1977, 'EUA', 121, 8.6, 775398007.00, 7),
('Star Wars: O Império Contra-Ataca', 'Irvin Kershner', 'Ficção Científica', 1980, 'EUA', 124, 8.7, 538375067.00, 2),
('Star Wars: O Retorno de Jedi', 'Richard Marquand', 'Ficção Científica', 1983, 'EUA', 131, 8.3, 475106177.00, 4),
('Alien: O Oitavo Passageiro', 'Ridley Scott', 'Terror', 1979, 'Reino Unido', 117, 8.5, 106285522.00, 1),
('Blade Runner', 'Ridley Scott', 'Ficção Científica', 1982, 'EUA', 117, 8.1, 41722424.00, 0),
('De Volta para o Futuro', 'Robert Zemeckis', 'Ficção Científica', 1985, 'EUA', 116, 8.5, 388774684.00, 4),
('O Exterminador do Futuro 2', 'James Cameron', 'Ação', 1991, 'EUA', 137, 8.6, 520881154.00, 4),
('Rocky: Um Lutador', 'John G. Avildsen', 'Drama', 1976, 'EUA', 119, 8.1, 225000000.00, 3),
('Os Bons Companheiros', 'Martin Scorsese', 'Crime', 1990, 'EUA', 145, 8.7, 46836394.00, 1),
('Taxi Driver', 'Martin Scorsese', 'Crime', 1976, 'EUA', 114, 8.2, 28600000.00, 0),
('Os Infiltrados', 'Martin Scorsese', 'Crime', 2006, 'EUA', 151, 8.5, 291465034.00, 4),
('O Lobo de Wall Street', 'Martin Scorsese', 'Comédia', 2013, 'EUA', 180, 8.2, 406878233.00, 0),
('O Pianista', 'Roman Polanski', 'Drama', 2002, 'França', 150, 8.5, 120072577.00, 3),
('Amor à Flor da Pele', 'Wong Kar-wai', 'Romance', 2000, 'Hong Kong', 98, 8.1, 1286163.00, 0),
('Oldboy', 'Park Chan-wook', 'Suspense', 2003, 'Coreia do Sul', 120, 8.3, 1542087.00, 0),
('Os Sete Samurais', 'Akira Kurosawa', 'Ação', 1954, 'Japão', 207, 8.6, 346258.00, 0),
('Rashomon', 'Akira Kurosawa', 'Drama', 1950, 'Japão', 88, 8.2, 96568.00, 1),
('Your Name', 'Makoto Shinkai', 'Animação', 2016, 'Japão', 106, 8.2, 382243000.00, 0),
('A Viagem de Chihiro', 'Hayao Miyazaki', 'Animação', 2001, 'Japão', 125, 8.6, 395802070.00, 1),
('Meu Vizinho Totoro', 'Hayao Miyazaki', 'Animação', 1988, 'Japão', 86, 8.1, 46000000.00, 0),
('Princesa Mononoke', 'Hayao Miyazaki', 'Fantasia', 1997, 'Japão', 134, 8.3, 169785704.00, 0),
('Akira', 'Katsuhiro Otomo', 'Animação', 1988, 'Japão', 124, 8.0, 8000000.00, 0),
('O Castelo Animado', 'Hayao Miyazaki', 'Fantasia', 2004, 'Japão', 119, 8.2, 236049757.00, 0),
('Metrópolis', 'Fritz Lang', 'Ficção Científica', 1927, 'Alemanha', 153, 8.3, 1000000.00, 0),
('Nosferatu', 'F. W. Murnau', 'Terror', 1922, 'Alemanha', 94, 7.9, 100000.00, 0);


-- 1. Quais são os filmes mais recentes?
-- Precisamos descobrir quais filmes foram lançados mais recentemente.
-- Mostre: (título; ano de lançamento)
-- Organize do mais recente para o mais antigo.
SELECT titulo, ano_lancamento 
FROM filme 
ORDER BY ano_lancamento DESC;

-- 2. Só queremos os 10 mais recentes
-- A consulta anterior ainda mostra muitos filmes.
-- Modifique-a para retornar somente os:
-- 10 filmes mais recentes.

SELECT titulo, ano_lancamento 
FROM filme 
ORDER BY ano_lancamento DESC 
LIMIT 10;

-- 3. Quais são os 10 filmes mais antigos?
-- Agora precisamos fazer o contrário.
-- Mostre somente os:
-- 10 filmes mais antigos da tabela.
SELECT titulo, ano_lancamento 
FROM filme 
ORDER BY ano_lancamento ASC 
LIMIT 10;

-- 4. Quais são os melhores filmes?
-- Queremos descobrir quais filmes possuem as maiores notas.
-- Mostre: título; gênero; nota.
-- Retorne somente os: 10 filmes mais bem avaliados.
SELECT titulo, genero, nota 
FROM filme 
ORDER BY nota DESC 
LIMIT 10;

-- 5. E os melhores filmes de Terror?
-- Agora não queremos analisar todos os filmes.
-- Precisamos apenas dos filmes cujo gênero seja: Terror
-- Entre eles, mostre os: 5 filmes com maior nota.
SELECT titulo, genero, nota 
FROM filme 
WHERE genero = 'Terror' 
ORDER BY nota DESC 
LIMIT 5;

-- 6. Quais são os melhores filmes recentes?
-- Considere somente filmes:
-- com nota maior ou igual a 7.
-- Entre eles, mostre os: 10 filmes com maior nota.
SELECT titulo, ano_lancamento, nota, genero 
FROM filme 
WHERE ano_lancamento >= 2015 AND nota >= 7 
ORDER BY nota DESC 
LIMIT 10;

-- 7. Quais são os filmes mais longos?
-- Precisamos encontrar os filmes que exigem mais tempo para assistir.
-- Mostre: título; duração.
-- Retorne somente os: 5 filmes de maior duração.
SELECT titulo, duracao_minutos 
FROM filme 
ORDER BY duracao_minutos DESC 
LIMIT 5;

-- 8. Queremos uma sessão mais curta
-- Precisamos encontrar filmes:
-- com duração entre 80 e 120 minutos;
-- com nota maior ou igual a 7.
-- Entre eles, mostre os: 10 filmes com maior nota.
SELECT titulo, duracao_minutos, nota 
FROM filme 
WHERE duracao_minutos BETWEEN 80 AND 120 
AND nota >= 7 
ORDER BY nota DESC 
LIMIT 10;

-- 9. Ação, Aventura ou Ficção Científica
-- Queremos somente filmes dos seguintes gêneros: Ação, Aventura, Ficção Científica
-- Utilize IN para realizar o filtro.
-- Depois:
-- organize pela maior nota;
-- em caso de empate, coloque primeiro o filme mais recente;
-- mostre somente os 10 primeiros.
SELECT titulo, genero, nota, ano_lancamento 
FROM filme 
WHERE genero IN ('Ação', 'Aventura', 'Ficção Científica') 
ORDER BY nota DESC, ano_lancamento DESC 
LIMIT 10;

-- 10. Escolha um filme para assistir
-- Uma pessoa quer assistir a um filme que tenha:
-- sido lançado a partir de 2010;
-- nota maior ou igual a 7.5;
-- duração máxima de 150 minutos;
-- gênero Ação, Aventura ou Ficção Científica.
-- O sistema deve recomendar somente os:
-- 5 melhores filmes.
-- Eles devem aparecer:
-- da maior nota para a menor;
-- em caso de empate, do mais recente para o mais antigo.
-- Escreva uma única consulta que resolva o problema.
SELECT titulo, genero, ano_lancamento, nota, duracao_minutos 
FROM filme 
WHERE ano_lancamento >= 2010 
AND nota >= 7.5 
AND duracao_minutos <= 150 
AND genero IN ('Ação', 'Aventura', 'Ficção Científica') 
ORDER BY nota DESC, ano_lancamento DESC 
LIMIT 5;
