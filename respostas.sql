-- Desafio 1
SELECT Nome, Ano FROM Filmes;
-- Desafio 2
SELECT * FROM Filmes ORDER BY  Filmes.Ano ASC; 
-- Desafio 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o futuro';
-- Desafio 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;
-- Desafio 5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;
-- Desafio 6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;
-- Desafio 7
SELECT Ano , COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY SUM(Duracao) DESC;
-- Desafio 8
SELECT  * FROM Atores WHERE Genero = 'M';
-- Desafio 9
SELECT  * FROM Atores WHERE Genero = 'F' ORDER BY Atores.PrimeiroNome;
-- Desafio 10
SELECT f.Nome, g.Genero FROM Filmes f JOIN FilmesGenero fg ON f.Id = fg.IdFilme JOIN Generos g ON fg.IdGenero = g.Id;
-- Desafio 11
SELECT f.Nome, g.Genero FROM Filmes f JOIN FilmesGenero fg ON f.Id = fg.IdFilme JOIN Generos g ON fg.IdGenero = g.Id WHERE g.Genero = 'Mistério';
-- Desafio 12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel FROM Filmes f JOIN ElencoFilme ef ON f.id = ef.IdFilme JOIN Atores a ON ef.IdAtor = a.id;