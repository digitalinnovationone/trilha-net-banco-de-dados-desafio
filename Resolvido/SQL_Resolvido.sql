--Desafio 1 concluído
SELECT Nome, Ano FROM Filmes;

--Desafio 2 concluído
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano ASC;

--Desafio 3 concluído
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Id = 28;

-- Desafio 4 conclúido
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997
ORDER BY Duracao ASC;


-- Desafio 5 concluído
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000
ORDER BY Duracao DESC;

-- Desafio 6 concluído
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- desafio 7 -----
SELECT
	Ano,
	COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Count(*) DESC;

-- Desafio 8
SELECT 
	PrimeiroNome, 
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M';

-- Desafio 9
SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
From Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

-- Desafio 10
SELECT F.Nome AS Filme, G.Genero AS Genero
FROM FilmesGenero FG
INNER JOIN Filmes F ON FG.IdFilme = F.Id
INNER JOIN Generos G ON FG.IdGenero = G.Id;

-- Desafio 11
SELECT 
	F.Nome AS Filme, 
	G.Genero AS Genero
FROM FilmesGenero FG
	INNER JOIN Filmes F ON FG.IdFilme = F.Id
	INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE Genero = 'Mistério';

-- Desafio 12
SELECT 
	F.Nome AS Filmes,
	A.PrimeiroNome AS PrimeiroNome,
	A.UltimoNome AS UltimoNome,
	EF.Papel AS Papel
FROM ElencoFilme EF
	INNER JOIN Atores A ON EF.Id = A.Id
	INNER JOIN Filmes F ON EF.Id = F.Id;



