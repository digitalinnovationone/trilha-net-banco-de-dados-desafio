/*Questão 1*/
SELECT Nome, Ano FROM Filmes;

/*Questão 2*/
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC;

/*Questão 3*/
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

/*Questão 4*/
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

/*Questão 5*/
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

/*Questãoo 6*/
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;

/*Questão 7*/
SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

/*Questão 8*/
SELECT * FROM Atores WHERE Genero = 'M';

/*Questão 9*/
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

/*Questão 10*/
SELECT f.Nome, g.Genero FROM Filmes f 
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme 
INNER JOIN Generos g ON g.Id = fg.IdGenero;

/*Questão 11*/
SELECT f.Nome, g.Genero FROM Filmes f 
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme 
INNER JOIN Generos g ON g.Id = fg.IdGenero
WHERE g.Genero = 'Mistério';

/*Questão 12*/
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel FROM Filmes f 
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON a.Id = ef.IdAtor;
