--1

SELECT Nome,Ano FROM Filmes

--2

SELECT Nome,Ano FROM Filmes
ORDER BY Ano

--3

SELECT * FROM Filmes
WHERE Nome LIKE 'De Volta%'

--4

SELECT * FROM Filmes
WHERE Ano = 1997

--5

SELECT * FROM Filmes
WHERE Ano > 2000

--6

SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 105

--7

SELECT Ano,  COUNT(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8

SELECT * FROM Atores
WHERE Genero = 'M'

--9

SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10

SELECT f.Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON g.Id = fg.IdGenero

--11

SELECT f.Nome,g.Genero 
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON g.Id = fg.IdGenero
WHERE g.Genero LIKE 'Mis%'

--12

SELECT f.Nome,a.PrimeiroNome,a.UltimoNome,ef.Papel 
FROM Filmes f
INNER JOIN ElencoFilme ef ON ef.IdFilme = f.Id
INNER JOIN Atores a ON ef.IdAtor = a.Id