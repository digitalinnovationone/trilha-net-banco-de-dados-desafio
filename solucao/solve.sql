-- Querys na ordem

-- 1

SELECT Nome, Ano FROM Filmes

-- 2

SELECT * FROM Filmes
ORDER BY Ano ASC

-- 3

SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4

SELECT * FROM Filmes
WHERE Ano = 1997

-- 5 

SELECT * FROM Filmes
WHERE Ano > 2000

-- 6

SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- 7

SELECT Ano, COUNT(*) Quantidade FROM Filmes
GROUP BY Ano

-- 8

SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'

-- 9

SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10

SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- 11

SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

-- 12

SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes
INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
