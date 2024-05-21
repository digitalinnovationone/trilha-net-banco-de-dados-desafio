--Consulta 1
SELECT Nome, Ano FROM Filmes

--Consulta 2
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

--Consulta 3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--Consulta 4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

--Consulta 5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

--Consulta 6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--Consulta 7
SELECT 
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--Consulta 8
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M'

--Consulta 9
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--Consulta 10
SELECT f.Nome, g.Genero
FROM Filmesgenero fg
INNER JOIN Filmes f ON f.ID = fg.IdFilme
INNER JOIN Generos g ON g.ID = fg.IdGenero

--Consulta 11
SELECT f.Nome, g.Genero
FROM Filmesgenero fg
INNER JOIN Filmes f ON f.ID = fg.IdFilme
INNER JOIN Generos g ON g.ID = fg.IdGenero
WHERE Genero = 'Mistério'

--Consulta 12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM ElencoFilme ef
INNER JOIN Filmes f ON f.ID = ef.IdFilme
INNER JOIN Atores a ON a.ID = ef.IdAtor