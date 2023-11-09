-- 1
SELECT Nome, Ano from Filmes

-- 2
SELECT Nome, Ano, Duracao from Filmes
	ORDER BY Duracao

-- 3
SELECT Nome, Ano, Duracao from Filmes
	WHERE Filmes.Nome = 'De volta para o Futuro'
	ORDER BY Duracao
	
-- 4
SELECT Nome, Ano, Duracao from Filmes
	WHERE Filmes.Ano = 1997
	ORDER BY Duracao

-- 5
SELECT Nome, Ano, Duracao from Filmes
	WHERE Filmes.Ano > 2000
	ORDER BY Duracao
	
-- 6
SELECT Nome, Ano, Duracao from Filmes
	WHERE Filmes.Duracao > 100 AND Filmes.Duracao < 150
	ORDER BY Duracao
	
-- 7
SELECT Ano, COUNT(*) as Quantidade from Filmes
	GROUP BY Filmes.Ano 
	ORDER BY Quantidade DESC
	
-- 8
SELECT Id, PrimeiroNome, UltimoNome, Genero from Atores

-- 9
SELECT Id, PrimeiroNome, UltimoNome, Genero from Atores
	WHERE Atores.Genero = 'F'

-- 10
SELECT Nome, Genero from Filmes
	INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.Id
	INNER JOIN Generos ON FilmesGenero.Id = Generos.Id 
	
-- 11
SELECT Nome, Genero from Filmes
	INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.Id
	INNER JOIN Generos ON FilmesGenero.Id = Generos.Id 
	WHERE Genero = 'Mistério'
	
-- 12
SELECT Nome, PrimeiroNome, UltimoNome, Papel from Filmes
	INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme 
	INNER JOIN Atores  ON ElencoFilme.IdAtor = Atores.Id 
	
