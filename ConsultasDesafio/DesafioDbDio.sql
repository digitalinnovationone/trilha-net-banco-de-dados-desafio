-- Consulta 1
SELECT Nome, Ano FROM Filmes

--Consulta 2
SELECT Nome, Ano FROM Filmes
ORDER BY Ano ASC;

--Consulta 3
SELECT * FROM Filmes
WHERE Nome = 'De Volta Para o Futuro'

--Consulta 4
SELECT * FROM Filmes
WHERE Ano = 1997

--Consulta 5
SELECT * FROM Filmes
WHERE Ano >= 2000

--Consulta 6
SELECT * FROM Filmes
WHERE Duracao >= 100 AND Duracao <= 150

--Consulta 7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY MAX(Duracao) DESC;

--Consulta 8
SELECT * FROM Atores
WHERE Genero = 'M'

--Consulta 9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome, UltimoNome ASC

--Consulta 10
SELECT F.Nome, G.Genero FROM Filmes AS F
INNER JOIN FilmesGenero AS FG
ON F.Id = FG.IdGenero
INNER JOIN Generos AS G
ON FG.IdFilme = G.Id

--Consulta 11
SELECT F.Nome, G.Genero FROM Filmes AS F
INNER JOIN FilmesGenero AS FG
ON F.Id = FG.IdFilme
INNER JOIN Generos AS G
ON FG.IdGenero = G.Id
WHERE G.Genero LIKE '%Mistério%'

--Consulta 12
SELECT 
    F.Nome AS NomeFilme, 
    A.PrimeiroNome, 
    A.UltimoNome, 
    EF.Papel
FROM Filmes AS F
INNER JOIN ElencoFilme AS EF ON F.Id = EF.IdFilme
INNER JOIN Atores AS A ON EF.IdAtor = A.Id;