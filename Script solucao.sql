-- 01
SELECT 
	Nome, 
	Ano 
FROM Filmes

-- 02
SELECT 
	Nome, Ano, Duracao 
FROM 
	Filmes
ORDER BY Ano

-- 03
SELECT 
	Nome, Ano, Duracao 
FROM 
	Filmes
WHERE Nome = 'De Volta para o futuro'

-- 04
SELECT 
	Nome, Ano, Duracao 
FROM 
	Filmes
WHERE Ano = 1997

-- 05
SELECT 
	Nome, Ano, Duracao 
FROM 
	Filmes
WHERE Ano >= 2000

-- 06
SELECT 
	Nome, Ano, Duracao 
FROM 
	Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 07
SELECT
	Ano,
	COUNT(Ano) Quantidade
FROM Filmes
GROUP BY (Ano)
ORDER BY Quantidade DESC

-- 08
SELECT 
	*
FROM Atores
WHERE Genero = 'M'

-- 09
SELECT
	*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT
	Filmes.Nome,
	Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

SELECT * FROM FilmesGenero
SELECT * FROM Filmes
SELECT * FROM Generos

-- 11
SELECT
	Filmes.Nome,
	Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

-- 12
SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.Ultimonome,
	ElencoFilme.Papel
FROM ElencoFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme