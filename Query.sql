SELECT Nome, Ano FROM FILMES

SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

SELECT * FROM Filmes WHERE Ano = 1997

SELECT * FROM Filmes WHERE Ano > 2000

SELECT * FROM FILMES Where Duracao BETWEEN 101 AND 149 ORDER BY Duracao ASC

SELECT Ano, COUNT(*)Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC

SELECT Filmes.Nome, Generos.Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

SELECT Filmes.Nome, Generos.Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id WHERE  Generos.Genero = 'Mistério'

SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM ATORES INNER JOIN ElencoFilme ON Atores.Id = ElencoFilme.IdAtor INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id