--- 1
SELECT 
	Nome,
	Ano
FROM Filmes


--- 2
SELECT 
Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano ASC;

--- 3
SELECT
Nome, Ano, Duracao
FROM Filmes
Where Nome = 'De volta para o futuro'

--- 4
SELECT
Nome, Ano, Duracao
FROM Filmes
Where Ano = 1997

--- 5
SELECT
Nome, Ano, Duracao
FROM Filmes
Where Ano > 2000

--- 6
SELECT 
Nome, Ano, Duracao
FROM Filmes
Where Duracao > 100 AND Duracao < 150 
ORDER BY Duracao ASC;

--- 7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

--- 8 
SELECT * FROM Atores
Where Genero = 'M';

--- 9
SELECT * FROM Atores
Where Genero = 'F'
ORDER BY PrimeiroNome ASC;

--- 10
SELECT F.Nome, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id;

--- 11
SELECT F.Nome, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

--- 12
SELECT F.Nome AS Filme, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON EF.IdAtor = A.Id;


