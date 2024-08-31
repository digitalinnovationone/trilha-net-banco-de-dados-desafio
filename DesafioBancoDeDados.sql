-- Desafio banco de dados - implementando queries

-- SELECT * FROM Filmes
-- SELECT * FROM Atores
-- SELECT * FROM Generos
-- SELECT * FROM FilmesGenero
-- SELECT * FROM ElencoFilme


-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes;
GO

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano ASC;
GO

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De volta para o futuro';
GO

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997;
GO

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000;
GO

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;
GO

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente
SELECT Ano, COUNT(*) AS 'Quantidade'
FROM Filmes
GROUP BY Ano
Order BY Quantidade DESC;
GO

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores
WHERE Genero = 'M';
GO

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;
GO

-- 10 - Buscar o nome do filme e o gênero
SELECT F.Nome , G.Genero FROM Filmes as F
JOIN Generos as G 
INNER JOIN FilmesGenero
ON G.Id = FilmesGenero.IdGenero
ON F.Id = FilmesGenero.IdFilme
GO

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome, G.Genero FROM Filmes AS F
JOIN Generos AS G
INNER JOIN FilmesGenero
ON G.Id = FilmesGenero.IdGenero
ON F.Id = FilmesGenero.IdFilme
WHERE G.Genero = 'Mistério'
GO

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel FROM Filmes AS F
JOIN Atores AS A
INNER JOIN ElencoFilme AS E
ON A.Id = E.IdAtor
ON F.Id = E.IdFilme;
GO
