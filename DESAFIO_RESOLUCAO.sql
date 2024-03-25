-- 1

SELECT Nome, Ano FROM Filmes;

-- 2 

SELECT Nome, Ano FROM Filmes ORDER BY Ano;

-- 3

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'de volta para o futuro'

-- 4

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

-- 5

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

-- 6

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao BETWEEN 101 AND 149 ORDER BY Duracao;

-- 6.1
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao;

-- 7

SELECT Ano, Count(*) as Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

-- 8

SELECT * FROM Atores WHERE Genero = 'M';

-- 9 

SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- 10 

SELECT Nome, Generos.Genero FROM ((Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme) INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero);

-- 11 

SELECT Nome, Generos.Genero FROM ((Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme) INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero) WHERE Genero = 'Mistério';

-- 12

SELECT Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel From Filmes INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;