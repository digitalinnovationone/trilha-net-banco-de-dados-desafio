-- 1
SELECT 
	Nome,
	Ano
FROM Filmes

-- 2
SELECT 
	*
FROM Filmes
ORDER BY Ano

-- 3
SELECT 
	*
FROM Filmes WHERE Id = 28

-- 4
SELECT 
	*
FROM Filmes WHERE Ano = 1997

-- 5
SELECT 
	*
FROM Filmes WHERE(Ano) > 2000

-- 6
SELECT 
	*
FROM Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7
SELECT 
	Ano,
	COUNT (*) Quantidade
FROM Filmes 
WHERE Ano <> ''
GROUP BY Ano
ORDER BY Quantidade DESC

--8

SELECT 
	*
FROM Atores WHERE Genero = 'M'

-- 9
SELECT 
	*
FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT 
    Filmes.Nome,
	Generos.Genero
FROM 
    Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- 11

SELECT 
    Filmes.Nome,
	Generos.Genero
FROM 
    Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

-- 12 
SELECT 
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM 
	Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id

