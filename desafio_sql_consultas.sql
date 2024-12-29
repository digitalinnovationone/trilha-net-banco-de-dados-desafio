-- Consulta 1: Nome e ano dos filmes
SELECT Nome, Ano FROM Filmes;

-- Consulta 2: Nome e ano dos filmes, ordenados por ano crescente
SELECT Nome, Ano FROM Filmes
ORDER BY Ano ASC;

-- Consulta 3: Informações de "De Volta para o Futuro"
SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- Consulta 4: Filmes lançados em 1997
SELECT Nome, Ano FROM Filmes
WHERE Ano = 1997;

-- Consulta 5: Filmes lançados após o ano 2000
SELECT Nome, Ano FROM Filmes
WHERE Ano > 2000;

-- Consulta 6: Filmes com duração entre 100 e 150 minutos, ordenados por duração crescente
SELECT Nome, Duracao FROM Filmes
WHERE Duracao BETWEEN 100 AND 150
ORDER BY Duracao ASC;

-- Consulta 7: Quantidade de filmes lançados por ano, ordenados por quantidade decrescente
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- Consulta 8: Atores do gênero masculino
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'M';

-- Consulta 9: Atores do gênero feminino, ordenados por primeiro nome
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

-- Consulta 10: Nome do filme e seu gênero
SELECT f.Nome AS Filme, g.Nome AS Genero
FROM Filmes AS f
JOIN FilmesGenero AS fg ON f.Id = fg.IdFilme
JOIN Generos AS g ON fg.IdGenero = g.Id;

-- Consulta 11: Nome do filme e gênero "Mistério"
SELECT f.Nome AS Filme, g.Nome AS Genero
FROM Filmes AS f
JOIN FilmesGenero AS fg ON f.Id = fg.IdFilme
JOIN Generos AS g ON fg.IdGenero = g.Id
WHERE g.Nome = 'Mistério';

-- Consulta 12: Nome do filme e seus atores
SELECT f.Nome AS Filme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes AS f
JOIN ElencoFilme AS ef ON f.Id = ef.IdFilme
JOIN Atores AS a ON ef.IdAtor = a.Id;
