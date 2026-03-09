--1
SELECT Nome, Ano FROM dbo.Filmes;

--2
SELECT Nome, Ano, Duracao FROM dbo.Filmes ORDER BY Ano;

--3
SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Nome = 'De Volta para o Futuro';

--4
SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Ano = 1997;

--5
SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Ano > 2000;

--6
SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao;

--7
SELECT Ano, COUNT(*) Quantidade FROM dbo.Filmes GROUP BY Ano ORDER BY Quantidade DESC;

--8
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM dbo.Atores WHERE Genero = 'M';

--9
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM dbo.Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

--10
SELECT Filmes.Nome, Generos.Genero FROM dbo.Filmes 
INNER JOIN dbo.FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN dbo.Generos ON FilmesGenero.IdGenero = dbo.Generos.Id;

--11
SELECT Filmes.Nome, Generos.Genero FROM dbo.Filmes
INNER JOIN dbo.FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN dbo.Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério';

--12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM dbo.Filmes
INNER JOIN dbo.ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN dbo.Atores ON ElencoFilme.IdAtor = Atores.Id;

